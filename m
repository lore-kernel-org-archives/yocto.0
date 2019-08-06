Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E24F4E00C5C; Tue,  6 Aug 2019 10:11:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.123 listed in list.dnswl.org]
X-Greylist: delayed 912 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Aug 2019 10:11:24 PDT
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3398E00C22
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 10:11:24 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx6.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 06 Aug 2019 17:11:23 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 6 Aug 2019 09:55:25 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 6 Aug 2019 09:55:25 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: U-boot enable not working for Raspberry Pi3
Thread-Index: AdVMdFsl/WD6MMNoQLOCFWV356rAjg==
Date: Tue, 6 Aug 2019 16:55:25 +0000
Message-ID: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1565111478-893011-6464-27609-5
X-BESS-VER: 2019.1_20190805.2038
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.216937 [from 
	cloudscan17-234.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: U-boot enable not working for Raspberry Pi3
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
X-List-Received-Date: Tue, 06 Aug 2019 17:11:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm working with a Yocto Sumo build provided with Qt's boot2qt system. I'm =
trying to enable using Das U-boot to load Linux as a first step in trying t=
o enable OSTree updates.

In the meta-raspberrypi documentation is says to set:

RPI_USE_U_BOOT =3D "1"

to enable u-boot for the raspberrypi. I have set that variable in the top l=
evel local.conf file but I don't seem to be getting any changes in the buil=
d. Nothing in the cooker log shows building u-boot, and the start up screen=
 doesn't show any u-boot messages.

It appears that I'm missing necessary to turn u-boot on, can anybody shed s=
ome light on what is going on?

Regards,

Greg Wilson-Lindberg=A0=20
www.sakuraus.com

