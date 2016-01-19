Return-Path: <philip.balister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0D6CE00B9C; Tue, 19 Jan 2016 09:24:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E123E00B88
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 09:24:44 -0800 (PST)
Received: by mail-qk0-f193.google.com with SMTP id e124so20034327qkc.3
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 09:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=59FY7824eiyqs8+sTCio5EVczoVHUCfw0xCyKrFKQok=;
	b=Os3wUi0pvuuAjPxshCvrsQ+hwmwWfBuvDvYSj34ycpvYBLjdXKSacUU9AXHhfVq+6/
	sANg8NDXWWV7dzRWqfw2qzTvdjlEPc4uBcAwPSNkPuGakopqFUtK3ofiJwTd2Lk9TljH
	9Ly07+lHzKlFkRCbMJPraR3GO47G7T1AKSFrp5p+l1Tj5pEFz/Vyd2nPbhQMVd+AO4va
	VcoRh9ICjHbo9A78DQMsqFu9JLJlsTHqQ7p0FupXeZKlVaNzqefGVqN8FGCOwPPUy9QC
	e5Vb5Xe3o3buwZQxLtEtDJeFz4D4RVmoPsB7q1loG0PtHc2C96rf044acd+l+AnEIow6
	87nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=59FY7824eiyqs8+sTCio5EVczoVHUCfw0xCyKrFKQok=;
	b=D01653eo+8BTROTiC04lYMTJTo5iRNUmaQwp5Cj+DDY7QXNjjyg3eyfy2bVwfNFNGT
	i27HA5CkfkOo+UbDPg1tYvPAKERBuWFbscOG5SiQ5ZqXqUCrBIVXFHCqHbGpT735HgpM
	iPSygkvk67OYmVfiRBNRK/IFemXQmM8utgBTBrTONVE0TrITleDwK+mraweHzsWJIILg
	Fks/AFHh8hScOJ5BcoOxZJic+eBImcDLb9h+M/v1mS7r/SoNXc1qRkQHRtD1+Ld4FoPp
	oeYFcD1qspCromymUJY6S63dIt6lDPjAODHad72mxOSye+cXagUc0eIX2JXWT3bw/9x9
	0wfQ==
X-Gm-Message-State: ALoCoQkTkbm+nkUUQmD6Ljc1T2+tvGkG078q7zJRuZkGJrD9sjHYJ898eLCZobXCiKWVoRV83PfJr+cHh9IYs0PL2HE2FWDjTQ==
X-Received: by 10.55.71.76 with SMTP id u73mr40269891qka.6.1453224284215;
	Tue, 19 Jan 2016 09:24:44 -0800 (PST)
Received: from thuvia.localdomain (pool-108-44-110-59.ronkva.east.verizon.net.
	[108.44.110.59]) by smtp.gmail.com with ESMTPSA id
	e184sm12602190qkb.40.2016.01.19.09.24.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Jan 2016 09:24:43 -0800 (PST)
Sender: Philip Balister <philip.balister@gmail.com>
From: Philip Balister <philip@balister.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Jan 2016 12:24:34 -0500
Message-Id: <1453224275-7493-2-git-send-email-philip@balister.org>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1453224275-7493-1-git-send-email-philip@balister.org>
References: <1453224275-7493-1-git-send-email-philip@balister.org>
Subject: [meta-qt4][PATCH 2/3] sip: Add recipe.
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
X-List-Received-Date: Tue, 19 Jan 2016 17:24:50 -0000

 * Recipe copied from meta-openembedded/jethro.
 * Used by GNU Radio.

Signed-off-by: Philip Balister <philip@balister.org>
---
 recipes-qt4/recipes-python/sip_4.16.4.bb | 54 ++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 recipes-qt4/recipes-python/sip_4.16.4.bb

diff --git a/recipes-qt4/recipes-python/sip_4.16.4.bb b/recipes-qt4/recipes-python/sip_4.16.4.bb
new file mode 100644
index 0000000..032d125
--- /dev/null
+++ b/recipes-qt4/recipes-python/sip_4.16.4.bb
@@ -0,0 +1,54 @@
+SUMMARY = "SIP is a C++/Python Wrapper Generator"
+AUTHOR = "Phil Thompson"
+HOMEPAGE = "http://www.riverbankcomputing.co.uk/sip"
+SECTION = "devel"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://LICENSE-GPL2;md5=e91355d8a6f8bd8f7c699d62863c7303"
+DEPENDS_class-target = "qt4-x11-free python"
+
+# riverbankcomputing is upstream, but keeps only latest version, sf usually have few older
+#SRC_URI = "http://www.riverbankcomputing.com/static/Downloads/sip4/sip-${PV}.tar.gz"
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/pyqt/sip/sip-${PV}/sip-${PV}.tar.gz"
+SRC_URI[md5sum] = "a9840670a064dbf8f63a8f653776fec9"
+SRC_URI[sha256sum] = "ceda443fc5e129e67a067e2cd7b73ff037f8b10b50e407baa2b1d9f2199d57f5"
+
+BBCLASSEXTEND = "native"
+
+PACKAGES += "python-sip"
+
+inherit qmake2 python-dir pythonnative distro_features_check
+# depends on qt4-x11-free
+REQUIRED_DISTRO_FEATURES = "x11"
+
+EXTRA_QMAKEVARS_POST += "CONFIG=console"
+
+export BUILD_SYS
+export HOST_SYS
+export STAGING_LIBDIR
+export STAGING_INCDIR
+
+do_configure_prepend_class-target() {
+    echo "py_platform = linux" > sip.cfg
+    echo "py_inc_dir = %(sysroot)/${includedir}/python%(py_major).%(py_minor)" >> sip.cfg
+    echo "sip_bin_dir = ${D}/${bindir}" >> sip.cfg
+    echo "sip_inc_dir = ${D}/${includedir}" >> sip.cfg
+    echo "sip_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> sip.cfg
+    echo "sip_sip_dir = ${D}/${datadir}/sip" >> sip.cfg
+    python configure.py --use-qmake --configuration sip.cfg --sysroot ${STAGING_DIR_HOST}
+}
+do_configure_prepend_class-native() {
+    echo "py_platform = linux" > sip.cfg
+    echo "py_inc_dir = ${includedir}/python%(py_major).%(py_minor)" >> sip.cfg
+    echo "sip_bin_dir = ${D}/${bindir}" >> sip.cfg
+    echo "sip_inc_dir = ${D}/${includedir}" >> sip.cfg
+    echo "sip_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> sip.cfg
+    echo "sip_sip_dir = ${D}/${datadir}/sip" >> sip.cfg
+    python configure.py --use-qmake --configuration sip.cfg --sysroot ${STAGING_DIR_NATIVE}
+}
+do_install() {
+    oe_runmake install
+}
+
+FILES_python-${BPN} = "${libdir}/${PYTHON_DIR}/site-packages/"
+FILES_${PN}-dbg += "${libdir}/${PYTHON_DIR}/site-packages/.debug"
+
-- 
2.5.0


