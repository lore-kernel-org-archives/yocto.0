Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3F6BE00706
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 11:11:47 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Jan 2013 11:11:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,516,1355126400"; d="scan'208";a="250823075"
Received: from unknown (HELO envy.home) ([10.255.15.13])
	by orsmga001.jf.intel.com with ESMTP; 22 Jan 2013 11:11:47 -0800
Message-ID: <50FEE472.5050102@intel.com>
Date: Tue, 22 Jan 2013 11:11:46 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592@ORSMSX101.amr.corp.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FW: YP Linux Kernel Development Manual
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Jan 2013 19:11:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/21/2013 06:05 PM, Rifenbark, Scott M wrote:
> Hi,
> 
> I am reposting this to the discussion list and copying Darren Hart.
> 
> Scott
> 
> From: Eddy Lai GMail [mailto:eddy.lai.tw@gmail.com]
> Sent: Monday, January 21, 2013 3:36 PM
> To: Rifenbark, Scott M
> Subject: Re: [yocto] YP Linux Kernel Development Manual
> 
> hi
> 
> hi, I follow the kernel development manual "2.5. Incorporating Out-of-Tree Modules",
> copy the "hello-mod_0.1.bb" and "files" folder into my taget layer "meta-intel/meta-jasperforest/recipe-kernel", then add "MACHINE_EXTRA_ RDEPENDS += "kernel-module-hello" in the conf/local.conf
> after build and boot, there's no "hello.ko" found in the binary image
> also there's no hello.ko in the "tmp/work/..." folder

From the description below that would be because you have to place the
entire hello-mod directory into
meta-intel/meta-jasperforest/recipes-kernel in order for the stock
layer.conf BBFILES variables to include in the bitbake search path.

If you do indeed have have a space in "MACHINE_EXTRA_ RDEPENDS" as in
your message below, that will also lead to failure.

Thanks,

--
Darren

> 
> Eddy
> 
> All,
> 
> 
> 
> There is a new YP manual under development.  It is a development manual for Linux kernels in the YP.  Darren Hart is the original author of the manual as you probably know.  It is still being worked on but it is in HTML form and now part of the yocto-docs/master branch.  It is published at http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html.  Feel free to access it and comment.
> 
> 
> 
> Thanks,
> 
> Scott
> 
> 
> 
> Scott Rifenbark
> 
> Intel Corporation
> 
> Yocto Project Documentation
> 
> 503.712.2702
> 
> 503.341.0418 (cell)
> 
> 
> 
> 
> 
> _______________________________________________
> 
> yocto mailing list
> 
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> 
> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

