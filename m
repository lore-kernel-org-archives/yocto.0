Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD2C1E0030F
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 11:57:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Nov 2011 11:57:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,516,1315206000"; d="scan'208";a="85571939"
Received: from unknown (HELO [10.255.12.41]) ([10.255.12.41])
	by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2011 11:57:23 -0800
Message-ID: <4EC2C423.6010502@linux.intel.com>
Date: Tue, 15 Nov 2011 11:57:23 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAF6CgHwhhBJ05zK2A4YdddTDNZVeZ_is7G0V-09jMYMADLFeOQ@mail.gmail.com>
In-Reply-To: <CAF6CgHwhhBJ05zK2A4YdddTDNZVeZ_is7G0V-09jMYMADLFeOQ@mail.gmail.com>
Subject: Re: changing kernel config on a project built by Hob
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
X-List-Received-Date: Tue, 15 Nov 2011 19:57:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Jitendra,

On 11/11/11 11:37, Jitendra Shekhawat wrote:
> Newbie here. I think I've looked at the relevant documents and couldn't
> find how to do this.
> 
> What is the procedure for doing a kernel 'make menuconfig' on hob
> assisted projects?
> 
> I created a simple project using following steps:
> 1. source poky-edison-6.0/oe-init-build-env
> 2. hob
> 3. configuration under hob:
>  - Machine: atom-pc
>  - Base image: core-image-minimal 
>  - Added openssh
> 4. save the image as test.bb <http://test.bb>
> 5. Baked the image in hob
> 6. Booted the result in Virtualbox after creating a bootable disk image,
> etc.
> 
> I need to now modify the kernel by adding CP210x USB/Serial converter
> driver.
> 
> What is the procedure for doing a 'make menuconfig' on this hob assisted
> project?

Unfortunately we don't currently support modifying the kernel config via
the hob GUI although it's certainly something we'd like to enable in the
future.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

