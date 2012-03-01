Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69193E003E1
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 15:04:28 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 15:04:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113631544"
Received: from unknown (HELO envy.home) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 15:03:27 -0800
Message-ID: <4F500013.1080000@linux.intel.com>
Date: Thu, 01 Mar 2012 15:02:43 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F4FF77D.9060607@mentor.com> <4F4FFBF7.3020208@linux.intel.com>
	<4F4FFFDE.4090407@mentor.com>
In-Reply-To: <4F4FFFDE.4090407@mentor.com>
X-Enigmail-Version: 1.3.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] include usbinit package with usbgadget feature
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
X-List-Received-Date: Thu, 01 Mar 2012 23:04:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/01/2012 03:01 PM, Hollis Blanchard wrote:
> On 03/01/2012 02:45 PM, Darren Hart wrote:
>> On 03/01/2012 02:26 PM, Hollis Blanchard wrote:
>>> The g_ether kernel module, in the kernel-module-g-ether package, allows
>>> targets to use a USB connection as a network interface. However, that's
>>> not useful until the module is loaded.
>>>
>>> The usbinit package provides the /etc/init.d/usb-gether script to load
>>> the g_ether module at boot, so it should be included along with
>>> kernel-module-g-ether.
>> So if the g-ether kernel module is built-in to the kernel, the
>> kernel-module-g-ether will not be installed (as it's RRECOMMENDS). The
>> usbinit package still will be (unless for some reason it can't be built
>> for the target).
>>
>> I assume this doesn't pose a problem?
> 
> Well, hmm, I don't know. The usb-gether script is not very intelligent, 
> so I suppose that would result in yet another boot time error message. 
> Perhaps testing the result of 'modinfo g_ether' in the script would be a 
> good follow-up patch?
> 

Sounds reasonable to me.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

