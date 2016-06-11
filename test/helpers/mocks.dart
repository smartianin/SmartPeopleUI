import 'package:mockito/mockito.dart';
import 'package:SmartPeopleUI/shared/index.dart';
import 'package:angular2/router.dart';

class MockStore extends Mock implements InjectableStore {
  noSuchMethod(i) => super.noSuchMethod(i);
}

class MockRouter extends Mock implements Router {
  noSuchMethod(i) => super.noSuchMethod(i);
}

class MockLocation extends Mock implements Location {
  noSuchMethod(i) => super.noSuchMethod(i);
  path() => '';
}

class MockRouterLink extends Mock implements RouterLink {
  noSuchMethod(i) => super.noSuchMethod(i);
}

getMockStore() => spy(new MockStore(), new InjectableStore(null));
getRouter() => spy(new MockRouter(), new Router(null, null, null));
getLocation() => spy(new MockLocation(), new Location(null));
