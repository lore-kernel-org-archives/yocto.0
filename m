Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D203AE00BF3; Sun, 23 Oct 2016 08:58:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.48 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82E8AE00B62
	for <yocto@yoctoproject.org>; Sun, 23 Oct 2016 08:58:34 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id q126so154642828vkd.2
	for <yocto@yoctoproject.org>; Sun, 23 Oct 2016 08:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O2CLxJmDCXVhy8n0KyxIDrvP29/u6vDAOBl/VwR/V8U=;
	b=xnPI6JLYOu/SFGQZuYhbfK/CoiJwsJ1uALlUe+rOg/TYbzetRd2qUqH4P2aHHaFL2Q
	QQRzbeLO3l4ocp/ri3SzKl7lqpLw/bRpNXTCXdcVmYtXMflktXl1ojlmOUZJigIKUgLg
	l08EfqGFX7KGQCOE+BRaznqclEcDfks8EpBwYhDY6Meev9o1++XPisOM4vk2I9q3lBqR
	rXhKqEa5DlKtwVVwGxLudj7ndYPwCoFzfjHBrJhpRIbsUzAZ2kVlrgFyxl1dpFoYfgOT
	F9/saJ6JDQpRzZEnRg+YZeVDtmtQn9VBUejTPbIvYJ183ggGU8oiJK4s8eK00Qt+EAb/
	lAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O2CLxJmDCXVhy8n0KyxIDrvP29/u6vDAOBl/VwR/V8U=;
	b=mgq++kQo7Lnvnz1e+LKrMoZVxr7PRwT668bDmITQcQQ/MCSoA2aiy37k0NytRJaHnr
	G0T6Id4PVFP/njicedY6Tf9VDfsvmd4wgacw7/r364kxY72mzgCMYFAxhShYbw0xP9xW
	kfNX6jgzvppzvl2GE35QkBHlu0j9ejs7BiDHZycu+IyJyTzP2NMAyi2tjpQCxMEPbppE
	kIYaJA09Ou7PZqwCFVJDIucP1RdMb0ck1vfqqxeXMPZR1ZpO9pCVt3xmFlh/klNUCwhP
	HfWxPb8DPpnn2kxXAfvumabKjcmXzX3RJTjucBXLgNbTwCIzA9Lm2S9bPHoWc+EHRwXr
	ryog==
X-Gm-Message-State: ABUngvcfmXg3lGa7EOdXT6xW0UMDoBvzjmKHfSpl7mIINM3gqkVyaixr60tK8RE7uiSC6Usb4V1Ft/kUC+ohrg==
X-Received: by 10.31.15.65 with SMTP id 62mr5400214vkp.93.1477238313286; Sun,
	23 Oct 2016 08:58:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Sun, 23 Oct 2016 08:58:02 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1610230954280.1388@localhost.localdomain>
References: <alpine.LFD.2.20.1610230954280.1388@localhost.localdomain>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 23 Oct 2016 08:58:02 -0700
Message-ID: <CAMKF1spU2qExuv2q6q6drt8pMo9xgqeLaF7xBRZPktL6zOy2dA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: potentially confusing intro to what is in an SDK (SDK manual)
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
X-List-Received-Date: Sun, 23 Oct 2016 15:58:36 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 23, 2016 at 7:00 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   more of the pedantic nitpickery you've all come to expect from me,
> but in section 1.1 of SDK Manual (v. 2.2):
>
> "All SDKs consist of the following:
>
>     Cross-Development Toolchain: This toolchain contains a compiler,
>     debugger, and various miscellaneous tools.
>
>     Libraries, Headers, and Symbols: The libraries, headers, and
>     symbols are specific to the image (i.e. they match the image).
>
>     Environment Setup Script: This *.sh file, once run, sets up the
>     cross-development environment by defining variables and preparing
>     for SDK use. "
>
> hang on ... that last reference to an ".sh" file is potentially
> misleading. the generated SDK itself is bundled into the installation
> script (say,
> poky-glibc-x86_64-core-image-minimal-ppce300c3-toolchain-2.2.sh), and
> when that's run, what is installed contains, at the top level, the
> setup script "environment-setup-ppce300c3-poky-linux" -- there is no
> .sh script installed in the SDK installation directory.

it should really be something like "This shell script file, once sourced  ..."
fell free to send a patch and cc Scott.

>
>   it might be common to create the symlink for convenience:
>
>     environment-setup-ppce300c3-poky-linux -> env.sh
>
> or something like that, but AFAICT, there is no ".sh" setup script in
> the SDK installation directory.
>
>   is it possible the author was conflating the installation .sh file,
> and the environment setup file?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

