Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB6DE01431
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 03:30:06 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V47Bs-0004LT-NR
	for yocto@yoctoproject.org; Tue, 30 Jul 2013 12:30:04 +0200
Received: from 220.227.185.53 ([220.227.185.53])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 12:30:04 +0200
Received: from kirankumar.bobbu by 220.227.185.53 with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 12:30:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: kiranbobbu <kirankumar.bobbu@smartplayin.com>
Date: Tue, 30 Jul 2013 10:27:04 +0000 (UTC)
Message-ID: <loom.20130730T122304-969@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 220.227.185.53 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/28.0.1500.71 Safari/537.36)
Subject: build crash
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
X-List-Received-Date: Tue, 30 Jul 2013 10:30:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

I got following errors while building the yocto layers:
please help

Build Configuration:
BB_VERSION        = "1.17.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "omap5-evm"
DISTRO            = "arago"
DISTRO_VERSION    = "2013.06"
TUNE_FEATURES     = "${TUNE_FEATURES_tune-cortexa8thf-neon}"
TARGET_FPU        = "soft"
meta-arago-distro 
meta-arago-extras = "(nobranch):d08f424bd078d9a0c88a94ac92f859c8efaf06d4"
toolchain-layer   
meta-oe           = "(nobranch):f00028caf257e386c0f3ae46bd4b3ba53dd0729d"
meta-ti           = "(nobranch):af9632689392ea03fd14879ca33b3c6c6ed2e347"
meta-linaro       = "(nobranch):d0558fa4304592622423582f8b464e1c22cfe6f1"
meta              = "(nobranch):0785489d558c34cacf5cb349949a15e27084efbf"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL ftp://ftp.ossp.org/pkg/lib/uuid/uuid-
1.6.2.tar.gz, attempting MIRRORS if available
WARNING: Failed to fetch URL ftp://ftp.gnu.org/gnu/binutils/binutils-
2.20.1a.tar.bz2, attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
Error in server response, closing control connection.
Error in server response, closing control connection.

ERROR: Function failed: Fetcher failure for URL: 
'ftp://ftp.gnu.org/gnu/binutils/binutils-2.20.1a.tar.bz2'. Unable to fetch 
URL from any source.
ERROR: Logfile of failure stored in: /home/bkiran/ti-glsdk_omap5-
uevm_6_01_00_01/yocto-layers/build/arago-tmp-external-linaro-
toolchain/work/x86_64-linux/binutils-native-2.20.1-
r9/temp/log.do_fetch.31242
ERROR: Task 527 (virtual:native:/home/bkiran/ti-glsdk_omap5-
uevm_6_01_00_01/yocto-layers/sources/meta-arago/meta-arago-extras/recipes-
devtools/binutils/binutils_2.20.1.bb, do_fetch) failed with exit code '1'


thanks 
kiran 


