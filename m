Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 560AEE00831; Thu, 19 Feb 2015 11:27:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.240.0.71 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 532 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Feb 2015 11:27:02 PST
Received: from g9t1613g.houston.hp.com (g9t1613g.houston.hp.com [15.240.0.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F09F8E00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:27:02 -0800 (PST)
Received: from g2t2352.austin.hp.com (g2t2352.austin.hp.com [15.217.128.51])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hp.com (Postfix) with ESMTPS id 89E0F60F71
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 19:18:09 +0000 (UTC)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2352.austin.hp.com (Postfix) with ESMTPS id 3EBA0A5
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 19:18:05 +0000 (UTC)
Received: from G1W5781.americas.hpqcorp.net (16.193.25.255) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Thu, 19 Feb 2015 19:17:12 +0000
Received: from G1W3650.americas.hpqcorp.net ([169.254.8.167]) by
	G1W5781.americas.hpqcorp.net ([16.193.25.255]) with mapi id
	14.03.0169.001; Thu, 19 Feb 2015 19:17:12 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: The kernel *.cfg system
Thread-Index: AdBMd+UNvqNiw7oKQeCWaqmMRf9dLA==
Date: Thu, 19 Feb 2015 19:17:12 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A8054C2850@G1W3650.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.29]
MIME-Version: 1.0
Subject: The kernel *.cfg system
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
X-List-Received-Date: Thu, 19 Feb 2015 19:27:04 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

  I recently was playing with the FreeScale community layer meta-fsl-ppc.  =
They are using their own kernel package linux-qoriq-sdk.  I attempted to al=
ter the configuration file using a systemd.cfg for the pleasure, to my surp=
rise, the .cfg didn't change anything at all.  Is FreeScale playing Yocto r=
ules properly or is it me that missed something ?  I did the same as with l=
inux-yocto:

  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
  KERNEL_FEATURES =3D "ext2 cgroups ipv6"
  SRC_URI +=3D "file://systemd.cfg"

  Yet, the kernel .config didn't contained my changes like the linux-yocto =
did.  I was wondering if it was because the Qoriq Kernel didn't include spe=
cific Yocto recipe instructions or class and it was something that I could =
easily add or if this needed to come from FreeScale itself, or if it was re=
ally just my setup having a problem.  Note that I did copy the systemd.cfg =
file at a proper location and bitbake did find it, even thought the final c=
onfig under the /tmp/work/... didn't contain the changes.

  Any help on this welcome.

Yannick Koehler

