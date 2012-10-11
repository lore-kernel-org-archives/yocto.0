Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB6D8E00292
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 04:22:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2012 04:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,571,1344236400"; d="scan'208";a="204294443"
Received: from unknown (HELO helios.localnet) ([10.252.122.70])
	by orsmga001.jf.intel.com with ESMTP; 11 Oct 2012 04:22:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Oct 2012 12:22:05 +0100
Message-ID: <2995833.IARlncBIop@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
MIME-Version: 1.0
Subject: Changelog for 1.3
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
X-List-Received-Date: Thu, 11 Oct 2012 11:22:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks,

I've put together a list of medium to high-level changes based on
browsing through the commits for the release:

- Improved terminal UI which makes it easy to see the tasks that are currently executing, and avoids burying any warnings that are printed
- Eliminated intermediate step when building cross compiler toolchain
- SDK is now relocatable
- Large number of usability improvements in the Hob image building UI
- Upgraded eglibc to version 2.16
- Upgraded gcc to version 4.7
- Added yocto-bsp script for automating the initial parts of creating a new BSP
- Python functions now consistently use four spaces for indentation - no more having to try to match the mix of tabs and spaces in your recipes
- Disabled sharing shared state between machines using different distros by default to avoid glibc version problems
- Fixes to allow qemu-native to be built on host systems without X11 (i.e. for console use only)
- Enabled python and perl scripting for perf as well as text-mode UI
- Added ability to produce a companion SDK together with an image
- Allow forcing the rebuilding of a recipe (new -C and improved -f options)
- Enabled EFI in grub installer
- Mesa can now provide GLES accelerated graphics without X11
- Added script for producing "bootcharts" from buildstats so you can see the timeline of the build
- Checksums for local files referred to in SRC_URI are now included in task signatures so that changing their contents causes the relevant tasks to be re-executed
- Extended bitbake-diffsigs to look up signature files from task and recipe name, and trace back recursively through dependent task changes
- Moved from module-init-tools to kmod
- Added create-recipe script to automate some of the parts of creating a brand new recipe
- Buildhistory improvements: better performance, track postinst/postrm scripts
- Added bin_package bbclass for recipes that package pre-built binaries
- Added doc-pkgs IMAGE_FEATURES feature to install all documentation
- Added class-* overrides - particularly useful for target/cross/crosssdk but works with all classes
- Reference hardware BSPs are now separate from Poky reference distro configuration
- nativesdk is now a prefix rather than a suffix, simplifying packaging in nativesdk recipes greatly
- Detect and warn if files in the sysroot are potentially written to by multiple recipes
- Automatic launching of "screen" within terminal for devshell/patch resolution
- task-* recipes renamed to packagegroup-* and tidied up significantly
- Improved mirror handling - allow mirrors of mirrors; handle errors more gracefully
- Reduced dependencies between debugging symbol packages
- Significant cleanup of X server recipes
- Start to add regression tests for BitBake

Is there anything that belongs here that I have missed? I know we've done a
lot of other bugfixes and package upgrades, we're really after the
highlights.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

