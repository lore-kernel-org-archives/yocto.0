Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 109C2E004F6
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 00:54:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0Q8sRJS017843
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 00:54:27 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 26 Jan 2014 00:54:27 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Sun, 26 Jan 2014 03:54:17 -0500
Message-ID: <0e828c6ffb65a89e397f8bdb370f8d6f6da69458.1390725931.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390725931.git.wenzong.fan@windriver.com>
References: <cover.1390725931.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 3/3] refpolicy: fix symlink policy.kern
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
X-List-Received-Date: Sun, 26 Jan 2014 08:54:28 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

It includes build host path, this does not work on target.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/refpolicy/refpolicy_common.inc |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index a71c5dd..6bf7830 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -109,4 +109,8 @@ EOF
 
 	# install policy headers
 	oe_runmake install-headers DESTDIR=${D}
+
+	# Fix symbol link policy.kern
+	link_path=`readlink -f ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/policy.kern`
+	ln -sf ../../policy/`basename $link_path` ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/policy.kern
 }
-- 
1.7.9.5


