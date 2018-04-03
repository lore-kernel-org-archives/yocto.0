Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D194DE00956; Mon,  2 Apr 2018 23:15:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f48.google.com (mail-pl0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D84E00873
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 23:15:02 -0700 (PDT)
Received: by mail-pl0-f48.google.com with SMTP id s10-v6so5528219plp.0
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 23:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BW5dNnTWVdYmUvXIBIzx52OA5lzW0FFAFOt3KibcrGQ=;
	b=Dm+IodEU8s3CV0+xU54ceeYLIymslSvIsHvYLe8EziMFtKTQw+w3b019z573D61r8n
	VImzm+mEtJUVOcZ24d6wv4Kb6bCi01F02L8jwVC/HwVPw/HEa4RV99i+PzJCDhfe3SGD
	lHJXHPmoyH7FsNlxKZEVHFG1pkVozuo/Xj4LCCf8smHby0qvQmq+7U8FYVIKNmR70qNQ
	77FFBaM9jRMAVNXM6vOvx9cBpMr6EANKDwlUnuwWCmHhd4FFIluCA5WnNCXHQFnVU+Z7
	WaWctY+kCclnnecj3wz8GsKVaCERJ65dBbiP3J7ylckFobDtoztolG/RJkFIZzIUXPDw
	Flcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BW5dNnTWVdYmUvXIBIzx52OA5lzW0FFAFOt3KibcrGQ=;
	b=OI5sBfORyUTDf8x5nvj4mUcCIGk674m03ROLRCeTqePhDi+Yv5d0V9tKCRUwXj6czx
	IC3MZfsL4dbaAWsPRd2t3ApdK+PWoQwl26Mj9shyuN/kx0vPqljBFnlKf+07njJalpXx
	nb3oswy+z1KrqvoqKu/S0WazLnE16A8AyadvzKpTajO91e+YIFcxov1+jjQQyUDzgqVm
	unSDWXMifGV7qeXmWoFXXbtw2Rtatf85zngBVo5bNNVSO2w0crg9oF8AgfYu0FgPxdS1
	WCqAXihlm9G/jV0SuhhcMtEpJ5kEiiO8NVGisuxdqPlz7c0d+B3Twie/5yataFqauHFx
	X84g==
X-Gm-Message-State: AElRT7FeIZYDyr5Jd2x+TkrehPTE8C6b0vBEUrQnI61Kw6aCXayYQVX0
	PyQKkiCtkOhzUoTuRLDDzl7JD5e+xYZsu+FBPWA=
X-Google-Smtp-Source: AIpwx4/36p4OUItlVrJz1IO/EQzNy6SIhEsJUHFi/MawGrjvSMzeC/Bt0JDzIeE37MBevgegP4EjZJSpPf3Q4tQrmIA=
X-Received: by 2002:a17:902:6b45:: with SMTP id
	g5-v6mr12476573plt.171.1522736101937; 
	Mon, 02 Apr 2018 23:15:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.155.66 with HTTP; Mon, 2 Apr 2018 23:15:01 -0700 (PDT)
In-Reply-To: <CAEhQi8ny5u73B7WOLBq+E0kBo0w_y2p6R4_o53pE6=yZ9cuyVw@mail.gmail.com>
References: <CAPb0b+N-ZJBZibsfyzqy9o8jrzsXAKa2Ke495bVm_py_uw2ttg@mail.gmail.com>
	<CAEhQi8ny5u73B7WOLBq+E0kBo0w_y2p6R4_o53pE6=yZ9cuyVw@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Tue, 3 Apr 2018 08:15:01 +0200
Message-ID: <CAPb0b+NUXbp6grFMbneFzryNnTtXwFU7aKkTHKHGrc+Fo1o0cg@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to add pulseaudio
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
X-List-Received-Date: Tue, 03 Apr 2018 06:15:03 -0000
Content-Type: multipart/alternative; boundary="00000000000071560a0568eba049"

--00000000000071560a0568eba049
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi

i used the following

DISTRO_FEATURES_append +=3D " ext2 pulseaudio pam usbhost sbc  alsa-plugins
${DISTRO_FEATURES_LIBC}"
PACKAGECONFIG_pulseaudio +=3D " --with-access-group=3Daudio --enable-bluez5
--disable-x11 --disable-systemd-daemon"

IMAGE_INSTALL_append=3D " pulseaudio-server libpulsecore sbc
pulseaudio-module-bluetooth-discover pulseaudio-module-bluez5-device
pulseaudio-module-bluez5-discover pulseaudio-module-loopback
pulseaudio-module-rtp-send pulseaudio-module-rtp-recv
pulseaudio-module-bluetooth-policy pulseaudio-misc python dbus gconf
glib-2.0 pulseaudio-module-alsa-card pulseaudio-module-alsa-source
pulseaudio-module-alsa-sink pulseaudio-module-cli libasound libcap libgcc
libltdl liborc-0.4-0 libpulse libsndfile1 libstdc++ libtdb libudev
alsa-utils alsa-utils-speakertest pulseaudio-module-dbus-protocol"
IMAGE_INSTALL_append +=3D " pulseaudiostart "
DISTRO_FEATURES_remove =3D " x11 "


but when i start pulseaudio now, i get unable to contat dbus:
org.freedesktop.dbus.error.notsupported: using x11 for dbus-daemoun
autolaunch was disabled at compile time, set your Dbus_session_bus_address
instead.

On Tue, Mar 27, 2018 at 10:46 AM, M=C3=A5ns Zigher <mans.zigher@gmail.com> =
wrote:

> I am no expert but basically the DISTRO_FEATURES is normally used to
> inform recipes about what kind of feature you would like to have. A recip=
e
> based on the DISTRO_FEATURES can then include take action on certain
> DISTRO_FEATURES. In the yocto ref manual you can read
>
> "In most cases, the presence or absence of a feature in DISTRO_FEATURES i=
s
> translated to the appropriate option supplied to the configure script
> during the do_configure
> <https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref=
-tasks-configure> task
> for recipes that optionally support the feature"
>
> Since pulseaudio is not by default shipped by the Yocto Project metadata =
I
> guess you have included some other meta layer to get this feature. But to
> me it looks like you have included pulseaudio in the wrong place it shoul=
d
> be included in the IMAGE_INSTALL_append. If supported you should include
> just pulseaudio in the DISTRO_FEATURES_append if that is supported as a
> DISTRO_FEATURE in your build to inform recipes about it so that if
> supported the pulsaudio support is included. I suggest to try
>
> DISTRO_FEATURES_append +=3D " ext2 pam usbhost ${DISTRO_FEATURES_LIBC}
> pulseaudio"
> IMAGE_INSTALL_append +=3D " python dbus gconf glib-2.0 pulseaudio
> pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth"
>
> A DISTRO_FEATURES is not necessarily mapped to a package so based on that
> the pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth looks
> strange to be included in the DISTRO_FEATURES_append since those looks li=
ke
> packages and not a feature. Also I believe that you still need include
> pulseaudio in IMAGE_INSTALL_append since it not necessarily mapped to
> package but I could be wrong since bitbake and OE surprises me all the ti=
me
> on what it can figure out on it's own.
>
> BR
> Mans Zigher
>
> 2018-03-26 22:17 GMT+02:00 Sherif Omran <sherifomran2000@gmail.com>:
>
>> hello
>>
>> i am trying to add pulse audio to an image but i don't get pulse audio
>> being installed in the image
>>
>> I am using the following
>> DISTRO_FEATURES_append +=3D " ext2 pam usbhost ${DISTRO_FEATURES_LIBC}
>> pulseaudio pulseaudio-module-dbus-protocol pulseaudio-module-bluetooth"
>> IMAGE_INSTALL_append +=3D " python dbus gconf glib-2.0"
>>
>> what am i doing wrong?
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--00000000000071560a0568eba049
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hi<br><br></div>i used the following<br><br>DIST=
RO_FEATURES_append +=3D &quot; ext2 pulseaudio pam usbhost sbc=C2=A0 alsa-p=
lugins ${DISTRO_FEATURES_LIBC}&quot;<br>PACKAGECONFIG_pulseaudio +=3D &quot=
; --with-access-group=3Daudio --enable-bluez5 --disable-x11 --disable-syste=
md-daemon&quot; <br><br>IMAGE_INSTALL_append=3D &quot; pulseaudio-server li=
bpulsecore sbc pulseaudio-module-bluetooth-discover pulseaudio-module-bluez=
5-device pulseaudio-module-bluez5-discover pulseaudio-module-loopback pulse=
audio-module-rtp-send pulseaudio-module-rtp-recv pulseaudio-module-bluetoot=
h-policy pulseaudio-misc python dbus gconf glib-2.0 pulseaudio-module-alsa-=
card pulseaudio-module-alsa-source pulseaudio-module-alsa-sink pulseaudio-m=
odule-cli libasound libcap libgcc libltdl liborc-0.4-0 libpulse libsndfile1=
 libstdc++ libtdb libudev alsa-utils alsa-utils-speakertest pulseaudio-modu=
le-dbus-protocol&quot;<br>IMAGE_INSTALL_append +=3D &quot; pulseaudiostart =
&quot;<br>DISTRO_FEATURES_remove =3D &quot; x11 &quot;<br><br><br></div>but=
 when i start pulseaudio now, i get unable to contat dbus: org.freedesktop.=
dbus.error.notsupported: using x11 for dbus-daemoun autolaunch was disabled=
 at compile time, set your Dbus_session_bus_address instead.<br></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Mar 27, 2018 a=
t 10:46 AM, M=C3=A5ns Zigher <span dir=3D"ltr">&lt;<a href=3D"mailto:mans.z=
igher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I am no expert but b=
asically the DISTRO_FEATURES is normally used to inform recipes about what =
kind of feature you would like to have. A recipe based on the DISTRO_FEATUR=
ES can then include take action on certain DISTRO_FEATURES. In the yocto re=
f manual you can read<div><br></div><div><span style=3D"color:rgb(51,51,51)=
;font-family:Verdana,Sans,sans-serif;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">&quot;In most cas=
es, the presence or absence of a feature in=C2=A0</span><code class=3D"m_-3=
517469458418210256gmail-filename" style=3D"font-family:Courier,monospace;co=
lor:rgb(51,51,51);font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial">DISTRO_FEATURES</code><span style=3D"color:rgb(51,51,51);font-=
family:Verdana,Sans,sans-serif;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline"><span>=C2=A0</span>is t=
ranslated to the appropriate option supplied to the configure script during=
 the<span>=C2=A0</span></span><a class=3D"m_-3517469458418210256gmail-link"=
 href=3D"https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.ht=
ml#ref-tasks-configure" title=3D"9.1.4.=C2=A0do_configure" style=3D"text-de=
coration:underline;color:rgb(68,68,68);background:rgb(255,255,255);font-fam=
ily:Verdana,Sans,sans-serif;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px" target=3D"_blank"><code class=3D"m_-3517469458418210256gmail-filename" =
style=3D"font-family:Courier,monospace">do_configure</code></a><span style=
=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line">=C2=A0task for recipes that optionally support the feature&quot;</spa=
n><br></div><div><span style=3D"color:rgb(51,51,51);font-family:Verdana,San=
s,sans-serif;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline"><br></span></div><div><span style=3D"colo=
r:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline">Si=
nce pulseaudio is not by default shipped by the Yocto Project metadata I gu=
ess you have included some other meta layer to get this feature. But to me =
it looks like you have included pulseaudio in the wrong place it should be =
included in the IMAGE_INSTALL_append. If supported you should include just =
pulseaudio in the DISTRO_FEATURES_append if that is supported as a DISTRO_F=
EATURE in your build to inform recipes about it so that if supported the pu=
lsaudio support is included. I suggest to try</span></div><div><span style=
=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line"><br></span></div><div><span style=3D"color:rgb(51,51,51);font-family:=
Verdana,Sans,sans-serif;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline"><span class=3D""><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">DISTRO_FEATURES_append +=3D &quot; ext2 pam usbhost ${DISTR=
O_FEATURES_LIBC} pulseaudio</span><span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">&quot;</span><=
br style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8=
px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial"></=
span><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline">IMAGE_INSTALL_append +=3D &quot; python dbu=
s gconf glib-2.0 <span style=3D"font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:12.8px;float:none;display:inline">pulseaudio pulseaudio-module-db=
us-</span><span style=3D"font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;color:rgb(34,34,34);font-family:arial,sans-serif;font-si=
ze:12.8px;float:none;display:inline">protoco<wbr>l pulseaudio-module-blueto=
oth</span>&quot;</span><br></span></div><div><span style=3D"color:rgb(51,51=
,51);font-family:Verdana,Sans,sans-serif;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline"><br></span></span></div><div><span style=3D"color:rgb(51,51=
,51);font-family:Verdana,Sans,sans-serif;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">A DISTRO_FEATURES is not necessarily mapped to a package so=
 based on that the=C2=A0<span style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline">pulseaudio-module-dbus-<=
