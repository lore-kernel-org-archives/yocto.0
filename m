Return-Path: <drawnpoetry@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B916E00930; Wed, 10 Dec 2014 01:04:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (drawnpoetry[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3BCCE008D7
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 01:04:31 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id hq12so1190346vcb.13
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 01:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KQQpfllYf3ycAosOHymk1Gp8WgHA4pcjtxKeBtnYgJM=;
	b=PUUy7zs0VOskXwqAgzFnrHKZxLAXzzsVnHHMLKl5QwSf6VfDNR3WAmqz80mmxZnq5k
	sLZydDCjSpxjiiwZmXV9jKUYYe2gdtotnADMHILfXkQLCvgEraAXdH0oOBSiz+r0+Foo
	d+1pkrfkJDc76qzXErmajRFMc35thphcu8fLORQ9Nf/ixnL6EVP3LuMsCWV5MrQ8D28k
	5HLJc52FXjyaAWs79GjcriDCzTQnCaswQN85mEJaxoe8vwU07ruAWjv2LNpdFniYfOOM
	QPTH2gTu32nlzpqdd9A4TgHpi/Kcd5OUN9SFUS17plwmoNClcManZg1s+0uuD9TRGDMW
	bQ6w==
MIME-Version: 1.0
X-Received: by 10.220.87.204 with SMTP id x12mr2084264vcl.37.1418201508346;
	Wed, 10 Dec 2014 00:51:48 -0800 (PST)
Received: by 10.52.160.38 with HTTP; Wed, 10 Dec 2014 00:51:48 -0800 (PST)
Date: Wed, 10 Dec 2014 08:51:48 +0000
Message-ID: <CAHuO5zdAikzA4AaThUUj_m0EXua8XWTj8vaKg+ZmYpwHDhnvfQ@mail.gmail.com>
From: Daniel Oliveira <drawnpoetry@gmail.com>
To: yocto@yoctoproject.org
Subject: i.MX6Q - Adding Touch Support (YOCTO + QML + TSLIB + QT 5)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Dec 2014 09:04:40 -0000
X-Groupsio-MsgNum: 22561
Content-Type: multipart/mixed; boundary=047d7b3a7eba2018f30509d8c562

--047d7b3a7eba2018f30509d8c562
Content-Type: multipart/alternative; boundary=047d7b3a7eba2018ef0509d8c560

--047d7b3a7eba2018ef0509d8c560
Content-Type: text/plain; charset=UTF-8

Hi guys.



In the last week I'm trying to to add support to the LCD touchscreen in my
SABRE platform. The aim is to use QML based applications with touch
support. Below is the steps about what I have already tried and information
about the environment that is being used:



   - Toolchain: YOCTO on dizzy branch with the attached *local.conf*
    configuration.
   - Linux: kernel version 3.10.17
   - QT 5 to cross-compile QML applications
   - Board reference: MCIMX6Q-SDB (
   http://pt.mouser.com/ProductDetail/Freescale-Semiconductor/MCIMX6Q-SDP/?qs=WK5jcYtKv2mqpYdhkXj9Wg%3D%3D
   )
   - Display connected throught LVDS
   - No weston-wayland or X11 support
   - TSLIB support as you can see in the Local.conf file



   1. After the image bitbaike, I boot the board with the SD card and I
   configure all the TSLIB necessary environment variables:
      -

      export LD_LIBRARY_PATH=/usr/lib
      -

      export TSLIB_TSEVENTTYPE=INPUT
      -

      export QTDIR=/usr/bin/qt
      -

      export QWS_MOUSE_PROTO=tslib:/dev/input/event0
      -

      export TSLIB_CONSOLEDEVICE=none
      -

      export TSLIB_FBDEVICE=/dev/fb0
      -

      export TSLIB_CALIBFILE=/etc/pointercal
      -

      export TSLIB_TSDEVICE=/dev/input/event0
      -

      export QWS_DISPLAY=LinuxFB:mmWidth=800:mmHeight=48
      -

      export TSLIB_CONFFILE=/etc/ts.conf
      -

      export TSLIB_PLUGINDIR=/usr/lib/ts
      2.

   The configuration of the file* ts.conf* can also be seen in the attached
   file.

   Before running QtCinematicExperience I try to calibrate the touchscreen
   by using the ts_calibrate utility but the thing is that I dont receive any
   output. But the strange is that when I do "cat /dev/input/even0 | hexdump"
   command and I press the display I can see output from the touched points.

   I also try after this procedure to run QtCinematicExperience application
   by performing "QtCinematicExperience -platform eglfs -plugin tslib". The
   application runs but the touch is also not working.

   Besides, I have also try to cross-compile a QML application and run it
   in the board successfully but again the touch does not work.




   Anyone can give any inside which can be the problem?


   Best Regards.

--047d7b3a7eba2018ef0509d8c560
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin:0px;padding:0px;border:0px;font-size:13=
.3333339691162px;font-family:&#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;=
Lucida Grande&#39;,sans-serif;vertical-align:baseline;color:rgb(61,61,61);l=
ine-height:21.6666679382324px">Hi guys.</p><p style=3D"margin:0px;padding:0=
px;border:0px;font-size:13.3333339691162px;font-family:&#39;Helvetica Neue&=
#39;,Helvetica,Arial,&#39;Lucida Grande&#39;,sans-serif;vertical-align:base=
line;color:rgb(61,61,61);line-height:21.6666679382324px;min-height:8pt;heig=
ht:8pt">=C2=A0</p><p style=3D"margin:0px;padding:0px;border:0px;font-size:1=
3.3333339691162px;font-family:&#39;Helvetica Neue&#39;,Helvetica,Arial,&#39=
;Lucida Grande&#39;,sans-serif;vertical-align:baseline;color:rgb(61,61,61);=
line-height:21.6666679382324px">In the last week I&#39;m trying to to add s=
upport to the LCD touchscreen in my SABRE platform. The aim is to use QML b=
ased applications with touch support. Below is the steps about what I have =
already tried=C2=A0<span style=3D"margin:0px;padding:0px;border:0px;font-we=
ight:inherit;font-style:inherit;font-size:13.3333339691162px;font-family:in=
herit;vertical-align:baseline">and information about the environment that i=
s being used</span>:</p><p style=3D"margin:0px;padding:0px;border:0px;font-=
size:13.3333339691162px;font-family:&#39;Helvetica Neue&#39;,Helvetica,Aria=
l,&#39;Lucida Grande&#39;,sans-serif;vertical-align:baseline;color:rgb(61,6=
1,61);line-height:21.6666679382324px;min-height:8pt;height:8pt">=C2=A0</p><=
ul style=3D"margin:0px;padding:0px 0px 0px 30px;border:0px;font-size:13.333=
3339691162px;font-family:&#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;Luci=
da Grande&#39;,sans-serif;vertical-align:baseline;color:rgb(61,61,61);line-=
height:21.6666679382324px"><li style=3D"margin:0.5ex 0px;padding:0px;border=
:0px;font-weight:inherit;font-style:inherit;font-size:13.3333339691162px;fo=
nt-family:inherit;vertical-align:baseline;list-style-type:inherit">Toolchai=
n: YOCTO on dizzy branch with the attached=C2=A0<strong style=3D"margin:0px=
;padding:0px;border:0px;font-style:inherit;font-size:13.3333339691162px;fon=
t-family:inherit;vertical-align:baseline">local.conf</strong>=C2=A0configur=
ation.</li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight=
:inherit;font-style:inherit;font-size:13.3333339691162px;font-family:inheri=
t;vertical-align:baseline;list-style-type:inherit">Linux: kernel version 3.=
10.17</li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:=
inherit;font-style:inherit;font-size:13.3333339691162px;font-family:inherit=
;vertical-align:baseline;list-style-type:inherit">QT 5 to cross-compile QML=
 applications</li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font=
-weight:inherit;font-style:inherit;font-size:13.3333339691162px;font-family=
:inherit;vertical-align:baseline;list-style-type:inherit">Board reference: =
MCIMX6Q-SDB (<a class=3D"" href=3D"http://pt.mouser.com/ProductDetail/Frees=
cale-Semiconductor/MCIMX6Q-SDP/?qs=3DWK5jcYtKv2mqpYdhkXj9Wg%3D%3D" style=3D=
"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;f=
ont-size:13.3333339691162px;font-family:inherit;vertical-align:baseline;col=
or:rgb(106,115,123);text-decoration:none">http://pt.mouser.com/ProductDetai=
l/Freescale-Semiconductor/MCIMX6Q-SDP/?qs=3DWK5jcYtKv2mqpYdhkXj9Wg%3D%3D</a=
>)</li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:inh=
erit;font-style:inherit;font-size:13.3333339691162px;font-family:inherit;ve=
rtical-align:baseline;list-style-type:inherit">Display connected throught L=
VDS</li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:in=
herit;font-style:inherit;font-size:13.3333339691162px;font-family:inherit;v=
ertical-align:baseline;list-style-type:inherit">No weston-wayland or X11 su=
pport</li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:=
inherit;font-style:inherit;font-size:13.3333339691162px;font-family:inherit=
;vertical-align:baseline;list-style-type:inherit">TSLIB support as you can =
see in the Local.conf file</li></ul><p style=3D"margin:0px;padding:0px;bord=
er:0px;font-size:13.3333339691162px;font-family:&#39;Helvetica Neue&#39;,He=
lvetica,Arial,&#39;Lucida Grande&#39;,sans-serif;vertical-align:baseline;co=
lor:rgb(61,61,61);line-height:21.6666679382324px;min-height:8pt;height:8pt"=
>=C2=A0</p><ol style=3D"margin:0px;padding:0px 0px 0px 30px;border:0px;font=
-size:13.3333339691162px;font-family:&#39;Helvetica Neue&#39;,Helvetica,Ari=
al,&#39;Lucida Grande&#39;,sans-serif;vertical-align:baseline;color:rgb(61,=
61,61);line-height:21.6666679382324px"><li style=3D"margin:0.5ex 0px;paddin=
g:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:13.333333=
9691162px;font-family:inherit;vertical-align:baseline;list-style-type:inher=
it">After the image bitbaike, I boot the board with the SD card and I confi=
gure all the TSLIB necessary environment variables:<ul style=3D"margin:0px;=
padding:0px 0px 0px 30px;border:0px;font-weight:inherit;font-style:inherit;=
font-size:13.3333339691162px;font-family:inherit;vertical-align:baseline"><=
li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:inherit;fon=
t-style:inherit;font-size:13.3333339691162px;font-family:inherit;vertical-a=
lign:baseline;list-style-type:inherit"><p style=3D"margin:0px;padding:0px;b=
order:0px;font-weight:inherit;font-style:inherit;font-size:13.3333339691162=
px;font-family:inherit;vertical-align:baseline"><span style=3D"margin:0px;p=
adding:0px;border:0px;font-weight:inherit;font-style:inherit;font-family:&#=
39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,52)">e=
xport LD_LIBRARY_PATH=3D/usr/lib</span></p></li><li style=3D"margin:0.5ex 0=
px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:=
13.3333339691162px;font-family:inherit;vertical-align:baseline;list-style-t=
ype:inherit"><p style=3D"margin:0px;padding:0px;border:0px;font-weight:inhe=
rit;font-style:inherit;font-size:13.3333339691162px;font-family:inherit;ver=
tical-align:baseline"><span style=3D"margin:0px;padding:0px;border:0px;font=
-weight:inherit;font-style:inherit;font-family:&#39;Open Sans&#39;,sans-ser=
if;vertical-align:baseline;color:rgb(54,53,52)">export=C2=A0</span><span cl=
ass=3D"" style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;fon=
t-style:inherit;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:b=
aseline;color:rgb(54,53,52)">TSLIB</span><span style=3D"margin:0px;padding:=
0px;border:0px;font-weight:inherit;font-style:inherit;font-family:&#39;Open=
 Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,52)">_TSEVENT=
