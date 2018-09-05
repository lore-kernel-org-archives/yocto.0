Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A696DE00A4F; Tue,  4 Sep 2018 17:18:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3283E00A38
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w850IU7S017428
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:31 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:28 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:11 +0800
Message-ID: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 00/16] selinux: upgrade 2.7 -> 2.8
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
X-List-Received-Date: Wed, 05 Sep 2018 00:18:35 -0000
Content-Type: text/plain



Yi Zhao (16):
  selinux: uprev inc files to 2.8 (20180524)
  libsepol: uprev to 2.8 (20180524)
  libselinux: uprev to 2.8 (20180524)
  libsemanage: uprev to 2.8 (20180524)
  checkpolicy: uprev to 2.8 (20180524)
  secilc: uprev to 2.8 (20180524)
  policycoreutils: uprev to 2.8 (20180524)
  mcstrans: uprev to 2.8 (20180524)
  restorecond: uprev to 2.8 (20180524)
  selinux-sandbox: uprev to 2.8 (20180524)
  selinux-python: uprev to 2.8 (20180524)
  semodule-utils: uprev to 2.8 (20180524)
  selinux-dbus: uprev to 2.8 (20180524)
  selinux-gui: uprev to 2.8 (20180524)
  packagegroup-selinux-policycoreutils: remove
    semodule-utils-semodule-deps
  audit: uprev to 2.8.4

 .../audit/{audit_2.7.6.bb => audit_2.8.4.bb}       | 18 +++++++-------
 .../packagegroup-selinux-policycoreutils.bb        |  1 -
 recipes-security/selinux/checkpolicy.inc           |  1 -
 recipes-security/selinux/checkpolicy_2.7.bb        |  7 ------
 recipes-security/selinux/checkpolicy_2.8.bb        |  7 ++++++
 recipes-security/selinux/libselinux.inc            |  2 +-
 ...-Makefile-fix-includedir-in-libselinux.pc.patch | 20 ++++++++-------
 .../{libselinux_2.7.bb => libselinux_2.8.bb}       |  6 ++---
 recipes-security/selinux/libsemanage.inc           | 12 ++-------
 ...-Makefile-fix-includedir-in-libselinux.pc.patch | 20 ++++++++-------
 .../{libsemanage_2.7.bb => libsemanage_2.8.bb}     |  6 ++---
 ...rc-Makefile-fix-includedir-in-libsepol.pc.patch | 13 +++++-----
 recipes-security/selinux/libsepol_2.7.bb           |  9 -------
 recipes-security/selinux/libsepol_2.8.bb           |  9 +++++++
 recipes-security/selinux/mcstrans.inc              |  1 -
 recipes-security/selinux/mcstrans_2.7.bb           |  7 ------
 recipes-security/selinux/mcstrans_2.8.bb           |  7 ++++++
 recipes-security/selinux/policycoreutils.inc       |  8 +++---
 ...policycoreutils-fix-fixfiles-install-path.patch | 29 ++++++++++++++++++++++
 ...icycoreutils-fix-load_policy-install-path.patch | 29 ++++++++++++++++++++++
 .../policycoreutils-loadpolicy-symlink.patch       | 19 --------------
 recipes-security/selinux/policycoreutils_2.7.bb    |  8 ------
 recipes-security/selinux/policycoreutils_2.8.bb    |  8 ++++++
 recipes-security/selinux/restorecond.inc           |  4 ---
 recipes-security/selinux/restorecond_2.7.bb        |  7 ------
 recipes-security/selinux/restorecond_2.8.bb        |  7 ++++++
 recipes-security/selinux/secilc_2.7.bb             |  7 ------
 recipes-security/selinux/secilc_2.8.bb             |  7 ++++++
 recipes-security/selinux/selinux-dbus_2.7.bb       |  7 ------
 recipes-security/selinux/selinux-dbus_2.8.bb       |  7 ++++++
 recipes-security/selinux/selinux-gui_2.7.bb        |  7 ------
 recipes-security/selinux/selinux-gui_2.8.bb        |  7 ++++++
 recipes-security/selinux/selinux-python.inc        |  2 +-
 .../selinux-python/fix-sepolicy-install-path.patch | 23 +++++++++--------
 recipes-security/selinux/selinux-python_2.7.bb     |  7 ------
 recipes-security/selinux/selinux-python_2.8.bb     |  7 ++++++
 recipes-security/selinux/selinux-sandbox_2.7.bb    |  7 ------
 recipes-security/selinux/selinux-sandbox_2.8.bb    |  7 ++++++
 .../{selinux_20170804.inc => selinux_20180524.inc} |  2 +-
 recipes-security/selinux/selinux_common.inc        |  9 ++++---
 recipes-security/selinux/semodule-utils.inc        |  2 --
 recipes-security/selinux/semodule-utils_2.7.bb     |  7 ------
 recipes-security/selinux/semodule-utils_2.8.bb     |  7 ++++++
 43 files changed, 209 insertions(+), 178 deletions(-)
 rename recipes-security/audit/{audit_2.7.6.bb => audit_2.8.4.bb} (91%)
 delete mode 100644 recipes-security/selinux/checkpolicy_2.7.bb
 create mode 100644 recipes-security/selinux/checkpolicy_2.8.bb
 rename recipes-security/selinux/{libselinux_2.7.bb => libselinux_2.8.bb} (72%)
 rename recipes-security/selinux/{libsemanage_2.7.bb => libsemanage_2.8.bb} (76%)
 delete mode 100644 recipes-security/selinux/libsepol_2.7.bb
 create mode 100644 recipes-security/selinux/libsepol_2.8.bb
 delete mode 100644 recipes-security/selinux/mcstrans_2.7.bb
 create mode 100644 recipes-security/selinux/mcstrans_2.8.bb
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fix-fixfiles-install-path.patch
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fix-load_policy-install-path.patch
 delete mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
 delete mode 100644 recipes-security/selinux/policycoreutils_2.7.bb
 create mode 100644 recipes-security/selinux/policycoreutils_2.8.bb
 delete mode 100644 recipes-security/selinux/restorecond_2.7.bb
 create mode 100644 recipes-security/selinux/restorecond_2.8.bb
 delete mode 100644 recipes-security/selinux/secilc_2.7.bb
 create mode 100644 recipes-security/selinux/secilc_2.8.bb
 delete mode 100644 recipes-security/selinux/selinux-dbus_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-dbus_2.8.bb
 delete mode 100644 recipes-security/selinux/selinux-gui_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-gui_2.8.bb
 delete mode 100644 recipes-security/selinux/selinux-python_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-python_2.8.bb
 delete mode 100644 recipes-security/selinux/selinux-sandbox_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-sandbox_2.8.bb
 rename recipes-security/selinux/{selinux_20170804.inc => selinux_20180524.inc} (84%)
 delete mode 100644 recipes-security/selinux/semodule-utils_2.7.bb
 create mode 100644 recipes-security/selinux/semodule-utils_2.8.bb

-- 
2.7.4


