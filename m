Return-Path: <stefano.pagnottelli@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81EB5E00CC6; Wed, 23 Aug 2017 01:12:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefano.pagnottelli[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.174 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34B12E00CAB
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 01:12:31 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id k46so3028961wre.2
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 01:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=J8TtZsFD092vz1QGNg5ZzsjEsbUEWtp+9UooVbukoaI=;
	b=phXPa1o9S4BIzQnHj9Zy5b5JP6YYMLK1YeZY3KuaBDYDe5y8lXUWENuw7ItmBjIKTW
	GdjaTGMRQr+ZVhUfmruYHax5oEc+7VDggVi0EVB6F7Q3mN6bCxEPGq42PZdJvKZdovsa
	BCX0PkSE+DocxkqAGc0u5EYchVgy7uDTIA5IjaC1QW8mx44CdzXYuZIWq3a/U3zW0Bw9
	Dpgb7DKPVXf1ueYexw2c7XSDHO24KNW/+Md9ysdkfH7NReYL7VYrSZFANqUTI+IIGNvt
	gkIyF9/dm8qSHxu6G+7vrv37l69hPjcaGt4SK5OqfviqqF/KLRdL/dBQ4gv/3UVxk0C8
	EBiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J8TtZsFD092vz1QGNg5ZzsjEsbUEWtp+9UooVbukoaI=;
	b=S7F2XAkeTQdn1czKYVxy0ilEdLAFG97MqH6p/bBd+cFH5R2b4myZfSr8CJepmwUEzl
	KDP1DusRdwIHnHHVgIuYyQgmIm+g6SGRpL5cIycbtd9o4EtNBrVyiDJLcgSnvXlImbDV
	UnB20qarOhrKXNT800onWXu+ZI4/yAb8T3bBdNddTkRPes64lt7Oq++NirW+kxGzSQEp
	jCE5Jjp4cVQ4t0JXpTcuS2l0ag3HA3pXy06+kZqVKHO57l/AyfJV7pYAWz3SLuzY2Cq7
	9FlYbPoZ2sIYegRBYJghsocElqMtph6rp4bwuhIMm4NV0Yu6pTNlRSt5sKwbnDIkjRQi
	e7rQ==
X-Gm-Message-State: AHYfb5hzC34D/LpAbPIYUySW88JNODNBM4e0m4zHQpMzuCbiUALMK8md
	OUjDr1/mSnXfCv353yW2v6+RErG5KA==
X-Received: by 10.223.183.35 with SMTP id l35mr1023103wre.266.1503475950260;
	Wed, 23 Aug 2017 01:12:30 -0700 (PDT)
MIME-Version: 1.0
From: Stefano Pagnottelli <stefano.pagnottelli@gmail.com>
Date: Wed, 23 Aug 2017 08:12:19 +0000
Message-ID: <CAJJpNC2h4U9iUXTAK1PvHJ99fpmqGdD8MoEn3=HfnP=3Tsg5sw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: RDEPENDS dependency problem
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
X-List-Received-Date: Wed, 23 Aug 2017 08:12:33 -0000
Content-Type: multipart/alternative; boundary="f40304388d80f19890055767453c"

--f40304388d80f19890055767453c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi to all,

I'm trying to build this layer: (https://github.com/bachp/meta-homeassistan=
t)
using the yocto pyro on a raspberry pi 3 target and the opkg package system=
.

Inside the recipe (
https://github.com/bachp/meta-homeassistant/blob/master/recipes-homeassista=
nt/homeassistant/python3-homeassistant_0.51.2.bb)
there  are some RDEPENDS with strict equal dependencies (ex:python3-aiohttp
(=3D 2.2.5)).

We I build the image with the opgk package system the system fail in the
do_rootfs task because is not finding the package python3-aiohttp =3D 2.2.5=
..
If I understood correctly this happens because the build system si
appending the recipe revision (PR variable) at end of package name and the
results is  python3-aiohttp_2.2.5-r0 and not python3-aiohttp_2.2.5 as opkg
is expecting.

As workaround I changed all strict =3D with a >=3D and the build complete
without errors.

My question is: It's possible to  instruct the build system to ignore the
recipe revision when it match the version of the package? Or in alternative
it's possible to automatically detect the recipe revision of the package?

Thanks in advance
Stefano
=E2=80=A6
--=20

There are 10 types of people in this world, those who understand binary and
those who dont

--f40304388d80f19890055767453c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"inbox-inbox-uyb8Gf" style=3D"color:rgb(33,33=
,33);font-size:13px"><div><div class=3D"inbox-inbox-F3hlO"><div dir=3D"ltr"=
>Hi to all,<div><br></div><div>I&#39;m trying to build this layer: (<a href=
=3D"https://github.com/bachp/meta-homeassistant" target=3D"_blank">https://=
github.com/bachp/meta-homeassistant</a>) using the yocto pyro on a raspberr=
y pi 3 target and the opkg package system.</div><div><br></div><div>Inside =
the recipe (<a href=3D"https://github.com/bachp/meta-homeassistant/blob/mas=
ter/recipes-homeassistant/homeassistant/python3-homeassistant_0.51.2.bb" ta=
rget=3D"_blank">https://github.com/bachp/meta-homeassistant/blob/master/rec=
ipes-homeassistant/homeassistant/python3-homeassistant_0.51.2.bb</a>) there=
 =C2=A0are some RDEPENDS with strict equal dependencies=C2=A0(ex:python3-ai=
ohttp (=3D 2.2.5)).</div><div><br></div><div>We I build the image with the =
opgk package system the system fail in the do_rootfs task because is not fi=
nding the package python3-aiohttp =3D 2.2.5.. If I understood correctly thi=
s happens because the build system si appending the recipe revision (PR var=
iable) at end of package name and the results is =C2=A0python3-aiohttp_2.2.=
5-r0 and not python3-aiohttp_2.2.5 as opkg is expecting.=C2=A0</div><div><b=
r></div><div>As workaround I changed all strict =3D with a &gt;=3D and the =
build complete without errors.=C2=A0</div><div><br></div><div>My question i=
s: It&#39;s possible to =C2=A0instruct=C2=A0the build system to ignore the =
recipe revision when it match the version of the package? Or in alternative=
 it&#39;s possible to automatically detect the recipe revision of the packa=
ge?</div><div><br></div><div>Thanks in advance</div><div>Stefano</div></div=
></div></div></div><div class=3D"inbox-inbox-uyb8Gf" style=3D"color:rgb(33,=
33,33);font-size:13px"><div><div title=3D"Mostra testo citato" tabindex=3D"=
0" class=3D"inbox-inbox-mg" style=3D"border-radius:2px;color:rgb(117,117,11=
7);display:inline-block;padding:0px 2px">=E2=80=A6</div></div></div></div><=
div dir=3D"ltr">-- <br></div><div class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><p dir=3D"ltr">There are 10 types of people in this wo=
rld, those who understand binary and those who dont</p>
</div>

--f40304388d80f19890055767453c--
