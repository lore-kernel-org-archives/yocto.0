Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D487E00BB0; Tue, 20 Sep 2016 07:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21155E00B52
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:28:48 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id b184so3739589wma.3
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=slxURayg3DmnGC2wBtvhzchN14RF2eh9sItCDE84JVQ=;
	b=bYeCTiUhNLGxEp0D2WMdE14n7HrheiO/aZN84qDKWGTEIkG5Pfihv89EtJowLhFXrE
	CteRuloL9G6h02eikev4iFEVD1YgTZNtK0DmE2Kare+Gflz734xWohtW87Mg042Tr1sE
	oSvjuofRD1ZUIAITX15bch4i9KLTuTDzD9ajmi866+kjDuz9Nrx/ZEEHzSyf+zHX+NtX
	ZGkPz5o2+4nErA/o0Ok8izHSZ7bbYINsOiQ/jAmKwaSmWNtTgGEzOUhJqkHkdDg5zWMp
	LXYRhF8Va0VzOp+rByJSZ9NUQvI8cknmHpqF5StT14ozLsOaoG58BD4dhP1Rn9kq8uPR
	8Z3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=slxURayg3DmnGC2wBtvhzchN14RF2eh9sItCDE84JVQ=;
	b=ELTGhdCgTA+3HJg6JM6AmB90et88pFKSOMzwOSwg8mqnKDgI114eHC7HA0I2lYOqdb
	5Jl2H7hSTgUGzgIvEdoTsUsSOFEYgk2Z0nOyJ+U/ORMvPZtDM8cHVx5O02qUfPwgiA1/
	YIVxtM84covSwgw5dajXn9dr5TRQkR5Sm4G9R0Rs5JBbkmtvRLwYjbbQpBVXN6aoFiLc
	yjZ4/8yZdkgGOuUCcBmQ59vlHxhko97FNCA66hEl+zVIZdwsxbHv34G6OZ30TVfnwbwf
	3Efz7im9z2qtkHfVIIDQoHGiKJhl65xt2Tegy0tfdnKKHpsz3NMDKvwwksIcFTN0UNmr
	LhsQ==
X-Gm-Message-State: AE9vXwPr5GpeMDXCmd+9z6ECNdVdTksQDhnSMrEG06BmC/bP2IH8uG+XzPZyApNYoLHBQQ==
X-Received: by 10.194.89.9 with SMTP id bk9mr28255427wjb.185.1474381727624;
	Tue, 20 Sep 2016 07:28:47 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	xy4sm28716637wjc.2.2016.09.20.07.28.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 20 Sep 2016 07:28:46 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Sep 2016 19:58:35 +0530
Message-Id: <1474381715-20770-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 2/3] cleanup 'virtual/refpolicy' & switch to 'refpolicy'
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
X-List-Received-Date: Tue, 20 Sep 2016 14:29:09 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

this change drop complete use of 'virtual/refpolicy' & switch to 'refpolicy'
use, the mix use of both results in mismatching policy varient selection.

with use of 'virtual/refpolicy' at config. level, when we try to switch to
other policy varients using 'refpolicy' at local.conf level we
continue to get the policy varient set at config. level, so drop the use of
'virtual/refpolicy' & switch to 'refpolicy'.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 conf/distro/oe-selinux.conf                     | 2 +-
 recipes-security/refpolicy/refpolicy_common.inc | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/conf/distro/oe-selinux.conf b/conf/distro/oe-selinux.conf
index 0011d45..f4574d0 100644
--- a/conf/distro/oe-selinux.conf
+++ b/conf/distro/oe-selinux.conf
@@ -2,4 +2,4 @@ DISTRO = "oe-selinux"
 DISTROOVERRIDES .= ":selinux"
 
 DISTRO_FEATURES_append = " acl xattr pam selinux"
-PREFERRED_PROVIDER_virtual/refpolicy ?= "refpolicy-mls"
+PREFERRED_PROVIDER_refpolicy ?= "refpolicy-mls"
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index a9dc466..1017d29 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -5,7 +5,7 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
-PROVIDES += "virtual/refpolicy"
+PROVIDES += "refpolicy"
 RPROVIDES_${PN} += "refpolicy"
 
 # Specific config files for Poky
-- 
1.9.1


