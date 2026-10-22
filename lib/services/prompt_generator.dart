class PromptGenerator {
  final Map<String, List<String>> promptsByStop;

  PromptGenerator(this.promptsByStop);

  List<String> getPrompts(String stopId) {
    if (stopId.trim().isEmpty) {
      throw ArgumentError('Stop ID cannot be empty');
    }

    return List.unmodifiable(promptsByStop[stopId] ?? <String>[]);
  }
}
