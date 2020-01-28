Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.35.1580230670789711867
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 08:57:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20699E015FD; Tue, 28 Jan 2020 08:57:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [64.68.198.64 listed in list.dnswl.org]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD56DE007AE
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 08:57:48 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 95DD640BCC;
	Tue, 28 Jan 2020 16:57:47 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52CakhVpBooA; Tue, 28 Jan 2020 16:57:47 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 77747409E7;
	Tue, 28 Jan 2020 16:57:46 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id D28711743BE; Tue, 28 Jan 2020 11:57:45 -0500 (EST)
Date: Tue, 28 Jan 2020 11:57:45 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Marco Cavallini <cavallini.koan@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] ERROR: could not relocate installing toolchain SDK
Message-ID: <20200128165745.GL4735@denix.org>
References: <CAFQ+DijY3q_Fc56uwCKuH_hPiH1LMk3_B=SR5rqWpA70OHxZ7g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFQ+DijY3q_Fc56uwCKuH_hPiH1LMk3_B=SR5rqWpA70OHxZ7g@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 28, 2020 at 09:25:18AM +0100, Marco Cavallini wrote:
> Hello,
> I found a bug when installing a toolchain sdk and the installation
> path contains a dash.
> Using the default directory or a path without a dash it works.

It's not dash, it's the new path is longer than what was reserved in ELF 
headers:
> interp size = 73 and 76 is needed.

I thought there was some attempt to use chrpath or patchelf or something 
to be able to expand the ELF headers with longer paths...

Not sure what the currect status is - I've been using my own workaround 
for many years that extends the "default" toolchain location to the max 
path length and then at the end changes the install script back to the 
original default. That way all ELF headers have "interp" field pre-allocated 
to the max and the resulting SDK/toolchain can be relocated w/o issues.

-- 
Denys


> Yocto 3.0 'zeus'
> 
> $ ./fslc-x11-glibc-x86_64-meta-toolchain-cortexa9t2hf-neon-koan-toolchain-3.0.sh
> FSLC X11 SDK installer version 3.0
> ==================================
> Enter target directory for SDK (default: /opt/fslc-x11/3.0): /opt/poky/test-3.0
> You are about to install the SDK to "/opt/poky/test-3.0". Proceed [Y/n]?
> Extracting SDK...............................................................................................................done
> Setting it up...ERROR: could not relocate
> /opt/poky/test-3.0/sysroots/x86_64-fslcsdk-linux/usr/bin/llvm-mc,
> interp size = 73 and 76 is needed.
> ERROR: could not relocate
> /opt/poky/test-3.0/sysroots/x86_64-fslcsdk-linux/usr/bin/llvm-mca,
> interp size = 73 and 76 is needed.
> ERROR: could not relocate
> /opt/poky/test-3.0/sysroots/x86_64-fslcsdk-linux/usr/bin/clang-9,
> interp size = 73 and 76 is needed.
> ERROR: could not relocate
> /opt/poky/test-3.0/sysroots/x86_64-fslcsdk-linux/usr/bin/llvm-mt,
> interp size = 73 and 76 is needed.
> ...etc...
> 
> Distinti Saluti / Best Regards
> --
> Marco Cavallini | KOAN sas | Bergamo - Italia
> embedded software engineering
> https://KoanSoftware.com

> 

