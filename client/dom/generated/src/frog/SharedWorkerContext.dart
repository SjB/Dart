
class SharedWorkerContextJS extends WorkerContextJS implements SharedWorkerContext native "*SharedWorkerContext" {

  String get name() native "return this.name;";

  EventListener get onconnect() native "return this.onconnect;";

  void set onconnect(EventListener value) native "this.onconnect = value;";
}
