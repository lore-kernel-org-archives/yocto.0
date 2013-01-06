Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E565E01462
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:55:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r06BtCek005964
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:55:12 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:55:11 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:54 +0200
Message-ID: <1357473302-19235-15-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 15/23] dlt-daemon: Minor file reformatting
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
X-List-Received-Date: Sun, 06 Jan 2013 11:55:11 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
index 9cdbfc0..5be4aba 100644
--- a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
+++ b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
@@ -16,8 +16,10 @@ PR = "r0"
 inherit gzipnative
 
 LICENSE = "MPLv2"
-LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=99ba60c3fad7eaf8c56bca6dd75cba09 \
-		    file://MPL.txt;md5=ccdb2761cef70c8b2612624c323f89dc"
+LIC_FILES_CHKSUM = " \
+    file://LICENSE.txt;md5=99ba60c3fad7eaf8c56bca6dd75cba09 \
+    file://MPL.txt;md5=ccdb2761cef70c8b2612624c323f89dc \
+    "
 
 SRC_URI = "git://git.projects.genivi.org/${PN}.git;protocol=git;tag=v${PV}"
 
-- 
1.7.9.5


