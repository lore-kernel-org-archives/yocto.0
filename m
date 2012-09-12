Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17240E0146D
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:49:46 -0700 (PDT)
Received: from mail121-ch1-R.bigfish.com (10.43.68.237) by
	CH1EHSOBE016.bigfish.com (10.43.70.66) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:49:45 +0000
Received: from mail121-ch1 (localhost [127.0.0.1])	by
	mail121-ch1-R.bigfish.com (Postfix) with ESMTP id 90AB31E016C	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:49:45 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzz17326ah8275bh8275dhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail121-ch1 (localhost.localdomain [127.0.0.1]) by mail121-ch1
	(MessageSwitch) id 1347432583513832_15061;
	Wed, 12 Sep 2012 06:49:43 +0000 (UTC)
Received: from CH1EHSMHS041.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.239])	by mail121-ch1.bigfish.com (Postfix) with ESMTP id
	7A385240045	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 06:49:43 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS041.bigfish.com
	(10.43.69.250) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:49:42 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:49:40 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQM025013;
	Tue, 11 Sep 2012 23:49:38 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:18 +0800
Message-ID: <1347433590-8481-4-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 04/16] lio-utils: add lio-utils-4.0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 06:49:46 -0000
Content-Type: text/plain

From: Zhenhua Luo <b19537@freescale.com>

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 recipes-tools/lio-utils/lio-utils_4.0.bb |   48 ++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 recipes-tools/lio-utils/lio-utils_4.0.bb

diff --git a/recipes-tools/lio-utils/lio-utils_4.0.bb b/recipes-tools/lio-utils/lio-utils_4.0.bb
new file mode 100644
index 0000000..d461350
--- /dev/null
+++ b/recipes-tools/lio-utils/lio-utils_4.0.bb
@@ -0,0 +1,48 @@
+SUMMARY = "lio-utils"
+DESCRIPTION = "a simple low-level configuration tool set for the Target+iSCSI (LIO)"
+HOMEPAGE = "http://linux-iscsi.org/index.php/Lio-utils"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://debian/copyright;md5=c3ea231a32635cbb5debedf3e88aa3df"
+
+SRC_URI = "git://risingtidesystems.com/lio-utils.git;protocal=git"
+SRCREV = "lio-4.0"
+S = "${WORKDIR}/git"
+
+inherit distutils
+
+EXTRA_OEMAKE += "-C ${S}/tools PREFIX=${prefix} DESTDIR=${D}"
+
+# pass LDFLAGS to linker to avoid missing GNU_HASH QA errors
+TARGET_CC_ARCH += "${LDFLAGS}"
+do_compile() {
+    cd ${S}/tcm-py
+    distutils_do_compile
+
+    cd ${S}/lio-py
+    distutils_do_compile
+
+    if test -d ${S}/tools; then
+        oe_runmake
+    fi
+}
+
+do_install() {
+    cd ${S}/tcm-py
+    distutils_do_install
+        
+    cd ${S}/lio-py
+    distutils_do_install
+    
+    SITE_PACKAGES=${D}/${PYTHON_SITEPACKAGES_DIR}
+    [ ! -d ${D}/${sbindir} ] && install -d ${D}/${sbindir}
+    for var in tcm_node tcm_dump tcm_loop tcm_fabric lio_dump lio_node; do
+        chmod a+x ${SITE_PACKAGES}/${var}.py
+        [ ! -f ${D}/${sbindir}/${var} ] && ln -s ${PYTHON_SITEPACKAGES_DIR}/${var}.py ${D}/${sbindir}/${var}
+    done
+
+    if test -d ${S}/tools; then
+        oe_runmake install
+    fi
+}
+
+FILES_${PN} += "${sbindir}/*"
-- 
1.7.9.5



