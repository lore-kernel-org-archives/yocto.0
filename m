Return-Path: <B19537@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe002.messaging.microsoft.com [216.32.180.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 276B1E0075A
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 19:53:18 -0800 (PST)
Received: from mail14-co1-R.bigfish.com (10.243.78.245) by
	CO1EHSOBE014.bigfish.com (10.243.66.77) with Microsoft SMTP Server id
	14.1.225.23; Tue, 4 Dec 2012 03:53:16 +0000
Received: from mail14-co1 (localhost [127.0.0.1])	by mail14-co1-R.bigfish.com
	(Postfix) with ESMTP id 734729C02CF;
	Tue,  4 Dec 2012 03:53:16 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 1
X-BigFish: VS1(zzzz1de0h1202h1d1ah1d2ahzzz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631hbe9i1155h)
Received: from mail14-co1 (localhost.localdomain [127.0.0.1]) by mail14-co1
	(MessageSwitch) id 1354593160753355_2500;
	Tue,  4 Dec 2012 03:52:40 +0000 (UTC)
Received: from CO1EHSMHS013.bigfish.com (unknown [10.243.78.247])	by
	mail14-co1.bigfish.com (Postfix) with ESMTP id ABCFD46014D;
	Tue,  4 Dec 2012 03:52:40 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS013.bigfish.com
	(10.243.66.23) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 4 Dec 2012 03:52:40 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.190]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0318.003; Tue, 4 Dec 2012 03:52:39 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Difference of toolchain recipes
Thread-Index: Ac3R0s0/UEOxKwlOQ72h3AL1xJ4hNA==
Date: Tue, 4 Dec 2012 03:52:39 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A013759A7@039-SN2MPN1-021.039d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Difference of toolchain recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Dec 2012 03:53:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It is a bit confused for the different recipes of toolchian, can somebody h=
elp to explain what's the difference for those recipes? E.g. gcc-cross, gcc=
-cross-canadian, gcc-cross-initial, gcc-cross-intermediate, gcc-crosssdk, g=
cc-crosssdk-initial, gcc-crosssdk-intermediate, gcc-runtime, etc.=20

Is there any document for those description?


Best Regards,

Zhenhua


