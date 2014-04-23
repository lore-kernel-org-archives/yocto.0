Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34B82E00716
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:12 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3N7gBhi007651
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:42:12 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Wed, 23 Apr 2014 00:42:11 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 23 Apr 2014 03:42:05 -0400
Message-ID: <2fa68153edceffa23dcd12989cf13652392f0b6e.1398238471.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1398238471.git.wenzong.fan@windriver.com>
References: <cover.1398238471.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/4] always force to restore file contexts for /var/lib
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
X-List-Received-Date: Wed, 23 Apr 2014 07:42:12 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-core/initscripts/initscripts_1.0.bbappend |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/initscripts/initscripts_1.0.bbappend b/recipes-core/initscripts/initscripts_1.0.bbappend
index b8172c0..7ec66ea 100644
--- a/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -3,6 +3,6 @@ PR .= ".3"
 do_install_append () {
 	cat <<-EOF >> ${D}${sysconfdir}/init.d/populate-volatile.sh
 touch /var/log/lastlog
-test ! -x /sbin/restorecon || /sbin/restorecon -RF /var/volatile/ /run
+test ! -x /sbin/restorecon || /sbin/restorecon -RF /var/volatile/ /var/lib /run
 EOF
 }
-- 
1.7.9.5


