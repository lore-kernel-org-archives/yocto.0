Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62D66E00B5F; Sun, 14 Jan 2018 22:06:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50937E007B7
	for <yocto@yoctoproject.org>; Sun, 14 Jan 2018 22:06:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w0F66Q1v019262
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 14 Jan 2018 22:06:26 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Sun, 14 Jan 2018 22:06:21 -0800
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 15 Jan 2018 13:44:44 +0800
Message-ID: <20180115054444.4866-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] cluster-glue: update EXTRA_OECONF and RDEPENDS
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
X-List-Received-Date: Mon, 15 Jan 2018 06:06:28 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

cluster-glue refers to some resources located in $OCF_ROOT_DIR which is
provided by package cluster-resource-agents. But these resources are
installed to ${libdir}/ocf by previous commit. So update EXTRA_OECONF to
set OCF_ROOT_DIR with ${libdir}/ocf too.

Update RDEPENDS of ${PN}-lrmtest as well.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index dfd6a14..c8a3ff6 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -38,6 +38,7 @@ PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir},
 EXTRA_OECONF = "--with-daemon-user=${HA_USER} \
                 --with-daemon-group=${HA_GROUP} \
                 --disable-fatal-warnings \
+                --with-ocf-root=${libdir}/ocf \
                "
 
 CACHED_CONFIGUREVARS="ac_cv_path_XML2CONFIG=0"
@@ -135,3 +136,4 @@ RDEPENDS_${PN} += "perl"
 RDEPENDS_${PN}-plugin-stonith2 += "bash"
 RDEPENDS_${PN}-plugin-stonith-external += "bash python perl"
 RDEPENDS_${PN}-plugin-stonith2-ribcl += "python"
+RDEPENDS_${PN}-lrmtest += "${VIRTUAL-RUNTIME_getopt} ${PN}-plugin-raexec"
-- 
2.14.1


