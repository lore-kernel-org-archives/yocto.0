Subject: Re: [yocto-rocko] : fsl-community-bsp X11 build touch screen calibration issue on iMX6UL
To: yocto@lists.yoctoproject.org
From: "rohit jadhav" <rohitbjadhav1@gmail.com>
X-Originating-Location: Pune, Maharashtra, IN (157.33.98.9)
X-Originating-Platform: Linux Firefox 66
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 19 Apr 2021 03:19:52 -0700
References: <025901d48bd4$aabe8fd0$003baf70$@renuelectronics.com>
In-Reply-To: <025901d48bd4$aabe8fd0$003baf70$@renuelectronics.com>
Message-ID: <5487.1618827592883821244@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QqGa0gk7ZemMjh8LFUKj"

--QqGa0gk7ZemMjh8LFUKj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello ,
I am experiencing same issue for Rocko build rootfs with QT application fo=
r X11.

I have tried the solution provided by Max , but it did not worked for me.

as Per my log :
Using calibration data stored in /etc/pointercal.xinput
Invalid format 42060
unable to find device EETI eGalax Touch Screen
INFO: width=3D1024, height=3D600
imx6ull14x14evk login: RandR extension missing
matchbox: Cant find a keycode for keysym 269025056
matchbox: ignoring key shortcut XF86Calendar=3D!$contacts

matchbox: Cant find a keycode for keysym 2809
matchbox: ignoring key shortcut telephone=3D!$dates

matchbox: Cant find a keycode for keysym 269025050
matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop

Activating service name=3D'org.a11y.atspi.Registry'
Successfully activated service 'org.a11y.atspi.Registry'
SpiRegistry daemon is running with well-known name - org.a11y.atspi.Regist=
ry
random: nonblocking pool is initialized

I have used Touch screen module of TFT TOUCH MODULE ,MODULE NO. : SF 70175=
.

Please provide some guidance.
Thank You.

Regards
Rohit J.

--QqGa0gk7ZemMjh8LFUKj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello ,<br />I am experiencing same issue for Rocko build rootfs with QT ap=
plication for X11.<br /><br />I have tried the solution provided by Max , b=
ut it did not worked for me.<br /><br />as Per my log :<br />Using calibrat=
ion data stored in /etc/pointercal.xinput<br />Invalid format 42060<br />un=
able to find device EETI eGalax Touch Screen<br />INFO: width=3D1024, heigh=
t=3D600<br />imx6ull14x14evk login: RandR extension missing<br />matchbox: =
Cant find a keycode for keysym 269025056<br />matchbox: ignoring key shortc=
ut XF86Calendar=3D!$contacts<br /><br />matchbox: Cant find a keycode for k=
eysym 2809<br />matchbox: ignoring key shortcut telephone=3D!$dates<br /><b=
r />matchbox: Cant find a keycode for keysym 269025050<br />matchbox: ignor=
ing key shortcut XF86Start=3D!matchbox-remote -desktop<br /><br />Activatin=
g service name=3D'org.a11y.atspi.Registry'<br />Successfully activated serv=
ice 'org.a11y.atspi.Registry'<br />SpiRegistry daemon is running with well-=
known name - org.a11y.atspi.Registry<br />random: nonblocking pool is initi=
alized<br /><br />I have used Touch screen module of TFT TOUCH MODULE ,MODU=
LE NO. : SF 70175.<br /><br />Please provide some guidance.<br />Thank You.=
<br /><br />Regards<br />Rohit J.

--QqGa0gk7ZemMjh8LFUKj--
