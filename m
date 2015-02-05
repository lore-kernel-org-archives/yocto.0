Return-Path: <francisco.torres@ttcontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A894E00942; Thu,  5 Feb 2015 04:00:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.20.77.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 338 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Feb 2015 04:00:05 PST
Received: from mail.tttech.com (mail.tttech.com [188.20.77.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 214AAE00757
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 04:00:05 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.tttech.com (Postfix) with ESMTP id 785673F040
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 12:54:26 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at tttech.com
Received: from mail.tttech.com ([127.0.0.1])
	by localhost (tttmaildmz.vie.at.tttech.ttt [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id boKIbx43Pa7o for <yocto@yoctoproject.org>;
	Thu,  5 Feb 2015 12:54:26 +0100 (CET)
Received: from TTTEX02.ds1.internal (unknown [10.100.10.136])
	by mail.tttech.com (Postfix) with ESMTPS id 4E39C3F038
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 12:54:26 +0100 (CET)
Received: from TTTEX02.ds1.internal (10.100.10.136) by TTTEX02.ds1.internal
	(10.100.10.136) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Thu, 5 Feb 2015 12:54:24 +0100
Received: from TTTEX02.ds1.internal ([fe80::fd88:4379:bed4:8d08]) by
	TTTEX02.ds1.internal ([fe80::fd88:4379:bed4:8d08%18]) with mapi id
	15.00.1044.021; Thu, 5 Feb 2015 12:54:24 +0100
From: Francisco Torres <francisco.torres@ttcontrol.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to build a library for both linux and windows
Thread-Index: AdBBNnGsXREt7T7yQhKYyhKvm/xhwAAA/3JQ
Date: Thu, 5 Feb 2015 11:54:24 +0000
Message-ID: <1ab65c9e02e2488ab7d715898039d392@TTTEX02.ds1.internal>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.100.12.81]
MIME-Version: 1.0
Subject: How to build a library for both linux and windows
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
X-List-Received-Date: Thu, 05 Feb 2015 12:00:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,


We use Yocto to build a Linux distribution for an embedded device. This dev=
ice uses clutter to create the graphical user interface.

Also there is a Windows tool (Codesys) which is able to generate applicatio=
ns which will run in our device.
In order to create an app in windows which has a graphical user interface w=
e need to compile clutter for Windows (so Codesys will use it and developer=
 can see what the result will look like).

So, basically I need to build clutter for both Linux (done no problem here)=
 and Windows (this is what I do not know how to do).

I thought that enabling mingw as sdk in yocto would be an option (I have ma=
naged to do that) or maybe using mingw as an external toolchain, but I am n=
ot sure how to do that.

I have been able to compile mingw, which I have verified that generates cod=
e for Windows.
But now I do not know to instruct bitbake to use this generated toolchain (=
mingw) to compile clutter for Windows.

Best Regards,
Francis.
CONFIDENTIALITY: The contents of this e-mail are confidential and intended =
only for the above addressee(s). If you are not the intended recipient, or =
the person responsible for delivering it to the intended recipient, copying=
 or delivering it to anyone else or using it in any unauthorized manner is =
prohibited and may be unlawful. If you receive this e-mail by mistake, plea=
se notify the sender and the systems administrator at straymail@tttech.com =
immediately.

