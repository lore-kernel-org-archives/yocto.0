Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe001.messaging.microsoft.com [213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21456E00288
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 09:01:33 -0700 (PDT)
Received: from mail21-am1-R.bigfish.com (10.3.201.244) by
	AM1EHSOBE006.bigfish.com (10.3.204.26) with Microsoft SMTP Server id
	14.1.225.23; Mon, 16 Jul 2012 16:01:31 +0000
Received: from mail21-am1 (localhost [127.0.0.1])	by mail21-am1-R.bigfish.com
	(Postfix) with ESMTP id D9EA438047C;
	Mon, 16 Jul 2012 16:01:31 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zzbb2dI98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ahbe9i)
Received: from mail21-am1 (localhost.localdomain [127.0.0.1]) by mail21-am1
	(MessageSwitch) id 1342454489593648_6993;
	Mon, 16 Jul 2012 16:01:29 +0000 (UTC)
Received: from AM1EHSMHS019.bigfish.com (unknown [10.3.201.250])	by
	mail21-am1.bigfish.com (Postfix) with ESMTP id 8ED2310005E;
	Mon, 16 Jul 2012 16:01:29 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS019.bigfish.com
	(10.3.207.157) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 16 Jul 2012 16:01:29 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Mon, 16 Jul 2012 11:01:27 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Joshua Lock <josh@linux.intel.com>
Thread-Topic: [yocto] edison/denzil patches (post-1.1.2 and 1.2.1)
Thread-Index: AQHNYFXTv0q7KdYirke7XkZ8aY+u/JcsWf8AgAADP4CAAAZ0gIAAB90A
Date: Mon, 16 Jul 2012 16:01:27 +0000
Message-ID: <CAEsOVNf-_+hca=qhXGjBiOYRn77-duCYoiTVj5HrYyGTzYZYHQ@mail.gmail.com>
References: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
	<50042C06.70900@linux.intel.com>
	<CAEsOVNfEw9sDfLVGCAM6AwQjzGrVNxuvrL4vcS=1kDEMaePK3g@mail.gmail.com>
	<50043429.4070204@linux.intel.com>
In-Reply-To: <50043429.4070204@linux.intel.com>
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
X-List-Received-Date: Mon, 16 Jul 2012 16:01:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <18548FDC2A04334FAFAD51070ADFAB35@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 16, 2012 at 10:32 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On 16/07/12 08:10, McClintock Matthew-B29882 wrote:
>>
>> On Mon, Jul 16, 2012 at 9:58 AM, Joshua Lock <josh@linux.intel.com> wrot=
e:
>>>
>>> On 12/07/12 10:43, McClintock Matthew-B29882 wrote:
>>>>
>>>>
>>>> Josh, Scott:
>>>>
>>>> I've pushed a set of patches for edison/denzil branch - and I may push
>>>> a few more still to:
>>>>
>>>>
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmattsm=
/edison
>>>>
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmattsm=
/denzil
>>>>
>>>> These are all cherry-pick's and most applied cleanly and a few had
>>>> some minor cleanups. Please consider these for after the point
>>>> releases. I will continue to push to these branches and rebase these
>>>> branches off the official upstream trees as well.
>>>
>>>
>>>
>>> I don't know how much work will be done on Edison after the 1.1.2
>>> release. I
>>> personally will no longer be working on it and I don't think the team
>>> here
>>> as enough resources to maintain it perpetually.
>>
>>
>> OK.
>>
>>> I assume that these changes are predominantly to further improve PPC
>>> support?
>>
>>
>> Yes.
>>
>>> In general your branch has several types of changes that have generally
>>> been
>>> considered inappropriate for a point release (such as recipe upgrades,
>>> new
>>> functionality, etc).
>>
>>
>> I see very little of this, the valgrind series and/or the a few other
>> image generation bits.
>
>
> Indeed, that's likely the sum of it but the changes in isolation don't of=
fer
> any context as to why they're required for PPC so my gut reaction is to
> reject them as they violate the suggested guidelines for stable releases.

I'm fine to have some of them rejected, such is how things work ;)

>>> Personally I'm not very keen on the idea of pushing them all and
>>> advocating
>>> their inclusion. I'd strongly encourage adoption of this release series
>>> if
>>> it's to continue to be relevant to your work.
>>
>>
>> So is poky edison dead now? How do I support folks that still want to
>> use it? I understand that *you* may not have time but is there a
>> process for someone that cares about this release still to do work? If
>> a fork is required is there a way to point folks at this fork? Such as
>> if you want this to work use this other version?
>
>
> I certainly can't see why one would need to fork.
>
> I would like to see Edison live on, which is why I sent an email suggesti=
ng
> it be adopted, *I* just don't have time to work on it any more.

I know what you mean ;)

> I'm sure Saul and/or David can help work out a process, as I don't have a
> clear understanding of it (I am but one cog in the engine). I can't imagi=
ne
> why it would be hugely different from the way it's been maintained thus f=
ar.
>
> Much of that work you've already been doing with the branch you have
> submitted.

Yep, I've made my best effort to only backport commits already upstream.

> In addition there are a different set of requirements for just getting
> changes into the branch vs. having some kind of release which includes th=
ose
> changes.
>
> The latter would require QA, build/release engineering, release readiness=
,
> etc.

I understand. I'm fine with adding stuff to the edison branch for now
and we can worry about another official release sometime in the future
(or never). I'm mostly wanting a place I can tell people to get the
(working) code from for our targets. And ideally it's on
yoctoproject.org and not github.com or git.fsl.com

Just for some more context, we just release our SDK off of edison and
I expect plenty of activity around bugfixes and back porting commits.
I would like this work to be available to all attempting to build
edison as well.

-M=


