Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCC85E00D10; Sun, 15 May 2016 11:26:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23704E00CFF
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 11:25:56 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id 90so80704751qgz.1
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 11:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ToLINWMqa1wPNIMpkdJS+Z54C/bQ4YeeiGSweCMd27s=;
	b=n4eNmRWQBHilvKGrHw641eBV/70Tf3jFIZ1J1ektaOZugs/DWZCDVpe1Z+BEVgFqP2
	wTbisJWL6jsXTg+EVsAhPFWvtS+jJIUrH0fSSKHAde3bGAiUYbOHNn4myxEJ1XJcRVje
	RqBvXM3gll0tBXKh7PuLKo8yo8wSX0oyCvDVk2JvR4KjeX6BTaE9JkkLbXXWq+7rN29k
	J5p0O9etNkPRQoXYlJ+SZIYO2T4lmEup5WuIhpU5NF3idG/g+VM4ASXlowu3/sti7TT9
	Yoi4LCVXf+HqOuLAQP++KVwymCSLkLYLRMDWwJab/6WkF6eTEl5eIMUSEFXnGm6OUFqx
	ZM4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ToLINWMqa1wPNIMpkdJS+Z54C/bQ4YeeiGSweCMd27s=;
	b=jO4gvgrW20JXON7RVOBE1aKvkPbnCyT1Jhc+vfJdd3Shlfi6EcRXMascEqXnRtF7Rz
	7A97bXt6OWwXJ7kvB4tw+ZH9L1A1AIy07IlC3kKVsoApf/JF6LjSym6RD8jPtMQHvtY7
	iwRGr+nr/pnX7hwFIbvAvMf/FzWTJNRh+jGzLJL4PhkGrMeQ2OgJQ+Z6Ma19CC3242us
	dxvlk1HbDwngTSYR4o0Qv7ERH0o3xpreyGjfY0/rF49I8B4IJJVXbK7c3qKYsD2MeNy5
	XDFKKkp0CluqocPiC28rO9Kq/bwrBLcDu8h821kuK6UM5xd9aa6r8l0jgI3cqpDaNkRW
	tehw==
X-Gm-Message-State: AOPr4FXLgJnF/3EWvjRfE7Q5pA89F/TFhPUl9ANoRxDMKjpZOh8qz4cHQPq/CfhEt9qeQN4wJCggLN3BzaU+5Q==
X-Received: by 10.140.217.208 with SMTP id n199mr27396616qhb.31.1463336755575; 
	Sun, 15 May 2016 11:25:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sun, 15 May 2016 11:25:26 -0700 (PDT)
In-Reply-To: <CAFq4t4g_HXb2h4Vhy+ctcP_XQCPOTfRiyeWBTJf4DEnOO5VXaw@mail.gmail.com>
References: <CAFq4t4g_HXb2h4Vhy+ctcP_XQCPOTfRiyeWBTJf4DEnOO5VXaw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 15 May 2016 11:25:26 -0700
Message-ID: <CAMKF1sottURBU-W-ctorB7KFna3zM_59nxTdLtg4W3Gbe-JKKA@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build yocto/linux under windows
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
X-List-Received-Date: Sun, 15 May 2016 18:26:00 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 15, 2016 at 10:42 AM, Peter Balazovic
<balazovic.peter@gmail.com> wrote:
> Dears,
>
> i'm looking for a way to build Yocto/Linux and develop for my embedded
> target i.mx processor platform under Windows?
> Is there a way to build Yocto/Linux under Windows and to have
> cross-compiler toolchain to be run under windows?
> Actually I would like to know how to run cross-compiler toolchain under windows?

You can use http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw
in your layermix and build Cross SDKs for windows

>
> Thank you.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

