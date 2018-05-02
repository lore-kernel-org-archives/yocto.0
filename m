Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FA6AE00A28; Wed,  2 May 2018 07:48:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE9EFE00A28
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 07:48:32 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id e12-v6so17776391iob.8
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 07:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YWA7kQsk9BYGxmY9xIsigRHzqUnrcutNtebXPm158mg=;
	b=GoV6H9kAFnJm0yz9vCcISMrnWO/0cTriaHx82VV+YDN53Y2rBkioHlz4TEOo8rReAk
	OPLyqaTrIpiOV9wWzmlK8t/+PNRAVqd/nU5yHTR7xpccxWqGtXu8mckUDRZAUFalZbJY
	1xb66iZXovooQ3dMgRvKyYWqkiohVG9snv8NLB40CxLa5xHd9Gn6H8FtnhSd5FDKEjPR
	bD9gAvmSRAcA5dZwDeHzCrZELU2aBXg9a/sSgIpSii8N2yB3upJVjDYo9mfPksVl7que
	nxSEIrcW5AYopP6FcO9PXAIVtXm19WZwhS+UfaW3TcPSRE1SjTt59JWUTsKgWuoNHllU
	IS/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YWA7kQsk9BYGxmY9xIsigRHzqUnrcutNtebXPm158mg=;
	b=HKajkOQgHDDc39Y2cxYHB+SIypYita3IceLaBx5ftdjAqecJD79uLvYeqA/l62UL7d
	I89tDEa6HNHahk6k59ejPHd+qQWZFXeIec+H1P58f3dVJfADKpMuoDwD4r7/n5zjLlTk
	bLIigl0cb2N1ob5mLAEdn0TlqO+lLEsbBPm9NiUP3gNJNDyZKmJDh+lvn6lkvBK+LHVw
	wvXSpPuVorR3aeVZzIGS9vseQbRqTmM7m1rM+466MWlmPYoVZRhwfvX9RTxPdOQkZ+2L
	lEdnqLYR66dD84c2dvHV6ohozI7Rbu3+LLciqGyLehVQXf8ckXHAo4NltvpYdu0Vl0Ry
	j7cQ==
X-Gm-Message-State: ALQs6tAvkns8zFD6TSd5mladyN2r/CCeI3DaNDueF1OXGVjOGBWDcxeG
	tsRXRTbL0gXn4G+LWV67X7JfQI2qNpsHx0y+iUTP
X-Google-Smtp-Source: AB8JxZrHH7+949cIb+k5NgrT3IcP/QnuzGtZowhTFxdQkE0S0t33AMNas3bRNXddmus7l3CfA5Ta5RZc6fVfAm7ozpA=
X-Received: by 2002:a6b:4e19:: with SMTP id
	c25-v6mr20780558iob.302.1525272511607; 
	Wed, 02 May 2018 07:48:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:69d5:0:0:0:0:0 with HTTP;
	Wed, 2 May 2018 07:48:31 -0700 (PDT)
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Wed, 2 May 2018 17:48:31 +0300
Message-ID: <CA+FhBv8zustk32Gu0hGUq-dQD1s-MNbuHWUWv9NeZ2kg8aaz+A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Splash screen using systemd
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
X-List-Received-Date: Wed, 02 May 2018 14:48:34 -0000
Content-Type: multipart/alternative; boundary="0000000000003d7a24056b3a2ec8"

--0000000000003d7a24056b3a2ec8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm working on an NVidia Jetson board with a TX2 module and I would like to
have splash screen with a progress bar when booting and shutting down. The
board boots to an application embedded style. There's no desktop and no
user login.

The configuration I use makes use of systemd.

I gave a try to psplash but by now I have realized that it is not
compatible with systemd. The image is displayed but I don't get progress
information.

Next try with dietsplash. The splash screen isn't displayed and I just have
a black screen when booting. If I manually run /bin/dietsplash I lose
control over the keyboard and the penguin isn't displayed.

The dietsplash doc https://github.com/lucasdemarchi/dietsplash/tree/v0.3
mentions to add 'init=3D/bin/dietsplash' to the kernel command line.

What would be the way to I add it?

Last try plymouth. An error comes during the boot and the splash screen
doesn't show:
[   OK    ] Started Show Plymouth Boot Screen.
[FAILED] Failed to start Forward Passwrod Requests to Plymouth Directory
Watch.
See 'systemctl status systemd-ask-password-plymouth.path' for details

