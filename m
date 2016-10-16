Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29E83E00C2A; Sat, 15 Oct 2016 20:24:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.169 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25D1CE00C1D
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 20:24:37 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id m26so9646136uaa.1
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 20:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=escGjP2Gv4fRZlvBgp8WjE9woV+vWsUyEtVFgH1ko1c=;
	b=f9NYQYKK/ggLbL3UrIgm6w37+09qkkyfqD7jUNzIQnTJZEVLy5H7ypXmjbhlpsutuX
	XTAfF3nY+9XS8q+QigRybnxdx1GTj2V6dcmKixvzUhh1eW3ZQsM+BFkiGGWXJsCaSZBu
	WzNnO12/XCv1Bo6AzieSIfN48dYD2w36l6GItoRh/FcJW6BN3xrG2Hr+HQyA2xCmI6S6
	4aFUUA+zvRHxaC0+aRVKxjxq5wGCWmUK3gpZ5FbXNpNIEr13ppcFeZB+gmgmoJGU4AsG
	CkRIyXZkWp0gs0Y+kjXYFXao883/Rr9V5Tzac3sYsGJlRB4RTI2YaEeXEbCJZox9rOTK
	CLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=escGjP2Gv4fRZlvBgp8WjE9woV+vWsUyEtVFgH1ko1c=;
	b=C/WYZNPXA4Tb/J3lHnP9QXl//TSTZF5UOIVGlUvPYvxI/TVMczzprZJJOkyDEgw1ft
	E5rVlxLbEeG9wEKCNEuO1/CNUbwedAZTzk1hWYVW+PUoqRNpWKg4IFPGnw774HJDjBJV
	oTYuYCvkWMCbpiWI4GckB07FgK8R8Ij6oW4CL3GGqbE1kREMJvEsWaxb8Uu05CBwkTmk
	PW/63e2m9KKCVmAcrGmG857trRA+9+0DmVKlKw7l5fu7mrKz5U5RFz1722y0ru97Oz5i
	GK4DHX7tXhShBwbTZN/vzMBkqPo1Z3SuEi69yExjhn28w1QhqrU0yIIhXDQ+QEZJjLTa
	PpRg==
X-Gm-Message-State: AA6/9RmTvNUXVT92uDQWfhyHKbGopyZKGJjIrro9o//WpH6pOEjSmURtvD95ljNboaFAOCIVOZ0xbrFceFh9uQ==
X-Received: by 10.159.34.225 with SMTP id 88mr2611456uan.6.1476588277084; Sat,
	15 Oct 2016 20:24:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Sat, 15 Oct 2016 20:24:06 -0700 (PDT)
In-Reply-To: <354bb7fd02a644249f3422a333f3f0ec@XCH-RTP-003.cisco.com>
References: <354bb7fd02a644249f3422a333f3f0ec@XCH-RTP-003.cisco.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 15 Oct 2016 20:24:06 -0700
Message-ID: <CAMKF1sr7R6CiCrKRcmAj6O0UK-vpZs2enWpzNRYc7qXskKprhw@mail.gmail.com>
To: "Harshal Govind (hgovind)" <hgovind@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building uclibc based image for arm
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
X-List-Received-Date: Sun, 16 Oct 2016 03:24:41 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 12, 2016 at 6:08 PM, Harshal Govind (hgovind)
<hgovind@cisco.com> wrote:
> Hi,
>
>
>
>
>
> I am trying build uclibc based image. But getting following error.
>
> Note:
>
> -          I am using yocto-1.7.2
>
> -          Set TCLIBC ?= "uclibc" in distro/defaultsetup.conf
>
> -          Building for arm
>
>
>
> # bitbake core-image-minimal
>
>
>
> NOTE: Preparing runqueue
>
> NOTE: Executing SetScene Tasks
>
> NOTE: Executing RunQueue Tasks
>
> ERROR: Function failed: do_install (log file is located at
> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-neon-poky-linux-uclibceabi/glibc-locale/2.20-r0/temp/log.do_install.29445)
>
> ERROR: Logfile of failure stored in:
> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-neon-poky-linux-uclibceabi/glibc-locale/2.20-r0/temp/log.do_install.29445
>
> Log data follows:
>
> | DEBUG: Executing shell function do_install
>
> | ls: cannot access
> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc/usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi//usr/bin:
> No such file or directory
>
> | ls: cannot access
> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc/usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi//usr/lib/locale:
> No such file or directory
>
> | cp: cannot stat
> '/home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc/usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi/SUPPORTED':
> No such file or directory
>
> | WARNING: exit code 1 from a shell command.
>
> | ERROR: Function failed: do_install (log file is located at
> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-neon-poky-linux-uclibceabi/glibc-locale/2.20-r0/temp/log.do_install.29445)
>
> ERROR: Task 1094
> (/home/hgovind/projects/temp/test-sdk/ap-sdk/sys/yocto-1.7/poky-dizzy-12.0.2/meta/recipes-core/glibc/glibc-locale_2.20.bb,
> do_install) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 780 tasks of which 703 didn't need to be
> rerun and 1 failed.
>
> Waiting for 0 running tasks to finish:
>
>
>
> Summary: 1 task failed:
>
>
> /home/hgovind/projects/temp/test-sdk/ap-sdk/sys/yocto-1.7/poky-dizzy-12.0.2/meta/recipes-core/glibc/glibc-locale_2.20.bb,
> do_install
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
>
>
> Could you please let me know if I am following correct steps to create
> uclibc based image?
>

when using uclibc, it should not pull any glibc components for
targets. but its happening for your case
so figure out how this is getting into dependencies. May be you are
including it explicitly or its coming
via indirect deps. you can use bitbake -g to generate dep info and inspect it

