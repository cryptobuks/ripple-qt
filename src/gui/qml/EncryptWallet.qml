import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 500
    height: 250
    title: qsTr("ripple-qt_加密钱包文件")
    flags: Qt.Dialog
    SetPassword {
        pass_label{
            text:qsTr("钱包密码")
        }

        btn_return.onClicked: {
            var passtext1=input_pass1.text;
            var passtext2=input_pass2.text;
            if(passtext1=="") return;
            if(passtext1!=passtext2){
                prompt_info.text = "两次密码输入不一致";
                return;
            }
            if(app.encryptWallet(passtext1)){
                prompt_info.text = "钱包文件已加密。";
                window.close();
            }else{
                prompt_info.text = "钱包文件加密失败！";
            }

        }
    }
}
