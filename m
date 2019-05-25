Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E332E00CC9; Fri, 24 May 2019 23:30:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4C0FE00CAB
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 23:30:32 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id q197so10667105qke.7
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 23:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wvPqDo9AwzN2fVWB8oPbB7BEOjaGF4G8eSBukOReGKU=;
	b=ANzPHYqvuvxFZhGzLZHZHUvKCBeX7ecBqtVBMKB756HNh4jYA35e7aVdu5u0yJ8Tb9
	+Nhxbwmikk0RALbfY2tgbCC584EFoqguBgkJX2KYwOsKRPV86/eivl1BGtxnlDrWxSpO
	e14s3C8yjzgl2XGfVhR+gBWRgo22jy2yDBuMatwN+HyMNLR30isBRN4OQaOpHg1ROTnX
	mx+eIzFJss2gVyE6nbT4Zh73kIYDodonkDASWjp8dMTcRRMJ7WT0tSPlfD8jJMLuCzzb
	aqCjNZLhSHolMQSup0Uf8Sk2TUssAo6wmDB5lnKOC8ba6D4hdJiLR33hZzMNf1sXr9R9
	SnaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wvPqDo9AwzN2fVWB8oPbB7BEOjaGF4G8eSBukOReGKU=;
	b=KkHQFgvwTy6s47oooy6az5pjAHqRRiVzVENmUMFm/3b0zqzv3gciW8TpkG4mGLqpRH
	wa/nCDNXm9I5GcPgV12btz2olsT8jqYMa9IabLptBRzWaIUbAMAW1SruLJ+f6NVQlRz+
	IAnx0w4MqJ3cgqp1weZH+mtSuTD00eD36/UwCoTYLYn2bTj36WZbLzY2LMxhG3VKfq2d
	tgGm5eSIps/KwzDpnUQrJ90YqwwxsG2l6+obC5x+p+qR7qbB9ipcYEPR2e/YHwNqFHXc
	gdXxKpnC9uZFJ0y2dmxlXzBScjEfIVDucJxBiZboGvIztHXU+tAzXEDYtoQJJbZCAeRs
	kDGA==
X-Gm-Message-State: APjAAAWrqBwnmxbC/6A0jxIr9m4RRGuJWLyWWK+eLlnImxvYrVRw+F9e
	Q6wfBQ+syeEgz12vGZXyvBJcaXgxNZ061URZ+7M=
X-Google-Smtp-Source: APXvYqx/DQN3w9kdEPAVcpnVNkWrgMsjwcoor74dGw/BbW4dRs05gBW50AqvwxjE++Gdln12Oropd9vZCdpLEQCcurA=
X-Received: by 2002:a37:b287:: with SMTP id b129mr73396262qkf.20.1558765831599;
	Fri, 24 May 2019 23:30:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
	<50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
	<CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
	<bb585fca-cdc0-1c2a-47db-cf854b23d850@gmail.com>
	<CAEseUX=g+C=15OVzc4G_1zWLwCsi+XzZR4p9jF5=b7ZYFANgow@mail.gmail.com>
	<74876fa3-2e5f-60a6-f5e7-2a4a6242bac1@gmail.com>
	<CAEseUX=BXTxMkvp_QpkWgoSvx9LMPj+mJ_dNc9Oj8uNDMfctTQ@mail.gmail.com>
In-Reply-To: <CAEseUX=BXTxMkvp_QpkWgoSvx9LMPj+mJ_dNc9Oj8uNDMfctTQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 May 2019 23:30:05 -0700
Message-ID: <CAMKF1sp0f2=f-kxi01dpRjnc3HQUXv3zi1B4tPwDNuL7+poUtw@mail.gmail.com>
To: Shane Peelar <lookatyouhacker@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: prelink-cross with -fno-plt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 25 May 2019 06:30:34 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 24, 2019 at 6:58 PM Shane Peelar <lookatyouhacker@gmail.com> wrote:
>
> Great!  Would you be willing to accept a patch that makes arch-x86_64.c handle that condition like the other arches?
>

yes certainly.

