Return-Path: <owestermann@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6209AE00E97; Thu,  5 Jul 2018 00:26:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (owestermann[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB361E00DA5
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 00:26:31 -0700 (PDT)
Received: by mail-ua0-f175.google.com with SMTP id x18-v6so4804427uaj.9
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 00:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=BuXAIntC9OK6MzOpJ4c5KnHTRMig1KopnUX1YKJPx1w=;
	b=PClEMSxXLq2TUqGrVXqrMRuQmQFmYigFRsht8V6G9dXaKL3cQE9PssDcylG9V3u+pE
	euqem5WixGhsopQi7kfjHEIyu5T38tyT29fJRo1AdqAr866Kh61n0GWSOi3ErDdqbQTg
	WZRFm6bzbtNjLJqV7nhFGt0MYOiUnF1nQCam8JcCfrJ98/EWc3rZDhUZn1iW4XV/0f2y
	asEV1q/06BRfOEjdoyWHkixW6AKfgj7tqGg2XFKua57aSONFryo/QBb+nLG+/VUFdgga
	6xmHdS7LBQbJ3BrARlG5wQ35ZuWFfrMDYQpNaPrzBExMjzkneI0az5eBLF0wk4GYQ+ud
	+MjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BuXAIntC9OK6MzOpJ4c5KnHTRMig1KopnUX1YKJPx1w=;
	b=jiwnRcdHe16WyZoHU3+xO6HwHl0/ZpmLpm9CT4Gf/bREetsbwr89fTKbtoZ6YVfIod
	EOiR8qxQmApnvQjagV5m1D862jX26LQY3HOagAu5ca96Aor75QXPlPAUj9TdLB4VP8tg
	Dtv7LIJap8+aMyO+R+jnCvAnEAuxiz5GOdoaNh3MU3Rxvniz61bD80uAZFkX8NL+w83J
	jvJNEyxAggmKanpxJDprKcutNI9+icsi41tRsnLe8v8zaUXbiiFUM1DoR0nfEUKflyKu
	WSyihgWAy4YLSWVEymyw6HM38+toGksbCKYzk0gDnCO0NrXSXLeAc0QKJp4MNvxSJuxn
	SYnQ==
X-Gm-Message-State: APt69E3F/4CRsWdSJgypr3MLqFl4iUccLc9Ua6ijPj2qbsPYHXqH3rYE
	QOYaLi1ABrImW8Osqq9uziRP+gaxxhezoOaESoXX9Q==
X-Google-Smtp-Source: AAOMgpereQnW1ewZ3WIveZIPdcj2x2HMxyPQfO0pnWjIk3Kwq6TpwIldd+TKUKqQuyYJ9U7Tq5dvzgsZ8U+cnFraAdI=
X-Received: by 2002:ab0:4ad7:: with SMTP id
	t23-v6mr3050538uae.35.1530775590752; 
	Thu, 05 Jul 2018 00:26:30 -0700 (PDT)
MIME-Version: 1.0
From: Oliver Westermann <owestermann@gmail.com>
Date: Thu, 5 Jul 2018 09:26:19 +0200
Message-ID: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Creating a recipe for python3-pillow
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
X-List-Received-Date: Thu, 05 Jul 2018 07:26:32 -0000
Content-Type: multipart/alternative; boundary="0000000000005156b305703b778d"

--0000000000005156b305703b778d
Content-Type: text/plain; charset="UTF-8"

 Hey,

I'm fiddeling around with yocto. I want to move some python stuff onto an
embedded board and use the nxp mx8 yocto. Everything worked as expected
until now, I was able to create yocto recipes for python modules like
pyv4l2 (is there any interest for recipes like these to be commited to
meta-python?).

Now I wanted to install pillow for some image manipulation, but whereas
other python module recipes worked fine, this one fails and I don't
understand why.

Yocto reports missing setuptools:

Log data follows:
| DEBUG: Executing shell function do_configure
| NOTE: make clean
| python setup.py clean
| Traceback (most recent call last):
|   File "setup.py", line 22, in <module>
|     from setuptools import Extension, setup
| ImportError: No module named setuptools

I've googled around and everything suggests that inherit setuptools3 is
missing, but it's present in my recipe. This is my python3-pillow_5.2.0.bb:

SUMMARY = "Pillow (The friendly PIL fork)"
HOMEPAGE = "http://python-pillow.org/"
LICENSE = "EPLv1"
LIC_FILES_CHKSUM = "file://LICENSE;md5=c6379001ecb47e2a0420c40177fc1125"

SRC_URI[md5sum] = "52d93a34f4180abcff04876f23eaa9b9"

PYPI_PACKAGE = "Pillow"

inherit pypi setuptools3

BBCLASSEXTEND = "native nativesdk"

Any idea whats missing or what I am doing wrong (other than that the
license line is incorrect)?

Best regards, Olli

--0000000000005156b305703b778d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<span style=3D"font-size:small;text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">Hey,</span><div style=3D"font-si=
ze:small;text-decoration-style:initial;text-decoration-color:initial"><br><=
/div><div style=3D"font-size:small;text-decoration-style:initial;text-decor=
ation-color:initial">I&#39;m fiddeling around with yocto. I want to move so=
me python stuff onto an embedded board and use the nxp mx8 yocto. Everythin=
g worked as expected until now, I was able to create yocto recipes for pyth=
on modules like pyv4l2 (is there any interest for recipes like these to be =
commited to meta-python?).</div><div style=3D"font-size:small;text-decorati=
on-style:initial;text-decoration-color:initial"><br></div><div style=3D"fon=
t-size:small;text-decoration-style:initial;text-decoration-color:initial">N=
ow I wanted to install pillow for some image manipulation, but whereas othe=
r python module recipes worked fine, this one fails and I don&#39;t underst=
and why.</div><div style=3D"font-size:small;text-decoration-style:initial;t=
ext-decoration-color:initial"><br></div><div style=3D"font-size:small;text-=
decoration-style:initial;text-decoration-color:initial">Yocto reports missi=
ng setuptools:</div><div style=3D"font-size:small;text-decoration-style:ini=
tial;text-decoration-color:initial"><br></div><div style=3D"font-size:small=
;text-decoration-style:initial;text-decoration-color:initial"><div>Log data=
 follows:</div><div>| DEBUG: Executing shell function do_configure</div><di=
v>| NOTE: make clean</div><div>| python setup.py clean</div><div>| Tracebac=
k (most recent call last):</div><div>|=C2=A0 =C2=A0File &quot;setup.py&quot=
;, line 22, in &lt;module&gt;</div><div>|=C2=A0 =C2=A0 =C2=A0from setuptool=
s import Extension, setup</div><div>| ImportError: No module named setuptoo=
ls</div></div><div style=3D"font-size:small;text-decoration-style:initial;t=
ext-decoration-color:initial"><br></div><div style=3D"font-size:small;text-=
decoration-style:initial;text-decoration-color:initial">I&#39;ve googled ar=
ound and everything suggests that inherit setuptools3 is missing, but it&#3=
9;s present in my recipe. This is my<span>=C2=A0</span><a href=3D"http://py=
thon3-pillow_5.2.0.bb/" target=3D"_blank" style=3D"color:rgb(17,85,204)">py=
thon3-pillow_5.2.0.bb</a>:</div><div style=3D"font-size:small;text-decorati=
on-style:initial;text-decoration-color:initial"><br></div><div style=3D"fon=
t-size:small;text-decoration-style:initial;text-decoration-color:initial"><=
div>SUMMARY =3D &quot;Pillow (The friendly PIL fork)&quot;</div><div>HOMEPA=
GE =3D &quot;<a href=3D"http://python-pillow.org/" target=3D"_blank" style=
=3D"color:rgb(17,85,204)">http://python-pillow.org/</a>&quot;</div><div>LIC=
ENSE =3D &quot;EPLv1&quot;</div><div>LIC_FILES_CHKSUM =3D &quot;file://LICE=
NSE;md5=3Dc6379001ecb47e2a0420c40177fc1125&quot;</div><div><br></div><div>S=
RC_URI[md5sum] =3D &quot;52d93a34f4180abcff04876f23eaa9b9&quot;</div><div><=
br></div><div>PYPI_PACKAGE =3D &quot;Pillow&quot;</div><div><br></div><div>=
inherit pypi setuptools3</div><div><br></div><div>BBCLASSEXTEND =3D &quot;n=
ative nativesdk&quot;</div></div><div style=3D"font-size:small;text-decorat=
ion-style:initial;text-decoration-color:initial"><br></div><div style=3D"fo=
nt-size:small;text-decoration-style:initial;text-decoration-color:initial">=
Any idea whats missing or what I am doing wrong (other than that the licens=
e line is incorrect)?</div><div style=3D"font-size:small;text-decoration-st=
yle:initial;text-decoration-color:initial"><br></div><div style=3D"font-siz=
e:small;text-decoration-style:initial;text-decoration-color:initial">Best r=
egards, Olli</div>

<br></div>

--0000000000005156b305703b778d--
