Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F895E00A96; Thu,  5 Apr 2018 15:11:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13D3BE00708
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 15:11:25 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id i3so11294177wmf.3
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 15:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=On+Utt5+xHXT6CiLdxmeIWUAqjkFuwsg6GaIumq2Nr0=;
	b=PHiVY6/U8YwkIGA2E38RUJFAzsoVoS+YHWbrSNwI94zwmfrMiUXLNzb2B21IIImhj8
	xefLlSTIjRMiOCmzE3VDnH6MeS0HwbG6WEZrMgPr2XES7Tb2hSGYZqP/zIpQCMW6+IMN
	BIvgzMs9KCPloWqA2upRx3Hs9bPEPPkH3H7xotyQNP3dhxCnQd21FKjdjbgCFtV6O0EP
	LYA4JMX/5NaQZHjvdU1nOVsMhQheubsEs5ZKp7Z9KbO/JBkIt0qtemRVwOKFPQNdLSya
	wnQNeIFdWmxE3BBgsuD/BOqzHHUT3THfqNhNErLt/SSv75/tk2xChxaX7M99UQ0HHkwy
	uISA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=On+Utt5+xHXT6CiLdxmeIWUAqjkFuwsg6GaIumq2Nr0=;
	b=ng9PRqdTVfQfsIarFyVsbyAycIsKqLdJrA9jWzvo156ptBYIeCKaf4bvxO+GdihId+
	dTwJ171emBsdTDQ98e7JOU+PicZHSlU/LtwaTFwqGybEfCaofEDhoU++iIHG+FvwxfWu
	7AJWRB3J7I08DkYlSUW/38lNFhwjcrRqT+OUqvb3uQug14jZD6/FcyRGlqA3I1ookE4T
	BPDckc9gJqqqOccTP1XUkHZUEZo7lNmeeHsXKQsKiC678aeHColxG5kBi88yxr0QB6Ib
	aoyU1CzEh2lFI6hnOgdsmWpRvr1ENdnWJ1asQARoVe98RtStEvOI8K9UA0jikvifHT0a
	hkBw==
X-Gm-Message-State: AElRT7Fqb1FBUL0j+34WT1R6zax5XW1AUs92ptvqnmUkOCaU67JHFowF
	961YtoLIvKUFbgF48m0A80Sdza9dlDncc4pWMW4=
X-Google-Smtp-Source: AIpwx48OBSC1NcwHZsFjaGHhRpTA0lJ7OQWDLj4Q1gB0io0hxN7f3ix2BAJZ0w7cYbovmCfroXU1CMSbHXH0x0GBfRY=
X-Received: by 10.28.63.148 with SMTP id m142mr12710289wma.153.1522966284809; 
	Thu, 05 Apr 2018 15:11:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Thu, 5 Apr 2018 15:11:24 -0700 (PDT)
In-Reply-To: <CAMKF1spzhN3HQW1Cyt5sbT7PEPFX_4ptT=x8C9-qOmH=ULVFaQ@mail.gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
	<CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
	<CAJ86T=WU2VakRhBpTZ6gRjSZdrntJpm25p45jbB3aZnt=J5ATA@mail.gmail.com>
	<CAJ86T=XGYjmRxmGxzY7a99CYNJ0P-9daMwPY0kv+na2Yw15reQ@mail.gmail.com>
	<CAGfzNigE-s30pWaGmvjgAnqRDgPr=ZiEJknev8NEPn1aLwst_g@mail.gmail.com>
	<CAMKF1srp1od_yxNdJBp-Gt7U_S4OEzk8vsh+bLkPbsRBg1WwQg@mail.gmail.com>
	<CAMKF1spzhN3HQW1Cyt5sbT7PEPFX_4ptT=x8C9-qOmH=ULVFaQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 5 Apr 2018 15:11:24 -0700
Message-ID: <CAJ86T=XcR6ENG2H-ojpymmipO+9WRxOCccf31NG7_SEnBZad4g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: binutils 2.29.1 ARM Thumb kernel problem
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
X-List-Received-Date: Thu, 05 Apr 2018 22:11:27 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 5, 2018 at 12:17 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, Apr 5, 2018 at 12:16 PM Khem Raj <raj.khem@gmail.com> wrote:
>> On Thu, Apr 5, 2018 at 11:53 AM Chris Elledge <celledge@digitallumens.com>
>> wrote:
>>>
>>> Unfortunately, removing the "+1" doesn't work. That results in a kernel
>>> which claims to start, but doesn't progress.
>>>
>>> Changing it to an "|1" also doesn't work due to this error:
>>> arch/arm/kernel/entry-common.S:117: Error: invalid operands (.text and
>>> *ABS* sections) for `|'
>>>
>>> Doing this to the badr macro:
>>>  #ifdef CONFIG_THUMB2_KERNEL
>>>   adr\c \rd, \sym
>>>   orr\c \rd, \rd, #1
>
> Sent too soon I mean remove ORR completely

There's a lot more description of the problem here:

  https://patchwork.kernel.org/patch/10072625/

The kernel patch proposed in that thread is basically the same as
adding the extra ORR instruction, but formatted in a slightly
different way. No variant of the patch appears to have been merged
upstream yet.

The binutils 2.29 change in behaviour was the root cause of the issue
that was found and fixed in openssl a few months ago:

  https://github.com/openssl/openssl/pull/4673
  http://git.openembedded.org/openembedded-core/commit/?id=977db3843b629112539d3eb766c845127c0de497

