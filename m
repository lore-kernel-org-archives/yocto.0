Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A44364C81001
	for <yocto@yoctoproject.org>; Tue,  9 Nov 2010 19:16:54 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAA1EwEw002870;
	Tue, 9 Nov 2010 17:14:58 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 17:14:57 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.11]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 17:14:57 -0800
Message-ID: <4CD9F20F.6070203@windriver.com>
Date: Tue, 09 Nov 2010 20:14:55 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <8EA2C2C4116BF44AB370468FBF85A77701BC9526F4@orsmsx504.amr.corp.intel.com><4CD8601A.4090500@windriver.com><8EA2C2C4116BF44AB370468FBF85A77701BCA3809D@orsmsx504.amr.corp.intel.com><4CD8E634.1090403@windriver.com>
	<4CD9663A.50200@windriver.com> <1289345518.1272.55.camel@rex>
In-Reply-To: <1289345518.1272.55.camel@rex>
X-OriginalArrivalTime: 10 Nov 2010 01:14:57.0485 (UTC)
	FILETIME=[B06F7FD0:01CB8074]
Cc: yocto@yoctoproject.org
Subject: Re: [PULL] devel/toolchain Recipes upgrades
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Nov 2010 01:16:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-09 6:31 PM, Richard Purdie wrote:
> On Tue, 2010-11-09 at 09:18 -0600, Mark Hatle wrote:
>> On 11/9/10 12:12 AM, Bruce Ashfield wrote:
>>> On 10-11-08 7:41 PM, Kamble, Nitin A wrote:
>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>>
>>>> Out of curiosity. What's the logic/requirement behind this
>>>> change ? Since we don't have a 'supported' 2.6.36 kernel, using
>>>> these would be a mismatch with what is actually booting on
>>>> the targets.
>>>>
>>>> There's probably something I just don't understand here, so
>>>> apologies in advance for the (potentially) dumb question.
>>>>
>>>>       AFAIU the linux-libc-headers are independent from the running kernel. These are headers for libc.
>>>
>>> But they aren't. The libc headers should be coupled to the
>>> kernel version. New ABIs are established and glibc can detect
>>> and deal with this, but you should never have a newer set of
>>> headers than the running kernel.
>>>
>>> To say the least, I'd like more explanation of this change.
>>
>> I agree with Bruce here.  If anything the linux-libc-headers should be the same
>> or OLDER then the running kernel for this exact reason.  It's quite dangerous
>> for newer kernel headers, as they may trigger behavioral differences within the
>> glibc configuration.
>
> When you compile [e]glibc you specify the oldest kernel you wish to
> support. As far as I know it is safe to use a recent set of kernel
> headers to build [e]glibc and then use older kernels with it. I have
> never seems a problem caused directly by kernel versions unless it was
> related to ABI changes or massive kernel version differences (2.4
> kernels on a 2.6 optimised glibc, compiled with 2.6 as the oldest kernel
> it would support).
>

I've seen incompatibilities. Since we aren't running full
toolchain validation, I do see some (minor) chances of
'bad things' happening.

If we can limit it in eglibc, then things should be fine,
since, as we all know, the kernel doesn't break ABIs. So any
headers from a newer kernel will leave structures alone that
existed for older kernels.

There is a chance of a mismatch at runtime if someone uses
statically linked binaries and matches them with the wrong
kernel, this is something we've had happen in the past, but
is more of a social engineering issue.

> I'm therefore ok in general with keeping linux-libc-headers tracking the
> most recent kernels and letting the toolchain optionally support
> features from the most recent kernel.
>
> If I'm missing something or anyone has experience of this causing
> problems I'd be interested to learn about it though.

TIPC and some of the other protocols share structures/definitions
via exported headers, they run into problems periodically. Those
breakages are more along the lines of new features not being
picked up, or new features being picked up in the headers and
not supported in the kernel, etc.

When robust PI futexs were introduced there was also
a time when the libc headers and kernel were out of sync.
glibc wouldn't do the right thing with respect to runtime
detection of the support, would fall back to the kernel
version and the support would be incorrectly disabled.

There are some syscalls added for various optional features
that are exported via unistd.h. Having newer headers than
the running kernel means some functionality may be assumed
and not present.

ARM EABI caused headaches with this as well, I vividly
remember the issues.

This are all historical examples, so my memory isn't precise
on the details (so I reserve the right to be correct). Luckily
we tend to know better now, but there is always a possibility that
things like this will pop back as well, in particular since we'll
be doing kernel development and using on-the-way upstream features.
since we have a supported kernel, I'd tend to track those headers and
not stray newer than one of our supported kernels, since they'll have
extra validation and testing. But I'm being overly paranoid.

We also have the matching of the preferred provider of the
kernel and linux-libc-headers matching, so that keeps things
in sync. But if we've removed a version locked set of
headers, and move the default forward, a local mod needs to
be done to move back to a matching set (if you were using
that older kernel). correct ?

In the end, this isn't really an issue, but coming from a
background where we validate a toolchain against a supported
kernel and set of headers, moving this forward so quickly
made me want to at least ask the question.

Cheers,

Bruce



>
> Cheers,
>
> Richard
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