TYPE=3DINPUT</span></p></li><li style=3D"margin:0.5ex 0px;padding:0px;borde=
r:0px;font-weight:inherit;font-style:inherit;font-size:13.3333339691162px;f=
ont-family:inherit;vertical-align:baseline;list-style-type:inherit"><p styl=
e=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inher=
it;font-size:13.3333339691162px;font-family:inherit;vertical-align:baseline=
"><span style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font=
-style:inherit;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:ba=
seline;color:rgb(54,53,52)">export=C2=A0</span><span class=3D"" style=3D"ma=
rgin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font=
-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54=
,53,52)">QTDIR</span><span style=3D"margin:0px;padding:0px;border:0px;font-=
weight:inherit;font-style:inherit;font-family:&#39;Open Sans&#39;,sans-seri=
f;vertical-align:baseline;color:rgb(54,53,52)">=3D/usr/bin/qt</span></p></l=
i><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:inherit;=
font-style:inherit;font-size:13.3333339691162px;font-family:inherit;vertica=
l-align:baseline;list-style-type:inherit"><p style=3D"margin:0px;padding:0p=
x;border:0px;font-weight:inherit;font-style:inherit;font-size:13.3333339691=
162px;font-family:inherit;vertical-align:baseline"><span style=3D"margin:0p=
x;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font-family=
:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,52)=
">export=C2=A0</span><span class=3D"" style=3D"margin:0px;padding:0px;borde=
r:0px;font-weight:inherit;font-style:inherit;font-family:&#39;Open Sans&#39=
;,sans-serif;vertical-align:baseline;color:rgb(54,53,52)">QWS</span><span s=
tyle=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:in=
herit;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;co=
lor:rgb(54,53,52)">_MOUSE_PROTO=3Dtslib:/dev/input/event0</span></p></li><l=
i style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:inherit;font=
-style:inherit;font-size:13.3333339691162px;font-family:inherit;vertical-al=
ign:baseline;list-style-type:inherit"><p style=3D"margin:0px;padding:0px;bo=
rder:0px;font-weight:inherit;font-style:inherit;font-size:13.3333339691162p=
x;font-family:inherit;vertical-align:baseline"><span style=3D"margin:0px;pa=
dding:0px;border:0px;font-weight:inherit;font-style:inherit;font-family:&#3=
9;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,52)">ex=
port=C2=A0</span><span class=3D"" style=3D"margin:0px;padding:0px;border:0p=
x;font-weight:inherit;font-style:inherit;font-family:&#39;Open Sans&#39;,sa=
ns-serif;vertical-align:baseline;color:rgb(54,53,52)">TSLIB</span><span sty=
le=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inhe=
rit;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;colo=
r:rgb(54,53,52)">_CONSOLEDEVICE=3Dnone</span></p></li><li style=3D"margin:0=
.5ex 0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font=
-size:13.3333339691162px;font-family:inherit;vertical-align:baseline;list-s=
tyle-type:inherit"><p style=3D"margin:0px;padding:0px;border:0px;font-weigh=
t:inherit;font-style:inherit;font-size:13.3333339691162px;font-family:inher=
it;vertical-align:baseline"><span style=3D"margin:0px;padding:0px;border:0p=
x;font-weight:inherit;font-style:inherit;font-family:&#39;Open Sans&#39;,sa=
ns-serif;vertical-align:baseline;color:rgb(54,53,52)">export=C2=A0</span><s=
pan class=3D"" style=3D"margin:0px;padding:0px;border:0px;font-weight:inher=
it;font-style:inherit;font-family:&#39;Open Sans&#39;,sans-serif;vertical-a=
lign:baseline;color:rgb(54,53,52)">TSLIB</span><span style=3D"margin:0px;pa=
dding:0px;border:0px;font-weight:inherit;font-style:inherit;font-family:&#3=
9;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,52)">_F=
BDEVICE=3D/dev/fb0</span></p></li><li style=3D"margin:0.5ex 0px;padding:0px=
;border:0px;font-weight:inherit;font-style:inherit;font-size:13.33333396911=
62px;font-family:inherit;vertical-align:baseline;list-style-type:inherit"><=
p style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style=
:inherit;font-size:13.3333339691162px;font-family:inherit;vertical-align:ba=
seline"><span style=3D"margin:0px;padding:0px;border:0px;font-weight:inheri=
t;font-style:inherit;font-family:&#39;Open Sans&#39;,sans-serif;vertical-al=
ign:baseline;color:rgb(54,53,52)">export=C2=A0</span><span class=3D"" style=
=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inheri=
t;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:=
rgb(54,53,52)">TSLIB</span><span style=3D"margin:0px;padding:0px;border:0px=
;font-weight:inherit;font-style:inherit;font-family:&#39;Open Sans&#39;,san=
s-serif;vertical-align:baseline;color:rgb(54,53,52)">_CALIBFILE=3D/etc/poin=
tercal</span></p></li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;=
font-weight:inherit;font-style:inherit;font-size:13.3333339691162px;font-fa=
mily:inherit;vertical-align:baseline;list-style-type:inherit"><p style=3D"m=
argin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;fon=
t-size:13.3333339691162px;font-family:inherit;vertical-align:baseline"><spa=
n style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style=
:inherit;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline=
;color:rgb(54,53,52)">export=C2=A0</span><span class=3D"" style=3D"margin:0=
px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font-famil=
y:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,52=
)">TSLIB</span><span style=3D"margin:0px;padding:0px;border:0px;font-weight=
:inherit;font-style:inherit;font-family:&#39;Open Sans&#39;,sans-serif;vert=
ical-align:baseline;color:rgb(54,53,52)">_TSDEVICE=3D/dev/input/event0</spa=
n></p></li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight=
:inherit;font-style:inherit;font-size:13.3333339691162px;font-family:inheri=
t;vertical-align:baseline;list-style-type:inherit"><p style=3D"margin:0px;p=
adding:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:13.3=
333339691162px;font-family:inherit;vertical-align:baseline"><span style=3D"=
margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;fo=
nt-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(=
54,53,52)"><span style=3D"margin:0px;padding:0px;border:0px;font-weight:inh=
erit;font-style:inherit;vertical-align:baseline">export=C2=A0</span><span c=
lass=3D"" style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;fo=
nt-style:inherit;vertical-align:baseline">QWS</span><span style=3D"margin:0=
px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;vertical-a=
lign:baseline">_DISPLAY=3DLinuxFB:mmWidth=3D800:mmHeight=3D48</span></span>=
</p></li><li style=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:i=
nherit;font-style:inherit;font-size:13.3333339691162px;font-family:inherit;=
vertical-align:baseline;list-style-type:inherit"><p style=3D"margin:0px;pad=
ding:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:13.333=
3339691162px;font-family:inherit;vertical-align:baseline"><span style=3D"ma=
rgin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font=
-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54=
,53,52)">export=C2=A0</span><span class=3D"" style=3D"margin:0px;padding:0p=
x;border:0px;font-weight:inherit;font-style:inherit;font-family:&#39;Open S=
ans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,52)">TSLIB</spa=
n><span style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font=
-style:inherit;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:ba=
seline;color:rgb(54,53,52)">_CONFFILE=3D/etc/ts.conf</span></p></li><li sty=
le=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:inherit;font-styl=
e:inherit;font-size:13.3333339691162px;font-family:inherit;vertical-align:b=
aseline;list-style-type:inherit"><p style=3D"margin:0px;padding:0px;border:=
0px;font-weight:inherit;font-style:inherit;font-size:13.3333339691162px;fon=
t-family:inherit;vertical-align:baseline"><span style=3D"margin:0px;padding=
:0px;border:0px;font-weight:inherit;font-style:inherit;font-family:&#39;Ope=
n Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,52)">export=
=C2=A0</span><span class=3D"" style=3D"margin:0px;padding:0px;border:0px;fo=
nt-weight:inherit;font-style:inherit;font-family:&#39;Open Sans&#39;,sans-s=
erif;vertical-align:baseline;color:rgb(54,53,52)">TSLIB</span><span style=
=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inheri=
t;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:=
rgb(54,53,52)">_PLUGINDIR=3D/usr/lib/ts</span></p></li></ul></li><li style=
=3D"margin:0.5ex 0px;padding:0px;border:0px;font-weight:inherit;font-style:=
inherit;font-size:13.3333339691162px;font-family:inherit;vertical-align:bas=
eline;list-style-type:inherit"><p style=3D"margin:0px;padding:0px;border:0p=
x;font-weight:inherit;font-style:inherit;font-size:13.3333339691162px;font-=
family:inherit;vertical-align:baseline"><span style=3D"margin:0px;padding:0=
px;border:0px;font-weight:inherit;font-style:inherit;font-size:10pt;font-fa=
mily:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53=
,52);line-height:1.5em">The configuration of the file<strong style=3D"margi=
n:0px;padding:0px;border:0px;font-style:inherit;font-size:13.3333339691162p=
x;font-family:inherit;vertical-align:baseline">=C2=A0ts.conf</strong>=C2=A0=
can also be seen in the attached file.</span></p><p style=3D"margin:0px;pad=
ding:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:13.333=
3339691162px;font-family:inherit;vertical-align:baseline"><span style=3D"ma=
rgin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font=
-size:10pt;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseli=
ne;color:rgb(54,53,52);line-height:1.5em">Before running QtCinematicExperie=
nce I try to calibrate the touchscreen by using the ts_calibrate utility bu=
t the thing is that I dont receive any output. But the strange is that when=
 I do &quot;cat /dev/input/even0 | hexdump&quot; command and I press the di=
