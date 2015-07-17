Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6326FE00A26; Fri, 17 Jul 2015 02:07:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	UPPERCASE_50_75 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 UPPERCASE_50_75 message body is 50-75% uppercase
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DBABBE009D7
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 02:07:45 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 17 Jul 2015 11:07:39 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 5E4CB28E781;
	Fri, 17 Jul 2015 11:07:39 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Jul 2015 11:07:36 +0200
Message-ID: <1437124057-34410-5-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1437124057-34410-1-git-send-email-Alexandru.Vaduva@enea.com>
References: <1437124057-34410-1-git-send-email-Alexandru.Vaduva@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH] Update SELinux configuration.
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
X-List-Received-Date: Fri, 17 Jul 2015 09:07:49 -0000
Content-Type: text/plain

From: Siva Borra <siva.borra@enea.com>

Update SELinux with all dependant confuguation
options enabled/disabled.

[LXCR-5167]

Signed-off-by: Siva Borra <siva.borra@enea.com>
Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 .../linux/files/cfg/00014-selinux.cfg              | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
index 377ec83..ce7d61d 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
@@ -1 +1,30 @@
+CONFIG_DEFAULT_SECURITY_SELINUX=y
+CONFIG_SECURITY=y
+CONFIG_SYSFS=y
+CONFIG_SECURITY_NETWORK=y
+CONFIG_AUDIT=y
+CONFIG_NET=y
+CONFIG_INET=y
 CONFIG_SECURITY_SELINUX=y
+CONFIG_SECURITY_NETWORK_XFRM=y
+CONFIG_NETWORK_SECMARK=y
+CONFIG_EXT2_FS_XATTR=y
+CONFIG_EXT3_FS_XATTR=y
+CONFIG_EXT4_FS_XATTR=y
+CONFIG_REISERFS_FS_XATTR=y
+CONFIG_JFFS2_FS_XATTR=y
+CONFIG_EXT2_FS_SECURITY=y
+CONFIG_EXT3_FS_SECURITY=y
+CONFIG_EXT4_FS_SECURITY=y
+CONFIG_JFS_SECURITY=y
+CONFIG_REISERFS_FS_SECURITY=y
+CONFIG_JFFS2_FS_SECURITY=y
+CONFIG_SECURITYFS=y
+CONFIG_SECURITY_SELINUX_BOOTPARAM=y
+CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=1
+CONFIG_SECURITY_SELINUX_DISABLE=y
+CONFIG_SECURITY_SELINUX_DEVELOP=y
+CONFIG_SECURITY_SELINUX_AVC_STATS=y
+CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=1
+CONFIG_AUDIT_ARCH=n
+CONFIG_AUDIT_GENERIC=y
-- 
1.9.1


