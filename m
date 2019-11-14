Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E63EE00E66; Wed, 13 Nov 2019 19:00:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00A44E0078F
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 18:59:40 -0800 (PST)
Received: by mail-qv1-f43.google.com with SMTP id v16so1763235qvq.6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 18:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4z2zUPssbHuVeo9v7Q+1aNL7PZuxqWUduRoK3A8yZ7k=;
	b=rkhQxkR9dDv1SXc6ve8rVvZpljThvkCF+TmswTXN0heuzG6cZRcj4vlKyPQwHjfZlF
	BljzUyhKxz/iK6RjfzRayMANeLWW1C2fghLLNUMIKtKBacxmwCMsN9wKgA+5cL2WP6Jg
	1THA3bHcAfqw+JCLx8Oaz+JJ2P8mxY/IckHMwR3M74DLwqgBaRTzlfiCxdVMPC2ZPKs9
	lU5NTLOkc/FJZRXmyGMmolVMX2NqgN+60kAKhEq0fxVJnDwgsEo3CeT44B1C6Az3E7vv
	NU2kpd2Q6pgokmLtWQi0hTnHac4SoqxqLgxtlAHd9dIRy/uG6smVezUMK+JviwNb0t1a
	6WuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4z2zUPssbHuVeo9v7Q+1aNL7PZuxqWUduRoK3A8yZ7k=;
	b=uHhAfXnDexRotEadLdUxFqWZMfyPhn2gN87FZe+l5JPABkOcjtOa6u5auhjF7giyNl
	FW1sZSEY9d7JBPq5MzNa+EgzlxqiwGwE54QRXAZYVDMxaz+a7XHRdg06PnES6VCHRXzk
	YmdTDuOvm9lXQMh68DXvhwQyCndDRb6QclPYDNyQrzhIzXlrWZ8sZXCdd2GNjFw7LQKj
	To+wkMv5D0U0rlaOgu8GNuDaPaxrdeJc6vQnIzNYTv8clFEWSfKTJ7E0CRZ3t1r+p3Ga
	SpsSXUMz1whd2D6c8qBFop/4KWI49FGBCIPLt/Hg6XLdkEWfV5OX41xvfbnaS5PkLZ+c
	hVtg==
X-Gm-Message-State: APjAAAXPcjKYQSz0D2Q32mD9r84poxE9NxhBk662kd8x8OALeq7KKMq9
	l+CSw/AzQfJ+S9oXCiP48VHwA5tplUbCuQA2z6Y=
X-Google-Smtp-Source: APXvYqwgROt6HAcVQlM1CKD1rA2tEuFn0bnqdcAf4XO4omtxVNnxmGvDSVoLo9aR3ct4Zi2JXwUJRR3f4kOFoP8stvg=
X-Received: by 2002:a05:6214:901:: with SMTP id
	dj1mr2378369qvb.99.1573700380048; 
	Wed, 13 Nov 2019 18:59:40 -0800 (PST)
MIME-Version: 1.0
References: <edcdaba6-5163-418b-ea0f-0ae4a0896651@gmail.com>
In-Reply-To: <edcdaba6-5163-418b-ea0f-0ae4a0896651@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Nov 2019 18:59:13 -0800
Message-ID: <CAMKF1sp32eek6prtbubAB46hpz4jG9UviPgJ3wBzi4jBfwArmw@mail.gmail.com>
To: Nicholas Krause <xerofoify@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Collaboration on Testing GCC/LLVM Toolchains
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
X-List-Received-Date: Thu, 14 Nov 2019 03:00:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 13, 2019 at 4:02 PM Nicholas Krause <xerofoify@gmail.com> wrote:
>
> Greetings All,
>
> I'm a student working on multi-threading GCC and researching it. Seems
> that it my
>
> time doing it and other things with the project it would be great to
> start collaborating
>
> on testing gcc/llvm upstream with Yocto. Granted there is a testsuite
> for both but it
>
> would be great to also test it against a build system that builds real
> world software.
>
> Furthermore I'm aware that this is done for Yocto toolchain selection
> internally but it
>
> would be great if we can start collaborating on testing upstream
> toolchains if
>
> possible.

I think its a good idea. Currently, we test released versions mostly,
however, there is
a class to switch to git versions and primarily be able to use tip of
master for a given
recipe, this would be something I wish we had but so far we have not
fully completed it
I know Ross had started this work and created initial skeleton, So
step one would be to
complete that class so we can easily switch recipes to use dev
versions of packages
this will go beyond GCC but certainly will be a tremendous achievement.

>
>
> Not sure if that's done already so sorry for the noise if it is,
>
> Nick
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