splay I can see output from the touched points.</span></p><p style=3D"margi=
n:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font-si=
ze:13.3333339691162px;font-family:inherit;vertical-align:baseline"><span st=
yle=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inh=
erit;font-size:10pt;font-family:&#39;Open Sans&#39;,sans-serif;vertical-ali=
gn:baseline;color:rgb(54,53,52);line-height:1.5em">I also try after this pr=
ocedure to run=C2=A0<span style=3D"margin:0px;padding:0px;border:0px;font-w=
eight:inherit;font-style:inherit;font-size:13.3333339691162px;vertical-alig=
n:baseline">QtCinematicExperience application by performing &quot;<span sty=
le=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inhe=
rit;font-size:13.3333339691162px;vertical-align:baseline">QtCinematicExperi=
ence -platform eglfs -plugin tslib&quot;. The application runs but the touc=
h is also not working.</span></span></span></p><p style=3D"margin:0px;paddi=
ng:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:13.33333=
39691162px;font-family:inherit;vertical-align:baseline"><span style=3D"marg=
in:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font-s=
ize:13.3333339691162px;font-family:&#39;Open Sans&#39;,sans-serif;vertical-=
align:baseline;line-height:1.5em;color:rgb(54,53,52)">Besides, I have also =
try to cross-compile a QML application and run it in the board successfully=
 but again the touch does not work.</span></p><p style=3D"margin:0px;paddin=
g:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:13.333333=
9691162px;font-family:inherit;vertical-align:baseline"><span style=3D"margi=
n:0px;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font-si=
ze:13.3333339691162px;font-family:&#39;Open Sans&#39;,sans-serif;vertical-a=
lign:baseline;line-height:1.5em;color:rgb(54,53,52)"><br></span></p><p styl=
e=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inher=
it;font-size:13.3333339691162px;font-family:inherit;vertical-align:baseline=
"><span style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font=
-style:inherit;font-size:13.3333339691162px;font-family:&#39;Open Sans&#39;=
,sans-serif;vertical-align:baseline;color:rgb(54,53,52);line-height:1.5em">=
<br></span></p><p style=3D"margin:0px;padding:0px;border:0px;font-weight:in=
herit;font-style:inherit;font-size:13.3333339691162px;font-family:inherit;v=
ertical-align:baseline"><span style=3D"margin:0px;padding:0px;border:0px;fo=
nt-weight:inherit;font-style:inherit;font-size:13.3333339691162px;font-fami=
ly:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;color:rgb(54,53,5=
2);line-height:1.5em"><br></span></p><p style=3D"margin:0px;padding:0px;bor=
der:0px;font-weight:inherit;font-style:inherit;font-size:13.3333339691162px=
;font-family:inherit;vertical-align:baseline"><span style=3D"margin:0px;pad=
ding:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:13.333=
3339691162px;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:base=
line;color:rgb(54,53,52);line-height:1.5em">Anyone can give any inside whic=
h can be the problem?</span></p><p style=3D"margin:0px;padding:0px;border:0=
px;font-weight:inherit;font-style:inherit;font-size:13.3333339691162px;font=
-family:inherit;vertical-align:baseline"><span style=3D"margin:0px;padding:=
0px;border:0px;font-weight:inherit;font-style:inherit;font-size:13.33333396=
91162px;font-family:&#39;Open Sans&#39;,sans-serif;vertical-align:baseline;=
color:rgb(54,53,52);line-height:1.5em"><br></span></p><p style=3D"margin:0p=
x;padding:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:1=
3.3333339691162px;font-family:inherit;vertical-align:baseline"><span style=
=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-style:inheri=
t;font-size:13.3333339691162px;font-family:&#39;Open Sans&#39;,sans-serif;v=
ertical-align:baseline;color:rgb(54,53,52);line-height:1.5em">Best Regards.=
</span></p></li></ol></div>

