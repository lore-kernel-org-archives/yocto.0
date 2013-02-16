Return-Path: <david.c.stewart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E98E01275
	for <yocto@yoctoproject.org>; Fri, 15 Feb 2013 18:54:40 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Feb 2013 18:53:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,676,1355126400"; d="scan'208";a="286490418"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 15 Feb 2013 18:54:39 -0800
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.438.0; Fri, 15 Feb 2013 18:54:39 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.65]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.44]) with mapi id
	14.01.0438.000; Fri, 15 Feb 2013 18:54:39 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Updated Yocto Hands-on Kernel Lab available
Thread-Index: AQHOC+2ByGOcCjO60Ua7kGOzI97g45h7yhAA
Date: Sat, 16 Feb 2013 02:54:38 +0000
Message-ID: <CD4434D7.27D5A%david.c.stewart@intel.com>
In-Reply-To: <1360981747.1691.29.camel@empanada>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.3.120616
x-originating-ip: [10.252.133.123]
MIME-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Sat, 16 Feb 2013 02:54:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <73170A86A3990A45A927F975A777381A@intel.com>
Content-Transfer-Encoding: quoted-printable



On 2/15/13 6:29 PM, "Tom Zanussi" <tom.zanussi@intel.com> wrote:

>Hi,
>
>I'm happy to announce that an updated version of the Yocto 'Hands-on
>Kernel Lab' has been released and is available here:
>
>https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-l
>ab.pdf
>
>The above document contains all the instructions you need to get started
>from scratch.
Pretty frickin' awesome. Great job!

>
>You can always get to the lab and associated content by visiting the
>Yocto home page (https://www.yoctoproject.org/) and selecting 'Read
>presentations about the project' from the drop-down list you get by
>clicking on the 'Start Here to learn more' box on the left-hand side and
>clicking on the 'Working with the Kernel' presentation link.
>
>The 'Hands-on Kernel Lab' has been updated to Yocto 1.3 ('danny') and
>has been substantially expanded from three to five labs, with completely
>new sections covering custom kernels, loadable modules and getting them
>into (and autoloaded into) images, external modules, local clones, bare
>local clones, and enabling LTSI features.
>
>See below for a more complete listing of what's covered along with the
>lab number covering those topics.
>
>I've run through the lab twice, once on Fedora 17 and once on Ubuntu
>12.04, so it should be pretty solid at this point, but if you find
>problems, please let me know...
>
>* Creating and using a traditional kernel recipe (lab1)
>* Using 'bitbake -c menuconfig' to modify the kernel configuration and
>replace the defconfig with the new configuration (lab1)
>* Adding a kernel module to the kernel source and configuring it as a
>built-in module by adding options to the kernel defconfig (lab1)
>* Creating and using a linux-yocto-based kernel (lab2)
>* Adding a kernel module to the kernel source and configuring it as a
>built-in module using linux-yocto 'config fragments' (lab2)
>* Using the linux-yocto kernel as an LTSI kernel (configuring in an item
>added by the LTSI kernel which is merged into linux-yocto) (lab2)
>* Using an arbitrary git-based kernel via the linux-yocto-custom kernel
>recipe (lab3)
>* Adding a kernel module to the kernel source of an arbitrary git-based
>kernel and configuring it as a loadable module using 'config fragments'
>(lab3)
>* Actually getting the module into the image and autoloading it on boot
>(lab3)
>* Using a local clone of an arbitrary git-based kernel via the
>linux-yocto-custom kernel recipe to demonstrate a typical development
>workflow (lab4)
>* Modifying the locally cloned custom kernel source and verifying the
>changes in the new image (lab4)
>* Using a local clone of a linux-yocto- kernel recipe to demonstrate a
>typical development workflow (lab4)
>* Modifying the locally cloned linux-yocto kernel source and verifying
>the changes in the new image (lab4)
>* Using a 'bare' local clone of a linux-yocto- kernel recipe to
>demonstrate a typical development workflow (lab4)
>* Modifying the locally cloned 'bare' linux-yocto kernel source and
>verifying the changes in the new image (lab4)
>* Adding and using an external kernel module via a module recipe (lab4)
>* Using the 'Yocto BSP Tools' yocto-bsp tool generate a new Yocto BSP
>(lab5)
>* Using the 'Yocto BSP Tools' yocto-kernel tool to add kernel patches and
>config fragments (lab5)
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


