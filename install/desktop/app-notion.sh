cat <<EOF >~/.local/share/applications/Notion.desktop
[Desktop Entry]
Version=1.0
Name=Notion
Comment=
Exec=google-chrome --app="https://notion.so/" --name=Notion --class=Notion
Terminal=false
Type=Application
Icon=
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
