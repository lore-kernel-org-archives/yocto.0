Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF799E00927; Tue, 23 Apr 2019 02:51:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72178E0088B
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 02:51:29 -0700 (PDT)
Received: by mail-it1-f179.google.com with SMTP id q14so4203586itk.0
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 02:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SiKq/r/4gDZCrtg4JKW3lJ537mjX02nzUfRoToiOelI=;
	b=gfeIE0QQlbwADwnW4LAr/jtaahgC72s0+nPLuBIFJLt1oDo868yx0WJsBVy4+GDVlf
	zoyoW0bkCP7o4z7Z2+NeX4JQU8wWEjjIg/cBiB8zqePtvS0pPa14eDPQa2t1QwfqCY4U
	NV+y0DyiJf2wG+LYMDAw+N94KL72fW8/aZrBwulKiCdQzNdoCQPoTLQmqNnxuXuCPDl2
	yn7X2kCqVhqvdVg/VoXeIGXi244Clr0TTXv6O7De61FzB6+DUGdLQaFrwxq54TYC4MbS
	lFKHN0379j1FIwHBAQJRtyD4btuuUNH1PTBpCqPY5bAMlL0RK4ynYy1blqN/q6XDeAWu
	8SlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SiKq/r/4gDZCrtg4JKW3lJ537mjX02nzUfRoToiOelI=;
	b=q3XMQT+GmN6RjM9S8rKX7B1+F8hVzl7FZPYFiHS17URIENKCHCR7SsCgrhvW4nKKvj
	h+uCUwgxNYQkb0eo1IN3fOzNmBZzPMMb4/JQ17iTZoI6X0P1vADgCH3mNmRbhmNPEqcI
	nHXklMN+SyOhJLVDHuZgJPXcJTBBgZdSPC5rcR2o3WOuRWRpyyNiALEA9NYeff6PCMPm
	H11uwwwvlRyAI7IMsRl1NTy1VTVfsgAaqvFDvBXaWmkv6ot6vuqJ4qeOn2UD0B9CXmro
	OcPPO5KmEqPmwHSR/J26/9BcQEuk/CmV8BHcS45CU9wqGJoYK/2BOXMsdr5l5WwLqRUD
	H8oQ==
X-Gm-Message-State: APjAAAUxgBtWfY+H48tAEq3Ko3o/yV0vj1lDqhT064xY3YHUmzbR2RSt
	7DeDGuDeNETEoNPWu8wj91Hgd0ncMRJEJB6qTWbnrg==
X-Google-Smtp-Source: APXvYqy7btMcX93/OS0A2k0oF2SSsMZfSODJRcTlsMboqjRbPIZdeE0gVh703ezCj6l/X6yE3QZ+QBcEbzf88l+Yie0=
X-Received: by 2002:a02:c955:: with SMTP id u21mr17544031jao.105.1556013089207;
	Tue, 23 Apr 2019 02:51:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAFq4t4hR=jdVUS+0PrmCxU7sHJNOCO9GxEK=MD=TtbCWr2LdYA@mail.gmail.com>
In-Reply-To: <CAFq4t4hR=jdVUS+0PrmCxU7sHJNOCO9GxEK=MD=TtbCWr2LdYA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 23 Apr 2019 10:51:16 +0100
Message-ID: <CAJTo0LZpyzafwdzDOAcMT0tmxshQgrhkhb_9MjQBAuKSxEAGDQ@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: config.guess: unable to guess system type
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
X-List-Received-Date: Tue, 23 Apr 2019 09:51:31 -0000
Content-Type: text/plain; charset="UTF-8"

The problem is that config.guess, last modified 2009-09-18, has failed
to recognize the operating system you are using. It is advised that
you download the most up to date version of the config scripts from

  http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD
and
  http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD

You're trying to build a piece of software that was released on
2013-08-17 using a config.guess from 2009, both of which predate
aarch64 being actually available.

There's a perfectly good recipe for libsdl in oe-core, or if you
insist on building it on-target then you can either follow the
instructions or install the gnu-config package into your image and
copy the config.* files from /usr/share/gnu-config/.

Ross

On Tue, 23 Apr 2019 at 10:22, Peter Balazovic <balazovic.peter@gmail.com> wrote:
>
> I am trying to compile on my Yocto system from source the SDL
> http://www.libsdl.org/release/SDL-1.2.15.tar.gz and by running ./configure I got error to configure the build
>
> checking build system type... ./build-scripts/config.guess: unable to guess system type
>
> This script, last modified 2009-09-18, has failed to recognize
> the operating system you are using. It is advised that you
> download the most up to date version of the config scripts from
>
>   http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD
> and
>   http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD
>
> If the version you run (./build-scripts/config.guess) is already up to date, please
> send the following data and any information you think might be
> pertinent to <config-patches@gnu.org> in order to provide the needed
> information to handle your system.
>
> config.guess timestamp = 2009-09-18
> uname -m = aarch64
> uname -r = 4.14.78-imx_4.14.78_1.0.0_ga+g66620c3
> uname -s = Linux
> uname -v = #1 SMP PREEMPT Fri Feb 1 09:09:25 UTC 2019
>
> /usr/bin/uname -p =
> /bin/uname -X     =
>
> hostinfo               =
> /bin/universe          =
> /usr/bin/arch -k       =
> /bin/arch              =
> /usr/bin/oslevel       =
> /usr/convex/getsysinfo =
>
> UNAME_MACHINE = aarch64
> UNAME_RELEASE = 4.14.78-imx_4.14.78_1.0.0_ga+g66620c3
> UNAME_SYSTEM  = Linux
> UNAME_VERSION = #1 SMP PREEMPT Fri Feb 1 09:09:25 UTC 2019
> configure: error: cannot guess build type; you must specify one
>
> What would be causing the problem?
> Thanks.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

