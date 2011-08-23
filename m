Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39417E00321
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 09:59:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Aug 2011 09:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="41044132"
Received: from unknown (HELO envy.home) ([10.7.199.154])
	by orsmga002.jf.intel.com with ESMTP; 23 Aug 2011 09:59:07 -0700
Message-ID: <4E53DC59.1090202@linux.intel.com>
Date: Tue, 23 Aug 2011 09:59:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1313968374.git.sgw@linux.intel.com>
In-Reply-To: <cover.1313968374.git.sgw@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Add Time-Limited-Kernel Layer to meta-intel
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
X-List-Received-Date: Tue, 23 Aug 2011 16:59:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/21/2011 04:15 PM, Saul Wold wrote:
> Tom, Darren:
> 
> This adds Bruce's changes to allow for a time limited kernel, the
> default is set for 10 days.

I presume we need a linux-yocto-rt_3.0.bbappend as well?

--
Darren

> 
> This layer will only be added to the meta-intel BSP on the Auto-builder.
> 
> Sau!
> 
> 
> The following changes since commit 5c41b9b6a245664543e6ddd440d10a0696caaf7b:
> 
>   n450: decouple from meta-yocto atom-pc machine config (2011-08-19 14:22:21 -0700)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel sgw/tlk
>   http://git.yoctoproject.org/cgit.cgi/meta-intel/log/?h=sgw/tlk
> 
> Bruce Ashfield (1):
>   meta-tlk: initial creation
> 
>  meta-tlk/README                                    |    6 ++++++
>  meta-tlk/conf/layer.conf                           |    6 ++++++
>  .../linux/linux-yocto/time-limited-kernel.cfg      |    3 +++
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++++
>  4 files changed, 19 insertions(+), 0 deletions(-)
>  create mode 100644 meta-tlk/README
>  create mode 100644 meta-tlk/conf/layer.conf
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto/time-limited-kernel.cfg
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

