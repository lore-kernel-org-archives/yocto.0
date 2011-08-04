Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE005.bigfish.com (tx2ehsobe003.messaging.microsoft.com
	[65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14E05E004B2
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 09:12:12 -0700 (PDT)
Received: from mail40-tx2-R.bigfish.com (10.9.14.247) by
	TX2EHSOBE005.bigfish.com (10.9.40.25) with Microsoft SMTP Server id
	14.1.225.22; Thu, 4 Aug 2011 16:12:20 +0000
Received: from mail40-tx2 (localhost.localdomain [127.0.0.1])	by
	mail40-tx2-R.bigfish.com (Postfix) with ESMTP id 7BFFE19381AA;
	Thu,  4 Aug 2011 16:12:20 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zz9371K98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail40-tx2 (localhost.localdomain [127.0.0.1]) by mail40-tx2
	(MessageSwitch) id 1312474338503807_5387;
	Thu,  4 Aug 2011 16:12:18 +0000 (UTC)
Received: from TX2EHSMHS024.bigfish.com (unknown [10.9.14.253])	by
	mail40-tx2.bigfish.com (Postfix) with ESMTP id 76787173804B;
	Thu,  4 Aug 2011 16:12:18 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS024.bigfish.com
	(10.9.99.124) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 4 Aug 2011 16:12:16 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.56]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0289.008; Thu, 4 Aug 2011 11:12:16 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [yocto] examples / docs on utilizing an external toolchain
Thread-Index: AQHMUsFGxFbcQiKmBkq8GnrpVKA6Zg==
Date: Thu, 4 Aug 2011 16:12:15 +0000
Message-ID: <CAEsOVNdDjpv7suXZAqC91NH8eGkEd_XsjY+G17dWXtYyzpB79A@mail.gmail.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<1312469410.14274.0.camel@rex> <4E3AB3B3.7050103@mlbassoc.com>
	<2016626.y3nmSzkdEa@perseus>
	<CABcZANkaSU5v6hKW_vvyDwcE377iRc17-A_50nwc21_UHWWATQ@mail.gmail.com>
	<4E3ABBF0.4050903@mlbassoc.com>
In-Reply-To: <4E3ABBF0.4050903@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Thu, 04 Aug 2011 16:12:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <4F6D0EC245DEC34C844153A8BC13073A@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 4, 2011 at 10:34 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> How do I use this?

There seems to be a blurb here:

https://wiki.yoctoproject.org/wiki/Enable_sstate_cache

-M=


