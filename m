Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6052E00D64; Mon, 17 Jun 2019 10:50:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.21 listed in list.dnswl.org]
Received: from 5pmail.ess.barracuda.com (5pmail.ess.barracuda.com
	[209.222.82.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 754B9E00A7D
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 10:50:01 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx14.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Mon, 17 Jun 2019 17:50:00 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 17 Jun 2019 10:49:58 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 17 Jun 2019 10:49:58 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: Am not getting udev-extraconf automount to work
Thread-Index: AdUlLjaz9YLAA1rwRXiu4WBn/SVWVA==
Date: Mon, 17 Jun 2019 17:49:58 +0000
Message-ID: <c09affe2bbd247beb0bd1c82acbafd18@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1560793799-893026-8912-83229-1
X-BESS-VER: 2019.1_20190614.2047
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.214824 [from 
	cloudscan20-174.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Am not getting udev-extraconf automount to work
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
X-List-Received-Date: Mon, 17 Jun 2019 17:50:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm building for a RPi3B using the Qt supplied boot2qt framework on SUMO.
I've added udev-extraconf to pull in automount.rules.

When I plug in a USB thumb drive I get /dev/SDA & /dev/SDA1. I also get /tm=
p/.automount-sda1 with the time of insertion. I also get /run/media/sda1, a=
nd the /var/log/messages file has a message that 'Auto-mount of [/run/media=
/sda1] successful', but the output of the 'mount' program does=A0not show t=
he thumb drive mounted, nothing in the output at /run/media/sda1' and the d=
irectory is=A0empty despite the thumb drives that I have tried having files=
 on them.

Anyone have any experience with the automounter?
=A0

Greg Wilson-Lindberg=A0=20
=A0

