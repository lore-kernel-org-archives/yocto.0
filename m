Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8D20E00A75; Wed,  4 Apr 2018 13:04:27 -0700 (PDT)
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
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFFBEE00905
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 13:04:26 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id 80so24718200wrb.2
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 13:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WvTgWbekmST7UyYhuDwMn5DuZMaVge/hAdJzr1q3QzU=;
	b=gFmKBWwSMQXPHZm7H2E5QN8GaUq650Rnl9EOCeAzp9RsQ/930SOwMSfcRNEMkwHyhl
	QeRBKvCo0ESkWraX7STJXmXdVViI0ueNt99G1+zB1N89JY7xdxUH3EHqeMwHxcaFaTnT
	6Mom8y+aJT2VFX7x8ARWcI7bmgWRhng5L24kn6LQntnXb+TsjHbB3f1Koj5gacE5vG4U
	ooivpr74B3xx3luFgORcwRuGDU8xZTfh9hFc7y/f84GnV8FCgFWCBNaYJRZuYqtB2l/s
	67hsYBXxg1MVrP+XPphriA8T2ndrmbFxOVXKp6ZBOdYx8oMyNoQzwNo9akEJhDw8Ss1P
	cMFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WvTgWbekmST7UyYhuDwMn5DuZMaVge/hAdJzr1q3QzU=;
	b=P+zXCrxE1VQ2ucz+CmxVKhPTske8A752JMsgH9fyr2l6gGTtuZAVPHTw9aABQM+LPx
	eGGE/YDEIvgUUVJ7aNIvYjgB5MJANOAbhyy5bg2ULEb1xAKDzE9IsioTKtcgOew2KAZr
	SSXhoFJCqB3N9UpE23/i8O5M9qHZNfIt3uOa0SBKg0b/1SIybjNsk2D0ji9pOKeCoPAE
	1mzJlnCjgSnxKvTKNyHLNzl7tXnY1acjz5QzdmrAyII3Lnrs/ANW1/bwhZpzpeS42pml
	fjtYz3y4+Z+Gr4niDKmPeartw8TB0ywjKjFvtBcYkAnlvCNvoTXa4qFxns4XC4KH39rS
	srvw==
X-Gm-Message-State: AElRT7G2TmP3XFl1VCgRxn/JAnj1rBUoD9DUKBAWY3Ryl0FLGSiFEdAz
	PylmbIsltVRnqsJ+IJl83CDUxMb5M3sau00qcj8=
X-Google-Smtp-Source: AIpwx49rDlD9O2e207XFe5AHiL3QcHeCg6q0xWteOHWDichnfxX3Y+F4BR1MagJnir81Es6EmYG1WmlDxvbcbJOLpYk=
X-Received: by 10.223.182.132 with SMTP id j4mr13892425wre.66.1522872265789;
	Wed, 04 Apr 2018 13:04:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Wed, 4 Apr 2018 13:04:25 -0700 (PDT)
In-Reply-To: <CAJ86T=WU2VakRhBpTZ6gRjSZdrntJpm25p45jbB3aZnt=J5ATA@mail.gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
	<CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
	<CAJ86T=WU2VakRhBpTZ6gRjSZdrntJpm25p45jbB3aZnt=J5ATA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 4 Apr 2018 13:04:25 -0700
Message-ID: <CAJ86T=XGYjmRxmGxzY7a99CYNJ0P-9daMwPY0kv+na2Yw15reQ@mail.gmail.com>
To: Chris Elledge <celledge@digitallumens.com>
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
X-List-Received-Date: Wed, 04 Apr 2018 20:04:27 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 4, 2018 at 9:14 AM, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Wed, Apr 4, 2018 at 8:06 AM, Chris Elledge
> <celledge@digitallumens.com> wrote:
>> Thanks for the feedback. I rolled back binutils to 2.28.0 by copying the
>> yocto-2.3.3 binutils recipe directory into my custom layer. That has
>> resolved the issue.
>>
>> I can confirm that binutils 2.29.0 also has the problem. I went from
>> yocto-2.3 to 2.4.2 so I hadn't tried binutils 2.29.0 previously. There are
>> also reports that openssl and libavcodec are broken when targeting an ARM
>> Thumb2 platform with binutils 2.29.*
>
> Yes, that makes sense. The binutils change is in both 2.29.0 and
> 2.29.1 (and also in 2.30.0).
>
> The next useful experiment would be to stay with binutils 2.29.1 and
> apply a patch to revert the one particular commit which caused the
> change in behaviour:
>
>   https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commitdiff;h=e645cf40b111daef4518a58547de577eb9379ccb

The experiment of patching the kernel would also be useful, since I
would guess that the final solution from upstream will involve a
change to the kernel rather than reverting the change to binutils.

Changing "+ 1" to "| 1" in the badr macro would be a universal
solution for all versions of binutils, but for a quick test with
binutils 2.29.1 you could simply remove the "+ 1" from the
CONFIG_THUMB2_KERNEL case (ie make the ARM and Thumb2 versions of the
macro identical).

  https://github.com/torvalds/linux/blob/master/arch/arm/include/asm/assembler.h#L197

