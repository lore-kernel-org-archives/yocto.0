Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B4FFE016D2
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:06:23 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VWstp-0004u1-Bc; Thu, 17 Oct 2013 19:06:23 +0000
Received: from flihp by longhaul.twobit.us with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VWsti-0007x4-N4; Thu, 17 Oct 2013 19:06:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Thu, 17 Oct 2013 19:06:07 +0000
Message-Id: <1382036771-30531-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1382036771-30531-1-git-send-email-flihp@twobit.us>
References: <1382036771-30531-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: [meta-selinux][PATCH 1/5] Break policycoreutils out into separate packages for the various utilities.
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
X-List-Received-Date: Thu, 17 Oct 2013 19:06:26 -0000

The driver beind this is to allow images to be built with the minimal
tools necessary to load a policy.  Breaking all of the stuff that's
dependent on python out from the core utils allows us to make much
smaller images.
---
 recipes-security/selinux/policycoreutils.inc |  181 +++++++++++++++++++++++++-
 1 file changed, 175 insertions(+), 6 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index dfd65e3..e6ff4ed 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -38,6 +38,92 @@ RDEPENDS_${BPN} += "\
 	python-ipy \
 	"
 
+RDEPENDS_${BPN}-audit2allow = " \
+	python-textutils \
+	libselinux-python \
+	sepolgen \
+	"
+RDEPENDS_${BPN}-chcat = " \
+	python-codecs \
+	python-shell \
+	python-stringold \
+	python-unixadmin \
+	${BPN}-python \
+	libselinux-python \
+	"
+RDEPENDS_${BPN}-fixfiles += "\
+	${BPN}-setfiles \
+	"
+RDEPENDS_${BPN}-genhomedircon += "\
+	${BPN}-genhomedircon \
+	${BPN}-semodule \
+	"
+RDEPENDS_${BPN}-loadpolicy += "\
+	libselinux \
+	libsepol \
+	"
+RDEPENDS_${BPN}-newrole += "\
+	libcap-ng \
+	libselinux \
+	"
+RDEPENDS_${BPN}-python += "\
+	python-codecs \
+	python-io \
+	python-ipy \
+	python-re \
+	python-stringold \
+	python-syslog \
+	python-unixadmin \
+	libselinux-python \
+	libsemanage-python \
+	"
+RDEPENDS_${BPN}-runinit += "libselinux"
+RDEPENDS_${BPN}-sandbox += "\
+	python-math \
+	python-shell \
+	python-subprocess \
+	python-textutils \
+	python-unixadmin \
+	libselinux-python \
+	${BPN}-python \
+	"
+RDEPENDS_${BPN}-secon += "libselinux"
+RDEPENDS_${BPN}-semanage = " \
+	python-core \
+	python-ipy \
+	${BPN}-python \
+	libselinux-python \
+	"
+RDEPENDS_${BPN}-semodule += "\
+	libsepol \
+	libselinux \
+	libsemanage \
+	"
+# static link to libsepol
+DEPENDS_${BPN}-semodule-deps += "libsepol"
+RDEPENDS_${BPN}-semodule-expand += "libsepol libselinux"
+RDEPENDS_${BPN}-semodule-link += "libsepol libselinux"
+RDEPENDS_${BPN}-semodule-package += "libsepol libselinux"
+RDEPENDS_${BPN}-sepolicy += "\
+	python-argparse \
+	python-codecs \
+	python-core \
+	python-syslog \
+	${BPN}-python \
+	"
+# static link to libsepol
+DEPENDS_${BPN}-sepolgen-ifgen += "libsepol"
+RDEPENDS_${BPN}-sepolgen-ifgen += "libselinux-python"
+RDEPENDS_${BPN}-sestatus += "libselinux"
+RDEPENDS_${BPN}-setfiles += "\
+	libselinux \
+	libsepol \
+	"
+RDEPENDS_${BPN}-setsebool += "\
+	libsepol \
+	libselinux \
+	libsemanage \
+	"
 RDEPENDS_${BPN} += "setools setools-libs ${BPN}-python"
 
 WARN_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${WARN_QA}', d)}"
