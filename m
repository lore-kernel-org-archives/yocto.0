Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55F7EE00A01; Fri,  8 May 2015 13:13:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76832E009EF
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 13:13:36 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YqoeO-0002tj-27 from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 08 May 2015 13:13:36 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 8 May 2015 21:13:34 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 May 2015 23:13:27 +0300
Message-ID: <1431116010-14977-7-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
References: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 07/10] ocfs2-tools: properly handle systemd DISTRO_FEATURE
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
X-List-Received-Date: Fri, 08 May 2015 20:13:41 -0000
Content-Type: text/plain

Always inherit systemd bbclass (otherwise it is not pulled in even if
systemd is enabled). This makes few other settings in the recipe
unnecessary, thus they are dropped.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
index 4e171f4..1296fd6 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
@@ -42,11 +42,8 @@ do_compile_prepend() {
     done
 }
 
-inherit ${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+inherit systemd
 SYSTEMD_SERVICE_${PN} = "o2cb.service ocfs2.service"
-SYSTEMD_AUTO_ENABLE = "enable"
-
-FILES_${PN} += "${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','${systemd_unitdir}','', d)}"
 
 do_install() {
     install -d ${D}/etc/init.d
-- 
2.1.4


