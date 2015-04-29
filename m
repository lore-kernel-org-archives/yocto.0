Return-Path: <r.schwarz@sotec.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62526E009AA; Wed, 29 Apr 2015 07:51:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BA26E009CC
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 07:51:22 -0700 (PDT)
Received: by igbyr2 with SMTP id yr2so120779711igb.0
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 07:51:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=1xpkbKWzoiXOrrocGpSWEmIFFRCiszszuwXYINaMp8I=;
	b=NGGSpCI33NzJuu/DC2XoM19kPL12d/AO1+RQ2IqGZSG8jI96psJi64AftipqrjI/sp
	0vktZsOcyTD3Cj5I5Q5XpEPwAn7IlLFKHjYmiC63TEeQW3QngmprkVc9BgYH/3wzd9NO
	ZchanG+RU9yC6U/psxein+tlSlnEiWoV+2fvVK453fQhla1r3kmMff8vfO4PNkKVINlk
	IJTHHAx3Sgz+hPWct0RqI7O3QobxXiS+ZjV2TO5eGdJm99NgU0o+yqSONa7zax3WKQWU
	9lqHUC0JaiHbrzdwxeSaGN2c5RnhYv23LbCfK2fBZwi4ctoSl0SZSp1uGs041e20zNWG
	UlZA==
X-Gm-Message-State: ALoCoQmrERUKci6g8G2h+fYHnLYs/i0Y7mgJw8j6IYYuuSaYvQXJXyT/JGSvQ9PpoI+HGbEr6DW6SjJ9NQbppIsUvYrBKS2JPOURIe+odAA4sjodgCqAk4w=
MIME-Version: 1.0
X-Received: by 10.107.9.141 with SMTP id 13mr29046736ioj.71.1430319081892;
	Wed, 29 Apr 2015 07:51:21 -0700 (PDT)
Received: by 10.107.31.205 with HTTP; Wed, 29 Apr 2015 07:51:21 -0700 (PDT)
Date: Wed, 29 Apr 2015 16:51:21 +0200
Message-ID: <CAEMorpg0nebPf90h_3c-FAsg68S80ngjVkEKtkz703tB7sN1xA@mail.gmail.com>
From: Ruben Schwarz <r.schwarz@sotec.eu>
To: yocto@yoctoproject.org
Subject: Eclipse build of existing cmake project
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
X-List-Received-Date: Wed, 29 Apr 2015 14:51:32 -0000
Content-Type: multipart/alternative; boundary=001a113f99accacf750514de1cf5

--001a113f99accacf750514de1cf5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everybody,

What I did:
I built an image and support for eclipse (meta-ide-support) for beagle bone
black (BBB).
I am able to create a new project in eclipse and build and run this new
project on my hardware.

I have an existing CMAKE project which should run on BBB.
I know how to write an recipe for my project and build this existing
project with bitbake.

What I want to do:
I want to build my existing cmake project with eclipse. Is there any
possibility to import existing cmake projects to eclipse and do a build
using yocto toolchain?

Best regards
Ruben

--=20
Ruben Schwarz | SOTEC | r.schwarz@sotec.eu | T +49 7033 5458 34 | F +49
7033 5458 95

--=20


www.sotec.eu | www.cloudwuerdig.com=20
--=20
SOTEC Software Entwicklungs GmbH + Co Mikrocomputertechnik KG=20
Calwer Stra=C3=9Fe 11, D-75395 Ostelsheim=20
Sitz Ostelsheim, Amtsgericht Stuttgart HRA 330821/HRB 330664,=20
Gesch=C3=A4ftsf=C3=BChrer: Florian Holz=20
Cloudw=C3=BCrdig=C2=AE ist eine eingetragene Marke der SOTEC Software Entwi=
cklungs=20
GmbH + Co Mikrocomputertechnik KG

Der Inhalt dieser e-Mail ist ausschlie=C3=9Flich f=C3=BCr den bezeichneten =
Adressaten=20
bestimmt. Wenn Sie nicht der vorgesehene Adressat dieser e-Mail oder dessen=
=20
Vertreter sein sollten, so beachten Sie bitte, dass jede Form der=20
Kenntnisnahme, Ver=C3=B6ffentlichung, Vervielf=C3=A4ltigung oder Weitergabe=
 des=20
Inhalts dieser e-Mail unzul=C3=A4ssig ist. Wir bitten Sie, sich in diesem F=
all=20
mit dem Absender der e-Mail in Verbindung zu setzen.

