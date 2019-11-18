Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B08C1E00D33; Mon, 18 Nov 2019 15:25:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.222.82.84 listed in list.dnswl.org]
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Nov 2019 15:25:29 PST
Received: from 22pmail.ess.barracuda.com (22pmail.ess.barracuda.com
	[209.222.82.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6692CE00875
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 15:25:29 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx15.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Mon, 18 Nov 2019 23:25:28 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 18 Nov 2019 15:10:25 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 18 Nov 2019 15:10:25 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: [qemu] can't find qemu-native recipe
Thread-Index: AQHVnmFF+6AkGs2DrkitseZ3jhVh3g==
Date: Mon, 18 Nov 2019 23:10:25 +0000
Message-ID: <dc5da77587ca49fbba4b37f2e6b28028@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.155]
MIME-Version: 1.0
X-BESS-ID: 1574119527-893029-12051-12325-1
X-BESS-VER: 2019.1_20191118.1732
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.220449 [from 
	cloudscan10-30.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: [qemu] can't find qemu-native recipe
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
X-List-Received-Date: Mon, 18 Nov 2019 23:25:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm building thud for the raspberry pi3 for boot2qt on Ubuntu 18.04.
I've got a patch that I need to apply to to fix an include file problem and=
 I can't find the qemu-native recipe. I can find a number of recipes that d=
epend in one way or another on 'qemu-native', but I can't find a recipe, cl=
ass for it or anything that provides it. I can see it being built, and I ge=
t an error that indicates that the patch that I have needs to be applied. I=
 can find tmp/work/x86_64-linux/qemu-native/.=20

In the cooker log I see:
task qemu_3.0.0
recipe qemu-native-3.0.0

But I can't find a qemu-native.bb file,or bbclass.

I'm rather confused at this point, can someone shed a bit of light on what =
I'm missing?

Regards,
Greg Wilson-Lindberg=A0=20
=20

