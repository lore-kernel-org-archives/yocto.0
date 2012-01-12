Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3427E0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 10:28:11 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Jan 2012 10:28:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="95805172"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.156])
	by orsmga001.jf.intel.com with ESMTP; 12 Jan 2012 10:28:11 -0800
Message-ID: <4F0F2627.3010004@linux.intel.com>
Date: Thu, 12 Jan 2012 10:27:51 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Josef Ahmad <josef.ahmad@intel.com>
References: <CACJvPv3H8QaGffS3kdS1qLogcwn9L1ZsYpzqo6eei6LMK_7=WQ@mail.gmail.com>
In-Reply-To: <CACJvPv3H8QaGffS3kdS1qLogcwn9L1ZsYpzqo6eei6LMK_7=WQ@mail.gmail.com>
X-Enigmail-Version: 1.3.4
Cc: yocto@yoctoproject.org
Subject: Re: qemu EFI build failure
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
X-List-Received-Date: Thu, 12 Jan 2012 18:28:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/12/2012 08:19 AM, Josef Ahmad wrote:
> I tried to build a qemux86 EFI image, by setting:
> - in my local.conf: IMAGE_FSTYPES += "live"
> - in poly/meta/conf/machine/qemux86.conf: MACHINE_FEATURES += "efi"
> 

I haven't tried live images with QEMU. For one thing, they aren't really
necessary as you can specify all the boot parameters on the qemu command
line. Is there are reason you want to use the live image specifically?

Also, in order to properly test EFI in QEMU, you will need to use an EFI
BIOS - I believe you're aware of this already - but this isn't currently
supported by the runqemu scripts that ship with yocto.

> The build gave me the following error:


I'll do some test builds - it isn't clear to me what is going on here.

<snip>

> 
> 
> Has anyone encountered the same error?  I'm not sure I set up the
> correct configuration. Also, is there another way to append "efi" to
> MACHINE_FEATURES rather than by modifying qemux86.conf?

You should be able to do something like:
MACHINE_FEATURES_append_qemux86 = "efi"

Note that you will also need to enable the efi support in the kernel,
which is done with the KERNEL_FEATURES variable, something like:
KERNEL_FEATURES_append_qemux86 = "conf/efi-ext.scc"

Either of these can be set in your local.conf.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

