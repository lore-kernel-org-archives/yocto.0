Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF15E006DC
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 10:02:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0SI2NkS015385
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 10:02:23 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.328.9; Mon, 28 Jan 2013 10:02:23 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Mon, 28 Jan 2013 20:01:50 +0200
Message-ID: <1359396110-32411-2-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1359396110-32411-1-git-send-email-andrei.gherzan@windriver.com>
References: <1359396110-32411-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 2/2] dlt-daemon: Remove User option from systemd services
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
X-List-Received-Date: Mon, 28 Jan 2013 18:02:24 -0000
Content-Type: text/plain

All systemd services use "genivi" as User option. There is no such username
so these services would fail.

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
index 5be4aba..58aaa15 100644
--- a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
+++ b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
@@ -11,7 +11,7 @@ DESCRIPTION = "This component provides a standardised log and trace interface, b
 HOMEPAGE = "https://www.genivi.org/"
 SECTION = "console/utils"
 
-PR = "r0"
+PR = "r1"
 
 inherit gzipnative
 
@@ -33,3 +33,9 @@ FILES_${PN}-systemd += "${systemd_unitdir}/system/"
 PACKAGES =+ "${PN}-systemd"
 
 EXTRA_OECMAKE = "-DWITH_SYSTEMD=ON"
+
+# Remove "User=genivi" option from systemd services
+# as there is no such username
+do_install_append() {
+    sed -i '/User/d' ${D}/${systemd_unitdir}/system/*.service
+}
-- 
1.7.5.4