--047d7b3a7eba2018ef0509d8c560--

--047d7b3a7eba2018f30509d8c562
Content-Type: application/zip; name="local.conf.zip"
Content-Disposition: attachment; filename="local.conf.zip"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i3igjwub0

UEsDBBQACAAIAGBNiUUAAAAAAAAAAAAAAAAKAAAAbG9jYWwuY29uZoVWS2/bOBA+r34FIRTwIeHW
zhZ7KwrFVlIjfsGSgx4KCJRIy1w9yJCUE2+x/32HkuzYkZL6YM18M/NxOHwM5974+3Tho2/fvqIB
L17+ftIkVkzTgTOZBuF6iaxBiuwwcFbe+MG796PxzAsCP7AWV5IkIymLlCxcx/8Rrr1oOrdOd74X
btbgBU6UxVWKzTMjmUZa77Bmas8UFpKVoCLXcZqg6SIIvdksIhIs1IaiNElQenWFYl5Whuca5Ty2
WPPBlO2tqA1NwOkkXeJYG2J4YrGfDqmMSES5RVYoSMZQkpBkB59dZnGeohQiccnMs1AZLxu9KCC2
nW2qRCVxIhTDccVzyrRmpeEkRzJLWw7wjoXQBiX1GP8CRcN78+cQXfBsdY6NELnGhkGiUmqUcmOd
9wxYEPyMtpF11o1oPfURJvCviGGN3oaoKj60YiKrrWJPTfkaqCSlaMWUHkNSbRQjBVOvOi6YIXjP
KRNnoM1Y5lXKyzOwATSOiWYYZvGOqQdOhaDvwFgZ3cdU2yr6rkkZWZASSqw+8HjPVE/3Sw4b7uWm
9Wl3KtZbI9vd21o6S/m2ir9b6w+9YlYmu4KorHWDE4r3sjrTLA/6abU/auzJ1AuwFaU5crdQO8dL
sB7mEmIvpJA5e0UpS3ICG+x1P15gHeJz2yX/ueWjYfBTkb9lLarc8IJRTnqgTg5nps5AZ7aecfQ+
PZc7zHDUtVCvOi9g3bZCFcTorvNBG1Z09DdlOaKdTI+GvjQTxaU5qX/RM7FLBFgPB6CXiTyzOOPm
jXpi69K2Dj3UqSJyx+FqYtstS0zvFOA+K8HG99wc+uy5SGA3iLJT1ZOhE5TwkhX2rmcvkikOp+e4
ZRPClYBjVqYC2cPRXtNwMTJzkAzJKteMVJQLROPqyEdyTbC9VGuhKVYt2o7CGrG+V7EV6wvaHt4a
v8yM3yTHYqMacNsGe+qUkWKFgCMGXe9lNELP5JCTkrrOJvDXFz237jk2AY3qzYeLzLa6VpGKwdWV
udCuw/F34F3OHn1LWgohXef2NoJxH+bLBXzXdXtuEgzC5Sr0gofg+tOvcL4C43/Xo/vr0XD4gLoe
k1n0G48AWnno93l5t8t1eD7KcDi/Hr21nkbotV6wNx4uOr5QxsvF3fS+fUVEEvYJKypcNjeYfVRo
mrvvOjd+mmZ12Ks/LMBm7ker9fJxOvEn6Aostu40b0Ncx3JFj/46mC4XNnAELxso+GIzv4U1DGE1
vIkt+eCLfU2t4anjz6K592DXZ4D/QQA7zbzrhf706zaoS/SZiucyF4Tqz5DHeOyvwugumEX+ZubZ
cVznf1BLBwiCP6O53gMAAMgJAABQSwECFAAUAAgACABgTYlFgj+jud4DAADICQAACgAAAAAAAAAA
AAAAAAAAAAAAbG9jYWwuY29uZlBLBQYAAAAAAQABADgAAAAWBAAAAAA=

