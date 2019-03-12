Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 726A4E00A54; Tue, 12 Mar 2019 15:17:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
	[209.85.217.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98B2EE00994
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 15:17:26 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id e81so2629272vsd.2
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 15:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5lIEpHXXEdVwtk7JtMIzk99ru4AqTsBGy7dJmSTC9xE=;
	b=kzLt4qMAOJXmsWaqaDJaIgLtQIYKR9vR1NYm+SDoL4mx4rkac3rp1XGjMwYgH22wLj
	ZvPqiGuzNMrvCdmqXuwSw6bo5PheIWj4HDKgaFVBOC1zcQdAq33BXVo9Qk8leeSS2f4w
	2lOjaWT+3kSL5Rs56DgoFXKyI6Wb9TGdvKn5SVCQ/N5EELL0twWZbOnN2wnzu1EiQZkq
	BHd0UoAupK/XjX1eWm6SJ+/L0UcydYLLYvf8mSVZDlWBMVqFaAYFUQF16hw2S1cGDlf6
	3l5NG3GWUaC45UqHiA7ghRBFEqPZ6S7DwHzIDTm0l01VdIN4m+fYY2aAblINFZu04PJe
	jU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5lIEpHXXEdVwtk7JtMIzk99ru4AqTsBGy7dJmSTC9xE=;
	b=cy4RAJE1NkOXoImNzchk95HbYIQUQT+ELVCi3Mc5hC2FSx0VnSwQsycagl8bebrSgZ
	Q7IJ3M9Vzq/YJewHw9Dvyn4Zjzr0brGMBdR3d0wqH+vGmTZsS+OUlokwQnTjwjK1k1sv
	McctNMKMeD98HzQ9fxmrHg44EWrGYdJccvxnktt1OXPIMaTDeQOdil/ndWXE1zSSHGPJ
	8dETvcQJbc2rzap5WOQma6Uy8rEzzQW64J7uzaBeYpresWUKNpGZKCFcY/Q6kq4bvPG7
	2BudkQhq+3r1R71nLql9TwmA1M7YlDD30jmg+iqbmOKXXKfEQMJha7FxNXZ861SGBtHO
	08Dg==
X-Gm-Message-State: APjAAAWReV3MAcbhBRaKNJ8M0lwH6xv0+llNRrz7PCdY9gSCsd/pu2iT
	nNg71T9m0XZpV8RlMm+usMPllslfhKl4dwo/N2pd7Q==
X-Google-Smtp-Source: APXvYqx3N48Wd4YSE9xRSFOUkS4lCVlLWJ5yUB3uoD+2XKthXJhVJVJqa+Vo5LbP8TGWZA4rRKaeECqX8GlA6YgIGDE=
X-Received: by 2002:a67:f05a:: with SMTP id q26mr22092593vsm.174.1552429045209;
	Tue, 12 Mar 2019 15:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
	<CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
	<CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
In-Reply-To: <CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 12 Mar 2019 23:17:14 +0100
Message-ID: <CAMjhiJhBrg8hizQrC6YSe4Ry6ATsVExHRE_9h3_-EJuVT9SMTQ@mail.gmail.com>
To: Emily S <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Tue, 12 Mar 2019 22:17:27 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Emily,

On Tue, Mar 12, 2019 at 10:58 PM Emily S <easmith5555@gmail.com> wrote:
>
> The full error is below, but essentially:
> nothing provides /usr/bin/env needed by init-clock-1.0.0-r0.aarch64
>
Do you have anything in /usr/bin at all?
i.e. https://lists.yoctoproject.org/pipermail/yocto/2011-November/003467.html

This seems to bite more users now and then, the question is whether
some packages do not respect ${bindir} correctly for this case.

Here is a similar report going from morty to rocko, mid-2018:
https://www.yoctoproject.org/irc/%23yocto.2018-06-08.log.html#t2018-06-08T13:35:36

Regards,

Leon.

