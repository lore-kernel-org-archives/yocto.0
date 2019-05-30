Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D872E00D45; Thu, 30 May 2019 05:35:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12245E00B8F
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 05:35:44 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id q62so5879026ljq.7
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 05:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ePCOpcVG2U6uu4F/6THHNGKn95q0GD7uP9E2zVJnGNc=;
	b=vMvFiyhCoOvXlBqAE2l4PBtWOel5KIDURZQSoEwoM39IMLu8AwC9HfRYO1qIFIzbo2
	LQIN7ISzvzrSuzMcOotXuFsxMZgzcfsaPrK5uOWEjNilFcFhxq4IAr6i3gNeQYyMvun2
	cSffGaHL94YNrEgRzgaV8rLGe7+ea/1VVO3zGQflGbH4yz3PNcwiAcImdD/8xdr7ZTuG
	Y8/8Y9x7cq9NsIIOSiXPUZdR1ngl4Wt3LweDvFeD0ExXcuuvIVELJY5gAfy6dvUC2BqS
	CWvalVXhRyZDyFbnsRz2DwEAf7JtJE8LIJZ33Pb0rMjWnzOa4BC0yoUuw+NNOSxmF70l
	TPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ePCOpcVG2U6uu4F/6THHNGKn95q0GD7uP9E2zVJnGNc=;
	b=t6/sWd84zZcev6I2oPLjRLTeG/5n4BDOUW/HxVUdzxHFEEdt/HHdCNxTsM9g+uPaI/
	lwzVAVfsZSKxHoWQyR/XJZz5IYS6UMGu3jEXEPWIpAaWSH2EYVF+230TOO6C38OSt+Nj
	qIND23aKI2Lc7Q1r0dHfhlq3LzUKvbDFuRRRk0E1VDkbEIgjSckQMGk4uWSpS+OvkLeS
	CblyCFuL50JwOkIFGABHvJXghU7QI2ZaJWYwTBKg5hVlKryO5N/tdUQag4sj/sq3o8n/
	cDJeQnm4CTSnfzg1xApi33uzMTVql8Hh6ILM60Y5YxJ2wTECtLFVhkPURvjfgwkqXHn4
	527Q==
X-Gm-Message-State: APjAAAUB5q+ghpvabKnAstVyGXGzN7vnwGMg2o1lrxj2kMJwz9yDDVCw
	/zuE0Il7jfmrSJ8sBrGTlTkXn//g7FKgcOdKCLE=
X-Google-Smtp-Source: APXvYqzkdJpvpxvwzg7r/ezguL+OnOWWqRzWdff2VOZlbyND2Kdf7EqlD7M4KKMVV7Bv6GCfjx0nBDfJvg9RHR82hpQ=
X-Received: by 2002:a2e:7d02:: with SMTP id y2mr2065502ljc.62.1559219743819;
	Thu, 30 May 2019 05:35:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37gM8Vn_ynODSKTB8v9kRYxfv28pPtkGc=fx4bEXSK9ew@mail.gmail.com>
In-Reply-To: <CAAfyv37gM8Vn_ynODSKTB8v9kRYxfv28pPtkGc=fx4bEXSK9ew@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 30 May 2019 08:35:32 -0400
Message-ID: <CADkTA4OwvYxZXNA=WnqZVNtYdUJQ1+v92-056Mn4Fcfw7e2KzA@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: warrior: QA issue when bump kernel to 5.2-rc2
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
X-List-Received-Date: Thu, 30 May 2019 12:35:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 30, 2019 at 4:14 AM Belisko Marek <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I'm trying to add support for latest possible released kernel in
> meta-sunxi by using poky warrior and hit this QA issue:
> ERROR: linux-mainline-5.2-rc2-r0 do_package: QA Issue: linux-mainline:
> Files/directories were installed but not shipped in any package:
>   /lib/modules/5.2.0-rc2/modules.builtin.modinfo
> Please set FILES such that these items are packaged. Alternatively if
> they are unneeded, avoid installing them or delete them within
> do_install.
> linux-mainline: 1 installed and not shipped files. [installed-vs-shipped]
>
> I can simply drop it but would like to see if anything was updated
> from actual linux-yocto (which is 5.0.3). Ideas? Thanks.

I have a change to kernel.bbclass that packages that new file, and
explains where it comes from.

Stay tuned, it'll arrive in about 5 minutes :D

Bruce

>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

