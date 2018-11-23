import 'dart:async';
import 'package:angel_framework/angel_framework.dart';
import 'package:angel_static/angel_static.dart';
import 'package:path/path.dart' as p;
import 'configuration.dart';

Future<bool> Function(RequestContext, ResponseContext) makeHandler(
    VirtualDirectory dir, Configuration config) {
  var handler = new _PrplHandler(dir, config);
  return handler.handleRequest;
}

class _PrplHandler {
  final VirtualDirectory dir;
  final Configuration config;

  _PrplHandler(this.dir, this.config);

  Future<bool> handleRequest(RequestContext req, ResponseContext res) {
    if (config.builds.isEmpty)
      return new Future.value(true);
    else if (config.builds.length == 1)
      return _serveBuild(config.builds.single, req, res);
    else {
      // TODO: Find a build
      throw new UnimplementedError();
    }
  }

  Future<bool> _serveBuild(
      Build build, RequestContext req, ResponseContext res) async {
    var path = req.uri.path;

    if (p.equals(path, p.rootPrefix(path))) {
      path = config.entryPoint;
    }

    path = p.join(build.name, path);
  }
}
