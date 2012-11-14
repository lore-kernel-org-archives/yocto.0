Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe003.messaging.microsoft.com [65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B88D2E01447
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2012 19:03:51 -0800 (PST)
Received: from mail210-tx2-R.bigfish.com (10.9.14.249) by
	TX2EHSOBE001.bigfish.com (10.9.40.21) with Microsoft SMTP Server id
	14.1.225.23; Wed, 14 Nov 2012 03:03:51 +0000
Received: from mail210-tx2 (localhost [127.0.0.1])	by
	mail210-tx2-R.bigfish.com (Postfix) with ESMTP id CFB508400F9;
	Wed, 14 Nov 2012 03:03:50 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 2
X-BigFish: VS2(zz98dI9371I1432Izz1de0h1202h1d1ah1d2ahzz17326ah8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i15d0l1155h)
Received: from mail210-tx2 (localhost.localdomain [127.0.0.1]) by mail210-tx2
	(MessageSwitch) id 1352862229136147_5317;
	Wed, 14 Nov 2012 03:03:49 +0000 (UTC)
Received: from TX2EHSMHS019.bigfish.com (unknown [10.9.14.253])	by
	mail210-tx2.bigfish.com (Postfix) with ESMTP id 1E8B074005B;
	Wed, 14 Nov 2012 03:03:49 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS019.bigfish.com
	(10.9.99.119) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 14 Nov 2012 03:03:48 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.103]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0318.003; Wed, 14 Nov 2012 03:03:48 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] Grabbing the images from a specific autobuilder run
Thread-Index: AQHNwhSqAh/mASjXcEuIpPVhOmWhqA==
Date: Wed, 14 Nov 2012 03:03:48 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A77ED99@039-SN1MPN1-001.039d.mgd.msft.net>
References: <50A2CD1B.5020408@linux.intel.com>
In-Reply-To: <50A2CD1B.5020408@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Grabbing the images from a specific autobuilder run
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
X-List-Received-Date: Wed, 14 Nov 2012 03:03:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <AD1756B425C6EA4396D57B4DA17218E9@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 13, 2012 at 4:43 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> I'm trying to find the images from the following autobuilder run:
>
> http://autobuilder.yoctoproject.org:8010/builders/sys940x/builds/100
>
> Where can I find the core-image-sato.hddimg or core-image-minimal.hddimg
> for example?

I thought it would be here:
http://autobuilder.yoctoproject.org/pub/nightly-meta-intel/20121102-2

That's how it is for certain builds (e.g. p1022ds) from the DEST value
towards the bottom of the page, perhaps the meta-intel-nightly ones
are not getting copied over all all?

-M=


