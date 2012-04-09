Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA6C7E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:15:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2012 15:15:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130451683"
Received: from unknown (HELO envy.home) ([10.7.199.62])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 15:15:44 -0700
Message-ID: <4F835F6B.3010608@linux.intel.com>
Date: Mon, 09 Apr 2012 15:15:07 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4F834792.20402@gmail.com>
In-Reply-To: <4F834792.20402@gmail.com>
X-Enigmail-Version: 1.4
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build error on core-image-sato-sdk
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
X-List-Received-Date: Mon, 09 Apr 2012 22:15:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/09/2012 01:33 PM, jfabernathy wrote:
> at the end of the build of core-image-sato-sdk I got the following 
> error.  I'm using the edison branch with the latest changes and also 
> building the meta-cedartrail.  I had previously built core-image-sato 
> successfully with this setup.
> 
> Any ideas?
> 
> ERROR: Function 'build_boot_bin' failed (see 
> /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810 
> for further information)
> ERROR: Logfile of failure stored in: 
> /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
> Log data follows:
> | mkdosfs: seek failed

Interesting.

Can you provide the "OE Build Configuration" blob that prints at the
start of the build - I'm mostly interested in your commit IDs for.

Also, please include the HEAD of your poky edison tree.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

