Return-Path: <pourya.shirazian@daimler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F4E4E00857; Wed, 24 Sep 2014 12:58:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [141.113.102.111 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4302]
X-Greylist: delayed 2342 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Sep 2014 12:58:15 PDT
Received: from mail-out.emea.daimler.com (mail-out.emea.daimler.com
	[141.113.102.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44FD8E00848
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 12:58:15 -0700 (PDT)
X-AuditID: 351f146f-f79bd6d000001127-40-5423192e237e
From: pourya.shirazian@daimler.com
To: yocto@yoctoproject.org
Thread-topic: How to suppress error: canonicalization unexpectedly shrank by
	one character
Thread-index: AQHP2Cxp++AvRveYi0WOf0mxF6PoFQ==
Date: Wed, 24 Sep 2014 19:19:08 +0000
Message-id: <D0486757.1A59A%pourya.shirazian@daimler.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsViKq+iq6snqRxisPy7oMWkl2vYHBg92k/0
	sQUwRnHZpKTmZJalFunbJXBlfD+6lrnguGDFq61L2RoYZ/B3MXJySAiYSFxbepwdwhaTuHBv
	PVsXIxeHkMBpRom+ib1MEM5NRok9855CZdqYJK5feMIK4ZxllFj/cQtYP5uAksT+/22sILaI
	gJTEgblTmUFsYYFwiV2fZrF0MXIAxWMk1l+QhjD1JK5stQKpYBFQlbi18D9YJ6+ApUT/oe1g
	nYxAF30/tYYJxGYWEJdobr3JAnGpgMSSPeeZIWxRiZeP/7GCjJQQkJV4OjsIojxGYl3bYTaI
	kYISPybfY5nAKDILyaRZSMpmISmDiOtILNj9iQ3C1pZYtvA1M4x95sBjJgjbXmLKuzfMyGoW
	MHKsYlRJLNZNSs/TTc011DUwMtRLzU1N1EtK10vOLyoARl1Rol5easkmRnDkieTvYNy2zOYQ
	owAHoxIPrxOrcogQa2JZcWXuIUYJDmYlEV6Vj0ohQrwpiZVVqUX58UWlOanFhxilOViUxHmd
	hCqDhATSE0tSs1NTC1KLYLJMHJxSDYxh1Ut7TgSLcdyTdDtkV3y6+KicyZJNy59zf18skp8w
	03m5/AoF0d23DVcp/b24d57TVdtvUyaJHo05a652JslT5E/WqZpr+5bI/CwP/X9+xfYfHu6M
	TYcltr/a+0F965ptHvY9m199U9v32SHhM7+bXGRxr4M0S1akzCnP9sPHtm79nK8iYJ+rxFKc
	kWioxVxUnAgAFE8DEbgCAAA=
Subject: How to suppress error: canonicalization unexpectedly shrank by one character
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
X-List-Received-Date: Wed, 24 Sep 2014 19:58:25 -0000
Content-language: en-US
Content-type: multipart/alternative;
	boundary=_000_D04867571A59Apouryashiraziandaimlercom_

--_000_D04867571A59Apouryashiraziandaimlercom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I keep getting an error at do_package stage regarding the debug edit functi=
on:

ERROR: canonicalization unexpectedly shrank by one character

I removed the rpaths inclusion in my libs but the error is still there. Is =
there a way to suppress this check?

Thanks

If you are not the addressee, please inform us immediately that you have re=
ceived this e-mail by mistake, and delete it. We thank you for your support=
.


--_000_D04867571A59Apouryashiraziandaimlercom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <7CE812EF177B0F4AB3FAA02B697B254E@wp.corpintra.net>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap:break-word">
<div style=3D"font-family:Calibri,sans-serif; font-size:14px; color:rgb(0,0=
,0)">Hi Guys,</div>
<div style=3D"font-family:Calibri,sans-serif; font-size:14px; color:rgb(0,0=
,0)"><br>
</div>
<div style=3D"font-family:Calibri,sans-serif; font-size:14px; color:rgb(0,0=
,0)">I keep getting an error at do_package stage regarding the debug edit f=
unction:</div>
<div style=3D"font-family:Calibri,sans-serif; font-size:14px; color:rgb(0,0=
,0)"><br>
</div>
<div style=3D"font-family:Calibri,sans-serif; font-size:14px"><font color=
=3D"#ff0000">ERROR: canonicalization unexpectedly shrank by one character</=
font></div>
<div style=3D"font-family:Calibri,sans-serif; font-size:14px"><font color=
=3D"#ff0000"><br>
</font></div>
<div>I removed the rpaths inclusion in my libs but the error is still there=
. Is there a way to suppress this check?</div>
<div><br>
</div>
<div>Thanks</div>
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<font face=3D"sans-serif, Arial, Helvetica" size=3D"-1" color=3D"#808080"><=
br>
If you are not the addressee, please inform us immediately that you have re=
ceived this e-mail by mistake, and delete it. We thank you for your support=
.<br>
<br>
</font>
</table>
</body>
</html>

--_000_D04867571A59Apouryashiraziandaimlercom_--
