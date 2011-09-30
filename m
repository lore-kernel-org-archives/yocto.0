Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE003.bigfish.com (db3ehsobe003.messaging.microsoft.com
	[213.199.154.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EB2FE004D1
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2011 09:41:51 -0700 (PDT)
Received: from mail99-db3-R.bigfish.com (10.3.81.245) by
	DB3EHSOBE003.bigfish.com (10.3.84.23) with Microsoft SMTP Server id
	14.1.225.22; Fri, 30 Sep 2011 16:41:50 +0000
Received: from mail99-db3 (localhost.localdomain [127.0.0.1])	by
	mail99-db3-R.bigfish.com (Postfix) with ESMTP id AAFA98204F3;
	Fri, 30 Sep 2011 16:41:49 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail99-db3 (localhost.localdomain [127.0.0.1]) by mail99-db3
	(MessageSwitch) id 1317400909118661_13356;
	Fri, 30 Sep 2011 16:41:49 +0000 (UTC)
Received: from DB3EHSMHS016.bigfish.com (unknown [10.3.81.242])	by
	mail99-db3.bigfish.com (Postfix) with ESMTP id D6E83560051;
	Fri, 30 Sep 2011 16:41:48 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS016.bigfish.com
	(10.3.87.116) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 30 Sep 2011 16:41:46 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0323.007; Fri, 30 Sep 2011 11:41:45 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: James Abernathy <jfabernathy@gmail.com>
Thread-Topic: [yocto] github instead of kernel.org
Thread-Index: AQHMf4/Xk6N9y+4Pw0qj5S8avTtn4g==
Date: Fri, 30 Sep 2011 16:41:45 +0000
Message-ID: <CAEsOVNfUuEgm=5L95Md6vFhggrkZkrpKiRVyvu5hBLKq+Q7HYw@mail.gmail.com>
References: <CANFv2E=Qc1syxKh08zKbwaPEo8+dN8MG_D61ipHiFNg4DSCZmw@mail.gmail.com>
In-Reply-To: <CANFv2E=Qc1syxKh08zKbwaPEo8+dN8MG_D61ipHiFNg4DSCZmw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: github instead of kernel.org
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
X-List-Received-Date: Fri, 30 Sep 2011 16:41:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7EAD24FF43BBA94E8673773F9C5D7B67@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 30, 2011 at 10:02 AM, James Abernathy <jfabernathy@gmail.com> w=
rote:
> Since Linus Torvalds has switched the linux git from kernel.org to
> https://github.com/torvalds/linux.git ,
>
> Is there a simple edit to make the switch in Yocto/poky???

You can try updating the recipe itself and/or place around with
KERNELORG_MIRROR.

-M=


