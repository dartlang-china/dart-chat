import 'package:angular2/core.dart';

@Component(selector: 'message-panel', templateUrl: './message-panel.html')
class MessagePanel {
  @Input()
  String currentRoom;

  @Input()
  List<String> roomList;

  @Input()
  List<String> messageList;

  @Output()
  EventEmitter onChangeRoom = new EventEmitter();

  onClickRoom(String room) {
    onChangeRoom.add(room);
  }
}
