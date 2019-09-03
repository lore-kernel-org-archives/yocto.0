Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88584E00D68; Tue,  3 Sep 2019 11:56:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3727FE00D67
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 11:56:18 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx2.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 03 Sep 2019 18:56:17 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 3 Sep 2019 11:55:57 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 3 Sep 2019 11:55:57 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi] Confusion about U-Boot setup
Thread-Index: AdViiJ5RhcubeYNCQzmLxnNlgHvPtw==
Date: Tue, 3 Sep 2019 18:55:56 +0000
Message-ID: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.158]
MIME-Version: 1.0
X-BESS-ID: 1567536970-893003-24399-305115-6
X-BESS-VER: 2019.1_20190823.2224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.218021 [from 
	cloudscan19-81.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: [meta-raspberrypi] Confusion about U-Boot setup
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
X-List-Received-Date: Tue, 03 Sep 2019 18:56:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've configured a sumo build, by way of QT's boot2qt to use u-boot and I am=
 seeing a u-boot prompt for keypress to drop out of automatic booting on st=
artup, but I don't see any configuration scripts for u-boot (uEnv.txt or a =
script) on the image or in the build tmp/ dir.

For the raspberry pi, how is u-boot configured on startup?

Regards,
Greg Wilson-Lindberg=A0=20
=20

