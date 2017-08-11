Return-Path: <Michal.Vokac@ysoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01FECE00C3A; Fri, 11 Aug 2017 05:59:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.19.3.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 366 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Aug 2017 05:59:07 PDT
Received: from uho.ysoft.cz (uho.ysoft.cz [81.19.3.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD2B5E00C14
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 05:59:07 -0700 (PDT)
Received: from APczBrno16.ysoft.local (apczbrno16.ysoft.local [10.0.0.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by uho.ysoft.cz (Postfix) with ESMTPS id 6067DA0341
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 14:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com;
	s=20160406-ysoft-com; t=1502455979;
	bh=33GLbzwCtPfiHBfvMRkN4gGcXHr56DlAxj+Ua8/2KYs=;
	h=From:To:Subject:Date:From;
	b=Y/OAm8mSnHGJvAI+M0xWNk4nQ8YvetIQiQFxl4wEH9pPfyl+lcBaXRsUTiAVPokfT
	JzIPTAp9Y6pqwaDWv9bPNUXN/69DeRPlQINjFNbHJKbND7P/hss/S+SI6JmClfbUIZ
	2PUgB0WCZIvocJPFHt6BrCWlfjHoWqVZeTKdy7GI=
Received: from APczBrno16.ysoft.local (10.0.0.90) by APczBrno16.ysoft.local
	(10.0.0.90) with Microsoft SMTP Server (TLS) id 15.0.1293.2;
	Fri, 11 Aug 2017 14:52:58 +0200
Received: from APczBrno16.ysoft.local ([fe80::641b:9b18:e002:b3e2]) by
	APczBrno16.ysoft.local ([fe80::641b:9b18:e002:b3e2%12]) with mapi id
	15.00.1293.002; Fri, 11 Aug 2017 14:52:58 +0200
From: =?iso-8859-2?Q?Vok=E1=E8_Michal?= <Michal.Vokac@ysoft.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to generate cpio.gz AND cpio.gz.u-boot image from single
	recipe?
Thread-Index: AQHTEpvXTIu23KJDUEeJ4SMMxfgByw==
Date: Fri, 11 Aug 2017 12:52:58 +0000
Message-ID: <1502455978267.42486@ysoft.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.1.8.241]
x-gfi-smtp-submission: 1
x-gfi-smtp-hellodomain: APczBrno16.ysoft.local
x-gfi-smtp-remoteip: 10.0.0.90
MIME-Version: 1.0
Subject: How to generate cpio.gz AND cpio.gz.u-boot image from single recipe?
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
X-List-Received-Date: Fri, 11 Aug 2017 12:59:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi,

I am in a process of upgrading our project from Jethro to Morty.
For a while I am trying to solve an issue with generating initramfs images.

We have an image recipe that says:

IMAGE_FSTYPES =3D "tar.bz2 cpio.gz cpio.gz.u-boot"
inherit core-image
inherit image_types_uboot

With the Jethro branch of the openembedded-core layer all thee defined imag=
e types are generated.

After upgrade to Morty, the cpio.gz image is deleted somewhere in the proce=
ss of generating
the cpio.gz.u-boot image (which is probably the right behavior of image_typ=
es_uboot.bbclass).

I wonder why it worked before and how to make it work again, properly.

Thanks in advance for any hints,
Michal

________________________________

CONFIDENTIALITY NOTICE
This message is for the named person's use only. It may contain confidentia=
l, proprietary or legally privileged information.
If you receive this message in error, please immediately delete it and all =
copies of it from your system, destroy any hard copies of it and notify us =
by email to info@ysoft.com with a copy of this message. You must not, direc=
tly or indirectly, use, disclose, distribute, print or copy any part of thi=
s message if you are not the intended recipient. Y Soft and any of its subs=
idiaries each reserves the right to monitor all e-mail communications throu=
gh its networks.
Y Soft is neither liable for the proper, complete transmission of the infor=
mation contained in this communication nor any delay in its receipt. This e=
mail was scanned for the presence of computer viruses. In the unfortunate e=
vent of infection Y Soft does not accept liability.
Any views expressed in this message are those of the individual sender, exc=
ept where the message states otherwise and the sender is authorised to stat=
e them.

