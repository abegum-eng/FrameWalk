import 'package:flutter_test/flutter_test.dart';

import '../lib/services/prompt_generator.dart';

void main() {
  group('PromptGenerator Tests', () {
    final generator = PromptGenerator({
      'park': ['Photograph an interesting shadow', 'Find a repeating pattern'],
      'library': [],
    });

    test('Returns prompts for a valid stop', () {
      expect(generator.getPrompts('park'), hasLength(2));
    });

    test('Returns empty list for unknown stop', () {
      expect(generator.getPrompts('unknown'), isEmpty);
    });

    test('Rejects an empty stop ID', () {
      expect(() => generator.getPrompts(''), throwsArgumentError);
    });
  });
}
