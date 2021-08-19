Subject: YOCTO Zeus: Qt remote objects compiler repc missing from sdk toolchain #toolchain #sdk #qtremoteobjects #repc
To: yocto@lists.yoctoproject.org
From: anthony.marchand@navocap.com
X-Originating-Location: Paris, Île-de-France, FR (159.180.227.154)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Aug 2021 03:14:19 -0700
Message-ID: <S19N.1629368059404206235.Rbcb@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Gyqy02VS0xYT81WzGkm9"

--Gyqy02VS0xYT81WzGkm9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I permit myself to contact you because I got a weird issue in my sdk toolch=
ain.

So, as I need " qtremoteobjects" in my embedded linux image, I add it like =
this:

----------------------------------------------------
QT =3D " \
qtbase \
qtbase-dev \
qtbase-plugins \
qtbase-mkspecs \
qtbase-tools \
cinematicexperience \
qtgraphicaleffects \
qtquickcontrols \
qtquickcontrols2 \
qtquickcontrols-qmlplugins \
qtsvg \
qtserialport \
qtserialbus \
qtremoteobjects \
qtremoteobjects-dev \
qtmultimedia \
qtwebsockets \
"
PACKAGECONFIG_pn-qtvirtualkeyboard =3D "lang-fr_FR"
PACKAGECONFIG_DEFAULT_pn-qtbase =3D "widgets libs freetype tslib gles2 eglf=
s"

TOUCHSCREEN =3D " \
tslib tslib-conf tslib-tests tslib-calibrate \
"

IMAGE_INSTALL +=3D " \
bash \
sudo \
environment \
opkg \
os-release \
${QT} \
"

#IMAGE_INSTALL_append_mx6 =3D " ${MX6TOOL}"

IMAGE_FEATURES +=3D " \
ssh-server-openssh \
"

export IMAGE_BASENAME =3D "myimage"

----------------------------------------------------
So it's work fine when I flash it in my card, but after building SDK, "repc=
" is missing in /sysroots/cortexa9t2hf-neon-poky-linux-gnueabi /usr/bin .=
=C2=A0 More precisly, it is present, but located in:

/sysroots/cortexa9t2hf-neon-poky-linux-gnueabi/ usr/bin/.debug/repc

And when I compile my app, I got the following error:

Pre build error --> make[2]: /opt/poky/MY_SDK/sysroots/x86_64-pokysdk-linux=
/usr/bin/repc: Command not found

because "make" seems to try to find repc in "/usr/bin/repc" rather than " /=
 usr/bin/.debug/repc" . But when I link or move repc from " / usr/bin/.debu=
g/repc" to "/usr/bin/repc", it gives me a "segment fault error" when I try =
to make my app.
I saw a similar issue on the web but it does not resolve my problem: https:=
//e2e.ti.com/support/processors-group/processors/f/processors-forum/902941/=
processor-sdk-am437x-qt-remote-objects-compiler-repc-missing-from-sdk-toolc=
hain

Does anyone already encontered this problem with qtremote control? Do you h=
ave got any idea about what is going wrong?

By advance, thanks for all, best reguards.

