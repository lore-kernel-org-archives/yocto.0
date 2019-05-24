Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1880E00CC9; Fri, 24 May 2019 09:27:48 -0700 (PDT)
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
	*      [209.85.215.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C44BE00D5C
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 09:27:47 -0700 (PDT)
Received: by mail-pg1-f180.google.com with SMTP id h17so5346440pgv.0
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 09:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=EyI2kkBzCBpTjoPsbnN0rgMb65iFFp2soCdY5BMJ1z8=;
	b=FBd/rDXJ/HqTwvH3LNvuvtC+FmVJ2EHFv7wrYh1jOD0LzKwX6VrDKYh5d084uE8IaL
	YL9QDO7QapgRBCikgcnlRBJ33kyHdRIUc+yRladfo5Udfh77YQIWlysaI3GkyQaHOjLv
	35gGrPU9hCwxUWhQwL1+b156esRuaYbSHHQcZv7HiW2E4Kz5q0uruP/o4qVBTCdNVcn3
	/C5q+Raz+2ZPZCCiRIBx4d19uE9LVuTn2ZiLqY1T83KjivRyyUd7/3Yk/yrNfFLtiC37
	EWnMmGQD07UdxJSkqAcsKR6crxoLxueGKc4YNNAsw4lDhEJOPX+sWQcN6P+F9vjMjV6r
	QeFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=EyI2kkBzCBpTjoPsbnN0rgMb65iFFp2soCdY5BMJ1z8=;
	b=G3N0GhpIY6AS6X9aD8vws8PQlBXVhdd21BwuQhPZCxpwVz0UnfERwvE4Tmq0VTUtdp
	2bqoCZ/N04zPaT/q8XQP0IuW3UerrPsjjRXcnXF8Fa44y4jcOgV7HJbLftkwYSPweNPs
	BZcyotpVA03ZqoaX7w2HEtQFTbIoT9UxOREslHUZL955iVjjdA+q8JNL3hP4C4cgq6Nm
	Ob5pIM2CnpGCtfw8mrjHzaf8TLv26kZxRqwwRCWt7pJ0JiX7kdYaSwdCoiy2ikKJv1p5
	IbgVWb4alfsENlShB+YpSX2748On+wdcdlAoxNLPWCoW7Mjcl9MmKRk90dg2/oA04JRo
	ikfA==
X-Gm-Message-State: APjAAAXNXY3IFjH6zbq013Q9FFQWWkvbhbGem99qWmo232akdPE8a7US
	EJ7A48QN3AkFaFTrawryJos3TzT4KpU=
X-Google-Smtp-Source: APXvYqwGcNbuvaqtHSgUljOD4ze7jZyrpFksP9a6Lv86+PM5JhpbEulOq69Om5PXeKOGtUt5B5bHhg==
X-Received: by 2002:a63:f146:: with SMTP id o6mr106226694pgk.179.1558715266998;
	Fri, 24 May 2019 09:27:46 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:90a1:c429:7580:7c44])
	by smtp.gmail.com with ESMTPSA id
	b3sm4648391pfr.146.2019.05.24.09.27.46
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 May 2019 09:27:46 -0700 (PDT)
To: Shane Peelar <lookatyouhacker@gmail.com>
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
	<50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
	<CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
	<bb585fca-cdc0-1c2a-47db-cf854b23d850@gmail.com>
	<CAEseUX=g+C=15OVzc4G_1zWLwCsi+XzZR4p9jF5=b7ZYFANgow@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <74876fa3-2e5f-60a6-f5e7-2a4a6242bac1@gmail.com>
