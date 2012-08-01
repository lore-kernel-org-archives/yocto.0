Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe003.messaging.microsoft.com [213.199.154.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1F48E013BB
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 11:05:32 -0700 (PDT)
Received: from mail21-db3-R.bigfish.com (10.3.81.232) by
	DB3EHSOBE003.bigfish.com (10.3.84.23) with Microsoft SMTP Server id
	14.1.225.23; Wed, 1 Aug 2012 18:05:31 +0000
Received: from mail21-db3 (localhost [127.0.0.1])	by mail21-db3-R.bigfish.com
	(Postfix) with ESMTP id 2B9EF60180;
	Wed,  1 Aug 2012 18:05:31 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zzbb2dI98dI9371I148cI1432Izz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail21-db3 (localhost.localdomain [127.0.0.1]) by mail21-db3
	(MessageSwitch) id 1343844329779938_28654;
	Wed,  1 Aug 2012 18:05:29 +0000 (UTC)
Received: from DB3EHSMHS002.bigfish.com (unknown [10.3.81.238])	by
	mail21-db3.bigfish.com (Postfix) with ESMTP id B1BA94A0045;
	Wed,  1 Aug 2012 18:05:29 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS002.bigfish.com
	(10.3.87.102) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 1 Aug 2012 18:05:28 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Wed, 1 Aug 2012 13:05:27 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Scott Garman <scott.a.garman@intel.com>
Thread-Topic: [yocto] [denzil-next BREAKAGE] Silent breakage in denzil-next
	--- uImage*.dts no longer generated
Thread-Index: AQHNcAao+Tdn/T3/8UmMqL0rFXO/1JdFlB2A
Date: Wed, 1 Aug 2012 18:05:25 +0000
Message-ID: <CAEsOVNe=De6ff5hhKvDrO0QEqwL_kHe1A-ukVHdu+3+6bFvMuw@mail.gmail.com>
References: <CAMvUbCwjZ8gRmGEJ4LkHAiKEmMZSWSZGVrg-jwxPRW8r=ePn7w@mail.gmail.com>
	<CAMvUbCyh0LPs-s9ShTG7UexGC_f0s16_6WfFhbhGbNsxpjvRaw@mail.gmail.com>
	<50195FCF.1030004@intel.com>
In-Reply-To: <50195FCF.1030004@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Yocto Project <yocto@yoctoproject.org>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Re: [denzil-next BREAKAGE] Silent breakage in denzil-next --- uImage*.dts no longer generated
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
X-List-Received-Date: Wed, 01 Aug 2012 18:05:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <9F7FB714D644F3489A67D15445B6A800@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 1, 2012 at 11:56 AM, Scott Garman <scott.a.garman@intel.com> wr=
ote:
> On 08/01/2012 07:50 AM, Leon Woestenberg wrote:
>>
>> Hello Scott, all,
>>
>> On Wed, Aug 1, 2012 at 4:31 PM, Leon Woestenberg
>> <sidebranch.openembedded@gmail.com
>> <mailto:sidebranch.openembedded@gmail.com>> wrote:
>>
>>     Hello Scott,
>>
>>     I tested your denzil-next branch but found breakage that will not
>>     fail the (auto) build.
>>
>>     I'm hitting the "Warning: ${DTS_FILE} is not available!" case.
>>
>> Disregard the breakage.  Local user error; my KERNEL_DEVICETREE missed
>> the "${S}" prefix.
>>
>> However, that being said, should we silently fail with a warning of the
>> specified device tree (DTS) is missing?  This is clearly a change of
>> behaviour that makes the build prone to user errors, as I just
>> demonstrated.
>>
>> I rather have the build fail.
>
>
> Hi Leon,
>
> Thanks for bringing this up. I believe Matthew made the original request =
for
> this commit (linux-dtb: add multi-dtb build support,
> a40d795ee97d8ada6a0b76c9741a8653fd646893). I'm cc:'ing him on this email =
as
> well as Richard Purdie, who has yet to review the new commits in my
> denzil-next branch and may also have some input on this issue.
>
> The question in my mind right now is whether this change is too
> risky/change-inducing for a point-release.

I think the was made this way for people using different Linux tree's
(and Linux versions) specifically which lacked specific device trees
so switching between them causing problems for specific device tree
definitions so with this we could just list them all. For example
p1022ds -> (p1022ds_32b and p1022ds_36b). I could be convinced the
make this an error or at the very least a bb.warn instead of just an
echo since it does seem problematic.

Any change should go through master -> denzil

-M=


