Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E0C0E00CE8; Tue,  5 Dec 2017 06:37:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AB78E00B48
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 06:36:58 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id b76so1693063wmg.1
	for <yocto@yoctoproject.org>; Tue, 05 Dec 2017 06:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tCTNLPqw1qkUM1+6PsiJaZfWzwNiaZBRY9ObfXWfJAc=;
	b=B0CaUROLSstgiPo52xm9xMXMiqzPtbsTaYXrKyr9lZW7FbIyzppjWL+FfuYxhSEW7S
	vb7XrGrmEctpRGjeGxVlORZxOruaHeH/25Ogn3kXFwn/1voV1soLChDI4Mhv0etOdb0Q
	EnM0Y/st2EIkSyBFGimFe2RN00ivJjWXRDz9cTh8B2nbzQBSBFqQyKHVhiBqymgZtH8m
	Ja4KBsDL7/0hcbGds8hFYbq5u0K51TWs11C7RUwSt8gpiBFYeOy48uZJq4gwXGjpCN18
	Nsa21Ctl0Vvn9/XNCkEmV2thQPFd2tgEEyustyAVLmR9GuWb97VoHyrhzpi//Z7Hhvq+
	1EMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tCTNLPqw1qkUM1+6PsiJaZfWzwNiaZBRY9ObfXWfJAc=;
	b=Pwv82si9UpaYBLLzhoRe5YzIJZSEr1U28AwBxYK8BU13X0yacpyWISZdU+LHQk3jLM
	LedqGFKK5i8O1lBCU//CLqiWfKkdGZ4BJtDP9fIwfBwvV6nH5iB3uSYEWO/cNS9E9B2f
	hE0Nq9g0IXWcZeQagLkab3a04+lvCEF8Yg99BhC6KO66t62omO3Bid/GK4VBoBLlJfEE
	oRfmBr2acg7KEBJ2CmIH7c7myyFTCLXtDh7Set2Nd6OOLEAW0zp102H7/Nx4IdWnIwup
	ziyCQdvLTDmYcDl0JojyIECuGr5xw4QAeJ979ck66j6hIAipmHXZMm2x+No28vtN6xl5
	/5Ng==
X-Gm-Message-State: AKGB3mIU/On3BOuzRYgUzEKk0bBl2Luutvu5A9Z9a+phzaByfERS0sHa
	I0bJ2kYdTkXIrMh/wp3PtFZtQOjP3WPpI8Ylv+I=
X-Google-Smtp-Source: AGs4zMY5ELsbstBAXnTeshgRwmJNDtH3FrdnEkwdvtdFlMvZo0VzeilBTPCDBZcDXGPpWY2hK9KQUi1ZEF1RX9GYOqc=
X-Received: by 10.28.150.20 with SMTP id y20mr9479807wmd.118.1512484617992;
	Tue, 05 Dec 2017 06:36:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.137 with HTTP; Tue, 5 Dec 2017 06:36:57 -0800 (PST)
In-Reply-To: <CAPm8-H4f4XaMThA7V0kpUBoRCF_xDJdRkOenqyG9XTyMbvE+-A@mail.gmail.com>
References: <CAPm8-H4f4XaMThA7V0kpUBoRCF_xDJdRkOenqyG9XTyMbvE+-A@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 5 Dec 2017 15:36:57 +0100
Message-ID: <CAAfyv36H4baKfGMx3zOAGb4kRiMyNnBhA4fT+qytsqoHZSFKkA@mail.gmail.com>
To: Laurentiu-Cristian Duca <laurentiu.duca@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Run application at system boot
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
X-List-Received-Date: Tue, 05 Dec 2017 14:37:00 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, Dec 5, 2017 at 3:21 PM, Laurentiu-Cristian Duca
<laurentiu.duca@gmail.com> wrote:
> Hello yocto community,
>
>   I want to know a few things
> about how to configure yocto such that
> - a simple application (let's say a hello world C program
> from a new recipe) is run at boot time.
depends which init system you're using. By default in yocto there is
sysVInit and basically you need to write simple script which will be
used by sysVInit to start/stop your program
Look here: http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-update-rc.d
> - run a kernel module from a simple recipe at boot time
> and automatically build its "/dev/hello" interface file
> (which normally is done by hand using mknod).
Look here: http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#migration-1.7-kernel-module-autoloading
>
>   I appreciate any hint, example or tutorial regarding this questions.
>
> Thank you very much,
> Laurentiu
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

