Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9C4FE00A26; Thu,  6 Aug 2015 08:47:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Aug 2015 08:47:58 PDT
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33BEEE009FD
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 08:47:58 -0700 (PDT)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.235.1;
	Thu, 6 Aug 2015 11:53:32 -0400
Received: from BOS-DAG1.zone1.flir.net ([169.254.2.131]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0235.001;
	Thu, 6 Aug 2015 11:46:50 -0400
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: Khem Raj <raj.khem@gmail.com>, Justin Bauer <jbauer@blockwise.com>
Thread-Topic: [yocto] Qt SDK Static Build
Thread-Index: AQHQzvHdmmWQB++WJkeY0+0+ixeF1p3+mQMAgACHNvA=
Date: Thu, 6 Aug 2015 15:46:50 +0000
Message-ID: <F14AEF751653024287138321000C846AF484EFAF@BOS-DAG1.zone1.flir.net>
References: <em56b72e44-f32f-451c-9677-11ded6e322e9@jbauer-pc>
	<CAMKF1srA5pRxcAKQVzDgH-CJkt5gmaTP=-t=3b4tnVEuadtbUg@mail.gmail.com>
In-Reply-To: <CAMKF1srA5pRxcAKQVzDgH-CJkt5gmaTP=-t=3b4tnVEuadtbUg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.100.81]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Qt SDK Static Build
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
X-List-Received-Date: Thu, 06 Aug 2015 15:47:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > $ bitbake meta-toolchain-qt5
>
> well SDKIMAGE_FEATURES only work when you generate SDKs using -
> cpopulate_sdk out of real images and not meta-toolchain-* targets which I=
MO
> should no longer be used.

As a (non-expert/non-maintainer) user, I'm happy to hear it said [by Khem R=
aj] that meta-toolchain-* targets should go away.  They easily lead to havi=
ng multiple (incorrect) sysroot versions that can make (gdb remote)  debugg=
ing a futile experience.  I assume there are good practices for what should=
 go in an image recipe vs. local.conf or especially distro.conf that minimi=
ze this (and other problems?), but the best practice I know is to promptly =
delete any sysroot copy installed by a meta-toolchain-* produced installer.

If anyone with saavy and bandwidth out there is taking input on which of th=
ese to attack first, I'll happily throw in a vote for Qt4.

________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

