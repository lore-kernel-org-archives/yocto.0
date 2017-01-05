Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A9FAE00405; Thu,  5 Jan 2017 00:23:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1ABCE00405
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:23:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v058NRHv006594
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2017 00:23:27 -0800
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 00:23:26 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Jan 2017 00:23:17 -0800
Message-ID: <cover.1483601828.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/9] selinux: uprev to 20161014
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
X-List-Received-Date: Thu, 05 Jan 2017 08:23:31 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Uprev selinux packages to 2.6 (20161014) and fix build issues.

The following changes since commit 02602ac9c1f3e61f11d90053c578575254fa6323:

  iproute2: make packageconfig selinux work (2016-11-01 09:20:37 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/selinux-2.6
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/selinux-2.6

Wenzong Fan (9):
  selinux: uprev include file to 20161014
  libsepol: uprev to 2.6 (20161014)
  libselinux: uprev to 2.6 (20161014)
  libsemanage: uprev to 2.6 (20161014)
  checkpolicy: uprev to 2.6 (20161014)
  policycoreutils: uprev to 2.6 (20161014)
  sepolgen: uprev to 2.6 (20161014)
  secilc: uprev to 2.6 (20161014)
  selinux_common: remove EXTRA_OEMAKE = "-e"

 recipes-security/selinux/checkpolicy_2.5.bb        |  7 --
 recipes-security/selinux/checkpolicy_2.6.bb        |  7 ++
 recipes-security/selinux/libselinux.inc            | 11 +---
 .../libselinux-make-O_CLOEXEC-optional.patch       | 77 +++++++++++-----------
 .../libselinux-only-mount-proc-if-necessary.patch  | 54 ---------------
 ...bselinux-procattr-return-einval-for-0-pid.patch | 47 -------------
 ...inux-procattr-return-error-on-invalid-pid.patch | 40 -----------
 .../{libselinux_2.5.bb => libselinux_2.6.bb}       |  9 +--
 .../{libsemanage_2.5.bb => libsemanage_2.6.bb}     |  6 +-
 .../selinux/{libsepol_2.5.bb => libsepol_2.6.bb}   |  6 +-
 ...-process-ValueError-for-sepolicy-seobject.patch | 34 +++++-----
 ...licycoreutils_2.5.bb => policycoreutils_2.6.bb} |  7 +-
 recipes-security/selinux/secilc_2.5.bb             |  7 --
 recipes-security/selinux/secilc_2.6.bb             |  7 ++
 .../{selinux_20160223.inc => selinux_20161014.inc} |  2 +-
 recipes-security/selinux/selinux_common.inc        |  5 --
 recipes-security/selinux/sepolgen_1.2.3.bb         |  7 --
 recipes-security/selinux/sepolgen_2.6.bb           |  7 ++
 18 files changed, 93 insertions(+), 247 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_2.5.bb
 create mode 100644 recipes-security/selinux/checkpolicy_2.6.bb
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch
 rename recipes-security/selinux/{libselinux_2.5.bb => libselinux_2.6.bb} (54%)
 rename recipes-security/selinux/{libsemanage_2.5.bb => libsemanage_2.6.bb} (78%)
 rename recipes-security/selinux/{libsepol_2.5.bb => libsepol_2.6.bb} (49%)
 rename recipes-security/selinux/{policycoreutils_2.5.bb => policycoreutils_2.6.bb} (68%)
 delete mode 100644 recipes-security/selinux/secilc_2.5.bb
 create mode 100644 recipes-security/selinux/secilc_2.6.bb
 rename recipes-security/selinux/{selinux_20160223.inc => selinux_20161014.inc} (84%)
 delete mode 100644 recipes-security/selinux/sepolgen_1.2.3.bb
 create mode 100644 recipes-security/selinux/sepolgen_2.6.bb

-- 
2.7.4


