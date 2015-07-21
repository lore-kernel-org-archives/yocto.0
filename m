Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 803B9E009BE; Tue, 21 Jul 2015 15:31:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.97 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm4-vm6.bullet.mail.ne1.yahoo.com
	(nm4-vm6.bullet.mail.ne1.yahoo.com [98.138.91.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3986E0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 15:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437517874; bh=JRIX97wyt9HwAROj9ennnuRtXiQYzX/iDp35eU4gTZ4=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=W2/0PAHYKuJkdjd5cowfhTD3VpBnlN9yYtrYHn0RLVyE7NMukiivdRAoUUg/+93i42eAkmoMZe9dPeqFAyZf3ZoRllgpTy1bfW5LRjPussloUstCMVtt7lK/FORmUfHcASt4XD+LVTHQ9NwnLW/aZOuX7f7K4KgNlC+JCEueL+HXh43Ev62IsWV9WrXLvw0bz7MwRptC5NX0CTTwMB/Scz2bkXjttT7a9u2xXJK6WipWB75i7C8IdELxgFM0/rPHtuCmKZISvYzOjQEK7zlo4fDFvRQeU0bsHTQcFn0gWBdoYeapBjZMz48ooihp1YEFxkZl4jJ3Tyz+BXcjKztY8w==
Received: from [98.138.101.129] by nm4.bullet.mail.ne1.yahoo.com with NNFMP;
	21 Jul 2015 22:31:14 -0000
Received: from [98.138.89.253] by tm17.bullet.mail.ne1.yahoo.com with NNFMP;
	21 Jul 2015 22:31:13 -0000
Received: from [127.0.0.1] by omp1045.mail.ne1.yahoo.com with NNFMP;
	21 Jul 2015 22:31:13 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 986257.728.bm@omp1045.mail.ne1.yahoo.com
X-YMail-OSG: umATFmoVM1n3IxMHtLEvTkH4YJTJnsbjv6BzpH54p_mykQFSbNCENdGn1dZ2WfC
	KqlvNehk_9Ul2w69_0Xw0MrgLFspfMt8tRbiTvT.CQYyoxauJAP1Ih9nqq2FDxK1nJwUFKb4.GCf
	qe5NtIFs8qvnVOayagPYSy47gx6Pl1StdvSOnTEWXzlwjyJD8hZbgEg8mQ82A7P25sqKe.0pryRh
	lkzeKNF6SLyzyaLrij3SpgSxEKyTOp4wtaeSnoi_GSgroDyRdKAO_hExUocUdFq3hmwSJzin5LE2
	lt_1aYzYedLiGbdLSEzF.cStcZsZsM4LRnSk6eUVxvpwdjVqxD13dbjRi4a4OuU5Siy.be2lICUn
	1FtnhV1F_ls17fPoTWMOGx5c5QbFgcf83wLWz2Zuqaaze3TWVKCaC08z58j5NFP.73ZrHg.TX1up
	FywxgAVatN7LgAfOZsv.CFYyUIYr42zE.X.sMW8xEPiqIs4ZkXdRIhI2orj6V8KfGm0DDLdvPqQS
	_5Zx9S4PJKP1oCb3WT_Qcz8okYXKONbs-
Received: by 98.138.105.243; Tue, 21 Jul 2015 22:31:13 +0000 
Date: Tue, 21 Jul 2015 22:31:00 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2002608397.24159.1437517860551.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: core-image-sato raspberrypi2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Jul 2015 22:31:17 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_24158_405722602.1437517860546"

------=_Part_24158_405722602.1437517860546
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,I created a rpi-basic-img for RaspberryPi 2 which was created and bo=
oted okay. I am using=C2=A0=20
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "fido:0f8d89ce66cfffccc9911d6c61470a58=
5173b79d"
meta-raspberrypi=C2=A0 =3D "master:7457bf182c8fd550ec877ecd786a3edd16e65495=
".
Can the core-image-sato be created for the RaspBerry 2 B?=C2=A0=20
First i tried bitbake core-image-sato which was getting errors.=C2=A0 Then =
I bitbake core-image-sato -c fetchall.=C2=A0=20
NOTE: Tasks Summary: Attempted 626 tasks of which 626 didn't need to be rer=
un and all succeeded.
Does this mean that all the depends have been downloaded?
Now when I run=C2=A0 I am missing checking for EGL... no in libepoxy do I n=
eed another layer before building core-image-sato?As always any and all hel=
p is appreciated.Regards.
 Edward Vidal Jr.e-mail develone@sbcglobal.net
915-595-1613

------=_Part_24158_405722602.1437517860546
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div><span>Hi all,</span></div><div dir=3D"ltr" id=3D"yui_3_1=
6_0_1_1437517006686_3169"><span id=3D"yui_3_16_0_1_1437517006686_3170">I cr=
eated a rpi-basic-img for RaspberryPi 2 which was created and booted okay. =
I am using&nbsp; <br></span></div><div id=3D"yui_3_16_0_1_1437517006686_320=
7" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1437517006686_3170">meta-yocto-bsp&=
nbsp;&nbsp;&nbsp; =3D "fido:0f8d89ce66cfffccc9911d6c61470a585173b79d"<br cl=
ass=3D"">meta-raspberrypi&nbsp; =3D "master:7457bf182c8fd550ec877ecd786a3ed=
d16e65495".</span></div><div id=3D"yui_3_16_0_1_1437517006686_3334" dir=3D"=
ltr"><span id=3D"yui_3_16_0_1_1437517006686_3170"><br></span></div><div id=
=3D"yui_3_16_0_1_1437517006686_3231" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1=
437517006686_3170">Can the core-image-sato be created for the RaspBerry 2 B=
?</span></div><div dir=3D"ltr"><span id=3D"yui_3_16_0_1_1437517006686_3170"=
>&nbsp; <br></span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1437517006686_=
3089"><span class=3D"" id=3D"yui_3_16_0_1_1437517006686_3088">First i tried=
 bitbake core-image-sato which was getting errors.&nbsp; Then I </span><spa=
n class=3D"" id=3D"yui_3_16_0_1_1437517006686_3088">bitbake core-image-sato=
 -c fetchall.&nbsp; <br></span></div><div id=3D"yui_3_16_0_1_1437517006686_=
3368" dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_1_1437517006686_3088"><=
/span>NOTE: Tasks Summary: Attempted 626 tasks of which 626 didn't need to =
be rerun and all succeeded.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
"><span class=3D"" id=3D"yui_3_16_0_1_1437517006686_3088">Does this mean th=
at all the depends have been downloaded?</span></div><div dir=3D"ltr"><span=
 class=3D"" id=3D"yui_3_16_0_1_1437517006686_3088"><br></span></div><div id=
=3D"yui_3_16_0_1_1437517006686_3133"><div id=3D"yui_3_16_0_1_1437517006686_=
3167" dir=3D"ltr">Now when I run&nbsp; I am missing checking for EGL... no =
in libepoxy do I need another layer before building core-image-sato?</div><=
div dir=3D"ltr">As always any and all help is appreciated.</div><div dir=3D=
"ltr">Regards.</div><div dir=3D"ltr"><br> </div></div><div id=3D"yui_3_16_0=
_1_1437517006686_3126"><div id=3D"yui_3_16_0_1_1437517006686_3125"><div id=
=3D"yui_3_16_0_1_1437517006686_3124" dir=3D"ltr">Edward Vidal Jr.</div>e-ma=
il develone@sbcglobal.net<br>915-595-1613</div></div></div></body></html>

------=_Part_24158_405722602.1437517860546--
