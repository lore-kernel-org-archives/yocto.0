Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7369AE00C01; Thu, 10 Aug 2017 07:52:14 -0700 (PDT)
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
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45A7CE00B3D
	for <yocto@yoctoproject.org>; Thu, 10 Aug 2017 07:52:12 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id v77so3875438pgb.3
	for <yocto@yoctoproject.org>; Thu, 10 Aug 2017 07:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=IqLKCE8f/wTzqwnBEw60FEQ4q/tTq/uto7JTItRrNXU=;
	b=FG1e3cth2BsLQrji1r7GyzEsshN7kl78ff/QLJXM6YMGOCHczTUPE1OtK+UnpvwmOg
	eN5Qh4FJG0tGBuqsmJ1itrF9WD0rSC7p3c1ZK2BnHy+K8ncZ/CeDwHSfoIpnYu0eHUwq
	mAom1NgMplzryhxFzBttVsiirh0yIye+L5tJwP7c4mp1uPezEpinQiIhHUwsAsW9frFt
	F76fIL4GPsQXck4HfCLVEsNSZ448v+7HNBuQXiRpwUe9UKDLL067I1g/guC+N5o6WSkQ
	elnb5xu2PvtHUexMrVlJk0p5p551mY7eTo3be2K5eH3tPIvevWiE5GNU3B5zoWF8PMsj
	2Amg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=IqLKCE8f/wTzqwnBEw60FEQ4q/tTq/uto7JTItRrNXU=;
	b=BPCXl2a+fvENiQIIDcbZc/xU7NZGKCUlqEjy2nBhroWjtEMq0ezKjB1YhJ2nwNExUf
	F9I12+r/Kvpqk4orCCQg9gTqmwz5uIjHaQfWb0QmpNRc5nFzexFfwznJkSE4Z+gdnzZ+
	hMrMHTLXGwbWRM5EIMuizhJT11d4RFk9P/FvEV0pkkYfEbmKSLNpcv2SMxCObpyMbqEQ
	OowepAn+lpMMYyUJx+5qXnQM0m9yleSvD1jMW2vfkTGFSplbMlq5Il0wxrizfZGYWjME
	T65lkdWofEtLGaOEn2OQj4iM3varld7l/3OJGYGzLSAEkM+UKbpBKcT04qMNi8OTpD7s
	QrAA==
X-Gm-Message-State: AHYfb5gMUd0Dy7TNwY4AEGkf2rl3N4bdXAm4XSxmNSenDtbhymzW52X7
	2xUo/u0CLiLNhxZfDViGj9GSgAmbqK+Y
X-Received: by 10.99.98.71 with SMTP id w68mr11762810pgb.100.1502376732688;
	Thu, 10 Aug 2017 07:52:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Thu, 10 Aug 2017 07:51:42 -0700 (PDT)
In-Reply-To: <CAF=WmVwFi=rDRm0EjpoCEd2jsMcrf6wa43w6=D43ZYt-OJL5jA@mail.gmail.com>
References: <CAF=WmVwFi=rDRm0EjpoCEd2jsMcrf6wa43w6=D43ZYt-OJL5jA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 Aug 2017 07:51:42 -0700
Message-ID: <CAMKF1sqji+RmdPK-x464nQOf1f8F6fwVKsUFfTwdgrv8ARPJ4w@mail.gmail.com>
To: =?UTF-8?B?WWnEn2l0IFlBxZ5BUg==?= <y.yasar92@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_complie Error
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
X-List-Received-Date: Thu, 10 Aug 2017 14:52:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 10, 2017 at 2:18 AM, Yi=C4=9Fit YA=C5=9EAR <y.yasar92@gmail.com=
> wrote:
> Hi All,
>
> I new with Yocto, I tried to build poky for imxsabre board and I was
> encounter a problem, here is the error messagge;
>
> ERROR: Function failed: do_compile (log file located at
> /home/systick/build/tmp/work/x86_64-linux/gmp-native/5.1.1-r0/temp/log.do=
_compile.21665)
>
> ERROR: Task
> 1461(virtual:native:/home/systick/sources/poky/meta/recipes-support/gmp/g=
mp_5.1.1.bb,
> do_compile) failed with exit code '1'
>

this does not explain the compile error in detail. Please look through
log.do_compile.21665
for real error message for further details

> Is there anyone knows what is the problem ?
> Thanks.
> --
> Yi=C4=9Fit YA=C5=9EAR
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

