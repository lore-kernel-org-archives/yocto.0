Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D06BE00EEA; Wed, 11 May 2016 02:36:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B32D9E00E43
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 02:36:27 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id y84so4403365lfc.3
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 02:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=cay5LO+FCWirw16TYm/svR0bz+ksF74ov1Vy8hJy6jI=;
	b=N1UOqSxFr709UzzzYaVTb/nLOEcO5bXTkEnF5eSp/oxwI/OjptLDcq/1kGR33htx0f
	Dtsn76HS0EDU7NyPJMvz1pkq8bgJYFUF6Q9RaQjB4SbWC7v/LfGklGIZvlZroo/Je8ce
	WQs4bt0DxCZGbQbENSZLrNc2w+hvbBNpO9KE/AnCyAyv9GqGdUQfa55RBpxNwfEli0/9
	a5YeQ4OPJqg357alaC2dVu4jdTmAAX/dT/CXJ3AW8D7gG/2y2cfRFn56p4rEGjCLa2hT
	8Md2ZhCjKyPlSk5+uLxz6el6pzAzIsxTaxD9QPyLeg/QOelYcOLzJQhDGdA+RlXV3EgE
	kgqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=cay5LO+FCWirw16TYm/svR0bz+ksF74ov1Vy8hJy6jI=;
	b=dwpPHiCnVSsAJ4pZsAs7fek9OUeOSxEyByWvvMWxCVm3wRgvz0CYgRfpYdBJcxjhFh
	cOp1YF+70BogwQ8z9KQ7Ox62Jo+eMYqdjYEMsSUTIOpj3ZsRj08KOJTV94KNIRO3tmYG
	ClmmXNXcUs041MXaSCoj7sUbKueZbb0YOK7UqlAfIJxXsUq9mmhQwQ25D/a4yMBcOH8P
	inzofAKdIrUAKtFnzOvuHlulnzJfvA2HE33LwT1y1eNhsL98Os93yvjCParVXXR/58qr
	OyS/U8tXUQz2U++wvSZBDecDUTLFsG3K9odWefd8ycfzsRlKKcW9ZV2+stE/Mk79mvim
	axFA==
X-Gm-Message-State: AOPr4FVjwJM1C9Yj+5uFkMbgfljNvPRBLzVjeh6faLEiY11YLi5IjKdEpgXNxnM+ij7G4ZbWnqSZ+epzdJihPA==
MIME-Version: 1.0
X-Received: by 10.25.39.141 with SMTP id n135mr1007199lfn.98.1462959385546;
	Wed, 11 May 2016 02:36:25 -0700 (PDT)
Received: by 10.25.215.20 with HTTP; Wed, 11 May 2016 02:36:25 -0700 (PDT)
In-Reply-To: <CABfz71dEz8FswBvc30qK7HJaqZ6TJ0TQ4RAiPLvRnoPswpgjEg@mail.gmail.com>
References: <CABfz71ch7Uko6uLNX3eSmAOJWRRYwAL_GJ14vbi8GAL65oJyKw@mail.gmail.com>
	<CABfz71dEz8FswBvc30qK7HJaqZ6TJ0TQ4RAiPLvRnoPswpgjEg@mail.gmail.com>
Date: Wed, 11 May 2016 11:36:25 +0200
Message-ID: <CAALGJZaCzLUCKPWCzONgjUUme06hQb+Vr97Kr1QfggM8bhN6Hg@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel 3.14.28 (imx duallite) will compile under 1.7, but not under 2.0-2.1
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
X-List-Received-Date: Wed, 11 May 2016 09:36:31 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

> Maybe it has something to do with a different make version in the newer
> versions of Yocto? Maybe this link is relevant?
> https://github.com/zanezam/boeffla-kernel-cm-bacon/commit/ef4fea130eeb70eff4f3a549fd3f6e9b11437550
>
This is most probably because of the newer GCC version used in the
different versions of yocto.
I guess the kernel you are using does not contain those patches:
https://github.com/graugans/meta-udoo/blob/jethro/recipes-kernel/linux/linux-seco-3.14.28/0001-ARM-8158-1-LLVMLinux-use-static-inline-in-ARM-ftrace.patch
https://github.com/graugans/meta-udoo/blob/jethro/recipes-kernel/linux/linux-seco-3.14.28/0002-ARM-LLVMLinux-Change-extern-inline-to-static-inline-.patch

Regrads,
Christian

> On Tue, May 10, 2016 at 10:22 PM Paul Knopf <pknopf@medxchange.com> wrote:
>>
>> I am trying to update my BSP to work with the latest releases of Yocto,
>> however, I can't even compile the kernel with the same
>> defconfig/commit/repo.
>>
>> It works on 1.7, but not under 2.0. Here are the do_compile run and log
>> for each version of yocto.
>> https://gist.github.com/anonymous/3222e0a10ba1bca1f7a7316879d1704d
>>
>> -------
>> make[3]: *** [arch/arm/mm/built-in.o] Error 1
>> make[2]: *** [arch/arm/mm] Error 2
>>   AS      arch/arm/kernel/sigreturn_codes.o
>>   CC      arch/arm/kernel/stacktrace.o
>>
>> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:63:2:
>> warning: #warning "TODO: return_address should use unwind tables" [-Wcpp]
>>  #warning "TODO: return_address should use unwind tables"
>>   ^
>>
>> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:66:7:
>> error: redefinition of 'return_address'
>>  void *return_address(unsigned int level)
>>        ^
>> In file included from
>> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/include/linux/ftrace.h:20:0,
>>                  from
>> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:12:
>>
>> /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/include/asm/ftrace.h:48:21:
>> note: previous definition of 'return_address' was here
>>  extern inline void *return_address(unsigned int level)
>>                      ^
>> make[3]: *** [arch/arm/kernel/return_address.o] Error 1
>> make[3]: *** Waiting for unfinished jobs....
>> make[2]: *** [arch/arm/kernel] Error 2
>> make[1]: *** [sub-make] Error 2
>> -------
>>
>> Any idea why update Yocto would cause this build error?
>> --
>>
>> Thanks,
>> Paul Knopf
>> Software Engineer
>> Med X Change, Inc
>> pknopf@medxchange.com
>
> --
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
http://ch.ege.io/

