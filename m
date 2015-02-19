Return-Path: <francisco.torres@ttcontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF918E00815; Thu, 19 Feb 2015 02:39:26 -0800 (PST)
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
Received: from mail.tttech.com (mail.tttech.com [188.20.77.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64DB9E0034A
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 02:39:21 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.tttech.com (Postfix) with ESMTP id 513C13F423
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:39:18 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at tttech.com
Received: from mail.tttech.com ([127.0.0.1])
	by localhost (tttmaildmz.vie.at.tttech.ttt [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 0K4j4tTcxC0E for <yocto@yoctoproject.org>;
	Thu, 19 Feb 2015 11:39:18 +0100 (CET)
Received: from TTTEX02.ds1.internal (unknown [10.100.10.136])
	by mail.tttech.com (Postfix) with ESMTPS id 225723F41C
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:39:18 +0100 (CET)
Received: from TTTEX02.ds1.internal (10.100.10.136) by TTTEX02.ds1.internal
	(10.100.10.136) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Thu, 19 Feb 2015 11:39:17 +0100
Received: from TTTEX02.ds1.internal ([fe80::fd88:4379:bed4:8d08]) by
	TTTEX02.ds1.internal ([fe80::fd88:4379:bed4:8d08%18]) with mapi id
	15.00.1044.021; Thu, 19 Feb 2015 11:39:17 +0100
From: Francisco Torres <francisco.torres@ttcontrol.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: usage of mingw as external toolchain
Thread-Index: AdBMME6SE8vf4vLOSfqlsPmNAUiYCA==
Date: Thu, 19 Feb 2015 10:39:17 +0000
Message-ID: <c39bd7040ead4a968d842bd800023b9c@TTTEX02.ds1.internal>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.100.12.81]
MIME-Version: 1.0
Subject: usage of mingw as external toolchain
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
X-List-Received-Date: Thu, 19 Feb 2015 10:39:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I need to use mingw32 as external toolchain with yocto.

I have successfully built a helloworld recipe (as explained in http://www.y=
octoproject.org/docs/1.0/poky-ref-manual/poky-ref-manual.html#usingpoky-ext=
end-addpkg, 3.1.1. Single .c File Package (Hello World!)) and it is success=
fully generating a .exe that I can run on Windows.

The problem is that when I try to compile an autotooled package (as explain=
ed in same page in 3.1.2. Autotooled Package), there is a compilation probl=
em.
Please I need help to solve this problem.

I am adding in conf/local.conf

EXTERNAL_TOOLCHAIN =3D "/path/to/your/mingw32-install"

Best Regards,
Francis.
CONFIDENTIALITY: The contents of this e-mail are confidential and intended =
only for the above addressee(s). If you are not the intended recipient, or =
the person responsible for delivering it to the intended recipient, copying=
 or delivering it to anyone else or using it in any unauthorized manner is =
prohibited and may be unlawful. If you receive this e-mail by mistake, plea=
se notify the sender and the systems administrator at straymail@tttech.com =
immediately.

