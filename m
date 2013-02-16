Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED73E01275
	for <yocto@yoctoproject.org>; Fri, 15 Feb 2013 18:29:09 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Feb 2013 18:29:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,676,1355126400"; d="scan'208";a="291900607"
Received: from unknown (HELO [10.255.13.17]) ([10.255.13.17])
	by fmsmga002.fm.intel.com with ESMTP; 15 Feb 2013 18:29:08 -0800
Message-ID: <1360981747.1691.29.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Feb 2013 20:29:07 -0600
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Sat, 16 Feb 2013 02:29:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I'm happy to announce that an updated version of the Yocto 'Hands-on
Kernel Lab' has been released and is available here:

https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pdf

The above document contains all the instructions you need to get started
from scratch.

You can always get to the lab and associated content by visiting the
Yocto home page (https://www.yoctoproject.org/) and selecting 'Read
presentations about the project' from the drop-down list you get by
clicking on the 'Start Here to learn more' box on the left-hand side and
clicking on the 'Working with the Kernel' presentation link.

The 'Hands-on Kernel Lab' has been updated to Yocto 1.3 ('danny') and
has been substantially expanded from three to five labs, with completely
new sections covering custom kernels, loadable modules and getting them
into (and autoloaded into) images, external modules, local clones, bare
local clones, and enabling LTSI features.

See below for a more complete listing of what's covered along with the
lab number covering those topics.

I've run through the lab twice, once on Fedora 17 and once on Ubuntu
12.04, so it should be pretty solid at this point, but if you find
problems, please let me know...

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



