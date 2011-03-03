Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 156344C800A3
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2011 16:56:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 14:56:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,260,1297065600"; d="scan'208";a="715901892"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.151])
	([10.7.198.151])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 14:56:01 -0800
Message-ID: <4D701C80.10600@intel.com>
Date: Thu, 03 Mar 2011 14:56:00 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] Release of Board Support Packages for Intel Atom Processor E660
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
X-List-Received-Date: Thu, 03 Mar 2011 22:56:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

All,

I am pleased to announce the release of board support packages for systems based on the Intel® Atom(tm) Processor E660
with Intel® Platform Controller Hub EG20T Development Kit at:

http://yoctoproject.org/download/board-support-package-bsp-downloads/atom-e660-hub-eg20t

This BSP, also known as "Crown Bay", ships as an open system and allows maximum flexibility for changing hardware
configuration and peripherals.

You can find information about this kit by downloading the PDF document from http://edc.intel.com/Link.aspx?id=3878.
For information on the Intel® Atom(tm) Processor E660 see http://edc.intel.com/Platforms/Atom-E6xx/.  For general
information about Board Support Packages, see the Board Support Package (BSP) Developer's Guide at:

http://www.yoctoproject.org/sites/default/files/bsp-guide_7.pdf

We are releasing two versions of the BSP tarballs. Each tarball contains the meta-crownbay Yocto BSP layer and bootable
images.

The BSP versions available for the Crown Bay are:

- Crown Bay - This tarball is prefixed with the string 'crownbay'. It contains proprietary graphics binaries and
requires you to agree to a click-through license before you can download it. It is available from:

https://eula-downloads.yoctoproject.org/crownbay/crownbay-laverne-4.0.1

- Crown Bay no EMGD - This tarball is prefixed with the string 'crownbay-noemgd'. It does not contain any proprietary
information. You can download the tarball directly. The BSP uses fully open source generic vesa support.  As such, the
drivers are not optimized to take full advantage of the hardware as compared to the other BSP tarball. It is available from:

http://www.yoctoproject.org/downloads/yocto-0.9/machines/crownbay-noemgd-laverne-4.0.1.tar.bz2

For source files for the Crown Bay BSP images see:

http://autobuilder.yoctoproject.org/downloads/yocto-0.9/sources.


Release Notes
-------------
The following known issues exist for this BSP.

- BUGID# 725 - During a boot operation you are prompted with the question:
Found drive at /dev/sda.  Do you want to install poky there ? [y/n] Unrelated text might follow this prompt during the
install.  You can still see the prompt text but you might have to locate it above the unrelated text.  The actions [y/n]
are still valid and you need to enter your choice.

- BUGID# 738 - The icons in the green panel at the top of the screen are missing.  Consequently, the functions that are
accessible exclusively through that panel, such as switching between open applications and the desktop, do not work.
You must close an application to get to the desktop.


------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