--Gyqy02VS0xYT81WzGkm9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I permit myself to contact you because I got a weird issu=
e in my sdk toolchain.<br /><br />So, as I need "<span style=3D"font-family=
: Verdana, Arial, Helvetica, sans-serif; background-color: #f9f9f9;">qtremo=
teobjects" in my embedded linux image, I add it like this:<br /><br />-----=
-----------------------------------------------<br /></span>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">QT =3D " \<br />qtbase \<br />qtbase-dev \<br />=
qtbase-plugins \<br />qtbase-mkspecs \<br />qtbase-tools \<br />cinematicex=
perience \<br />qtgraphicaleffects \<br />qtquickcontrols \<br />qtquickcon=
trols2 \<br />qtquickcontrols-qmlplugins \<br />qtsvg \<br />qtserialport \=
<br />qtserialbus \<br />qtremoteobjects \<br />qtremoteobjects-dev \<br />=
qtmultimedia \<br />qtwebsockets \<br />"</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">PACKAGECONFIG_pn-qtvirtualkeyboard =3D "lang-fr_=
FR"<br />PACKAGECONFIG_DEFAULT_pn-qtbase =3D "widgets libs freetype tslib g=
les2 eglfs"</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">&nbsp;</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">TOUCHSCREEN =3D " \<br />tslib tslib-conf tslib-=
tests tslib-calibrate \<br />"</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">&nbsp;</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">IMAGE_INSTALL +=3D " \<br />bash \<br />sudo \<b=
r />environment \<br />opkg \<br />os-release \<br />${QT} \<br />"</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">&nbsp;</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">#IMAGE_INSTALL_append_mx6 =3D " ${MX6TOOL}"</div=
>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">&nbsp;</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">IMAGE_FEATURES +=3D " \<br />ssh-server-openssh =
\<br />"</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">&nbsp;</div>
<div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">export IMAGE_BASENAME =3D "myimage"<br /><br /><=
span style=3D"font-family: Verdana, Arial, Helvetica, sans-serif; backgroun=
d-color: #f9f9f9;">----------------------------------------------------<br =
/></span><span style=3D"font-size: 11pt;">So it's work fine when I flash it=
 in my card, but after building SDK, "repc" is missing in&nbsp;<span style=
=3D"background-color: #f9f9f9; font-family: Verdana, Arial, Helvetica, sans=
-serif;">/sysroots/cortexa9t2hf-neon-poky-linux-gnueabi</span>/usr/bin .&nb=
sp; More precisly, it is present, but located in:</span></div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;"><span style=3D"font-size: 11pt;"><span style=3D"=
font-family: custom;"><br /></span><span style=3D"background-color: #f9f9f9=
;"><span style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">/sys=
roots/cortexa9t2hf-neon-poky-linux-gnueabi/</span></span><span style=3D"fon=
t-family: custom;">usr/bin/.debug/repc<br /><br /></span><span style=3D"fon=
t-family: Verdana, Arial, Helvetica, sans-serif; background-color: #f9f9f9;=
">And when I compile my app, I got the following error: </span></span></div=
>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">&nbsp;</div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;"><span style=3D"font-size: 11pt;">Pre build error=
 --&gt; make[2]: /opt/poky/MY_SDK/sysroots/x86_64-pokysdk-linux/usr/bin/rep=
c: Command not found</span><br /><br /><span style=3D"font-size: 11pt;">bec=
ause "make" seems to try to find repc in "/usr/bin/repc" rather than "<span=
 style=3D"background-color: #f9f9f9;"><span style=3D"font-family: Verdana, =
Arial, Helvetica, sans-serif;">/</span></span><span style=3D"font-family: c=
ustom;">usr/bin/.debug/repc" . But when I link or move repc from&nbsp;</spa=
n>"<span style=3D"background-color: #f9f9f9;"><span style=3D"font-family: V=
erdana, Arial, Helvetica, sans-serif;">/</span></span><span style=3D"font-f=
amily: custom;">usr/bin/.debug/repc" to&nbsp;</span>&nbsp;"/usr/bin/repc", =
it gives me a "segment fault error" when I try to make my app.</span></div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;"><span style=3D"font-size: 11pt;">I saw a similar=
 issue on the web but it does not resolve my problem:&nbsp;<a href=3D"https=
://e2e.ti.com/support/processors-group/processors/f/processors-forum/902941=
/processor-sdk-am437x-qt-remote-objects-compiler-repc-missing-from-sdk-tool=
chain" target=3D"_blank" rel=3D"noopener">https://e2e.ti.com/support/proces=
sors-group/processors/f/processors-forum/902941/processor-sdk-am437x-qt-rem=
ote-objects-compiler-repc-missing-from-sdk-toolchain</a><br /><br /></span>=
</div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;"><span style=3D"font-size: 11pt;">Does anyone alr=
eady encontered this problem with qtremote control? Do you have got any ide=
a about what is going wrong?</span></div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;">&nbsp;</div>
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif;"><span style=3D"font-size: 11pt;">By advance, tha=
nks for all, best reguards.&nbsp;&nbsp;</span></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

--Gyqy02VS0xYT81WzGkm9--
