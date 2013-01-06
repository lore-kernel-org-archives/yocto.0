Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE0ACE01498
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:55:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r06BtOsw027422
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:55:24 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:55:24 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:55:01 +0200
Message-ID: <1357473302-19235-22-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 22/23] gst-plugins-good: Minor file reformatting
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
X-List-Received-Date: Sun, 06 Jan 2013 11:55:24 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../gstreamer/gst-plugins-good_0.10.31.bbappend    |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/gstreamer/gst-plugins-good_0.10.31.bbappend b/recipes-multimedia/gstreamer/gst-plugins-good_0.10.31.bbappend
index acb5086..69d5f20 100644
--- a/recipes-multimedia/gstreamer/gst-plugins-good_0.10.31.bbappend
+++ b/recipes-multimedia/gstreamer/gst-plugins-good_0.10.31.bbappend
@@ -1,4 +1,4 @@
-PRINC = "1"
+PRINC := "${@int(PRINC) + 1}"
 
 # Remove gconf and soup from dependencies and deactivate these in configure
 DEPENDS := "${@oe_filter_out('libsoup-2.4','${DEPENDS}',d)}"
-- 
1.7.9.5


