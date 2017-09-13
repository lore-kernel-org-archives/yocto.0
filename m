Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7C24E00D0F; Tue, 12 Sep 2017 19:43:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 104DFE00CE6
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2hI0K009342
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Sep 2017 19:43:18 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:17 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:43:02 -0700
Message-ID: <851b0594fef07214616b89b622df73a809b6c062.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 20/20] selinux-python: add setools to RDEPENDS
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
X-List-Received-Date: Wed, 13 Sep 2017 02:43:32 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/selinux-python.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
index cc907ae..55060e3 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -37,6 +37,7 @@ RDEPENDS_${BPN} += "\
         python-unixadmin \
         libselinux-python \
         libsemanage-python \
+        setools \
 "
 RDEPENDS_${BPN}-semanage += "\
         python-core \
-- 
2.13.0


