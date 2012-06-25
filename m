Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21126E006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 09:44:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jun 2012 09:44:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="162364404"
Received: from unknown (HELO envy.home) ([10.7.199.60])
	by orsmga002.jf.intel.com with ESMTP; 25 Jun 2012 09:44:09 -0700
Message-ID: <4FE89505.1070203@linux.intel.com>
Date: Mon, 25 Jun 2012 09:42:45 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <4FE558CA.20308@linux.intel.com>
In-Reply-To: <4FE558CA.20308@linux.intel.com>
X-Enigmail-Version: 1.4.2
Subject: Re: No provider for update-modules-nativesdk
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
X-List-Received-Date: Mon, 25 Jun 2012 16:44:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/22/2012 10:48 PM, Darren Hart wrote:
> Has anyone else hit this? I'm running poky master as of the this afternoon:
> 
> $ bitbake core-image-base
> 
> ERROR: Nothing PROVIDES 'update-modules-nativesdk' (but
> virtual:nativesdk:/home/dvhart/source/poky/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
> DEPENDS on or otherwise requires it)

This is my own doing while trying to simplify the linux-yocto class
inclusions.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



