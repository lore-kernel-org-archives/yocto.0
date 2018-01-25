Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37036E00E17; Thu, 25 Jan 2018 11:22:52 -0800 (PST)
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
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EBB5E00CF5
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 11:22:50 -0800 (PST)
Received: by mail-pf0-f173.google.com with SMTP id m26so6487213pfj.11
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 11:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=TPx+w7j/Vq+nFVHsxQRg1gbETRmck/EOfTlSv5TTk54=;
	b=jlrQG91d5ul2XJCbG1sWxPWxcaMt/lGrf8WnluHyoSMqoA7GFi6jWwnGXhS1seQ1dz
	kkuBkKuQPZ7cdM1HSbqSvnttu8VAadgInuZO+gEpXsbb/1kS9bQzE6C6J8BzsaJGe9Oj
	VpY90CXzrAM8l5MyE362rqVKBfqRFXoPFcEiR8zkqUU6upOAwnNprL00EWS5YrDSsqLK
	URKva/gT5UqrU3qnNpLGuLT5K83N1APMCIeptJs2rw3JJ63Fxz6YH6HQxrOMrXC7/PiP
	VweLJDoHtcwjSygLOeerDnRHYUy27t7TLCcZkixLi9Sg1hDNqFXEPLh/XJcq6w5Bmm4F
	xYmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=TPx+w7j/Vq+nFVHsxQRg1gbETRmck/EOfTlSv5TTk54=;
	b=JiyJ1nvhC7HKFYppx7nYDSp9lphSOYEFRwLkY9fiQ2euYywIpbgClvV9bY7W3sEWyy
	wiMkRWZx35eMHoecEQ0RbJ5Pl7RMTziU+8oBpmY64DfGG0ChqScnNx7J/FdGloCQ9scT
	rpGZPm7pERgrQrWGAsmE0+xlPD+EkAh0zgMosu0bKZKxJ78Txd+ROV/GoiyYVuk3UexQ
	2WRivgBiYk5CidS0fmljZTTcrccTAKStHXpByUInqmgnfQaENe6JpoM6CpGmoZf4nohb
	mw2yEq5giq+b1BJtAS4c8zqL9JKB9VmhKufYC9n3AJ119QD0sXRCO2FWm5XlBJI/ZtPP
	eLqg==
X-Gm-Message-State: AKwxytcR7+bdlw30NTkejCv6Q12w2jn8rd3IiCue602zKkwLpRIv2LR2
	jy8g0ZLq8uh0zc77SWFHYYhXGaLHohpkYgzlPuY=
X-Google-Smtp-Source: AH8x225z3bPqhoK0KIIt2h570aEMk5B9jIWNfSec+xnwnV1+1deGJwFdxE4IsPA3bMXyo7EYzNjmdKi2D9jSCUdDS1s=
X-Received: by 2002:a17:902:988b:: with SMTP id
	s11-v6mr11560804plp.99.1516908170174; 
	Thu, 25 Jan 2018 11:22:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.161.170 with HTTP; Thu, 25 Jan 2018 11:22:19 -0800 (PST)
In-Reply-To: <CAGJSYqnh8q8CBgRQSJ5pPhqhEfxqb+KvFa1k_M-aPVDpNN0ugw@mail.gmail.com>
References: <CAGJSYqnh8q8CBgRQSJ5pPhqhEfxqb+KvFa1k_M-aPVDpNN0ugw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 25 Jan 2018 11:22:19 -0800
Message-ID: <CAMKF1srmEqtHEVT+gpfvz0_E2UK8Rjp5HRxxPc-iEYgwcNGpoQ@mail.gmail.com>
To: =?UTF-8?B?Tmd1eeG7hW4gVGhhbmggVsWp?= <ngthanh.vu94@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to correctly understand "selects" and "selected by" in menuconfig to properly configure the kernel?
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
X-List-Received-Date: Thu, 25 Jan 2018 19:22:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 14, 2018 at 6:49 AM, Nguy=E1=BB=85n Thanh V=C5=A9 <ngthanh.vu94=
@gmail.com> wrote:
> I'm currently trying to remove the networking components from the kernel
> using menuconfig. However, it seems that there are a lot of dependencies
> when I choose to exclude the networking component (error when bitbake bui=
ld
> after reconfiguring). I think it has something to do with the "selects" a=
nd
> selected by". Please tell me if I'm wrong here:
> - If we select a component, the modules in "selects" section will
> automatically be selected to . So, how about when we deselect a component=
,
> will those modules be automatically deselected?
> - How about the modules in "selected by" when we select or deselect a
> component?
>

usually, menuconfig enforces dependencies if you let it regenerate a defcon=
fig
after editing, however, without knowing what changes you are doing its
hard to speculate what might be going on

> Thanks,
> Vu.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

