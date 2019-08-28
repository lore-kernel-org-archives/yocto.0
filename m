Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CCADE00DE2; Wed, 28 Aug 2019 10:25:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.222.82.123 listed in list.dnswl.org]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C71E00D38
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 10:25:58 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx2.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 28 Aug 2019 17:25:57 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 28 Aug 2019 10:25:55 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 28 Aug 2019 10:25:55 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: Error trying to generate Raspberry Pi initramfs
Thread-Index: AdVdu7b8+55kGsaISpexjprS7ESBNw==
Date: Wed, 28 Aug 2019 17:25:55 +0000
Message-ID: <52773198ef8346c98474992339fade98@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.158]
MIME-Version: 1.0
X-BESS-ID: 1567013157-893003-24407-131667-1
X-BESS-VER: 2019.1_20190823.2224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.217816 [from 
	cloudscan14-18.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_RULE7568M, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Error trying to generate Raspberry Pi initramfs
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
X-List-Received-Date: Wed, 28 Aug 2019 17:25:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to generate an initramfs for a raspberry pi 3 for a sumo build. =
We are based off of the Qt boot2qt system.

I have followed the instructions in the meta-raspberrypi.pdf documentation,=
 section 3.14 Image with Initramfs.

I edited the meta-raspberrypi/recipes-kernel/linux/linux-raspberry.inc file=
 and added the variables into my local.conf file. I created a rpi-minimal-i=
nitramfs.bb recipe and it is created when I build the system. But the comma=
nd line that is put into the boot partition is:

dwc_otg.lpm_enable=3D0  root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait   =
 fbcon=3Dmap:10 fbcon=3Dfont:VGA8x8

No initramfs.

In the linux-raspberry.inc file, after the insertion point for the new kern=
el variables, there is a test for KERNEL_INITRAMFS. I tried setting this in=
 my local.conf file, but when I do I get an error for a missing file:

| /home/..../tmp/deploy/images/raspberrypi3/uImage1-raspberrypi3.bin: No su=
ch file or directory

So, apparently that can't be set directly.

There seems to be something missing in the instructions in the meta-raspber=
rypi.pdf documentation. Anyone that has any experience with setting this up=
 and can help me figure out what I'm missing, I would greatly appreciate th=
e help.

Regards,
Greg Wilson-Lindberg












