Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05727E00307
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 14:11:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2011 14:11:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,523,1315206000"; d="scan'208";a="91553777"
Received: from unknown (HELO envy.home) ([10.255.12.86])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2011 14:11:57 -0800
Message-ID: <4EC4352C.8020600@linux.intel.com>
Date: Wed, 16 Nov 2011 14:11:56 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <4EC3FC68.9080200@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB0B15@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB0B15@ORSMSX101.amr.corp.intel.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: EXTRA_IMAGEDEPENDS documentation
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
X-List-Received-Date: Wed, 16 Nov 2011 22:11:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 11/16/2011 12:52 PM, Rifenbark, Scott M wrote:
> Darren, 
> 
> Regarding *DEPENDS....  Right now these variables are documented in the YP Reference Manual.  Your email says that the *DEPENDS variables impact the root filesystem.  That is sort of vague.  
> Can I just add that to each of these descriptions below?

I believe so, yes. Any place we refer to "packages" we are talking about
the root filesystem. One exception below is LAYERDEPENDS, that one does
not impact the root filesystem.

--
Darren

> 
> 	DEPENDS - A list of build-time dependencies for a given recipe.  
>                 The variable indicates recipes that must have been 
>                 staged before a particular recipe can configure.
> 
> 	DISTRO_EXTRA_RDEPENDS - The list of packages required by the 
>                 distribution.
> 
> 	LAYERDEPENDS - Lists the layers that this recipe depends upon, 
>                 separated by spaces.  Optionally, you can dspecify a 
>                 specific layer version for a dependency by adding it 
>                 to the end of the layer name with a colon 
>                 (e.g. "anotherlayer:3" to be compared against 
>                 LAYERVERSION_anotherlayer in this case).  An error will 
>                 be produced if any dependency is missing or the 
>                 version numbers do not match exactly (if specified).  
>                 This variable is used in the conf/layer.conf file and
>                 must be suffixed with the name of the specific layer 
>                 (e.g. LAYERDEPENDS_mylayer).
> 
> 	MACHINE_ESSENTIAL_EXTRA_RDEPENDS - A list of required packages 
>                 to install as part of the package being built.  The 
>                 build process depends on these packages being present.  
>                 Furthermore, because this is a "machine essential" 
>                 variable, the list of packages are essential for the 
>                 machine to boot.  The impact of this variable affects 
>                 images based on task-core-boot including the 
>                 core-image-minimal image.
> 
>                 This variable is similar to the 
>                 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS variable with the 
>                 exception that the package being built has a build 
>                 dependency on the variable's list of packages.  In other 
>                 words, the image will not beuild if a file in this list 
>                 is not found.
> 
>                 For example, suppose you are building a a runtime 
>                 package that depends on a certain disk driver.  In this 
>                 case, you would use the following:
> 
>                   MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "<disk_driver>"
> 
> 	MACHINE_EXTRA_RDEPENDS - A list of optional but non-machine 
>                     essential packages to install as part of the package 
>                     being built.  Even though these packages are not 
>                     essential for the machine to boot, the build process 
>                     depends on them being present.  The impact of this 
>                     variable affects all images based on task-base, which 
>                     does not include the core-image-minimal or 
>                     core-image-basic images.
> 
>                     This variable is similar to the 
>                     MACHINE_EXTRA_RRECOMMENDS variable with the exception 
>                     that the package being built has a build dependency on 
>                     the variable's list of packages.  In other words, the 
>                     image will not build if a file in this list is not 
>                     found.
> 
>                     An example is a machine that might or might not have a 
>                     WiFi card.  The package containing the WiFi support is 
>                     not essential for the machine to boot the image.
>                     If it is not there, the machine will boot but not be able 
>                     to use the WiFi functionality.  However, if you include 
>                     the package with the WiFi support as part of the 
>                     variable's package list, the build process depends on 
>                     finding the package.  In this case, you would use the 
>                     following:
> 
>                         MACHINE_EXTRA_RDEPENDS += "<wifi_driver>"
> 
> 	RDEPENDS - A list of packages that must be installed as part of a 
>                     package being built.  The package being built has a runtime 
>                     dependency on the packages in the variable's list.  In 
>                     other words, in order for the package being built to run 
>                     correctly, it depends on these listed packages.  If a 
>                     package in this list cannot be found during the build, 
>                     the build will not complete.
> 
>                     Because the RDEPENDS variable applies to packages 
>                     being built, you should always attach an override to the 
>                     variable to specify the particular runtime package
>                     that has the dependency.  For example, suppose you are 
>                     building a development package that depends on the 
>                     perl package.  In this case, you would use the following 
>                     RDEPENDS statement:
> 
>                         RDEPENDS_${PN}-dev += "perl"
> 
>                     In the example, the package name (${PN}-dev) must 
>                     appear as it would in the PACKAGES namespace before any 
>                     renaming of the output package by classes like 
>                     debian.bbclass.
> 
>                     Some automatic handling occurs around the 
>                     RDEPENDS variable:
> 
>                       * shlibdeps:  If a runtime package contains a shared 
>                             library (.so), the build processes the library 
>                             in order to determine other libraries to which it 
>                             is dynamically linked.  The build process adds 
>                             these libraries to RDEPENDS to create the runtime 
>                             package.
> 
>                       * pcdeps:  If the package ships a pkg-config information 
>                             file, the build process uses this file to add items
>                             to the RDEPENDS variable to create the runtime 
>                             packages.
> 	
> It is safe to note in each of these descriptions that the root filesystem is impacted?  
> 
> 
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com] 
> Sent: Wednesday, November 16, 2011 10:10 AM
> To: Yocto Project
> Cc: Rifenbark, Scott M; Richard Purdie
> Subject: EXTRA_IMAGEDEPENDS documentation
> 
> For the situation where a recipe is required to build a final image, but
> the output is not needed in the root filesystem, the EXTRA_IMAGEDEPENDS
> variable can be used to define this dependency. Bootloaders seem to be
> the common example for this (such as the beagleboard dependency on uboot).
> 
> This variable is not defined in the poky manual nor in the documentation
> tags (meta/conf/documentation.conf).
> 
> Another aspect of this that could be made more explicit in the manual is
> that the various *RRECOMMENDS and *RDEPENDS variables impact what is
> installed in the root filesystem (because they operate on packages - not
> recipes). Scott, I'd recommend a few extra words in the *RRECOMMENDS and
> *RDEPENDS documentation to this effect. For example, "... a list of
> packages to install TO THE ROOT FILESYSTEM ...".
> 
> As for the EXTRA_IMAGEDEPENDS definition, perhaps something like this:
> 
> in documentation.conf:
> 
> EXTRA_IMAGEDEPENDS[doc] = "Recipes to build that do not install packages
> to the root filesystem, such as bootloaders."
> 
> in the reference manual:
> 
> EXTRA_IMAGEDEPENDS
> A list of recipes to be built that do not provide packages to be
> installed in the root filesystem. This is typically used to specify a
> required bootloader in a machine config.
> 
> Note: To add packages to the root filesystem, see the various *DEPENDS
> and *RECOMMENDS variables.
> 
> Scott, I'll leave the reference manual changes to you. RP, if you agree
> with my doc tag, I can submit a patch for that.
> 
> Thanks,
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

