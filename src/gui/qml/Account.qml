import QtQuick 2.0

QtObject {
    property string id: ""
    property string key: ""
    property string balance: ""
    property string freeze: "20"
    property string sequence: ""
    property string flag: ""
    property bool lock
    property string keyshowstr: qsTr("key locked")
    property string keyhidestr: qsTr("*********")
    property ListModel currencyModel :ListModel {}
}
