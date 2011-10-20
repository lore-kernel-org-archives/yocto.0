Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE004.bigfish.com (tx2ehsobe002.messaging.microsoft.com
	[65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C159AE01341
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 09:10:01 -0700 (PDT)
Received: from mail23-tx2-R.bigfish.com (10.9.14.252) by
	TX2EHSOBE004.bigfish.com (10.9.40.24) with Microsoft SMTP Server id
	14.1.225.22; Thu, 20 Oct 2011 16:10:00 +0000
Received: from mail23-tx2 (localhost.localdomain [127.0.0.1])	by
	mail23-tx2-R.bigfish.com (Postfix) with ESMTP id EE9F1B380CF;
	Thu, 20 Oct 2011 16:09:59 +0000 (UTC)
X-SpamScore: 8
X-BigFish: VS8(zz9371K1432N98dKzz1202hzz8275bhf73b6ilz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail23-tx2 (localhost.localdomain [127.0.0.1]) by mail23-tx2
	(MessageSwitch) id 1319126998642962_3393;
	Thu, 20 Oct 2011 16:09:58 +0000 (UTC)
Received: from TX2EHSMHS004.bigfish.com (unknown [10.9.14.240])	by
	mail23-tx2.bigfish.com (Postfix) with ESMTP id 8D30C7E0056;
	Thu, 20 Oct 2011 16:09:58 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS004.bigfish.com
	(10.9.99.104) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 20 Oct 2011 16:09:56 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.150]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0339.002; Thu, 20 Oct 2011 11:09:56 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Thread-Topic: [yocto] Sysprof build error
Thread-Index: AQHMj0K1vEIrZRAWTUmRxuL7mbF1iA==
Date: Thu, 20 Oct 2011 16:09:55 +0000
Message-ID: <CAEsOVNe9bRAYJHJnE+CCFHJ_X1DYZovdQi_ne9=haesX0JWe+g@mail.gmail.com>
References: <4EA025EF.8020008@communistcode.co.uk>
In-Reply-To: <4EA025EF.8020008@communistcode.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sysprof build error
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
X-List-Received-Date: Thu, 20 Oct 2011 16:10:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <46F0BC83F4189C4C9AF0EA9E070EC32F@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 20, 2011 at 8:45 AM, Jack Mitchell <ml@communistcode.co.uk> wro=
te:
> http://pastebin.com/j5vf6wzj
>
> I have tried cleaning and recompiling glib-2.0 due to this error:
>
> |
> mnt/yocto/poky/qemuarm-toolchain/tmp/sysroots/qemuarm/usr/lib/libgtk-x11-=
2.0.so:
> undefined reference to `g_datalist_get_data'
>
> Which I believe is glib related, however this might not be the fundamenta=
l
> error?

Just a comment, sysprof builds for powerpc and powerpc64 on the edison bran=
ch.

-M=


