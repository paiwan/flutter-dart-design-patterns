// TODO: Define the PlayerState interface
abstract class PlayerState {
  void play(Player player);
  void stop(Player player);
  void pause(Player player);
}

// TODO: Implement StoppedState
class StoppedState implements PlayerState {
  // TODO: Fill in methods here
  @override
  void play(Player player) {
    // TODO: Implement behavior and state transition
  }

  @override
  void stop(Player player) {
    // TODO: Implement behavior
  }

  @override
  void pause(Player player) {
    // TODO: Implement behavior
  }
}

// TODO: Implement PlayingState
class PlayingState implements PlayerState {
  // TODO: Fill in methods here
  @override
  void play(Player player) {
    // TODO: Implement behavior
  }

  @override
  void stop(Player player) {
    // TODO: Implement behavior and state transition
  }

  @override
  void pause(Player player) {
    // TODO: Implement behavior and state transition
  }
}

// TODO: Implement PausedState
class PausedState implements PlayerState {
  // TODO: Fill in methods here
  @override
  void play(Player player) {
    // TODO: Implement behavior and state transition
  }

  @override
  void stop(Player player) {
    // TODO: Implement behavior and state transition
  }

  @override
  void pause(Player player) {
    // TODO: Implement behavior
  }
}

// Player class using State Design Pattern
class Player {
  PlayerState _state;

  Player() {
    // TODO: Initialize the state
  }

  // TODO: Add a method to set the state
  void setState(PlayerState state) {
    // TODO: Implement this method
  }

  // TODO: Implement play
  void play() {
    // TODO: Delegate to state object
  }

  // TODO: Implement stop
  void stop() {
    // TODO: Delegate to state object
  }

  // TODO: Implement pause
  void pause() {
    // TODO: Delegate to state object
  }
}

void main() {
  Player player = Player();

  // TODO: Add some sample usage here
}
