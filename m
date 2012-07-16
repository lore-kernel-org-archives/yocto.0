Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe006.messaging.microsoft.com [213.199.154.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72FE9E00289
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 08:10:25 -0700 (PDT)
Received: from mail105-db3-R.bigfish.com (10.3.81.233) by
	DB3EHSOBE003.bigfish.com (10.3.84.23) with Microsoft SMTP Server id
	14.1.225.23; Mon, 16 Jul 2012 15:10:23 +0000
Received: from mail105-db3 (localhost [127.0.0.1])	by
	mail105-db3-R.bigfish.com (Postfix) with ESMTP id D5E092600EB;
	Mon, 16 Jul 2012 15:10:23 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zzbb2dI98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ahbe9i)
Received: from mail105-db3 (localhost.localdomain [127.0.0.1]) by mail105-db3
	(MessageSwitch) id 1342451422683407_14299;
	Mon, 16 Jul 2012 15:10:22 +0000 (UTC)
Received: from DB3EHSMHS009.bigfish.com (unknown [10.3.81.229])	by
	mail105-db3.bigfish.com (Postfix) with ESMTP id 9B6731A0046;
	Mon, 16 Jul 2012 15:10:22 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS009.bigfish.com
	(10.3.87.109) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 16 Jul 2012 15:10:22 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Mon, 16 Jul 2012 10:10:12 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Joshua Lock <josh@linux.intel.com>
Thread-Topic: [yocto] edison/denzil patches (post-1.1.2 and 1.2.1)
Thread-Index: AQHNYFXTv0q7KdYirke7XkZ8aY+u/JcsWf8AgAADP4A=
Date: Mon, 16 Jul 2012 15:10:12 +0000
Message-ID: <CAEsOVNfEw9sDfLVGCAM6AwQjzGrVNxuvrL4vcS=1kDEMaePK3g@mail.gmail.com>
References: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
	<50042C06.70900@linux.intel.com>
In-Reply-To: <50042C06.70900@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: edison/denzil patches (post-1.1.2 and 1.2.1)
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
X-List-Received-Date: Mon, 16 Jul 2012 15:10:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D40073DC59564F4EA9A90D1920F8C91B@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 16, 2012 at 9:58 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On 12/07/12 10:43, McClintock Matthew-B29882 wrote:
>>
>> Josh, Scott:
>>
>> I've pushed a set of patches for edison/denzil branch - and I may push
>> a few more still to:
>>
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmattsm/e=
dison
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmattsm/d=
enzil
>>
>> These are all cherry-pick's and most applied cleanly and a few had
>> some minor cleanups. Please consider these for after the point
>> releases. I will continue to push to these branches and rebase these
>> branches off the official upstream trees as well.
>
>
> I don't know how much work will be done on Edison after the 1.1.2 release=
. I
> personally will no longer be working on it and I don't think the team her=
e
> as enough resources to maintain it perpetually.

OK.

> I assume that these changes are predominantly to further improve PPC
> support?

Yes.

> In general your branch has several types of changes that have generally b=
een
> considered inappropriate for a point release (such as recipe upgrades, ne=
w
> functionality, etc).

I see very little of this, the valgrind series and/or the a few other
image generation bits.

> Personally I'm not very keen on the idea of pushing them all and advocati=
ng
> their inclusion. I'd strongly encourage adoption of this release series i=
f
> it's to continue to be relevant to your work.

So is poky edison dead now? How do I support folks that still want to
use it? I understand that *you* may not have time but is there a
process for someone that cares about this release still to do work? If
a fork is required is there a way to point folks at this fork? Such as
if you want this to work use this other version?

As far as these changes go, we are mostly done with edison as well -
but I was trying to get the official poky edison into a useful state
for powerpc so if folks wanted to go with a community version it would
work reasonably well.

-M=


