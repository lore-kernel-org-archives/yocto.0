Return-Path: <paulg@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D91EFC83F1D
	for <webhook@archiver.kernel.org>; Thu, 10 Jul 2025 10:12:42 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by mx.groups.io with SMTP id smtpd.web11.5091.1752142360803981646
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jul 2025 03:12:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O/5SsALc;
 spf=pass (domain: kernel.org, ip: 172.105.4.254, mailfrom: paulg@kernel.org)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 981B161495;
	Thu, 10 Jul 2025 10:12:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 209F8C4CEF1;
	Thu, 10 Jul 2025 10:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752142359;
	bh=VxvMgSlE99wEv/qUaQnfYD7zXndnAneP0EuxIwHIpPo=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=O/5SsALcIQWNSV5ehXTX5YYDUSZndueuAha/UAGzVYTzX20Xrtp9bGsnYzyigvCO3
	 U0Db+iu6KOC1iOO8lvNbCZWxVwv1S0mDBtAL2iG7n9CokUn7I/01d0FCU2tgLIn0GS
	 FcTCrILaaRKVUnMkyqNnj8y+KCtLS1gWzUoJTbiLiiGqBGeXPrBYZGUo1aGqioLSYa
	 /PYgxzZpCQZxCB+F4RWJKUmbD+9XSfUzVIIH+fd3uQhu2vDxOml2YoVWtjdSM5uHGD
	 JWPBRmxrzcTHxJ998aG2RwRuxXgzGDY2KGHXpf6MZNH3wGdJykuO/5pG4QSDu/wZRi
	 XYXExkkAb+lcg==
Date: Thu, 10 Jul 2025 06:12:37 -0400
From: Paul Gortmaker <paulg@kernel.org>
To: yocto@lists.yoctoproject.org, gary.huband@servicenow.com
Subject: Re: [yocto] kernel fragment merge in scarthgap #kernel #scarthgap
Message-ID: <20250710101237.GA409370@kernel.org>
References: <KDxf.1751999407392516646.3hg0@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <KDxf.1751999407392516646.3hg0@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Jul 2025 10:12:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65637

[[yocto] kernel fragment merge in scarthgap #kernel #scarthgap] On 08/07/2025 (Tue 11:30) Gary Huband via lists.yoctoproject.org wrote:

> In kirkstone I am able to see the merge order for linux kernel fragments by
> doing
>  
> 
> bitbake -c cleansstate virtual/kernel 
> 
> bitbake -c clean virtual/kernel 
> 
> bitbake --verbose linux-imx > build_linux.txt 
> 
>  
> 
> scarthgap does not produce the merge info using this method.
> 
> Is there a way to see the kernel config fragment merge order in scarthgap?
> 

You don't need to capture it in a file like above.  All the fragments
and their merge order and merge logs are captured in your kernel source
directory already - has been this way for many many years/releases.

At a minimum, you have to ensure the kernel is configured:

bitbake -c configure linux-yocto  # or in your case linux-imx

If you tend to build a bunch of different arch and/or BSP, then maybe
you can never remember the path to your kernel source, even with the
help of tab completion.  If I'm lazy I will use devshell to take me
directly there:

bitbake -c devshell linux-yocto   # take me to the kernel source!

In the kernel source dir you should see something like this:

root@build:~/poky/build/tmp/work-shared/qemuppc/kernel-source# ls
arch   certs    CREDITS  Documentation  fs       init      ipc     Kconfig  lib       MAINTAINERS  mm   README  samples  security  tools  virt
block  COPYING  crypto   drivers        include  io_uring  Kbuild  kernel   LICENSES  Makefile     net  rust    scripts  sound     usr
root@build:~/poky/build/tmp/work-shared/qemuppc/kernel-source# cat .metadir 
.kernel-meta
root@build:~/poky/build/tmp/work-shared/qemuppc/kernel-source# cd .kernel-meta/
root@build:~/poky/build/tmp/work-shared/qemuppc/kernel-source/.kernel-meta# ls
bsp_definition  cfg  config.queue  configs  hardware_frags.txt  meta-series  non-hardware_frags.txt  patches  patch.v6.12.standard.queue  series  unused.patch.queue
root@build:~/poky/build/tmp/work-shared/qemuppc/kernel-source/.kernel-meta# ls cfg/
merge_config_build.log  scratch
root@build:~/poky/build/tmp/work-shared/qemuppc/kernel-source/.kernel-meta# 

I expect "merge_config_build.log" is what you are after.  It contains
stuff like this:

  Merging .kernel-meta/configs/v6.12/standard/qemuppc/features/profiling/profiling.cfg
  Merging .kernel-meta/configs/v6.12/standard/qemuppc/features/debug/debug-kernel.cfg
  Value of CONFIG_DEBUG_KERNEL is redefined by fragment .kernel-meta/configs/v6.12/standard/qemuppc/features/debug/debug-kernel.cfg:
  Previous value: CONFIG_DEBUG_KERNEL=n
  New value: CONFIG_DEBUG_KERNEL=y

Have a look around inside .kernel-meta -- everything you possibly want
to know about making the final .config in the kernel build dir is here.

Paul.
--

