Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE004.bigfish.com (va3ehsobe004.messaging.microsoft.com
	[216.32.180.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A400E004E9
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 08:53:48 -0700 (PDT)
Received: from mail109-va3-R.bigfish.com (10.7.14.240) by
	VA3EHSOBE004.bigfish.com (10.7.40.24) with Microsoft SMTP Server id
	14.1.225.22; Tue, 11 Oct 2011 15:53:46 +0000
Received: from mail109-va3 (localhost.localdomain [127.0.0.1])	by
	mail109-va3-R.bigfish.com (Postfix) with ESMTP id 2EE73CD0240;
	Tue, 11 Oct 2011 15:53:46 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail109-va3 (localhost.localdomain [127.0.0.1]) by mail109-va3
	(MessageSwitch) id 1318348393839550_17539;
	Tue, 11 Oct 2011 15:53:13 +0000 (UTC)
Received: from VA3EHSMHS016.bigfish.com (unknown [10.7.14.244])	by
	mail109-va3.bigfish.com (Postfix) with ESMTP id C4CE271004D;
	Tue, 11 Oct 2011 15:53:13 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS016.bigfish.com
	(10.7.99.26) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Tue, 11 Oct 2011 15:53:10 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.154]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0339.002; Tue, 11 Oct 2011 10:53:09 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] RFC: User configurable recipe features
Thread-Index: AQHMiC3eLIHo5lMjLkue8bx8ef4CxQ==
Date: Tue, 11 Oct 2011 15:53:08 +0000
Message-ID: <CAEsOVNc8=_PSwh29Dw8TMDHd5biqpaXQo6Ce_n4kkJ4KdAAsQg@mail.gmail.com>
References: <4E933C41.4000207@linux.intel.com>
In-Reply-To: <4E933C41.4000207@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Tue, 11 Oct 2011 15:53:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <9239849D63F8E347832A91875DDC4D61@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 10, 2011 at 1:41 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> I would want this to affect linux-yocto-tiny by dropping the vt.cfg and
> inet.cfg fragments from the SRC_URI (or from the .scc descriptor files
> assembled by the linux-yocto meta indrastructure).
>
> Busybox would need a similar configuration mechanism, and would also
> need to add a "no-vt-support.patch" patch to the SRC_URI to avoid a
> bug/oversight in the busybox init routine.

Just chiming in on this point - I think busybox will need something
very similar to config fragments. It has a lot of functionality that
should be configurable.

-M=


