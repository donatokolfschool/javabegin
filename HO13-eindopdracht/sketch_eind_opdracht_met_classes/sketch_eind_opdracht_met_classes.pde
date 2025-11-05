int cols = 4;
int rows = 4;
int total = cols * rows;
MemoryGame game;

void setup() {
  size(600, 600);
  game = new MemoryGame(cols, rows);
}

void draw() {
  background(30);
  game.display();
  game.checkForMatches();
}

void mousePressed() {
  game.handleMousePress(mouseX, mouseY);
}

class Card {
  color cardColor;
  boolean revealed;
  int index;

  Card(color c, int index) {
    cardColor = c;
    revealed = false;
    this.index = index;
  }

  void display(float x, float y, float w, float h) {
    if (revealed) {
      fill(cardColor);
      rect(x, y, w-5, h-5);
    } else {
      fill(230, 230, 230);
      rect(x, y, w-5, h-5);
    }
  }
}

class MemoryGame {
  Card[] cards;
  int first = -1;
  int second = -1;
  int matches = 0;
  int flipBackTime = 0;

  MemoryGame(int cols, int rows) {
    cards = new Card[cols * rows];

    // create pairs of colors
    for (int i = 0; i < cards.length / 2; i++) {
      color c = color(random(50, 255), random(50, 255), random(50, 255));
      cards[i*2] = new Card(c, i*2);
      cards[i*2+1] = new Card(c, i*2+1);
    }

    // shuffle cards
    for (int i = 0; i < cards.length; i++) {
      int r = int(random(cards.length));
      Card temp = cards[i];
      cards[i] = cards[r];
      cards[r] = temp;
    }
  }

  void display() {
    float w = width / cols;
    float h = height / rows;

    for (int i = 0; i < cards.length; i++) {
      int x = i % cols;
      int y = i / cols;
      cards[i].display(x * w, y * h, w, h);
    }

    // win message
    if (matches == cards.length / 2) {
      fill(255, 255, 0);
      textSize(67);
      textAlign(CENTER, CENTER);
      text("you have won", width / 2, height / 2);
      noLoop();
    }
  }

  void handleMousePress(float mx, float my) {
    int x = int(mx / (width / cols));
    int y = int(my / (height / rows));
    int index = x + y * cols;

    if (cards[index].revealed || second != -1) return;

    cards[index].revealed = true;

    if (first == -1) {
      first = index;
    } else if (second == -1 && index != first) {
      second = index;

      // check match
      if (cards[first].cardColor == cards[second].cardColor) {
        matches++;
        first = -1;
        second = -1;
      } else {
        flipBackTime = millis() + 700;
      }
    }
  }

  void checkForMatches() {
    if (second != -1 && millis() > flipBackTime) {
      cards[first].revealed = false;
      cards[second].revealed = false;
      first = -1;
      second = -1;
    }
  }
}
