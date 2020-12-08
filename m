Subject: pyqt5 in yocto dunfell version #dunfell #pyqt5
To: yocto@lists.yoctoproject.org
From: anthony.marchand@navocap.com
X-Originating-Location: Suresnes, Île-de-France, FR (159.180.227.154)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Dec 2020 01:28:34 -0800
Message-ID: <aGUE.1607419714643401473.c9gk@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="buOJMyzRy8YatPWVpD7A"

--buOJMyzRy8YatPWVpD7A
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I'm trying the dunfell version of yocto, to migrate from zeus to dunfell. =
I added the layer "meta-qt5", "meta-python2", "meta-openembedded".
The problem I meet follows:
In zeus version, I installed pyqt5 in my rootfs (recipe name is: python3-p=
yqt5). Actually, I tested the command "bitbake python3-pyqt5" for zeus vers=
ion and it works fine. But for dunfell version, the same command raise an e=
rror.

The source: " https://www.riverbankcomputing.com/static/Downloads/PyQt5/5.=
13.2/PyQt5-5.13.2.tar.gz" ( https://www.riverbankcomputing.com/static/Downl=
oads/PyQt5/5.13.2/PyQt5-5.13.2.tar.gz ) seems to does not exist. I have the=
 error 404. I tested with a wget command and it's the same.

Do you have an idea about what's going wrong? Maybe the recipe for PyQt5 (=
dunfell version) point to a bad adress.

Thanks for all and best reguards.

--buOJMyzRy8YatPWVpD7A
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,<br /><br />I'm trying the dunfell version of yocto, to migr=
ate from zeus to dunfell. I added the layer "meta-qt5", "meta-python2", "me=
ta-openembedded".<br />The problem I meet follows:<br />In zeus version, I =
installed pyqt5 in my rootfs (recipe name is: python3-pyqt5). Actually, I t=
ested the command "bitbake python3-pyqt5" for zeus version and it works fin=
e. But for dunfell version, the same command raise an error. <br /><br />Th=
e source: "<a href=3D"https://www.riverbankcomputing.com/static/Downloads/P=
yQt5/5.13.2/PyQt5-5.13.2.tar.gz" target=3D"_blank" rel=3D"noopener">https:/=
/www.riverbankcomputing.com/static/Downloads/PyQt5/5.13.2/PyQt5-5.13.2.tar.=
gz" </a> seems to does not exist. I have the error 404. I tested with a wge=
t command and it's the same.<br /><br />Do you have an idea about what's go=
ing wrong? Maybe the recipe for PyQt5 (dunfell version) point to a bad adre=
ss.<br /><br />Thanks for all and best reguards.

--buOJMyzRy8YatPWVpD7A--
