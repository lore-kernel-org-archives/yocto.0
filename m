Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22D24E00CDE; Thu, 31 May 2018 13:44:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B05B4E00CCE;
	Thu, 31 May 2018 13:44:29 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 May 2018 13:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,463,1520924400"; d="scan'208";a="60246382"
Received: from tgraydon-mac01.jf.intel.com ([10.24.9.29])
	by fmsmga001.fm.intel.com with ESMTP; 31 May 2018 13:44:28 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org,
	meta-intel@yoctoproject.org
Message-ID: <43ed34c9-0d3a-61e7-727f-6ad636b6bd49@intel.com>
Date: Thu, 31 May 2018 13:44:27 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] meta-intel 9.0 for Yocto Project "sumo" 2.5 is now available
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
X-List-Received-Date: Thu, 31 May 2018 20:44:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

We are pleased to announce the meta-intel 9.0 layer for the Yocto Project 2.5 “sumo" release is now available for download.

Tracy Graydon 
Intel Corporation

----------------------
9.0-sumo-2.5 Errata
----------------------

Release Name: meta-intel-9.0-sumo-2.5
Branch: sumo
Tag: 9.0-sumo-2.5
Hash: d423576931b1d7c92939b5bc8529bc54619fa43c
md5: df29d4d5368025814dd724f287389421
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/meta-intel-9.0-sumo-2.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/meta-intel-9.0-sumo-2.5.tar.bz2


---------------------------
New Features / Enhancements
---------------------------
Quark has been EoL'd, and thus the intel-quark MACHINE support has been removed.

Default bootloader has been changed to systemd-boot.

Default kernel is now linux-intel-4.14.


--------------
 Known Issues
--------------
N\A


---------------
Security Fixes
---------------
For Intel processor-specific security information please visit https://software.intel.com/en-us/side-channel-security-support
 
Method information on Intel's Security Center site:
https://security-center.intel.com/advisory.aspx?intelid=INTEL-SA-00088&languageid=en-fr
 
Intel Security Center:
https://security-center.intel.com/default.aspx


---------------
Fixes
---------------
conf/machine/intel-corei7-64.conf: remove DPDK_TARGET_MACHINE
conf/machine/intel-core*: use systemd-bootdisk-microcode.wks by default
conf/machine/intel-*: remove do_image_wic depends
core-image-minimal-initramfs.bbappend: Add missing install module
core-image-tiny: Remove Quark reference and WKS file
efilinux: remove
Galileo: Remove remaining bits from RMC and WIC directory
intel-gpu-tools: 
- backport patch fixing 32-bit builds
- upgrades from: 1.19 to 1.20. 1.20 - 1.21, 1.21 - 1.22
intel-microcode: Updates to 20171117 and 20180312
intel-quark: Remove MACHINE configuration for Quark
intel-vaapi-driver: upgrades to 2.0.0 and 2.1.0
iwlwifi: remove reference to SYSTEMD_AUTO_ENABLE
ixgbe: 
- update to v5.3.6
- cleanup recipe
ixgbevf: 
- update to v4.3.4
- cleanup recipe
layer.conf: update LAYERSERIES_COMPAT variable
libyami: upgrade to 1.3.0
libyami-utils: upgrade to 1.3.0
linux-*: remove quark references from kernel
linux-intel: 
- Update 4.9 SRCREV and refactor
- fix menuconfig when host lacks ncurses 
- set COMPATIBLE_MACHINE default
- use meta-intel-compat-kernel.inc
linux-intel/4.14: 
- Fix 32-bit perf issue
- change KBRANCH to 4.14 and update SRCREVs
- add preempt-rt recipe
- mirror new dependencies added to linux-yocto-dev
- use master cache until named branch available
- Add latest LTS kernel
linux-intel/4.14 Updates: 
- v4.14.12
- v4.14.14
- v4.14.15
- v4.14.18
- v4.14.26
- v4.14.30
- v4.14.35
- v4.14.40
linux-intel/4.9: 
- Update cache and source SRCREVs
linux-intel/4.9 Updates: 
- v4.9.76
- v4.9.77
- v4.9.81
- v4.9.84
- v4.9.99
linux-intel-rt/4.14 Updates: 
- v4.14.24
- v4.14.29
- v4.14.34
- v4.14.40
linux-yocto: remove 4.4, 4.9, and 4.10 bbappends
linux-yocto/4.4: Update to v4.4.113
linux-yocto/4.12: use meta-intel-compat-kernel.inc instead
linux-yocto-4.14: 
- update to v4.14.33
- add bbappends
linux-yocto/4.15: add bbappends
MAINTAINERS: 
- update to current project maintainers
- Update for the removal of meta-tlk
maintainers.inc: update recipes for new maintainers
meta-intel: Reorganize the layout to remove common
meta-intel.inc: 
- use linux-intel instead of linux-yocto in -lsb
- set default EFI_PROVIDER to systemd-boot
- Update linux-intel PREFERRED_VERSION to 4.14
- remove unreferenced xserver code
qemuboot-intel: Remove quark references
README: 
- Remove Quark references
- update bitbake and OE-core requirements
- minor edit
- update for sumo release requirements
recipes-kernel/linux: add meta-intel-compat-kernel.inc file
rmc-db: also install to /boot/
systemd-boot: 
- fix bbappend file to suit latest version
- move systemd-boot.inc into base bbappend
- move commit pinning to rmc-boot.inc
systemd-boot/rmc-boot.inc:
- make it work with EFI image enhancements
- update to work with v237 and meson
thermald: 
- fix typo in license name
- update from 1.6 to 1.7.1
uefi-comboapp.bbclass: install files under pseudo
wic: add systemd-bootdisk-microcode.wks
xf86-video-mga: remove recipe from meta-intel


