String regexpParser(String message) {
  bool illegalChar = false;
  int state = 0;

  for (int i = 0; i < message.length; i++) {
    if (message[i] == 'a') {
      if (state == 0) {
        state = 1;
      } else if (state == 1) {
        state = 2;
      } else if (state == 4) {
        state = 5;
      } else if (state == 5) {
        state = 4;
      } else {
        illegalChar = true;
        break;
      }
    } else if (message[i] == 'b') {
      if (state == 0 || state == 2) {
        state = 3;
      } else if (state == 3 || state == 4) {
        state = 4;
      } else {
        illegalChar = true;
        break;
      }
    } else {
      illegalChar = true;
      break;
    }
  }

  if (!illegalChar && state == 4) {
    return 'A';
  } else {
    return 'N';
  }
}