--047d7b3a7eba2018f30509d8c562
Content-Type: application/zip; name="ts.conf.zip"
Content-Disposition: attachment; filename="ts.conf.zip"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i3igjwuk1

UEsDBBQACAAIAGBNiUUAAAAAAAAAAAAAAAAHAAAAdHMuY29uZpWST08CMRDF7/spJuHgydhlBbxw
EC5sogkJEhMvZugOdLTbXbstf769A4gBPGy8TNP3pr9OX9qBudNVWZILwEvYVRE23BgIFcSGIBgC
yy5ugV0dA1jckQdaH9pdIL9ETUlZFdHSu8fNsS1JOn+wN56EyG4FCDODvoY3jD42MHu67fWUutuv
SqlCzp7xdGUt03+B44EAx4PevvSlPPTVNdavuI1a0Jo1SR7ByG4+HqVdwabZvtwrBS+zswwu8FEv
0q1SLRc4mEyBp/gFJusLr/LQcMkW/SXt4LYNO+GA2jC80qLGqxDLz0HabR0mHz3Do9eBNeT5JQAP
siCOGtTBeGqgLtkN05O4Rs/oJLCCbMBhpk5GQR8cJKcfI1W/jnwtktd+A1BLBwjsXta2IwEAAIUC
AABQSwECFAAUAAgACABgTYlF7F7WtiMBAACFAgAABwAAAAAAAAAAAAAAAAAAAAAAdHMuY29uZlBL
BQYAAAAAAQABADUAAABYAQAAAAA=

--047d7b3a7eba2018f30509d8c562--
