Return-Path: <jinliang.li@linux.alibaba.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D14ABE015B5; Wed,  6 Jun 2018 07:13:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [115.124.30.132 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from out30-132.freemail.mail.aliyun.com
	(out30-132.freemail.mail.aliyun.com [115.124.30.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D058E00DC3
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 07:13:37 -0700 (PDT)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R151e4; CH=green;
	FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04446;
	MF=jinliang.li@linux.alibaba.com; NM=1; PH=DS; RN=2; SR=0;
	TI=SMTPD_---0T2IXHXJ_1528294099; 
Received: from localhost(mailfrom:jinliang.li@linux.alibaba.com
	fp:SMTPD_---0T2IXHXJ_1528294099) by smtp.aliyun-inc.com(127.0.0.1);
	Wed, 06 Jun 2018 22:08:25 +0800
From: Jinliang Li <jinliang.li@linux.alibaba.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Jun 2018 22:06:53 +0800
Message-Id: <1528294013-17960-3-git-send-email-jinliang.li@linux.alibaba.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1528294013-17960-1-git-send-email-jinliang.li@linux.alibaba.com>
References: <1528294013-17960-1-git-send-email-jinliang.li@linux.alibaba.com>
X-Mailman-Approved-At: Thu, 07 Jun 2018 08:19:20 -0700
Cc: Jinliang Li <jinliang.li@linux.alibaba.com>
Subject: [meta-security][PATCH 2/2] Fix build issue for apparmor when systemd is used
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
X-List-Received-Date: Wed, 06 Jun 2018 14:13:38 -0000

When systemd is used as system init manager, there is a build issue complains
"can't found apparmor.service". This patch fix it.

Signed-off-by: Jinliang Li <jinliang.li@linux.alibaba.com>
---
 recipes-security/AppArmor/apparmor_2.11.0.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-security/AppArmor/apparmor_2.11.0.bb b/recipes-security/AppArmor/apparmor_2.11.0.bb
index a83c2c3..fc9b614 100644
--- a/recipes-security/AppArmor/apparmor_2.11.0.bb
+++ b/recipes-security/AppArmor/apparmor_2.11.0.bb
@@ -104,6 +104,11 @@ do_install () {
 
 	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
 	install ${WORKDIR}/functions ${D}/lib/apparmor
+	if [ "${VIRTUAL-RUNTIME_init_manager}" = "systemd" ]; then
+		install -d ${D}${systemd_system_unitdir}
+		install ${WORKDIR}/apparmor.service \
+			${D}${systemd_system_unitdir}
+	fi
 }
 
 do_compile_ptest () {
-- 
2.7.4


