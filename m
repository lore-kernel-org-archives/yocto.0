Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29086E00A71; Thu, 13 Aug 2015 20:21:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC5E4E00767
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 20:21:53 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t7E3Lr3h003293
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 20:21:53 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.235.1;
	Thu, 13 Aug 2015 20:21:52 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 13 Aug 2015 23:21:49 -0400
Message-ID: <1439522510-217313-2-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1439522510-217313-1-git-send-email-wenzong.fan@windriver.com>
References: <1439522510-217313-1-git-send-email-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/3] audit: fix unknown-configure-option --with-armeb
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
X-List-Received-Date: Fri, 14 Aug 2015 03:21:57 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The option has been replaced by "--with-arm":

  $ ./configure -h
  --with-arm  enable Arm eabi processor support

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/audit/audit_2.4.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.4.3.bb b/recipes-security/audit/audit_2.4.3.bb
index 7fd8692..460ace0 100644
--- a/recipes-security/audit/audit_2.4.3.bb
+++ b/recipes-security/audit/audit_2.4.3.bb
@@ -38,7 +38,7 @@ EXTRA_OECONF += "--without-prelude \
         --without-python3 \
         --disable-zos-remote \
 	"
-EXTRA_OECONF_append_arm = " --with-armeb=yes"
+EXTRA_OECONF_append_arm = " --with-arm=yes"
 
 EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
 	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
-- 
1.9.1


