Return-Path: <erik.boto@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9038EE00E9E; Thu, 18 Jan 2018 21:22:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Jan 2018 21:22:22 PST
Received: from ORO-EDGE-01.luxoft.com (oro-edge-01.luxoft.com [109.166.244.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B159E00CD9
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 21:22:22 -0800 (PST)
Received: from ORO-HUBT-02.luxoft.com (172.30.115.36) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Fri, 19 Jan 2018 07:21:14 +0200
Received: from ORO-MBOX-05.luxoft.com ([fe80::1137:8dc2:bce5:c3fc]) by
	ORO-HUBT-02.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Fri, 19 Jan 2018 07:21:18 +0200
From: "Boto, Erik (Pelagicore)" <erik.boto@pelagicore.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Automated license incompatibility checks
Thread-Index: AdOQ46r/mE/iOrysQniIAklh/nuMvg==
Date: Fri, 19 Jan 2018 05:21:17 +0000
Message-ID: <AB2C775B0A414B47856169E3372B9DF202210B21@ORO-MBOX-05.luxoft.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.218.80.243]
MIME-Version: 1.0
Subject: Automated license incompatibility checks
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
X-List-Received-Date: Fri, 19 Jan 2018 05:22:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I was looking for a way to analyze in more detail how packages of different=
 licenses was used in an image, and stumbled upon this old mail-thread: htt=
ps://lists.yoctoproject.org/pipermail/yocto/2015-January/023307.html

My end goal is pretty much the same as Clemens, that I want to be able to h=
ave checks/rules for which licenses are ok to have when linking dynamically=
/statically to other libraries. Does anyone know if this work ever got publ=
ished somewhere? It seems like a very nice functionality to have.

Cheers,
Erik

