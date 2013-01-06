Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90993E01454
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:54:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r06BstL0005944
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:54:56 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:54:55 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:45 +0200
Message-ID: <1357473302-19235-6-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 06/23] bluez4: Minor file reformatting
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
X-List-Received-Date: Sun, 06 Jan 2013 11:54:55 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-connectivity/bluez/bluez4_4.101.bbappend |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-connectivity/bluez/bluez4_4.101.bbappend b/recipes-connectivity/bluez/bluez4_4.101.bbappend
index 8f5da72..7610c18 100644
--- a/recipes-connectivity/bluez/bluez4_4.101.bbappend
+++ b/recipes-connectivity/bluez/bluez4_4.101.bbappend
@@ -1,4 +1,4 @@
-PRINC = "3"
+PRINC := "${@int(PRINC) + 3}"
 
 inherit systemd
 
@@ -11,4 +11,4 @@ do_configure_append () {
 	#systemd does not allow to configure any of these filesystem paths
 	#udev is included in systemd
 	sed -i 's:udev_get_sys_path(udev):"/sys":' tools/hid2hci.c
-}
\ No newline at end of file
+}
-- 
1.7.9.5