Date: Fri, 24 May 2019 09:27:45 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CAEseUX=g+C=15OVzc4G_1zWLwCsi+XzZR4p9jF5=b7ZYFANgow@mail.gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 24 May 2019 16:27:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/24/19 8:10 AM, Shane Peelar wrote:
> I did some reading into the sources in other architectures.  The closest 
> match, arch_i386.c, makes the write conditional as you say.
> So do other arches, including |arch_arm.c, |arch_sh.c, |arch-mips.c, 
> |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||
> ||||||
> ||||||
> Notably, |||||||arch-cris.c||||||| has the same assert as 
> |||||||arch-x86_64.c||||||| instead of the conditional.
> 
> The code roughly looks like follows:||||||||||||||
> ||||||||||||||
> |||||||
> |||||||
> 1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
> 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
> 3. Look for the section named ".plt" in the ELF.
> 4. If the section cannot be found, return 0
> 5. Otherwise, write the address of .plt + constant (dependent on arch) 
> to got[1]||||||||||||||
> ||||||||||||||
> |||||||
> |||||||
> In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4) above is an 
> assert:|||||||
> 
> |||||||1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
> 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
> 3. Look for the section named ".plt" in the ELF.
> 4. Assert that the section was found
> 5. Write the address of .plt + constant (dependent on arch) to got[1]
> 
> I tested out making the assert conditional and nothing seemed to break 
> at least.
> |||||||
> |||||||

It seems ok to me.

> 
> On Fri, May 24, 2019 at 12:08 AM Khem Raj <raj.khem@gmail.com 
> <mailto:raj.khem@gmail.com>> wrote:
> 
> 
> 
>     On 5/23/19 7:53 PM, Shane Peelar wrote:
>      > Any of them on the system pretty much, and yes they are also
>     built with
>      > -fno-plt.
> 
>     OK, I think its better to them conditionally check for .plt section,
>     can you describe more of whats going on when sections are checked.
> 
>      >
>      > On Thu, May 23, 2019 at 9:59 PM Khem Raj <raj.khem@gmail.com
>     <mailto:raj.khem@gmail.com>
>      > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>> wrote:
>      >
>      >
>      >
>      >     On 5/23/19 8:05 AM, Shane Peelar wrote:
>      >      > Hi Everyone @ the Yocto project,
>      >      >
>      >      > I'm Shane Peelar, a PhD Candidate at the University of
>     Windsor.
>      >      > I'm writing to you about prelink-cross, as part of the
>     Yocto project.
>      >      > Specifically, I'm looking at using it with executables
>     built using
>      >      > `-fno-plt` under GCC.
>      >      > I wasn't quite sure where to send this email to, so I
>     figured I'd
>      >     try
>      >      > here.  If there's a better place to send this, please let
>     me know.
>      >      >
>      >      > Right now, prelink-cross seems to fail an assertion in
>      >     arch-x86_64.c,
>      >      > line 421, when
>      >      > using it with an executable built with `-fno-plt`:
>      >      >
>      >      > ...
>      >      > assert (i < dso->ehdr.e_shnum)
>      >      > ...
>      >      >
>      >      > This snippet seems to be looking for the ".plt" section and,
>      >     since it
>      >      > can't find it, the assertion fires.  This makes sense
>     because in
>      >      > `-fno-plt` executables, the `.plt` section is missing
>     entirely.
>      >      > I'm not an expert on ELF stuff, although I am learning
>     quickly.  It
>      >      > looks like
>      >      > this code wants to write into GOT[1] the address of ".plt"
>     + 0x16 --
>      >      > since ".plt" doesn't
>      >      > exist, does it make sense to just change this assert to an if
>      >     statement
>      >      > like so:
>      >      >
>      >      > ...
>      >      >        if (i < dso->ehdr.e_shnum)
>      >      >        { ... }
>      >      > ...
>      >      >
>      >      > and skip over that part?  Or is this a real error
>     condition for
>      >      > prelink-cross and it really should not continue?  The
>     executable in
>      >      > question is also non-PIE, if that makes a difference.
>      >      >
>      >
>      >     what shared libs is this linking to ? are they also built with
>      >     -fno-plt ?
>      >
>      >      > Thanks for your time,
>      >      > Shane
>      >      >
>      >
> 

