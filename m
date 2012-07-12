Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe001.messaging.microsoft.com [216.32.180.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A408E00347
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 10:43:28 -0700 (PDT)
Received: from mail214-va3-R.bigfish.com (10.7.14.237) by
	VA3EHSOBE013.bigfish.com (10.7.40.63) with Microsoft SMTP Server id
	14.1.225.23; Thu, 12 Jul 2012 17:43:25 +0000
Received: from mail214-va3 (localhost [127.0.0.1])	by
	mail214-va3-R.bigfish.com (Postfix) with ESMTP id 35468A0028B;
	Thu, 12 Jul 2012 17:43:25 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 1
X-BigFish: VS1(zzzz1202hzz8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ahbe9i)
Received: from mail214-va3 (localhost.localdomain [127.0.0.1]) by mail214-va3
	(MessageSwitch) id 1342115003740370_13461;
	Thu, 12 Jul 2012 17:43:23 +0000 (UTC)
Received: from VA3EHSMHS010.bigfish.com (unknown [10.7.14.236])	by
	mail214-va3.bigfish.com (Postfix) with ESMTP id A91F21A0045;
	Thu, 12 Jul 2012 17:43:23 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS010.bigfish.com
	(10.7.99.20) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 12 Jul 2012 17:43:20 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Thu, 12 Jul 2012 12:43:21 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Joshua Lock <josh@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: edison/denzil patches (post-1.1.2 and 1.2.1)
Thread-Index: AQHNYFXTv0q7KdYirke7XkZ8aY+u/A==
Date: Thu, 12 Jul 2012 17:43:20 +0000
Message-ID: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: edison/denzil patches (post-1.1.2 and 1.2.1)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Jul 2012 17:43:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <2CEA17A1DFF9624A86E3104A8F0053D7@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Josh, Scott:

I've pushed a set of patches for edison/denzil branch - and I may push
a few more still to:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmattsm/edis=
on
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmattsm/denz=
il

These are all cherry-pick's and most applied cleanly and a few had
some minor cleanups. Please consider these for after the point
releases. I will continue to push to these branches and rebase these
branches off the official upstream trees as well.

-M=


