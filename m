Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0745EE00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 09:32:43 -0700 (PDT)
Received: from mail196-ch1-R.bigfish.com (10.43.68.248) by
	CH1EHSOBE005.bigfish.com (10.43.70.55) with Microsoft SMTP Server id
	14.1.225.22; Mon, 31 Oct 2011 16:32:30 +0000
Received: from mail196-ch1 (localhost.localdomain [127.0.0.1])	by
	mail196-ch1-R.bigfish.com (Postfix) with ESMTP id E7C7BDC8563;
	Mon, 31 Oct 2011 16:32:36 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zz9371K98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail196-ch1 (localhost.localdomain [127.0.0.1]) by mail196-ch1
	(MessageSwitch) id 1320078755113926_27030;
	Mon, 31 Oct 2011 16:32:35 +0000 (UTC)
Received: from CH1EHSMHS024.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.252])	by mail196-ch1.bigfish.com (Postfix) with ESMTP id
	306B5105811E;	Mon, 31 Oct 2011 16:32:21 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS024.bigfish.com
	(10.43.70.24) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Mon, 31 Oct 2011 16:32:24 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.150]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Mon, 31 Oct 2011 11:32:24 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Mike Tsukerman <miketsukerman@gmail.com>
Thread-Topic: [yocto] root paths in packages
Thread-Index: AQHMl+qr9qJQiHHMskO9Yhuz+Mww9Q==
Date: Mon, 31 Oct 2011 16:32:23 +0000
Message-ID: <CAEsOVNd18cWS5JeaxHMLTR9-pr+65bb4s=qc7H_6Prq1PpTzbw@mail.gmail.com>
References: <CALs2vtdUjnMxtTfhqPB2Teui4ZKmzzxRWfBxgU=qG9giUFAwrg@mail.gmail.com>
In-Reply-To: <CALs2vtdUjnMxtTfhqPB2Teui4ZKmzzxRWfBxgU=qG9giUFAwrg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: root paths in packages
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
X-List-Received-Date: Mon, 31 Oct 2011 16:32:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <42D94B71C6F39D4D92A82FD5E04EFF43@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 31, 2011 at 5:57 AM, Mike Tsukerman <miketsukerman@gmail.com> w=
rote:
> Hello,
> I've build rpm packages and met some interesting things.
> In the rpm all scripts and files include root paths from machine that i'v=
e
> build on.
> how can i change that?

Which package? Can you give some examples?

-M=


