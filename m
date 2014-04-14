Return-Path: <Hongxu.Jia@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B141E00B80
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:53:55 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3E1rsis017816
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:53:55 -0700 (PDT)
Received: from pek-hjia-d1.corp.ad.wrs.com (128.224.162.194) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Sun, 13 Apr 2014 18:53:54 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<randy.macleod@windriver.com>
Date: Mon, 14 Apr 2014 09:53:43 +0800
Message-ID: <cover.1397439775.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Subject: [PATCH 0/8][meta-selinux] fix PRINC QA Warning
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
X-List-Received-Date: Mon, 14 Apr 2014 01:53:55 -0000
Content-Type: text/plain

The following changes since commit 0362287928bc0a58b755488ebd74441c28eeeee2:

  audit: Fix lack of a default audit.rules (2014-04-07 09:55:49 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib hongxu/fix-selinux-princ
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=hongxu/fix-princ

Hongxu Jia (8):
  refpolicy: remove PRINC warning
  checkpolicy: remove PRINC warning
  libselinux: remove PRINC warning
  libsemanage: remove PRINC warning
  libsepol: remove PRINC warning
  sepolgen: remove PRINC warning
  libpcre_8.34.bbappend: remove PRINC warning
  policycoreutils: remove PRINC warning

 recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb      | 2 +-
 recipes-security/refpolicy/refpolicy-mls_2.20130424.bb      | 2 +-
 recipes-security/refpolicy/refpolicy-standard_2.20130424.bb | 2 +-
 recipes-security/refpolicy/refpolicy_2.20130424.inc         | 2 --
 recipes-security/refpolicy/refpolicy_common.inc             | 2 --
 recipes-security/selinux/checkpolicy.inc                    | 2 --
 recipes-security/selinux/checkpolicy_2.2.bb                 | 2 +-
 recipes-security/selinux/checkpolicy_git.bb                 | 2 +-
 recipes-security/selinux/libselinux.inc                     | 2 --
 recipes-security/selinux/libselinux_2.2.2.bb                | 2 +-
 recipes-security/selinux/libselinux_git.bb                  | 2 +-
 recipes-security/selinux/libsemanage.inc                    | 2 --
 recipes-security/selinux/libsemanage_2.2.bb                 | 2 +-
 recipes-security/selinux/libsemanage_git.bb                 | 2 +-
 recipes-security/selinux/libsepol.inc                       | 2 --
 recipes-security/selinux/libsepol_2.2.bb                    | 2 +-
 recipes-security/selinux/libsepol_git.bb                    | 2 +-
 recipes-security/selinux/policycoreutils.inc                | 2 --
 recipes-security/selinux/policycoreutils_git.bb             | 2 +-
 recipes-security/selinux/sepolgen.inc                       | 2 --
 recipes-security/selinux/sepolgen_1.2.1.bb                  | 2 +-
 recipes-security/selinux/sepolgen_git.bb                    | 2 +-
 recipes-support/libpcre/libpcre_8.34.bbappend               | 2 --
 23 files changed, 14 insertions(+), 32 deletions(-)

-- 
1.8.1.2


