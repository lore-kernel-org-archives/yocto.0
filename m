Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05970E00CB9; Wed, 20 Feb 2019 10:16:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.154.215 listed in list.dnswl.org]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.154.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F59E0049A
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:16:09 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1447.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 20 Feb 2019 18:16:08 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 20 Feb 2019 10:16:06 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 20 Feb 2019 10:16:06 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: local.conf confusion
Thread-Index: AQHUyUY2soUM1eCuOEGPCGliY1tCoQ==
Date: Wed, 20 Feb 2019 18:16:06 +0000
Message-ID: <a17ceb28d6d8481281b0283911436032@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1550686566-1102594-13224-23210-2
X-BESS-VER: nil
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.209653 [from 
	cloudscan26.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: local.conf confusion
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
X-List-Received-Date: Wed, 20 Feb 2019 18:16:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello list,

I've run into a confusion that should be simple. I've got a build based on =
sumo, at the bottom of my local.conf file is the line:

include conf/distro/include/${MACHINE}.pre.inc

This should be straight forward, just find the conf/distro/include director=
y and all of the *.pre.inc files should be there. I just searched all of th=
e sources directory for=A0=A0'*.pre.inc' and I get nothing. I'm building fo=
r a raspberry pi3, so I would expect at least 'raspberry*.inc', still nothi=
ng. I'm not getting an error for bitbake not being able to find the file.

So where do I find the machine include files?

Regards,
Greg Wilson-Lindberg =A0
    =

