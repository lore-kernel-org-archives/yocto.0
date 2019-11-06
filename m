Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87BFCE00ADD; Wed,  6 Nov 2019 12:22:49 -0800 (PST)
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
	*      [209.85.222.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1722EE0091A
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 12:22:48 -0800 (PST)
Received: by mail-qk1-f176.google.com with SMTP id e2so25867967qkn.5
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 12:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DHXorz4Zh9TxoAA1nEq/iiAYfef4eUvDnb0yAJrZ29M=;
	b=nGaM0jsxPZTjHRQo+DwrEvBl7lczjfyODxW2TeBxJLgkh0DKtK0cVzKC5UJPy3toGy
	eycgUfzXYI7txe7DSmYTF8CzgYSqMQJPOt29cQe+mksXPaiDXZKb9GYdfdljk16+vNfZ
	EovUfWbvstFsza3oYQpqFYHsSR39KQGiwLJQlXMqP4B8xhet6fWZrqfZcxIt2Yr7qciO
	+kAZYCpeCsS2FDCb5hFTjippatIJ2vVYql44512wPNDtsaAA+TV8yoM87tQ+QaXrpZ5R
	l3q0RN8MgWCgOA6KNzrgSx6Vl7HeNwU4WuEjLHGlHyhOc29l7C9f4MY7ED2xfcQojqIt
	oQ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DHXorz4Zh9TxoAA1nEq/iiAYfef4eUvDnb0yAJrZ29M=;
	b=Yiw9xbtwMZKRG4gqzqPD2NRpFbLUdJ5LbfHP6fJ8fjvTG/G0v+Z9iSrX7vSL3r6Xjt
	UVJOmPote11JFu7SdW/tKoYxmmx+ESBe21tIroeGqtd7NUXuz3+QBnxp1HGSQuPwk66K
	mPfMJsU400UpzGpKQooikvo52VaUOZFL3OWJkhDMVbqbh6kEZEEICHi83L2dsANGWwGX
	nzHaT/08+3vnSkbyLg1HU4DIn7pAWgI7xPT0YNKuW022Km18sbmM8xzexCkcLm9cqAJ5
	AgRAqdlIaFUvgKw3TcM6bl3eWzf3iRcHvNTarn3pnscnKoSk/JBc6oYLC2gpw/dosYGf
	WBWw==
X-Gm-Message-State: APjAAAV1fHweaTg2RtlxDU6whYv7FVa+qUDJ49BvKkvh0gE0kOa4rong
	h27WRtaJweMFuAp7Lnu4Iv3L4Um/4MVb2LjKmXc=
X-Google-Smtp-Source: APXvYqzLLTv9DxexraDLClIp5xF3NnKjet0v8DgoLqpz4WvBGGzwk2WZL1/BPaoTWTa65ORk6Wmhvaf4IfIqLlykXSs=
X-Received: by 2002:ae9:f010:: with SMTP id l16mr4011976qkg.212.1573071767996; 
	Wed, 06 Nov 2019 12:22:47 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQ1j0J2sH7YZAV6y+J0ivHstribJKinSkBYnNYDO4Rw4Q@mail.gmail.com>
In-Reply-To: <CAA=hcWQ1j0J2sH7YZAV6y+J0ivHstribJKinSkBYnNYDO4Rw4Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Nov 2019 12:22:21 -0800
Message-ID: <CAMKF1sqAfosF5wd9Cx5vkqufmN5x++M_N1HkNZebkPOZ2CtFmQ@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Running systemd service including boot time
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
X-List-Received-Date: Wed, 06 Nov 2019 20:22:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 6, 2019 at 12:17 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I built Yocto image to include a systemd service and it's timer, the
> timer calls the service repeated every 30 minutes, it runs well, but I
> need it also run it first time in the boot, not wait 30 minutes. I
> tried to add OnBootSec=2, it does not run in boot, any tips how can I
> force it run immediately in boot?
>
> OnBootSec=2

I wonder if 2s is too less of an elapsed time. Could you test setting
it to say 30s

> OnActiveSec=30min
>
> Thank you.
>
> Kind regards,
>
> - jh
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