> -Shane
>
> On Fri, May 24, 2019 at 12:27 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On 5/24/19 8:10 AM, Shane Peelar wrote:
>> > I did some reading into the sources in other architectures.  The closest
>> > match, arch_i386.c, makes the write conditional as you say.
>> > So do other arches, including |arch_arm.c, |arch_sh.c, |arch-mips.c,
>> > |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||
>> > ||||||
>> > ||||||
>> > Notably, |||||||arch-cris.c||||||| has the same assert as
>> > |||||||arch-x86_64.c||||||| instead of the conditional.
>> >
>> > The code roughly looks like follows:||||||||||||||
>> > ||||||||||||||
>> > |||||||
>> > |||||||
>> > 1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
>> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
>> > 3. Look for the section named ".plt" in the ELF.
>> > 4. If the section cannot be found, return 0
>> > 5. Otherwise, write the address of .plt + constant (dependent on arch)
>> > to got[1]||||||||||||||
>> > ||||||||||||||
>> > |||||||
>> > |||||||
>> > In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4) above is an
>> > assert:|||||||
>> >
>> > |||||||1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
>> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
>> > 3. Look for the section named ".plt" in the ELF.
>> > 4. Assert that the section was found
>> > 5. Write the address of .plt + constant (dependent on arch) to got[1]
>> >
>> > I tested out making the assert conditional and nothing seemed to break
>> > at least.
>> > |||||||
>> > |||||||
>>
>> It seems ok to me.
>>
>> >
>> > On Fri, May 24, 2019 at 12:08 AM Khem Raj <raj.khem@gmail.com
>> > <mailto:raj.khem@gmail.com>> wrote:
>> >
>> >
>> >
>> >     On 5/23/19 7:53 PM, Shane Peelar wrote:
>> >      > Any of them on the system pretty much, and yes they are also
>> >     built with
>> >      > -fno-plt.
>> >
>> >     OK, I think its better to them conditionally check for .plt section,
>> >     can you describe more of whats going on when sections are checked.
>> >
>> >      >
>> >      > On Thu, May 23, 2019 at 9:59 PM Khem Raj <raj.khem@gmail.com
>> >     <mailto:raj.khem@gmail.com>
>> >      > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>> wrote:
>> >      >
>> >      >
>> >      >
>> >      >     On 5/23/19 8:05 AM, Shane Peelar wrote:
>> >      >      > Hi Everyone @ the Yocto project,
>> >      >      >
>> >      >      > I'm Shane Peelar, a PhD Candidate at the University of
>> >     Windsor.
>> >      >      > I'm writing to you about prelink-cross, as part of the
>> >     Yocto project.
>> >      >      > Specifically, I'm looking at using it with executables
>> >     built using
>> >      >      > `-fno-plt` under GCC.
>> >      >      > I wasn't quite sure where to send this email to, so I
>> >     figured I'd
>> >      >     try
>> >      >      > here.  If there's a better place to send this, please let
>> >     me know.
>> >      >      >
>> >      >      > Right now, prelink-cross seems to fail an assertion in
>> >      >     arch-x86_64.c,
>> >      >      > line 421, when
>> >      >      > using it with an executable built with `-fno-plt`:
>> >      >      >
>> >      >      > ...
>> >      >      > assert (i < dso->ehdr.e_shnum)
>> >      >      > ...
>> >      >      >
>> >      >      > This snippet seems to be looking for the ".plt" section and,
>> >      >     since it
>> >      >      > can't find it, the assertion fires.  This makes sense
>> >     because in
>> >      >      > `-fno-plt` executables, the `.plt` section is missing
>> >     entirely.
>> >      >      > I'm not an expert on ELF stuff, although I am learning
>> >     quickly.  It
>> >      >      > looks like
>> >      >      > this code wants to write into GOT[1] the address of ".plt"
>> >     + 0x16 --
>> >      >      > since ".plt" doesn't
>> >      >      > exist, does it make sense to just change this assert to an if
>> >      >     statement
>> >      >      > like so:
>> >      >      >
>> >      >      > ...
>> >      >      >        if (i < dso->ehdr.e_shnum)
>> >      >      >        { ... }
>> >      >      > ...
>> >      >      >
>> >      >      > and skip over that part?  Or is this a real error
>> >     condition for
>> >      >      > prelink-cross and it really should not continue?  The
>> >     executable in
>> >      >      > question is also non-PIE, if that makes a difference.
>> >      >      >
>> >      >
>> >      >     what shared libs is this linking to ? are they also built with
>> >      >     -fno-plt ?
>> >      >
>> >      >      > Thanks for your time,
>> >      >      > Shane
>> >      >      >
>> >      >
>> >