systemctl status gives me:
=E2=97=8F systemd-ask-password-plymouth.path - Forward Password Requests to
Plymouth Directory Watch
   Loaded: loaded (/lib/systemd/system/systemd-ask-password-plymouth.path;
static; vendor preset: enabled)
   Active: inactive (dead)
     Docs: http://www.freedesktop.org/wiki/Software/systemd/PasswordAgents

May 02 14:34:10 jetson-tx2 systemd[1]:
[[0;1;31msystemd-ask-password-plymouth.path: Refusing to start, unit to
trigger not loaded.[[0m
May 02 14:34:10 jetson-tx2 systemd[1]: [[0;1;31mFailed to start Forward
Password Requests to Plymouth Directory Watch.[[0m

Any hint would be greatly appreciated :D

Cheers,
-Damien

--0000000000003d7a24056b3a2ec8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m working on an NVidia Jetson=
 board with a TX2 module and I would like to have splash screen <span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">with a progress bar=C2=A0</span>when booting and shutting do=
wn. The board boots to an application embedded style. There&#39;s no deskto=
p and no user login.</div><div><br></div><div>The configuration I use makes=
 use of systemd.=C2=A0</div><div><br></div><div>I gave a try to psplash but=
 b<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">y now I have realized that it is not compatible=
 with systemd. The image is displayed but I don&#39;t get progress informat=
ion.</span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline"><br></span></div><div><span=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline">Next try with dietsplash. The splash screen isn&#39;t =
displayed and I just have a black screen when booting. If I manually run /b=
in/dietsplash I lose control over the keyboard and the penguin isn&#39;t di=
splayed.=C2=A0 =C2=A0</span></div><div><span style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline"><br></span=
></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
;font-size:small;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial;float:none;display:inline">The dietsplash doc <a href=3D"https:/=
/github.com/lucasdemarchi/dietsplash/tree/v0.3">https://github.com/lucasdem=
archi/dietsplash/tree/v0.3</a> mentions to add=C2=A0&#39;init=3D/bin/dietsp=
lash&#39; to the kernel command line.=C2=A0</span></div><div><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline"><br></span></div><div><span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline">What would be t=
he way to I add it?</span></div><div><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline"><br></span><=
/div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline">Last try plymouth. An error comes durin=
g the boot and the splash screen doesn&#39;t show:</span></div><div><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline">[=C2=A0 =C2=A0OK=C2=A0 =C2=A0 ] Started Show Plymouth Bo=
ot Screen.</span></div><div><span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline">[FAILED] Failed to st=
art Forward Passwrod Requests to Plymouth Directory Watch.</span></div><div=
><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">See &#39;systemctl status systemd-ask-password-p=
lymouth.path&#39; for details</span></div><div><span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline"><b=
r></span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">systemctl status gives me:</s=
pan></div><div><span style=3D"text-align:start;text-indent:0px;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline"><div>=E2=97=8F systemd-ask-password-plymo=
uth.path - Forward Password Requests to Plymouth Directory Watch</div><div>=
=C2=A0 =C2=A0Loaded: loaded (/lib/systemd/system/systemd-ask-password-plymo=
uth.path; static; vendor preset: enabled)</div><div>=C2=A0 =C2=A0Active: in=
active (dead)</div><div>=C2=A0 =C2=A0 =C2=A0Docs: <a href=3D"http://www.fre=
edesktop.org/wiki/Software/systemd/PasswordAgents">http://www.freedesktop.o=
rg/wiki/Software/systemd/PasswordAgents</a></div><div><br></div><div>May 02=
 14:34:10 jetson-tx2 systemd[1]: [[0;1;31msystemd-ask-password-plymouth.pat=
h: Refusing to start, unit to trigger not loaded.[[0m</div><div>May 02 14:3=
4:10 jetson-tx2 systemd[1]: [[0;1;31mFailed to start Forward Password Reque=
sts to Plymouth Directory Watch.[[0m</div><div style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-transform:none;white-space:normal;word-spacing:0px"><br></div><=
div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-transform:none;white-space:norm=
al;word-spacing:0px">Any hint would be greatly appreciated :D</div><div sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-transform:none;white-space:normal;word=
-spacing:0px"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-transf=
orm:none;white-space:normal;word-spacing:0px">Cheers,</div><div style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-transform:none;white-space:normal;word-spacing=
:0px">-Damien</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-transform:n=
one;white-space:normal;word-spacing:0px"><br></div></span></div><div><span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline"><br></span></div><div><span style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial;float:none;display:inline"><br></s=
pan></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline"><br></span></div></div>

--0000000000003d7a24056b3a2ec8--
