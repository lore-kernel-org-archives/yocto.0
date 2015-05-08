Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83F74E00A00; Fri,  8 May 2015 13:13:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68987E00992
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 13:13:33 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YqoeL-0002tj-8Z from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 08 May 2015 13:13:33 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 8 May 2015 21:13:31 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 May 2015 23:13:22 +0300
Message-ID: <1431116010-14977-2-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
References: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 02/10] pacemaker: use useradd class to add required user and group
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
X-List-Received-Date: Fri, 08 May 2015 20:13:39 -0000
Content-Type: text/plain

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
index 43769bf..8bef6f4 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
@@ -32,7 +32,7 @@ SRC_URI = " \
 SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
 SRC_URI[md5sum] = "103fb2e804be3f8ace17021c5d9ad15d"
 SRC_URI[sha256sum] = "aabfc9ee1c66804151d973d0ed0323798ffebe49e1c2219fa804dc6898a69a1e"
-inherit autotools-brokensep python-dir pkgconfig
+inherit autotools-brokensep python-dir pkgconfig useradd
 
 S = "${WORKDIR}/pacemaker-1.0-Pacemaker-${PV}"
 
@@ -40,6 +40,10 @@ EXTRA_OECONF = "--with-ais --without-heartbeat --disable-fatal-warnings --disabl
 
 CFLAGS += "-I${STAGING_INCDIR}/heartbeat -lncurses"
 
+USERADD_PACKAGES = "${PN}"
+USERADD_PARAM_${PN} = "--home-dir=${localstatedir}/lib/heartbeat -g haclient -r hacluster"
+GROUPADD_PARAM_${PN} = "-r haclient"
+
 do_install_append() {
 	install -d ${D}${sysconfdir}/default/volatiles
 	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/06_pacemaker
@@ -49,9 +53,6 @@ do_install_append() {
 }
 
 pkg_postinst_${PN} () {
-	set -e
-	grep haclient /etc/group || addgroup haclient
-	grep hacluster /etc/passwd || adduser --disabled-password --home=${localstatedir}/lib/heartbeat --ingroup haclient -g "HA cluster" hacluster
 	/etc/init.d/populate-volatile.sh update
 }
 FILES_${PN}-doc += "${datadir}/pacemaker/crm_cli.txt ${datadir}/pacemaker/templates/"
-- 
2.1.4


