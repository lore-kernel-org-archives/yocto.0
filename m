Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74C2EE00736
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 02:58:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r16AwAtX027783
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 6 Feb 2013 02:58:10 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Wed, 6 Feb 2013 02:58:08 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Wed, 6 Feb 2013 12:57:55 +0200
Message-ID: <1360148275-21567-3-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1360148275-21567-1-git-send-email-andrei.gherzan@windriver.com>
References: <1360148275-21567-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 3/3] linux-yocto: Add PRINC
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
X-List-Received-Date: Wed, 06 Feb 2013 10:58:09 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-kernel/linux/linux-yocto_3.4.bbappend |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/recipes-kernel/linux/linux-yocto_3.4.bbappend b/recipes-kernel/linux/linux-yocto_3.4.bbappend
index ca9afbd..10327c3 100644
--- a/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -1,3 +1,5 @@
+PRINC := "${@int(PRINC) + 1}"
+
 # find defconfig path
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
 
-- 
1.7.5.4


