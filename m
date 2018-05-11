Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 238EBE00E9D; Thu, 10 May 2018 18:00:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F338E009CF
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 18:00:07 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id u8-v6so1528394vku.5
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 18:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=p8MlRLnT5296ZiE07T4d/8wNbb0/X/DWLS9EqbJLtBo=;
	b=ciUZtvLz2GCItdzqs0yIyQfQ6Wa7JT4ULw7ku38A3KrejOIpzZ8k1KAuZgKlsfRj1j
	j0SZ34wS4KU/5U5OZw7juVOfo8yJfS21jd++1s+QEufxipH9XSuOsdX3g/Dbvm7ZRDxR
	bqmlCFxkoYr1IYjqwsxa2LLElGefkKgqyheoXed58RQ3ZB47WNvAOtrxErDGmY9qObLt
	8r+xugqoqaxnZaE6LbGi8kxd/PNQ0f/UFcOuHQuVEZPWQxuFsDPN4bZpntgCwyngZQFE
	Ojo553Hi3p/NiFNrz0D760BUHfR75FhX63UNb7Wv9q/F2nKwYde/kjZRL5CR8Z3M/4Ue
	7+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=p8MlRLnT5296ZiE07T4d/8wNbb0/X/DWLS9EqbJLtBo=;
	b=E8MlyIAY8DhFeYcy3+2lPMHPAvnieJsVaxETQ7pABHCI49cVfQBejyb/NZ/auE+alg
	izINdwTsQ8ERLSMPvineGJRZItJUE65Elmc/Q9fWLieuDrvXUkVxgDvu3bTM+RvlYe+u
	c1Y8mkDenbO32qItc4iC1jLoS24++IoJDhB9oABJ4JgLlolum+NNdiBQO6duSD20eUaT
	j1dvl7G03W7ZMaibGl7+miAe4NTrMrpWFihDbCjRrC6tDnuu7wuEdRBqEBlHvJAH+V5z
	qkIfFNFBwvft6yTPi5ytb7/gWQGkFZadDVo4fZXCP9srXCRQf/qH1kZ04FetVu04+A9o
	fxPA==
X-Gm-Message-State: ALKqPwe+i+0Wf1cImnzJmLSexBDx3S00o/0wQmtJ6hIGV+YGAs7CdNSI
	e9SNo/6AjQTwV7MnYiY16NtbqatAZG/odgC+UaI=
X-Google-Smtp-Source: AB8JxZoFbcKK4nowkzqX8z6WVX9DzFbjaaoD+MHwHnAgUgnXdiCptiYxlvI/uS9715IgQ0/5t6cdmHFYvuQ/mwlAwlg=
X-Received: by 2002:a1f:ac2:: with SMTP id
	185-v6mr2521591vkk.194.1526000407166; 
	Thu, 10 May 2018 18:00:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Thu, 10 May 2018 18:00:06 -0700 (PDT)
In-Reply-To: <CAMKF1soAQYfL+gwsEmt6bZv_42pO_F5Gsb0CxUrdWueaja50hg@mail.gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
	<CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
	<20180510214325.GC1954@jama> <20180510220735.GD1954@jama>
	<CAJ86T=UpZ0+HTqre2Z4eAPM9LY_eH1EUO=e1v0sz7FPe4+8aRw@mail.gmail.com>
	<CA+chaQcTPwJy+dL6GvBKJTcZuiVUiztVqEDXmSwZ==b53m_mcQ@mail.gmail.com>
	<CAJ86T=XkBkKhK6mwqxnFA1CkaV5swjGKsdNv_7E9fgFa=qhdCw@mail.gmail.com>
	<20180510225017.GE1954@jama>
	<CAJ86T=UfXtgtaWQyJbrhW40MJFW9YAArB3CshMxy5e5f9Cg_=Q@mail.gmail.com>
	<CAMKF1soAQYfL+gwsEmt6bZv_42pO_F5Gsb0CxUrdWueaja50hg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 10 May 2018 18:00:06 -0700
Message-ID: <CAJ86T=UOog5f1TFbRZxnpvvUcAddRMUsv2nnOQwWWWvdTGb7VA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembedded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Fri, 11 May 2018 01:00:09 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 10, 2018 at 5:55 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, May 10, 2018 at 4:11 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>> On Thu, May 10, 2018 at 3:50 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>>> On Thu, May 10, 2018 at 03:40:53PM -0700, Andre McCurdy wrote:
>>>> On Thu, May 10, 2018 at 3:38 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>>>> > see
>>>> > http://lists.openembedded.org/pipermail/openembedded-core/2018-May/150654.html
>>>>
>>>> Removing -fno-omit-frame-pointer isn't the same as adding
>>>> -fomit-frame-pointer. Frame pointers may get enabled depending on the
>>>> optimisation level etc (ie not only by -fno-omit-frame-pointer).
>>>
>>> Should I send v2 adding -fomit-frame-pointer instead of removing
>>> -fno-omit-frame-pointer?
>>>
>>> The v1 fixes the issue for me with default config + DEBUG_BUILD.
>>
>> The v1 patch isn't wrong, it's just incomplete (the problem could come
>> back if someone changes optimisation level or switches gcc to clang,
>> etc).
>>
>> My choice would be a v2 patch which adds -fomit-frame-pointer to
>> CFLAGS unconditionally for all ARM builds when Thumb is enabled. That
>> should fix the problem for all optimisation levels etc and avoids
>> building the main strace binary differently depending on whether or
>> not ptest is enabled.
>
> explicitly adding this option is a poor choice especially for debug
> builds where we should
> let the -On level decide and not explicitly ask for either
> enable/disable frame-pointers
> that will also make it compiler proof.

Of course, we should let the compiler decide whenever it's possible to do so.

Unfortunately there are cases like this one where frame pointers clash
with inline assembler and we need to over-rule the compiler's choice.