The content of this e-mail is meant exclusively for the person to whom it=
=20
is addressed. If you are not the person to whom this e-mail is addressed or=
=20
his/her representative, please be informed, that any form of knowledge,=20
publication, duplication or distribution of the content of this e-mail is=
=20
inadmissible. We ask you, therefore, in such a case to please contact the=
=20
sender of this e-mail.


--001a113f99accacf750514de1cf5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everybody,<div><br></div><div>What I did:</div><div>I b=
uilt an image and support for eclipse (meta-ide-support) for beagle bone bl=
ack (BBB).</div><div>I am able to create a new project in eclipse and build=
 and run this new project on my hardware.</div><div><br></div><div>I have a=
n existing CMAKE project which should run on BBB.</div><div>I know how to w=
rite an recipe for my project and build this existing project with bitbake.=
</div><div><br></div><div>What I want to do:</div><div>I want to build my e=
xisting cmake project with eclipse. Is there any possibility to import exis=
ting cmake projects to eclipse and do a build using yocto toolchain?</div><=
div><br></div><div>Best regards</div><div>Ruben<br clear=3D"all"><div><br><=
/div>-- <br><div class=3D"gmail_signature"><span style=3D"font-family:&#39;=
Times New Roman&#39;;font-size:medium"><span style=3D"font-weight:bold;font=
-size:11px;font-family:Arial;vertical-align:baseline;white-space:pre-wrap">=
Ruben Schwarz | SOTEC | </span><span style=3D"font-size:11px;font-family:Ar=
ial;vertical-align:baseline;white-space:pre-wrap"><a href=3D"mailto:r.schwa=
rz@sotec.eu" target=3D"_blank">r.schwarz@sotec.eu</a></span><span style=3D"=
font-size:11px;font-family:Arial;vertical-align:baseline;white-space:pre-wr=
ap"> | </span><span style=3D"font-size:11px;font-family:Arial;vertical-alig=
n:baseline;white-space:pre-wrap">T +49 7033 5458 34 |  F +49 7033 5458 95</=
span></span>
</div>
</div></div>

<br>
<p style=3D"font-size:11px;font-family:Arial;vertical-align:baseline"></p><=
p style=3D"vertical-align:baseline"></p><p style=3D"font-size:11px;font-fam=
ily:Arial;vertical-align:baseline"><span style=3D"font-weight:bold;vertical=
-align:baseline"><a href=3D"http://www.sotec.eu/" style=3D"text-decoration:=
none;color:rgb(0,0,0)" target=3D"_blank">www.sotec.eu</a>=C2=A0|=C2=A0<a hr=
ef=3D"http://www.cloudwuerdig.com/" style=3D"text-decoration:none;color:rgb=
(0,0,0)" target=3D"_blank">www.<WBR>cloudwuerdig.com</a>=C2=A0</span><br>--=
=C2=A0<br>SOTEC Software Entwicklungs GmbH + Co Mikrocomputertechnik KG=C2=
=A0<br>Calwer Stra=C3=9Fe 11, D-75395 Ostelsheim=C2=A0<br>Sitz Ostelsheim, =
Amtsgericht Stuttgart HRA 330821/HRB 330664, Gesch=C3=A4ftsf=C3=BChrer: Flo=
rian Holz=C2=A0<br>Cloudw=C3=BCrdig=C2=AE ist eine eingetragene Marke der S=
OTEC Software Entwicklungs GmbH + Co Mikrocomputertechnik KG</p><p style=3D=
"font-size:11px;font-family:Arial;vertical-align:baseline">Der Inhalt diese=
r e-Mail ist ausschlie=C3=9Flich f=C3=BCr den bezeichneten Adressaten besti=
mmt. Wenn Sie nicht der vorgesehene Adressat dieser e-Mail oder dessen Vert=
reter sein sollten, so beachten Sie bitte, dass jede Form der Kenntnisnahme=
, Ver=C3=B6ffentlichung, Vervielf=C3=A4ltigung oder Weitergabe des Inhalts =
dieser e-Mail unzul=C3=A4ssig ist. Wir bitten Sie, sich in diesem Fall mit =
dem Absender der e-Mail in Verbindung zu setzen.</p><p style=3D"font-size:1=
1px;font-family:Arial;vertical-align:baseline">The content of this e-mail i=
s meant exclusively for the person to whom it is addressed. If you are not =
the person to whom this e-mail is addressed or his/her representative, plea=
se be informed, that any form of knowledge, publication, duplication or dis=
tribution of the content of this e-mail is inadmissible. We ask you, theref=
ore, in such a case to please contact the sender of this e-mail.</p><p></p>=
<p></p>

--001a113f99accacf750514de1cf5--
