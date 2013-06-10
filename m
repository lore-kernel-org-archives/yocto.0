Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0855AE015D7
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 00:10:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5A7AKpM021951
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 00:10:21 -0700 (PDT)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.342.3; Mon, 10 Jun 2013 00:10:20 -0700
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>, <holger.behrens@windriver.com>
Date: Mon, 10 Jun 2013 10:09:47 +0300
Message-ID: <1370848187-5173-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 1/1] connman: Sync bbappend version with upstream
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
X-List-Received-Date: Mon, 10 Jun 2013 07:10:22 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 ...connman_1.14.bbappend => connman_1.15.bbappend} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-connectivity/connman/{connman_1.14.bbappend => connman_1.15.bbappend} (100%)

diff --git a/recipes-connectivity/connman/connman_1.14.bbappend b/recipes-connectivity/connman/connman_1.15.bbappend
similarity index 100%
rename from recipes-connectivity/connman/connman_1.14.bbappend
rename to recipes-connectivity/connman/connman_1.15.bbappend
-- 
1.7.5.4


