Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93C0CE00A75; Wed,  4 Apr 2018 14:19:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C96E006B4
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 14:19:02 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id 59-v6so13239061plc.13
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 14:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wzyPOWoj9BqPMUKifRATOZPUkNuaHIHsxsAAYU2AxtI=;
	b=jIkgXxdsAVP3EwJc2iECjT2oDqBSKD0wNY0laICu85hmZvuJOrUq4FAppj7XooYhbJ
	N8bLXzKBMIbZZgBdqoTzpc0s4PdHTlCBNmlDBxx4XgUrOkxy2qDMspX3C49oYa4+J0BI
	SBeKckSzSE9cmSoU/QFBPG8M9vEu6IPgH1tD5oL94psTqnTTCJtci2+5VQZT4bvJd+dv
	H5D94o/x1U41IqFTpgJD765qpUnbWqFJ1wX7a6VfjsBi7/WmwiZdPUN8XK4iTJiCEHl+
	sGJkVuXGDELrMk/H0Ee2jZHZLMWQkCUoFDifYXdqeCoW4me4BptuXrW91MZzmIxk5Ngf
	4lpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wzyPOWoj9BqPMUKifRATOZPUkNuaHIHsxsAAYU2AxtI=;
	b=hqCXe2jdobMDh2v2AJ+gpisO/lmPgynidmP6ZA6hgkJxLrgrNIvYjJqbspwNYSjSGd
	8sCBSUmldGw0ndQhCRepsedmQGkF5kNvYaoGE2tHypjYmoaamM0YSlGh6iRfrCvlu8o2
	tP8hbHBKYwbDwNzPN/ax/NqorJiBwMfLNbQm24kUsijFkfJwFQZZ9MtmC0Kb4zsETGE7
	46c5i8dwRyzim9eCg0VRJ5SU7LsIUdoLwrpc8gT8dgVOXocjUxF8i/hFLUkDlP3M2KQb
	A1gwu8H7VyfJpnP2mt4MV8MW45PGGj+Ywk175s5dAaqmYioe5b7Ivpt2DVO5PTtrEnVA
	A9jw==
X-Gm-Message-State: AElRT7EXzdbeopwKlubwQFQTupGUXFoZ6mOqhPoFpa5ho4s0BIn+PI1K
	GZK9Gu/bkAzsSwErhdml98JT6Sws30fjll8F358=
X-Google-Smtp-Source: AIpwx4+5WE67QvkuscmGTSTT0/G9VpnYcTjFGZy6ZgUNsr0OXgGJmy2kETWuC0llsCRkLIr8Dzr9PVzjktdzAwBEdWM=
X-Received: by 2002:a17:902:158b:: with SMTP id
	m11-v6mr20095923pla.300.1522876742351; 
	Wed, 04 Apr 2018 14:19:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.165.21 with HTTP; Wed, 4 Apr 2018 14:18:31 -0700 (PDT)
In-Reply-To: <CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 4 Apr 2018 14:18:31 -0700
Message-ID: <CAMKF1sqQTYbW7zAvCoqQ_OM-1=o2Gkff9fCnpwk7NVALP+TzTg@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
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
X-List-Received-Date: Wed, 04 Apr 2018 21:19:04 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 2, 2018 at 4:14 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Mon, Apr 2, 2018 at 1:15 PM, Chris Elledge
> <celledge@digitallumens.com> wrote:
>> I recently upgraded my Yocto based project to Yocto 2.4.2, and I encountered
>> a problem when building my custom kernel for an AT91 SAMA5D3X platform. I've
>> been using an ARM Thumb2 kernel for a while successfully until this release.
>> It appears that the issue stems from the change to binutils version 2.29.1.
>>
>> Here's a good description of the problem:
>> https://patchwork.kernel.org/patch/10072695/
>>
>> I tried out their test script, and it flagged the arm-poky-linux-gnueabi-
>> toolchain built by Yocto 2.4.2 as being buggy. Has anyone else encountered
>> this problem and figured out a way around it without disabling Thumb
>> compilation of the kernel?
>
> Thanks for bringing up this issue. Reading through the various bug
> reports etc it not clear what the fix should be. Upstream binutils has
> not reverted the change and the upstream kernel still appears to rely
> on the pre-2.29.1 binutils behaviour.
>
> The simplest solution for OE 2.4 would seem to be to revert the change
> in binutils (rev e645cf4, which was added very close to the 2.29.1
> release).

We should not apply this in upstream OE, but in general carrying such
a solution locally
is fine.

>
> Longer term, it looks like the kernel will have to be updated to work
> with the most recent versions of binutils. A possible approach for
> that is hinted at in the kernel patch you provided a link for, ie
> update the "badr" macro in arch/arm/include/asm/assembler.h to OR the
> sym address with 1 instead of adding 1. e.g. something like changing:
>
>   #ifdef CONFIG_THUMB2_KERNEL
>   adr\c \rd, \sym + 1
>   #else
>
> to
>
>   #ifdef CONFIG_THUMB2_KERNEL
>   adr\c \rd, \sym
>   orr\c \rd, \rd, #1
>   #else
>

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=52a86f843b6dee1de9977293da9786649b146b05

should have fixed ADR pseudo instruction so adding +1 is taken care of
in newer gas. I think doing a
orr is a safe bet to ensure that it works with all versions of gas+ld.

> The fact that it doesn't seem to have been fixed that way in the
> upstream kernel suggests that the kernel developers may be hoping to
> find a better solution though (ie one which avoids adding an extra
> instruction in the syscall fast path).
>
> So, without some more guidance from either upstream project, the best
> solution isn't clear. Perhaps you could try reverting the binutils
> change to get you up and running again in the short term and then ask
> on the ARM kernel mailing lists what the solution for Thumb2 with
> binutils >= 2.29.1 is expected to be?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

