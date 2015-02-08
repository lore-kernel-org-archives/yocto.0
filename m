Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1115AE00596; Sun,  8 Feb 2015 10:11:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA3D7E003D4
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 10:11:34 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AjgFAF6l11TGmAcV/2dsb2JhbABcgmQigTDAT4gXAoEPQwEBAQEBAXyEDgEBAxIoUQEVFRRCJgEEGxqICwGjLYR/oDkgj0eDToEUBY8bkAKMGiKDboIzfgEBAQ
X-IronPort-AV: E=Sophos;i="5.09,540,1418101200"; d="scan'208";a="103186171"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	08 Feb 2015 13:11:33 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC04.global.avaya.com) ([135.64.58.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	08 Feb 2015 13:11:33 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC04.global.avaya.com ([135.64.58.14]) with mapi id
	14.03.0174.001; Sun, 8 Feb 2015 19:11:31 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Custom recipe to have pre and post install action
Thread-Index: AdBDyqpFXqSZQR1tRC2o8hscawrrHg==
Date: Sun, 8 Feb 2015 18:11:31 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A34824C@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.152.73.21]
MIME-Version: 1.0
Subject: Custom recipe to have pre and post install action
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
X-List-Received-Date: Sun, 08 Feb 2015 18:11:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am trying to write an recipe which need to have pre and post install acti=
on. The one define in RPM using %pre and %post.

Basically the application run as service on the platform. So we need to mak=
e sure that if its an upgrade then we need to stop the service.
If its a fresh install or an upgrade so post install we need to start the s=
ervice.
As we have script which can be placed in /etc/init.d and then we can have i=
t running using the pre and post install action. But I am not able to find =
how to do it.

I do get the reference about INITSCRIPT_PACKAGES and INITSCRIPT_PARAMS but =
it seems they can be used for make it process running at the system coming =
up and going down.

Any thoughts how to achieve the same.=

