Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FC12E006D9
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 08:40:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Jun 2012 08:40:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="161301798"
Received: from unknown (HELO envy.home) ([10.7.199.60])
	by orsmga002.jf.intel.com with ESMTP; 22 Jun 2012 08:40:54 -0700
Message-ID: <4FE491B1.3020200@linux.intel.com>
Date: Fri, 22 Jun 2012 08:39:29 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Javeir Arantes <japier_07@hotmail.com>
References: <D956029D25CF204F948EA0FB515E1EE20ACDE589@ORSMSX105.amr.corp.intel.com>
	<4FDFA7A0.9040904@intel.com>
	<loom.20120621T053913-245@post.gmane.org>
In-Reply-To: <loom.20120621T053913-245@post.gmane.org>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: grub-efi-native_1.99.bb fails in master branch
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
X-List-Received-Date: Fri, 22 Jun 2012 15:40:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/20/2012 08:43 PM, Javeir Arantes wrote:
> 
> 
> Yep it's the same but what is the solution?? anything just wait for somebody 
> solved it??
> I need another solution plase :S Need to compile the meta-intel layer

For the time being, I suggest building meta-intel with the 1.2 release.

Alternatively, if you don't need EFI, you can remove it from the
MACHINE_FEATURES and grub-efi won't be built.

Otherwise, it's just a matter of time (and/or effort) until this is fixed.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



