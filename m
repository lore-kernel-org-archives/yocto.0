Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C1FE01409
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 13:51:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 May 2013 13:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,730,1363158000"; d="scan'208";a="339077611"
Received: from unknown (HELO [10.255.12.150]) ([10.255.12.150])
	by fmsmga001.fm.intel.com with ESMTP; 23 May 2013 13:51:33 -0700
Message-ID: <1369342287.27119.30.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 15:51:27 -0500
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Yocto Hands-on Kernel Lab dylan (1.4) update available
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 May 2013 20:51:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I'm happy to announce that the Yocto 'Hands-on Kernel Lab' has been
updated for dylan (Yocto 1.4) and is available here:

https://www.yoctoproject.org/sites/yoctoproject.org/files/kernel-lab-1.4.pdf

The above document contains all the instructions you need to get started
from scratch.

Besides the updates for dylan, this version of the 'Hands-on Kernel Lab'
incorporates a lot of feedback from the users of the previous version.
Special thanks to Robert P. J. Day, who sent a lot of useful comments
and suggestions.

The topics covered are essentially the same as those in the previous
version, with sections covering the use of traditional kernel recipes,
custom kernel recipes, and linux-yocto recipes, along with sections
discussing how to modify the kernel configuration and sources in each of
those cases.  It also discusses how to make use of loadable modules and
how to get them into (and autoloaded into) images, how to make use of
external modules, and how to enable LTSI features.  Additionally, it
discusses overall workflow issues including the use of local clones and
bare local clones.  Finally, it demonstrates how to use the yocto-bsp
and yocto-kernel tools to generate board support packages and use those
tools to configure and patch the kernel in the generated BSP.

See below for a more complete listing of what's covered along with the
lab number covering those topics.

I've run through the lab twice, once on Fedora 17 and once on Ubuntu
12.04, but if you find problems, please let me know...

* Creating and using a traditional kernel recipe (lab1)
* Using 'bitbake -c menuconfig' to modify the kernel configuration and replace the defconfig with the new configuration (lab1)
* Adding a kernel module to the kernel source and configuring it as a built-in module by adding options to the kernel defconfig (lab1)
* Creating and using a linux-yocto-based kernel (lab2)
* Adding a kernel module to the kernel source and configuring it as a built-in module using linux-yocto 'config fragments' (lab2)
* Using the linux-yocto kernel as an LTSI kernel (configuring in an item added by the LTSI kernel which is merged into linux-yocto) (lab2)
* Using an arbitrary git-based kernel via the linux-yocto-custom kernel recipe (lab3)
* Adding a kernel module to the kernel source of an arbitrary git-based kernel and configuring it as a loadable module using 'config fragments' (lab3)
* Actually getting the module into the image and autoloading it on boot (lab3)
* Using a local clone of an arbitrary git-based kernel via the linux-yocto-custom kernel recipe to demonstrate a typical development workflow (lab4)
* Modifying the locally cloned custom kernel source and verifying the changes in the new image (lab4)
* Using a local clone of a linux-yocto- kernel recipe to demonstrate a typical development workflow (lab4)
* Modifying the locally cloned linux-yocto kernel source and verifying the changes in the new image (lab4)
* Using a 'bare' local clone of a linux-yocto- kernel recipe to demonstrate a typical development workflow (lab4)
* Modifying the locally cloned 'bare' linux-yocto kernel source and verifying the changes in the new image (lab4)
* Adding and using an external kernel module via a module recipe (lab4)
* Using the 'Yocto BSP Tools' yocto-bsp tool generate a new Yocto BSP (lab5)
* Using the 'Yocto BSP Tools' yocto-kernel tool to add kernel patches and config fragments (lab5)

Thanks,

Tom


