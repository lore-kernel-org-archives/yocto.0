Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1E29E00B77; Fri, 21 Jul 2017 15:12:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E222AE00B53;
	Fri, 21 Jul 2017 15:12:55 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jul 2017 15:12:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,392,1496127600"; d="scan'208";a="881395750"
Received: from yiwenguo-mobl1.ccr.corp.intel.com ([10.254.20.231])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Jul 2017 15:12:54 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <59727C66.5050200@intel.com>
Date: Fri, 21 Jul 2017 15:12:54 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.3.1 (pyro 17.0.1) Released
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
X-List-Received-Date: Fri, 21 Jul 2017 22:12:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.3.1 (pyro-17.0.1) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.1/poky-pyro-17.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.1/poky-pyro-17.0.1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.1/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW29_-_2017-07-18-_Full_Test_Cycle_-_2.3.1_rc2

Thank you to everyone for your contributions on this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon at intel.com


------------------
yocto-2.3.1 Errata
------------------

Release Name: eclipse-poky-mars-pyro-17.0.1
Branch: mars/pyro
Tag: mars/pyro-17.0.1
Hash: 92aa0e79e8b01c56f0670af3cd8296ec68b43350
md5: 6dc814439b7469dd5ed76ce752b262c1
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.1/eclipse-poky-mars-pyro-17.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.1/eclipse-poky-mars-pyro-17.0.1.tar.bz2

Release Name: eclipse-poky-neon-pyro-17.0.1
Branch: neon/pyro
Tag: neon/pyro-17.0.1
Hash: 83e0083ef3a71e10039ace7d18057dddc154408b
md5: ea7e1e5eb218cc4ac38d1393092ccf60
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.1/eclipse-poky-neon-pyro-17.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.1/eclipse-poky-neon-pyro-17.0.1.tar.bz2

Release Name: meta-qt3-pyro-17.0.1
Branch: pyro
Tag: pyro-17.0.1
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: bd3087bdef5683b73240ef30f23b5618
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.1/meta-qt3-pyro-17.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.1/meta-qt3-pyro-17.0.1.tar.bz2

Release Name: meta-qt4-pyro-17.0.1
Branch: pyro
Tag: pyro-17.0.1
Hash: e120a2193be3982d55741fb9e51472db6ab9a5cd
md5: 6a8126ed32c86aba3df975a7e8671e97
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.1/meta-qt4-pyro-17.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.1/meta-qt4-pyro-17.0.1.tar.bz2

Release Name: poky-pyro-17.0.1
Branch: pyro
Tag: pyro-17.0.1
Hash: 6bd890d9e011014cf323e61267f8b256949d44aa
md5: 6deb722f128908355c95528cb9ae7086
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.1/poky-pyro-17.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.1/poky-pyro-17.0.1.tar.bz2


---------------
 Known Issues
---------------
N/A

---------------
Security Fixes
---------------
binutils: fix CVE-2017-7210
binutils: fix CVE-2017-7209 in readelf
libxslt: Fix CVE-2017-5029
ghostscript: CVE-2016-7977, CVE-2016-7978, CVE-2016-7979, CVE-2017-9216
ghostscript: CVE-2016-8602, CVE-2017-7975
binutils: fix CVE-2017-6969 in readelf
rpcbind: Fix CVE-2017-8779
binutils: Fix CVE-2017-8392
cve-check.bbclass: make warning contain CVE IDs
cve-check-tool: backport a patch to make CVE checking work
bash: CVE-2016-0634


---------------
Fixes
---------------
Revert "bitbake.conf: Add sdl-config to HOSTTOOLS if using host SDL"
bitbake: siggen: Make calc_taskhash match get_taskhash for file checksums
bitbake: fetch: fix handling of files with incorrect checksums from a premirror
ref-manual: uClibc Replaced by musl from Yocto 2.2
dev-manual: Fixed a DocBook issue with formatting "bug-id"
sdk-manual: Updated the note for building SDK Installer
ref-manual: Updated LAYERRECOMMENDS variable
documentation: Prepared 2.3.1 release variables and dates
ref-manual: Updated PACKAGECONFIG_CONFARGS variable
ref-manual: Added warning to native.bbclass for naming convention
ref-manual: Updated PACKAGECONFIG_CONFARGS variable description
yocto-project-qs: Updated the YP Development Flow figure
dev-manual, sdk-manual: Fixed link to Eclipse section
dev-manual: Fixed broken link into the setting up Eclipse section
ref-manual: Added LAYERRECOMMENDS variable description
ref-manual: Updated LAYERDEPENDS variable description
ref-manual: Updated image-live.bbclass description
ref-manual: Enhanced the glossary description for INHERIT
ref-manual: Fixed typo for "Installation"
package_ipk: Clean up Source entry in ipk packages
mkelfimage: Fix broken patch when building native
automake: Backport perl 5.22 fix
bitbake.conf: Add sdl-config to HOSTTOOLS if using host SDL
piglit: add patches for unbuildable surfaceless Mesa test
piglit: add patch for lack of gbm_bo_map
piglit: depend on virtual/egl
image-vm: Avoid use of fold, tac and paste commands for DISK_SIGNATURE
kernel: predefine KBUILD_BUILD_USER and KBUILD_BUILD_HOST
oeqa/selftest: lock down Meson git revision for reliability
scriptutils: fix fetch_uri() to work with RSS
cryptodev-linux: update SRC_URI
staging: Allow BB_LIMITEDDEPS to avoid BB_TASKDEPDATA
sstate: Ensure native/cross recipes have relocation of HOSTTOOLS_DIR
python.inc: Fix python2/3 hosttools path references
rpm: Ensure macros file doesn't reference HOSTTOOLS
GNU_MIRROR: switch from ftp to https
DEBIAN_MIRROR: switch from ftp to http
useradd: remove preinst script referring to recipe sysroot
useradd.bbclass: Handle COMPONENTS_DIR when restoring state
bitbake.conf: Add COMPONENTS_DIR for ${STAGING_DIR}-components
yocto-project-qs: Updated output for git clone of meta-intel.
yocto-project-qs: Updated git clone output for pyro poky.
ref-manual: Removed section on checking for build-time dependencies.
ref-manual, dev-manual: replaced "depexp" with "taskexp"
ref-manual: Removed text surrounding BB_SETSCENE_VERIFY_FUNCTION* vars
dev-manual: Cleaned up "Gdbserver" term
dev-manual: Updated a few occurrences of "dnf" to "DNF"
dev-manual: Changed "Dnf" to "DNF" for consistency
ref-manual: Added links for variables
ref-manual: Added 4 DISTRO_FEATURES* variable descriptions.
ref-manual, dev-manual: Completed first draft of 2.3 migration section.
ref-manual: Applied 2.3 Migration review comments.
ref-manual: Added new glossary entries for HOSTTOOLS* variables.

