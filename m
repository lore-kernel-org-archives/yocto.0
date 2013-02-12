Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 08B5BE01400
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 05:09:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r1CD903Z014923
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 05:09:01 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Tue, 12 Feb 2013 05:08:59 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 12 Feb 2013 15:08:47 +0200
Message-ID: <1360674527-16285-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: florin.sarbu@windriver.com, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [PATCH 1/1] poky-ivi-systemd.conf: Add yoctoproject mirrors
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
X-List-Received-Date: Tue, 12 Feb 2013 13:09:02 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 conf/distro/poky-ivi-systemd.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/conf/distro/poky-ivi-systemd.conf b/conf/distro/poky-ivi-systemd.conf
index 0f65a4b..1fd13d4 100644
--- a/conf/distro/poky-ivi-systemd.conf
+++ b/conf/distro/poky-ivi-systemd.conf
@@ -9,3 +9,7 @@ include conf/distro/include/default-providers-ivi.inc
 
 DISTRO_FEATURES += " bluetooth systemd "
 
+MIRRORS =+ "\
+ftp://.*/.*      http://downloads.yoctoproject.org/mirror/sources/ \n \
+http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n \
+https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
-- 
1.7.5.4


