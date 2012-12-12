Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF1AE00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:19:43 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2012 12:19:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,268,1355126400"; d="scan'208";a="256597666"
Received: from unknown (HELO envy.home) ([10.255.13.227])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2012 12:19:42 -0800
Message-ID: <50C8E6DE.4020308@linux.intel.com>
Date: Wed, 12 Dec 2012 12:19:42 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
In-Reply-To: <CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
X-Enigmail-Version: 1.4.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: per-image ROOTFS sizes
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
X-List-Received-Date: Wed, 12 Dec 2012 20:19:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/12/2012 12:14 PM, Trevor Woerner wrote:
> Hi Darren,
> 
> On Wed, Dec 12, 2012 at 2:59 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>> On 12/11/2012 01:05 PM, Trevor Woerner wrote:
>>> Are per-image ROOTFS sizes (i.e. IMAGE_ROOTFS_SIZE_<image>) still
>>> supported?
>> Interesting, I haven't tried myself. Have you tried and run into an issue?
> 
> 
> Yes. I had been trying to figure out why my:
> 
>     IMAGE_ROOTFS_SIZE_vmdk = "500000"
> 
> line in my config file wasn't working when I found the link I provided
> earlier. Right now all I can say is that it doesn't work for _vmdk
> specifically.

That was:
http://patches.openembedded.org/patch/4671/

What is the reason you would like to do this just for vmdk? Is it to
avoid increasing the size of all the images when it is only vmdk you
care about? That would makes sense. Perhaps, for now, you could limit
the image types you build to just vmdk and increate the size without the
override?

Saul on CC for comment as that was his RFC Patch.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

