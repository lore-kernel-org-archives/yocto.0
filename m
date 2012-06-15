Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A39BE01426
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 07:28:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jun 2012 07:28:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="166124860"
Received: from unknown (HELO envy.home) ([10.255.12.135])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jun 2012 07:28:23 -0700
Message-ID: <4FDB463C.6020100@linux.intel.com>
Date: Fri, 15 Jun 2012 07:27:08 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: =?windows-1252?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
References: <A7B59F6D52627C44813C136D437B0832068BC78CB34A@TKSSREX01.outnet.ch>
In-Reply-To: <A7B59F6D52627C44813C136D437B0832068BC78CB34A@TKSSREX01.outnet.ch>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bug 2256 - kernel menuconfig confusion with sstate
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
X-List-Received-Date: Fri, 15 Jun 2012 14:28:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hi Juergen,

On 06/15/2012 02:07 AM, Jürgen Messerer wrote:
> Dear Darren
> 
> You suggested in Bug 2256 the following:
> 
> $ bitbake virtual/kernel -c cleansstate
> 
> $ bitbake virtual/kernel -c menuconfig
> 
> $ bitbake virtual/kernel -c compile -f; bitbake virtual/kernel
> 
> Can you tell me what the difference is between
> 
> “bitbake virtual/kernel -c compile –f”
> 
> and
> 
> “bitbake virtual/kernel”

The -c argument specifies a specific task you want bitbake to execute,
it accepts values from the listtasks command, compile is one of them.
The -f argument forces the task to execute even if bitbake thinks it has
already performed the task. This is useful when changing the sources
manually, which bitbake can't know anything about.

Note that "bitbake -h" would have provided this information.

> 
> Shouldn’t be the last command “bitbake –c deploy virtual/kernel”?

If all you want is to get the bzImage into the tmp/deploy/images
directory, then that will suffice. If you want it to package it up and
complete all the tasks associated with the virtual/kernel recipe, then
"bitbake virtual/kernel" is required.

> 
> Thanks for the infos

Welcome.

> 
> Regards
> 
> Juergen

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



