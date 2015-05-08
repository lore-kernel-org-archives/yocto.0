Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF0BE009EF; Fri,  8 May 2015 13:13:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A5D1E009D2
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 13:13:35 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YqoeM-0002tj-UX from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 08 May 2015 13:13:35 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 8 May 2015 21:13:33 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 May 2015 23:13:25 +0300
Message-ID: <1431116010-14977-5-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
References: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 05/10] cluster-glue: provide tmpfiles configuration
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

provide systemd-tmpfiles configuration for distributions using systemd.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 .../recipes-cgl/cluster-glue/cluster-glue/tmpfiles            |  7 +++++++
 .../recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb            | 11 ++++++++++-
 2 files changed, 17 insertions(+), 1 deletion(-)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles
new file mode 100644
index 0000000..252e13f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/tmpfiles
@@ -0,0 +1,7 @@
+d /var/lib/heartbeat 0755 root root -
+d /var/lib/heartbeat/pengine 0750 hacluster haclient -
+d /var/lib/heartbeat/cores 0755 hacluster haclient -
+d /var/lib/heartbeat/cores/hacluster 0700 hacluster haclient -
+d /var/lib/heartbeat/cores/root 0700 root root -
+d /var/lib/heartbeat/cores/nobody 0700 nobody nogroup -
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
index adf3b48..f1b4a78 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
@@ -13,6 +13,7 @@ SRC_URI = " \
     file://glue-remove-getpid-check.patch \
     file://fix-const-cast.patch \
     file://volatiles \
+    file://tmpfiles \
 	"
 SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
 SRC_URI[md5sum] = "d2b6f798e58ef2497526e404b8ad640a"
@@ -39,10 +40,18 @@ do_configure_prepend() {
 do_install_append() {
 	install -d ${D}${sysconfdir}/default/volatiles
 	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/04_cluster-glue
+	install -d ${D}${sysconfdir}/tmpfiles.d
+	install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
 }
 
 pkg_postinst_${PN} () {
-	/etc/init.d/populate-volatile.sh update
+	if [ -z "$D" ]; then
+		if type systemd-tmpfiles >/dev/null; then
+			systemd-tmpfiles --create
+		elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
+			${sysconfdir}/init.d/populate-volatile.sh update
+		fi
+	fi
 }
 
 PACKAGES += "\
-- 
2.1.4


