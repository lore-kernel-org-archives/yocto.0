Return-Path: <philip.balister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89712E00BA0; Tue, 19 Jan 2016 09:24:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CBBBE00B46
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 09:24:46 -0800 (PST)
Received: by mail-qk0-f195.google.com with SMTP id u128so2823741qkh.1
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 09:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=GWabBdHVrBSkFy146wpRYqMsllGKzGspdYMG1ITtBE4=;
	b=eMkBbdTJsZ3IH64CIUBVsysoc2Kc62QtlGaKV43+wOlFrDfZB20L3HnmELdT2mJq7H
	WXgYDfC/HHSVs7c9rdFgfrhv3VymI34iKin25VlxY41W1wS0xN3/LL3YcCWToPw2Kzjf
	QQbClSG0SATXvOw+Vck6f2IJOuRONRiiaLJXkwNAwcmD1WF0bgIau40qGSGNz40AUgGF
	nKBKHZgGameHIYkMjv9flgCaE52NRODIa0TRBHU23YQDTgfjcXi7xUsKeofInoc2omJ+
	pQafLDMaoDeOfaP0QXQGEm9qzDt75tbEKq1oDbPRaien689hqdehSV2jQV9a1WLnz01l
	a/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=GWabBdHVrBSkFy146wpRYqMsllGKzGspdYMG1ITtBE4=;
	b=fKX/eY+imjqW9IuFKSbXMdw7DNNvXfy4/1qgHMqoq77VwNQIU8FLmvQexmXoZnfTH1
	nrDKkKVZXONL12At5KB2E/6VQ+2UIIkPdrw319KF8wL+sWlzPsTcuFRdI2q7mah0SLJR
	oe3KcmWZZb8Fd/GTv5foXOJzyrXxcuk6NKvU+er9nZe1IKxyWd3gGZAvA3wpTI4ZvTDz
	BvtOdsNhotjJKmkNjcoSpqShQxMdHtLzdI0U1a3bX3rwkbbE41v0LSFZuqFOrVDWm2g9
	N1EpxuPmj2QRmmyIQ1tc7/sCmYazRLHbDorSfYUbPqaxrvvp12EXxJeU5lwPjoLlQ+aG
	6ZJA==
X-Gm-Message-State: ALoCoQl4uo4JsfP6gp6IOW3Lt0LulTwAsgJIdjOaytSPAaRrGLz0EZzSYzdaBF1ZL8ACDOMTOGPcU00urK7WAvym0WdKKo5/Lg==
X-Received: by 10.55.215.149 with SMTP id t21mr39490460qkt.33.1453224285613;
	Tue, 19 Jan 2016 09:24:45 -0800 (PST)
Received: from thuvia.localdomain (pool-108-44-110-59.ronkva.east.verizon.net.
	[108.44.110.59]) by smtp.gmail.com with ESMTPSA id
	e184sm12602190qkb.40.2016.01.19.09.24.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Jan 2016 09:24:45 -0800 (PST)
Sender: Philip Balister <philip.balister@gmail.com>
From: Philip Balister <philip@balister.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Jan 2016 12:24:35 -0500
Message-Id: <1453224275-7493-3-git-send-email-philip@balister.org>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1453224275-7493-1-git-send-email-philip@balister.org>
References: <1453224275-7493-1-git-send-email-philip@balister.org>
Subject: [meta-qt4][PATCH 3/3] python-pyqt: Add recipe.
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
 recipes-qt4/recipes-python/python-pyqt_4.11.3.bb | 59 ++++++++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 recipes-qt4/recipes-python/python-pyqt_4.11.3.bb

diff --git a/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb b/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb
new file mode 100644
index 0000000..cfddee8
--- /dev/null
+++ b/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb
@@ -0,0 +1,59 @@
+SUMMARY = "Python Qt4 Bindings"
+AUTHOR = "Phil Thomson @ riverbank.co.uk"
+HOMEPAGE = "http://riverbankcomputing.co.uk"
+SECTION = "devel/python"
+LICENSE = "GPLv2 & GPLv3 & GPL_EXCEPTION"
+LIC_FILES_CHKSUM = "\
+    file://GPL_EXCEPTION.TXT;md5=b73b0be471db679533dc94781c14af58 \
+    file://GPL_EXCEPTION_ADDENDUM.TXT;md5=c1e04ec2aa0911061005a801abf81e40 \
+    file://OPENSOURCE-NOTICE.TXT;md5=6ad9123620cc04a22c394753ad4767d7 \
+    file://LICENSE.GPL2;md5=577ff65f6653562af318bfc3944b1f20 \
+    file://LICENSE.GPL3;md5=feee51612c3c1191a1d5f41156fa2c75 \
+"
+DEPENDS = "sip sip-native qt4-x11-free python"
+
+SRC_URI = "\
+    ${SOURCEFORGE_MIRROR}/pyqt/PyQt-x11-gpl-${PV}.tar.gz \
+"
+SRC_URI[md5sum] = "997c3e443165a89a559e0d96b061bf70"
+SRC_URI[sha256sum] = "853780dcdbe2e6ba785d703d059b096e1fc49369d3e8d41a060be874b8745686"
+
+S = "${WORKDIR}/PyQt-x11-gpl-${PV}"
+
+PARALLEL_MAKE = ""
+
+inherit qmake2 pythonnative python-dir distro_features_check
+# depends on qt4-x11-free
+REQUIRED_DISTRO_FEATURES = "x11"
+
+DISABLED_FEATURES = "PyQt_Desktop_OpenGL PyQt_Accessibility PyQt_SessionManager"
+
+DISABLED_FEATURES_append_arm = " PyQt_qreal_double"
+
+PYQT_MODULES = "QtCore QtGui QtDeclarative QtNetwork QtSvg QtWebKit"
+PYQT_MODULES_aarch64 = "QtCore QtGui QtDeclarative QtNetwork QtSvg"
+
+do_configure() {
+    echo "py_platform = linux" > pyqt.cfg
+    echo "py_inc_dir = %(sysroot)/$includedir/python%(py_major).%(py_minor)" >> pyqt.cfg
+    echo "py_pylib_dir = %(sysroot)/${libdir}/python%(py_major).%(py_minor)" >> pyqt.cfg
+    echo "py_pylib_lib = python%(py_major).%(py_minor)mu" >> pyqt.cfg
+    echo "pyqt_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> pyqt.cfg
+    echo "pyqt_bin_dir = ${D}/${bindir}" >> pyqt.cfg
+    echo "pyqt_sip_dir = ${D}/${datadir}/sip/PyQt4" >> pyqt.cfg
+    echo "pyuic_interpreter = ${D}/${bindir}/python%(py_major).%(py_minor)" >> pyqt.cfg
+    echo "pyqt_disabled_features = ${DISABLED_FEATURES}" >> pyqt.cfg
+    echo "qt_shared = True" >> pyqt.cfg
+    echo "[Qt 4.8]" >> pyqt.cfg
+    echo "pyqt_modules = ${PYQT_MODULES}" >> pyqt.cfg
+    echo yes | python configure-ng.py --verbose --qmake  ${STAGING_BINDIR_NATIVE}/qmake2 --configuration pyqt.cfg --sysroot ${STAGING_DIR_HOST}
+}
+do_install() {
+     oe_runmake install
+}
+
+RDEPENDS_${PN} = "python-core python-sip"
+
+FILES_${PN} += "${libdir}/${PYTHON_DIR}/site-packages ${datadir}/sip/PyQt4/"
+FILES_${PN}-dbg += "${libdir}/${PYTHON_DIR}/site-packages/*/.debug/"
+
-- 
2.5.0