@@ -45,14 +131,97 @@ ERROR_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${ERROR_QA}', d)}
 
 inherit pythonnative
 
-PACKAGES =+ "${PN}-python ${PN}-sandbox system-config-selinux"
-FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/seobject.py* \
+PACKAGES =+ "\
+	${PN}-audit2allow \
+	${PN}-chcat \
+	${PN}-fixfiles \
+	${PN}-genhomedircon \
+	${PN}-loadpolicy \
+	${PN}-newrole \
+	${PN}-python \
+	${PN}-runinit \
+	${PN}-sandbox \
+	${PN}-secon \
+	${PN}-semanage \
+	${PN}-semodule \
+	${PN}-semodule-deps \
+	${PN}-semodule-expand \
+	${PN}-semodule-link \
+	${PN}-semodule-package \
+	${PN}-sepolgen-ifgen \
+	${PN}-sepolicy \
+	${PN}-sestatus \
+	${PN}-setfiles \
+	${PN}-setsebool \
+	system-config-selinux \
+	"
+FILES_${PN}-audit2allow = " \
+	${bindir}/audit2allow \
+	${bindir}/audit2why \
+	"
+FILES_${PN}-chcat = " \
+	${bindir}/chcat \
+	"
+FILES_${PN}-fixfiles += "${base_sbindir}/fixfiles"
+FILES_${PN}-genhomedircon += "${sbindir}/genhomedircon"
+FILES_${PN}-loadpolicy += "\
+	${base_sbindir}/load_policy \
+	${sbindir}/load_policy \
+	"
+FILES_${PN}-newrole += "\
+	${bindir}/newrole \
+	${@base_contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/newrole', '', d)} \
+	"
+FILES_${PN}-python = " \
+	${libdir}/python${PYTHON_BASEVERSION}/site-packages/seobject.py* \
 	${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy*.egg-info \
-	${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/*"
+	${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/* \
+        "
+FILES_${PN}-runinit += "\
+	${sbindir}/run_init \
+	${sbindir}/open_init_pty \
+	${@base_contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_init', '', d)} \
+	"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/.debug/*"
-FILES_${PN}-sandbox = "${datadir}/sandbox/*"
-FILES_${PN}-sandbox += "${bindir}/sandbox"
-FILES_${PN}-sandbox += "${sbindir}/seunshare"
+FILES_${PN}-sandbox += "\
+	${datadir}/sandbox/* \
+	${bindir}/sandbox \
+	${sbindir}/seunshare \
+	${sysconfdir}/sysconfig/sandbox \
+	"
+FILES_${PN}-secon += "${bindir}/secon"
+FILES_${PN}-semanage = " \
+	${sbindir}/semanage \
+	${sysconfdir}/bash_completion.d/semanage-bash-completion.sh \
+	"
+FILES_${PN}-semodule += "${sbindir}/semodule"
+FILES_${PN}-semodule-deps += "${bindir}/semodule_deps"
+FILES_${PN}-semodule-expand += "${bindir}/semodule_expand"
+FILES_${PN}-semodule-link += "${bindir}/semodule_link"
+FILES_${PN}-semodule-package += "\
+	${bindir}/semodule_package \
+	${bindir}/semodule_unpackage \
+	"
+FILES_${PN}-sepolicy += "\
+	${bindir}/sepolicy \
+	${sysconfdir}/bash_completion.d/sepolicy-bash-completion.sh \
+	"
+FILES_${PN}-sepolgen-ifgen += "\
+	${bindir}/sepolgen-ifgen \
+	${bindir}/sepolgen-ifgen-attr-helper \
+	"
+FILES_${PN}-sestatus += "\
+	${sbindir}/sestatus \
+	${sysconfdir}/sestatus.conf \
+	"
+FILES_${PN}-setfiles += " \
+	${base_sbindir}/restorecon \
+	${base_sbindir}/setfiles \
+	"
+FILES_${PN}-setsebool += " \
+	${sbindir}/setsebool \
+	${sysconfdir}/bash_completion.d/setsebool-bash-completion.sh \
+	"
 FILES_system-config-selinux = " \
     ${bindir}/sepolgen \
     ${datadir}/system-config-selinux/* \
-- 
1.7.10.4