/span><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-ca=
ps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline">pro<wbr>tocol pulseaudio-module-bluetooth =
looks strange to be included in the DISTRO_FEATURES_append since those look=
s like packages and not a feature. Also I believe that you still need inclu=
de pulseaudio in IMAGE_INSTALL_append since it not necessarily mapped to pa=
ckage but I could be wrong since bitbake and OE surprises me all the time o=
n what it can figure out on it&#39;s own.=C2=A0</span></span></span></div><=
div><span style=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline"><br></span></div><div><font face=3D"Verdana, Sans, san=
s-serif" color=3D"#333333">BR</font></div><div><font face=3D"Verdana, Sans,=
 sans-serif" color=3D"#333333">Mans Zigher</font></div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"h5">2018-03-=
26 22:17 GMT+02:00 Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:she=
rifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt;=
</span>:<br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h=
5"><div dir=3D"ltr"><div><div><div>hello<br><br></div>i am trying to add pu=
lse audio to an image but i don&#39;t get pulse audio being installed in th=
e image<br><br></div>I am using the following<br>DISTRO_FEATURES_append +=
=3D &quot; ext2 pam usbhost ${DISTRO_FEATURES_LIBC} pulseaudio pulseaudio-m=
odule-dbus-protoco<wbr>l pulseaudio-module-bluetooth&quot;<br>IMAGE_INSTALL=
_append +=3D &quot; python dbus gconf glib-2.0&quot;<br><br></div>what am i=
 doing wrong?<br></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--00000000000071560a0568eba049--
