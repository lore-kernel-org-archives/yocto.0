Return-Path: <btv1==1155dc42c05==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E733E006E9; Thu,  3 Nov 2016 10:01:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 737 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Nov 2016 10:01:25 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE1AE00509
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 10:01:25 -0700 (PDT)
X-ASG-Debug-ID: 1478191746-0b39aa35142c1ef0001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id EviJxypUJQwqj8Qc (version=TLSv1.2
	cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO);
	Thu, 03 Nov 2016 09:49:06 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Thu, 3 Nov 2016 09:49:06 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1210.000; Thu, 3 Nov 2016 09:49:06 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: mickael <m.le-stephan@laposte.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  How to add libudev.h
X-ASG-Orig-Subj: Re: [yocto]  How to add libudev.h
Thread-Index: AQHSNeIwovSBfWwztky5LMphSdCsUqDHdnUG
Date: Thu, 3 Nov 2016 16:49:06 +0000
Message-ID: <1478191723495.11453@seescan.com>
References: <op.yqcop1yyk3hjrl@pc-mls.ecafaros.local>
In-Reply-To: <op.yqcop1yyk3hjrl@pc-mls.ecafaros.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1478191746
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1515
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
	SCORE=-2.02 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.34241
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: How to add libudev.h
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
X-List-Received-Date: Thu, 03 Nov 2016 17:01:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I belive this goes in your .bb file:=0A=
=0A=
DEPENDS =3D "             \=0A=
    udev         \=0A=
"=0A=
=0A=
RDEPENDS_${PN} =3D "         \=0A=
    udev         \=0A=
"=0A=
=0A=
Also, you probably need the right flags for libudev.=0A=
=0A=
Here are docs on that:=0A=
=0A=
https://www.freedesktop.org/software/systemd/man/libudev.html=0A=
=0A=
Of course, you need to tailor your build system to use these and incorporat=
e this into your project.=0A=
=0A=
I like automake so here's how to use pkgconfig with automake:=0A=
=0A=
https://autotools.io/pkgconfig/pkg_check_modules.html=0A=
=0A=
NOTE: systemd also provides libudev so if you have systemd, it's likely get=
ting installed there and conflicts with udev, but I'm not sure, so you want=
 to look into this as well. When I installed source for my debian jessie, I=
 got systemd, and not udev sources. YMMV.=0A=
=0A=
Frederick=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of mickael <m.le-stephan@laposte.net>=0A=
Sent: Thursday, November 3, 2016 4:55 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto]  How to add libudev.h=0A=
=0A=
Hi all, i need to build a lib --> openZwave (on a imx6 card) libudev.h.=0A=
I have this error during the build :=0A=
/home/root/openzwave-1.4.164/cpp/hidapi/linux/hid.c:44:21: fatal error:=0A=
libudev.h: No such file or directory=0A=
I have tried to add udev to my local.conf but this not resolve the problem.=
=0A=
How i can add it to my build please ?=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

