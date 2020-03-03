Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.4690.1583246350330085261
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 06:39:10 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48X0573jvzz5tlB;
	Tue,  3 Mar 2020 15:39:07 +0100 (CET)
Date: Tue, 3 Mar 2020 15:39:06 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] proper way to create an out-of-tree kernel modules
Message-ID: <20200303143906.6z6afmlw4dhksa7t@qschulz>
References: <CAK4PFCXGx7zHT31_bMT4GXzWnvWZ2O_9tOwAC5hOPOqPMznTUA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK4PFCXGx7zHT31_bMT4GXzWnvWZ2O_9tOwAC5hOPOqPMznTUA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Kent,

On Tue, Mar 03, 2020 at 09:32:55AM -0500, Kent Dorfman wrote:
> What is the proper way to create a recipe to build a kernel module
> outside of the normal kernel tree?
> 
> The kernel sources need to be expanded and configured for the typical
> kernel makefile line
> 
> make -C $(KERNEL_SRC) M=$(PWD) V=1 ARCH=$(ARCH) \
> CROSS_COMPILE=$(CROSS_COMPILE) modules
> 
> to work.
> 
> Are there any sample/stubs available that demonstrate building and
> deploying a simple kernel module?
> 

inherit module should usually be enough in the recipe AFAICT.

There might be some fixes to do in Makefiles but nothing crazy.

c.f. https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#incorporating-out-of-tree-modules
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb

Quentin
