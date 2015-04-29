Return-Path: <francisco.torres@ttcontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45AAFE0095D; Wed, 29 Apr 2015 10:35:08 -0700 (PDT)
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
X-Greylist: delayed 312 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Apr 2015 10:35:04 PDT
Received: from mail.tttech.com (mail.tttech.com [188.20.77.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA104E007B9
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 10:35:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.tttech.com (Postfix) with ESMTP id 7647F3F129
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 19:29:49 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at tttech.com
Received: from mail.tttech.com ([127.0.0.1])
	by localhost (tttmaildmz.vie.at.tttech.ttt [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id znI9c6TEX640 for <yocto@yoctoproject.org>;
	Wed, 29 Apr 2015 19:29:49 +0200 (CEST)
Received: from TTTEX02.ds1.internal (unknown [10.100.10.136])
	by mail.tttech.com (Postfix) with ESMTPS id 62D053F11B
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 19:29:49 +0200 (CEST)
Received: from TTTEX02.ds1.internal (10.100.10.136) by TTTEX02.ds1.internal
	(10.100.10.136) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Wed, 29 Apr 2015 19:29:48 +0200
Received: from TTTEX02.ds1.internal ([fe80::fd88:4379:bed4:8d08]) by
	TTTEX02.ds1.internal ([fe80::fd88:4379:bed4:8d08%18]) with mapi id
	15.00.1044.021; Wed, 29 Apr 2015 19:29:48 +0200
From: Francisco Torres <francisco.torres@ttcontrol.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to create a gz file with compiled files from other recipes
Thread-Index: AdCCobjKx4iAe6UnTcm3z2haIDf26A==
Date: Wed, 29 Apr 2015 17:29:47 +0000
Message-ID: <bc0cba483d914890bbf152c385d3ff14@TTTEX02.ds1.internal>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.100.12.81]
MIME-Version: 1.0
Subject: How to create a gz file with compiled files from other recipes
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
X-List-Received-Date: Wed, 29 Apr 2015 17:35:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I have created some recipes which using an external mingw toolchain are abl=
e to compile some libraries for windows (e.g. clutter, mx, ....)

Now I would like to create a compressed file with all the compiled dlls (an=
d if possible header files). How can I do that?

(I have tried to create an image but when I do that also some other package=
s, e.g., kernel, that I do not need/want are included).

Thanks,
Francis.
CONFIDENTIALITY: The contents of this e-mail are confidential and intended =
only for the above addressee(s). If you are not the intended recipient, or =
the person responsible for delivering it to the intended recipient, copying=
 or delivering it to anyone else or using it in any unauthorized manner is =
prohibited and may be unlawful. If you receive this e-mail by mistake, plea=
se notify the sender and the systems administrator at straymail@tttech.com =
immediately.

