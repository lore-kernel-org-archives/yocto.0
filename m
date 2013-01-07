Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3AB8E01423
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 08:41:40 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 08:41:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,424,1355126400"; d="scan'208";a="268731262"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.53])
	by orsmga002.jf.intel.com with ESMTP; 07 Jan 2013 08:41:39 -0800
Message-ID: <50EAFAC4.7000504@linux.intel.com>
Date: Mon, 07 Jan 2013 08:41:40 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1212090955220.13565@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212090955220.13565@oneiric>
X-Enigmail-Version: 1.4.6
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: are the yocto qemu download directories supposed to have kernel images?
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
X-List-Received-Date: Mon, 07 Jan 2013 16:41:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/09/2012 06:57 AM, Robert P. J. Day wrote:
> 
>   just updating my QEMU page, and the 1.3 download qemu pages no
> longer have kernel image files.  for instance, here:
> 
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1/machines/qemu/qemuarm/
> 
> you can see the file "zImage-qemuarm.bin".  but such a file no longer
> exists under:
> 
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/qemu/qemuarm/
> 
> should it?
> 
> rday
> 

This appears to be fixed.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

