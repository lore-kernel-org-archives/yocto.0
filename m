Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 829BDE0094F
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 21:51:23 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s245pNYf028216
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 3 Mar 2014 21:51:23 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Mon, 3 Mar 2014 21:51:22 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 4 Mar 2014 13:52:30 +0800
Message-ID: <6946f467fda9e75537f33d7f68c516c4541d3597.1393912246.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1393912246.git.rongqing.li@windriver.com>
References: <cover.1393912246.git.rongqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] audit: fix the permission of configuration file
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
X-List-Received-Date: Tue, 04 Mar 2014 05:51:23 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

A ordinary use should not to access auditd configuration files

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 recipes-security/audit/audit_2.3.2.bb |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/audit/audit_2.3.2.bb
index eafcd30..4a9c954 100644
--- a/recipes-security/audit/audit_2.3.2.bb
+++ b/recipes-security/audit/audit_2.3.2.bb
@@ -88,4 +88,7 @@ do_install_append() {
 	# install systemd unit files
 	install -d ${D}${systemd_unitdir}/system
 	install -m 0644 ${WORKDIR}/auditd.service ${D}${systemd_unitdir}/system
+
+	chmod 750 ${D}/etc/audit ${D}/etc/audit/rules.d
+	chmod 640 ${D}/etc/audit/auditd.conf ${D}/etc/audit/rules.d/audit.rules
 }
-- 
1.7.10.4


