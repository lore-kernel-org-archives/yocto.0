Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F30B0E00E2F; Wed, 13 Nov 2019 17:49:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 986BBE00D86
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1n40B014423
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:04 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:03 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:42 +0800
Message-ID: <20191114014901.22862-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 00/19] selinux: upgrade 2.8 -> 2.9
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
X-List-Received-Date: Thu, 14 Nov 2019 01:49:13 -0000
Content-Type: text/plain

* Upgrade to 2.9
* Switch to python3
* Refresh patches

Yi Zhao (19):
  python-ipy: upgrade to 1.00 and add python3 version
  selinux: uprev inc files to 2.9 (20190315)
  libsepol: uprev to 2.9 (20190315)
  libselinux: uprev to 2.9 (20190315)
  libselinux-python: add recipe
  libsemanage: uprev to 2.9 (20190315)
  checkpolicy: uprev to 2.9 (20190315)
  secilc: uprev to 2.9 (20190315)
  policycoreutils: uprev to 2.9 (20190315)
  mcstrans: uprev to 2.9 (20190315)
  restorecond: uprev to 2.9 (20190315)
  selinux-python: uprev to 2.9 (20190315)
  selinux-dbus: uprev to 2.9 (20190315)
  selinux-sandbox: uprev to 2.9 (20190315)
  selinux-gui: uprev to 2.9 (20190315)
  semodule-utils: uprev to 2.9 (20190315)
  selinux-init: fix build error when enable usrmerge feature
  setools: upgrade 4.1.1 -> 4.2.2
  audit: switch to python3

 recipes-devtools/python/python-ipy.inc        |  18 +++
 recipes-devtools/python/python-ipy_0.83.bb    |  32 ------
 recipes-devtools/python/python-ipy_1.00.bb    |   2 +
 recipes-devtools/python/python3-ipy_1.00.bb   |   2 +
 .../audit/audit/audit-python-configure.patch  |  46 --------
 .../audit/audit/audit-python.patch            |  64 -----------
 .../audit/fix-swig-host-contamination.patch   |  56 ----------
 recipes-security/audit/audit_2.8.5.bb         |  11 +-
 recipes-security/selinux/checkpolicy_2.8.bb   |   7 --
 recipes-security/selinux/checkpolicy_2.9.bb   |   7 ++
 .../selinux/libselinux-python.inc             |  40 +++++++
 ...elinux_2.8.bb => libselinux-python_2.9.bb} |  14 ++-
 recipes-security/selinux/libselinux.inc       |  24 +---
 ...t-define-gettid-if-glibc-2.30-is-use.patch |  60 ----------
 ...file-fix-includedir-in-libselinux.pc.patch |  28 -----
 .../{libselinux_2.8.bb => libselinux_2.9.bb}  |  10 +-
 recipes-security/selinux/libsemanage.inc      |  26 ++---
 ...file-fix-includedir-in-libselinux.pc.patch |  28 -----
 ...anage-Fix-execve-segfaults-on-Ubuntu.patch |  12 +-
 ...anage-allow-to-disable-audit-support.patch |  26 +++--
 ...anage-define-FD_CLOEXEC-as-necessary.patch |  16 +--
 ...-disable-expand-check-on-policy-load.patch |   6 +-
 ...age-drop-Wno-unused-but-set-variable.patch |  12 +-
 .../libsemanage-fix-path-nologin.patch        |  39 -------
 recipes-security/selinux/libsemanage_2.8.bb   |  18 ---
 recipes-security/selinux/libsemanage_2.9.bb   |  15 +++
 ...kefile-fix-includedir-in-libsepol.pc.patch |  29 -----
 recipes-security/selinux/libsepol_2.8.bb      |   9 --
 recipes-security/selinux/libsepol_2.9.bb      |   7 ++
 recipes-security/selinux/mcstrans.inc         |   4 +-
 .../mcstrans/mcstrans-de-bashify.patch        |  23 ++--
 ...tch => mcstrans-fix-the-init-script.patch} |  14 ++-
 recipes-security/selinux/mcstrans_2.8.bb      |   7 --
 recipes-security/selinux/mcstrans_2.9.bb      |   7 ++
 recipes-security/selinux/policycoreutils.inc  |  16 +--
 .../selinux/policycoreutils_2.8.bb            |   8 --
 .../selinux/policycoreutils_2.9.bb            |   8 ++
 ...icycoreutils-make-O_CLOEXEC-optional.patch |  29 +++--
 recipes-security/selinux/restorecond_2.8.bb   |   7 --
 recipes-security/selinux/restorecond_2.9.bb   |   7 ++
 recipes-security/selinux/secilc_2.8.bb        |   7 --
 recipes-security/selinux/secilc_2.9.bb        |   7 ++
 recipes-security/selinux/selinux-dbus.inc     |   2 +-
 recipes-security/selinux/selinux-dbus_2.8.bb  |   7 --
 recipes-security/selinux/selinux-dbus_2.9.bb  |   7 ++
 recipes-security/selinux/selinux-gui.inc      |   2 +-
 recipes-security/selinux/selinux-gui_2.8.bb   |   7 --
 recipes-security/selinux/selinux-gui_2.9.bb   |   7 ++
 recipes-security/selinux/selinux-initsh.inc   |   5 +-
 recipes-security/selinux/selinux-python.inc   |  62 +++++------
 .../fix-TypeError-for-seobject.py.patch       |  30 -----
 .../fix-sepolicy-install-path.patch           |   8 +-
 ...ess-ValueError-for-sepolicy-seobject.patch |  47 --------
 .../selinux/selinux-python_2.8.bb             |   7 --
 .../selinux/selinux-python_2.9.bb             |   7 ++
 recipes-security/selinux/selinux-sandbox.inc  |  10 +-
 .../selinux-sandbox/sandbox-de-bashify.patch  |   9 +-
 .../selinux/selinux-sandbox_2.8.bb            |   7 --
 .../selinux/selinux-sandbox_2.9.bb            |   7 ++
 recipes-security/selinux/selinux_20180524.inc |   5 -
 recipes-security/selinux/selinux_20190315.inc |   8 ++
 recipes-security/selinux/selinux_common.inc   |   4 +-
 .../selinux/semodule-utils_2.8.bb             |   7 --
 .../selinux/semodule-utils_2.9.bb             |   7 ++
 ...e-with-GCC-7-due-to-possible-truncat.patch | 105 ------------------
 ...ss-compiling-errors-for-powerpc-mips.patch |  35 ------
 .../setools4-fixes-for-cross-compiling.patch  |  34 +++---
 .../{setools_4.1.1.bb => setools_4.2.2.bb}    |  14 +--
 68 files changed, 348 insertions(+), 910 deletions(-)
 create mode 100644 recipes-devtools/python/python-ipy.inc
 delete mode 100644 recipes-devtools/python/python-ipy_0.83.bb
 create mode 100644 recipes-devtools/python/python-ipy_1.00.bb
 create mode 100644 recipes-devtools/python/python3-ipy_1.00.bb
 delete mode 100644 recipes-security/audit/audit/audit-python-configure.patch
 delete mode 100644 recipes-security/audit/audit/audit-python.patch
 delete mode 100644 recipes-security/audit/audit/fix-swig-host-contamination.patch
 delete mode 100644 recipes-security/selinux/checkpolicy_2.8.bb
 create mode 100644 recipes-security/selinux/checkpolicy_2.9.bb
 create mode 100644 recipes-security/selinux/libselinux-python.inc
 copy recipes-security/selinux/{libselinux_2.8.bb => libselinux-python_2.9.bb} (50%)
 delete mode 100644 recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
 delete mode 100644 recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
 rename recipes-security/selinux/{libselinux_2.8.bb => libselinux_2.9.bb} (50%)
 delete mode 100644 recipes-security/selinux/libsemanage/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
 delete mode 100644 recipes-security/selinux/libsemanage/libsemanage-fix-path-nologin.patch
 delete mode 100644 recipes-security/selinux/libsemanage_2.8.bb
 create mode 100644 recipes-security/selinux/libsemanage_2.9.bb
 delete mode 100644 recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
 delete mode 100644 recipes-security/selinux/libsepol_2.8.bb
 create mode 100644 recipes-security/selinux/libsepol_2.9.bb
 rename recipes-security/selinux/mcstrans/{0001-mcstrans-fix-the-init-script.patch => mcstrans-fix-the-init-script.patch} (69%)
 delete mode 100644 recipes-security/selinux/mcstrans_2.8.bb
 create mode 100644 recipes-security/selinux/mcstrans_2.9.bb
 delete mode 100644 recipes-security/selinux/policycoreutils_2.8.bb
 create mode 100644 recipes-security/selinux/policycoreutils_2.9.bb
 delete mode 100644 recipes-security/selinux/restorecond_2.8.bb
 create mode 100644 recipes-security/selinux/restorecond_2.9.bb
 delete mode 100644 recipes-security/selinux/secilc_2.8.bb
 create mode 100644 recipes-security/selinux/secilc_2.9.bb
 delete mode 100644 recipes-security/selinux/selinux-dbus_2.8.bb
 create mode 100644 recipes-security/selinux/selinux-dbus_2.9.bb
 delete mode 100644 recipes-security/selinux/selinux-gui_2.8.bb
 create mode 100644 recipes-security/selinux/selinux-gui_2.9.bb
 delete mode 100644 recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
 delete mode 100644 recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
 delete mode 100644 recipes-security/selinux/selinux-python_2.8.bb
 create mode 100644 recipes-security/selinux/selinux-python_2.9.bb
 delete mode 100644 recipes-security/selinux/selinux-sandbox_2.8.bb
 create mode 100644 recipes-security/selinux/selinux-sandbox_2.9.bb
 delete mode 100644 recipes-security/selinux/selinux_20180524.inc
 create mode 100644 recipes-security/selinux/selinux_20190315.inc
 delete mode 100644 recipes-security/selinux/semodule-utils_2.8.bb
 create mode 100644 recipes-security/selinux/semodule-utils_2.9.bb
 delete mode 100644 recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
 delete mode 100644 recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
 rename recipes-security/setools/{setools_4.1.1.bb => setools_4.2.2.bb} (61%)

-- 
2.17.1


