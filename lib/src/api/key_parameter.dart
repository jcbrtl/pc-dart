// See file LICENSE for more information.

part of pointycastle.api;

/// [CipherParameters] consisting of just a key of arbitrary length.
class KeyParameter extends CipherParameters {
  Uint8List key;

  KeyParameter(this.key);

  KeyParameter.offset(Uint8List key, int keyOff, int keyLen) {
    this.key = Uint8List(keyLen);
    arrayCopy(key, keyOff, this.key, 0, keyLen);
  }
}
