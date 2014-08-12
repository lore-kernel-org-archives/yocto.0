Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A487E0079A; Mon, 11 Aug 2014 20:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BE78E00786
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 20:16:45 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id bj1so12047052pad.25
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 20:16:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-type:content-transfer-encoding;
	bh=VpuMSlV/XaPFNfBrQR4nEkSxctoSHmTgo8CBjD1cz5g=;
	b=eP7leCQ7TVkT4fyd5KWNGTvin/KqN+We5PFd28q9GVcg2me+sHr+5CnMMknKyzsykS
	u354m/pd3yj4k7N6ixWdSGyEGRM1eMXmdb/Op0g+8DaHvolg7YqsbIHQ46VzkSKWYWwl
	nZ/2/7zuYmHMlyL7PBdkTLy3O35on+ZEy1QiegWtnRJl7OGRO6SjnhCuTvEZfPk6p74u
	KdBkZ/GG0b+76/S2Q4YGTkHSQpmBkMCJ67umyLXv6yZ5bxn9v/5kkIXJj3MB6hZb1ao/
	h1W6Inudqd1XgHw6RDAr9LesBFNr0qT3qWChLZAYoiPcJ03VZdMlZxaOcpog475qe7IJ
	8a0A==
X-Gm-Message-State: ALoCoQld7O9RhAxL5CqwoYiyi5cDOLRUWr5mNRd6idrOl5PC39njIczlHkyvX4rxKfiwLwfsvx6v
X-Received: by 10.70.43.206 with SMTP id y14mr1766115pdl.11.1407813405192;
	Mon, 11 Aug 2014 20:16:45 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	cm7sm19863403pdb.74.2014.08.11.20.16.44 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Aug 2014 20:16:44 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Aug 2014 20:16:38 -0700
Message-Id: <1407813399-31942-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1407813399-31942-1-git-send-email-akuster@mvista.com>
References: <1407813399-31942-1-git-send-email-akuster@mvista.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 1/2] tripwire: Add new package to layer
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
X-List-Received-Date: Tue, 12 Aug 2014 03:16:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/tripwire/tripwire_2.4.2.2.bb | 78 +++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 recipes-security/tripwire/tripwire_2.4.2.2.bb

diff --git a/recipes-security/tripwire/tripwire_2.4.2.2.bb b/recipes-security/tripwire/tripwire_2.4.2.2.bb
new file mode 100644
index 0000000..ad5363d
--- /dev/null
+++ b/recipes-security/tripwire/tripwire_2.4.2.2.bb
@@ -0,0 +1,78 @@
+SUMMARY = "Tripwire: A system integrity assessment tool (IDS)"
+DESCRIPTION = "Open Source Tripwire® software is a security and data \
+integrity tool useful for monitoring and alerting on specific file change(s) on a range of systems"
+HOMEPAGE="http://sourceforge.net/projects/tripwire"
+SECTION = "security Monitor/Admin"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=1c069be8dbbe48e89b580ab4ed86c127"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}-src/${BPN}-${PV}/${BPN}-${PV}-src.tar.bz2 \
+	   file://tripwire.cron \
+	   file://tripwire.sh \
+	   file://tripwire.txt \
+	   file://twcfg.txt \
+	   file://twinstall.sh \
+	   file://twpol-yocto.txt \
+       "
+SRC_URI[md5sum] = "2462ea16fb0b5ae810471011ad2f2dd6"
+SRC_URI[sha256sum] = "e09a7bdca9302e704cc62067399e0b584488f825b0e58c82ad6d54cd2e899fad"
+
+S = "${WORKDIR}/tripwire-${PV}-src"
+
+inherit autotools-brokensep update-rc.d
+
+INITSCRIPT_NAME = "tripwire"
+INITSCRIPT_PARAMS = "start 40 S ."
+TRIPWIRE_HOST = "${HOST_SYS}"
+TRIPWIRE_TARGET = "${TARGET_SYS}"
+
+CXXFLAGS += "-fno-strict-aliasing"
+EXTRA_OECONF = "--disable-openssl  --enable-static --sysconfdir=/etc/tripwire"
+
+do_configure () {
+    #
+    # sed bits taken from http://www.linuxfromscratch.org/blfs/view/svn/postlfs/tripwire.html
+    #
+    sed -i -e 's/!Equal/!this->Equal/' src/cryptlib/algebra.h                &&
+    sed -i -e '/stdtwadmin.h/i#include <unistd.h>' src/twadmin/twadmincl.cpp &&
+    sed -i -e 's/eArchiveOpen e\([^)]*)\)/throw ( eArchiveOpen\1 )/' \
+    -e '/throw e;/d' src/core/archive.cpp                             &&
+
+    oe_runconf
+}
+
+do_install () {
+    install -d ${D}${libdir} ${D}${datadir} ${D}${base_libdir}
+    install -d ${D}${sysconfdir} ${D}${mandir} ${D}${sbindir}
+    install -d ${D}${sysconfdir}/${PN}
+    install -d ${D}${localstatedir}/lib/${PN} ${D}${localstatedir}/lib/${BPN}/report
+    install -d ${D}${mandir}/man4 ${D}${mandir}/man5 ${D}${mandir}/man8
+    install -d ${D}${docdir}/${BPN} ${D}${docdir}/${BPN}/templates
+    install -d ${D}${sysconfdir}/init.d
+
+    install -m 0755 ${S}/bin/* ${D}${sbindir}
+    install -m 0644 ${S}/lib/* ${D}${base_libdir}
+    install -m 0644 ${S}/lib/* ${D}${localstatedir}/lib/${PN}
+    install -m 0755 ${WORKDIR}/tripwire.cron ${D}${sysconfdir}
+    install -m 0755 ${WORKDIR}/tripwire.sh ${D}${sysconfdir}/init.d/tripwire
+    install -m 0755 ${WORKDIR}/twinstall.sh ${D}${sysconfdir}/${PN}
+    install -m 0644 ${WORKDIR}/twpol-yocto.txt ${D}${sysconfdir}/${PN}/twpol.txt
+    install -m 0644 ${WORKDIR}/twcfg.txt ${D}${sysconfdir}/${PN}
+
+    install -m 0644 ${S}/man/man4/* ${D}${mandir}/man4
+    install -m 0644 ${S}/man/man5/* ${D}${mandir}/man5
+    install -m 0644 ${S}/man/man8/* ${D}${mandir}/man8
+    install -m 0644 ${S}/policy/templates/* ${D}${docdir}/${BPN}/templates
+    install -m 0644 ${S}/policy/*txt ${D}${docdir}/${BPN}
+    install -m 0644 ${S}/COPYING ${D}${docdir}/${BPN}
+    install -m 0644 ${S}/TRADEMARK ${D}${docdir}/${BPN}
+    install -m 0644 ${WORKDIR}/tripwire.txt ${D}${docdir}/${BPN}
+}
+
+
+FILES_${PN} += "${libdir} ${docdir}/${PN}/*"
+FILES_${PN}-dbg += "${sysconfdir}/${PN}/.debug"
+FILES_${PN}-staticdev += "${localstatedir}/lib/${PN}/lib*.a"
+
+
+RDEPENDS_${PN} += " perl nano msmtp cronie"
-- 
1.9.1


