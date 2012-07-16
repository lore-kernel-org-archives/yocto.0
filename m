Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe003.messaging.microsoft.com [216.32.180.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71D4CE0034D
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 09:25:40 -0700 (PDT)
Received: from mail100-va3-R.bigfish.com (10.7.14.253) by
	VA3EHSOBE007.bigfish.com (10.7.40.11) with Microsoft SMTP Server id
	14.1.225.23; Mon, 16 Jul 2012 16:25:39 +0000
Received: from mail100-va3 (localhost [127.0.0.1])	by
	mail100-va3-R.bigfish.com (Postfix) with ESMTP id 691D6A006A;
	Mon, 16 Jul 2012 16:25:39 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -5
X-BigFish: VS-5(zzbb2dI98dI9371I1454I1432I4015Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ahbe9i)
Received: from mail100-va3 (localhost.localdomain [127.0.0.1]) by mail100-va3
	(MessageSwitch) id 1342455937783081_6194;
	Mon, 16 Jul 2012 16:25:37 +0000 (UTC)
Received: from VA3EHSMHS011.bigfish.com (unknown [10.7.14.243])	by
	mail100-va3.bigfish.com (Postfix) with ESMTP id BC0CA360044;
	Mon, 16 Jul 2012 16:25:37 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS011.bigfish.com
	(10.7.99.21) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 16 Jul 2012 16:25:37 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Mon, 16 Jul 2012 11:25:37 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Scott Garman <scott.a.garman@intel.com>
Thread-Topic: [yocto] edison/denzil patches (post-1.1.2 and 1.2.1)
Thread-Index: AQHNYFXTv0q7KdYirke7XkZ8aY+u/A==
Date: Mon, 16 Jul 2012 16:25:36 +0000
Message-ID: <CAEsOVNe48LR37qWJNnv=Hmk=Y3_M7qjLY+WfoOTXepcVcXehUg@mail.gmail.com>
References: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
	<50043FC4.3040800@intel.com>
In-Reply-To: <50043FC4.3040800@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 16 Jul 2012 16:25:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7013CAE621ED7B43A8B99CCDC4ABEC85@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 16, 2012 at 11:22 AM, Scott Garman <scott.a.garman@intel.com> w=
rote:
> On 07/12/2012 10:43 AM, McClintock Matthew-B29882 wrote:
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
> Cool, this is a fairly convenient way for me to merge in these commits. L=
ike
> Joshua has pointed out, as long as they are bugfixes and don't introduce
> significant feature additions or create backward compatibility problems, =
we
> are likely to accept them.
>
> I'm back from vacation and am catching up on a massive email backlog. Ple=
ase
> feel free to ping me in a few days if you don't see these merged into my
> sgarman/denzil-next-1.2.2 branch.

Thanks Scott,

I'm closing up on the edison branch changes and testing and I will be
adding more to the denzil branch soon.

-M

>
> Thanks,
>
> Scott
>
> --
> Scott Garman
> Embedded Linux Engineer - Yocto Project
> Intel Open Source Technology Center
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


