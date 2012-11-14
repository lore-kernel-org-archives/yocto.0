Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70045E01448
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 03:34:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qAEBYFVV013594
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 03:34:15 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Wed, 14 Nov 2012 03:34:14 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Wed, 14 Nov 2012 13:33:35 +0200
Message-ID: <1352892815-22180-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
X-Mailman-Approved-At: Wed, 14 Nov 2012 08:14:42 -0800
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 1/2] dlt-daemon: Package utils, libraries, test etc. separately
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
X-List-Received-Date: Wed, 14 Nov 2012 11:34:16 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb |   24 +++++++++++++++++++---
 1 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
index 9cdbfc0..7a20647 100644
--- a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
+++ b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
@@ -11,7 +11,7 @@ DESCRIPTION = "This component provides a standardised log and trace interface, b
 HOMEPAGE = "https://www.genivi.org/"
 SECTION = "console/utils"
 
-PR = "r0"
+PR = "r1"
 
 inherit gzipnative
 
@@ -25,9 +25,25 @@ S = "${WORKDIR}/git"
 
 inherit autotools gettext cmake
 
-FILES_${PN}-doc += "/usr/share/*"
+PACKAGES =+ "${PN}-systemd \
+             libdlt \
+             dlt-adaptor \
+             dlt-convert \
+             dlt-example \
+             dlt-receive \
+             dlt-system \
+             dlt-test \
+             "
+
+FILES_libdlt = "${libdir}/*${SOLIBS}"
+FILES_dlt-adaptor = "${bindir}/dlt-adaptor*"
+FILES_dlt-convert = "${bindir}/dlt-convert*"
+FILES_dlt-example = "${bindir}/dlt-example*"
+FILES_dlt-receive = "${bindir}/dlt-receive*"
+FILES_dlt-system = "${bindir}/dlt-system* \
+                      ${sysconfdir}/dlt-system.conf"
+FILES_dlt-test = "${bindir}/dlt-test* \
+                  ${datadir}/dlt-filetransfer"
 FILES_${PN}-systemd += "${systemd_unitdir}/system/"
 
-PACKAGES =+ "${PN}-systemd"
-
 EXTRA_OECMAKE = "-DWITH_SYSTEMD=ON"
-- 
1.7.5.4


