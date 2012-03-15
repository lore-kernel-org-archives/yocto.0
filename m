Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 998EFE00596
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 12:12:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2FJCBkI022292
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 15 Mar 2012 12:12:11 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 15 Mar 2012 12:12:11 -0700
Message-ID: <4F623F08.8080203@windriver.com>
Date: Thu, 15 Mar 2012 15:12:08 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 00/17][KERNEL] emenlow updates for linux-yocto 3.2
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
X-List-Received-Date: Thu, 15 Mar 2012 19:12:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-13 11:57 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Hi Bruce,
>
> Please pull this patchset into linux-yocto-3.2,
> standard/default/emenlow.

merged. I'm building this along with my other updates, will push
when they complete.

Bruce

>
> Thanks,
>
> Tom
>
> The following changes since commit 764090858adaa214395b3667fe1929892c2083f7:
>    Darren Hart (1):
>          pch_uart: Use existing default_baud in setup_console
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/standard/default/emenlow-3.2
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/standard/default/emenlow-3.2
>
> Tom Zanussi (17):
>    drm: add the base source of the Poulsbo (psb) 2D X11 driver
>    drm-psb: remove the package Makefile and replace it with the kernel
>      Makefile
>    drm: apply psb-kernel-source package's build.patch
>    drm: intel_ldvs.c: add missing arg to backlight_device_register()
>      call
>    emenlow: switch to psb
>    drm: Fix psb ioctl assignment
>    drm-psb: remove BKL remnants
>    drm-psb: update spinlock initializers
>    drm-psb: remove call to agp_flush_chipset
>    drm-psb: remove includes of nonexistent i2c-id.h
>    drm-psb: remove assigment to deprecated i2c_adapter.id
>    drm-psb: use console_lock/unlock()
>    drm-psb: add DRM_UNLOCKED flag
>    drm-psb: mark unlocked ioctls
>    drm-psb: initialize backlight type
>    drm-psb: fix ioremap calls
>    drm-psb: change udelay to mdelay in intel_wait_for_vblank()
>


