Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C78D8E00779; Mon, 16 Feb 2015 15:34:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C651E0076B
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 15:34:48 -0800 (PST)
Received: by pdbfl12 with SMTP id fl12so39470657pdb.2
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 15:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=FEShupFJksmWOLq+gWmLvZqinbIKqJmqnevIBP+BJz0=;
	b=ZrppE+Cnp99zlfRqETWAt6fl5rJekBMVO2VvqbyLRF9jMnR3QrKv64FwmX3mNZa5HQ
	B4R4gefVQlOAzrwFQbqQGkEPjnPrZXOnYJsRRygnovvs7GYA1fovWxlJEGT1FlW3oIbz
	yFVYkw7jKK6R2evqfAfxVFDQw8uJOaLBkrRL1SRO+Y5ViU5tHRrCCmJGj0p6uwM5JFkB
	TJp75I0qcQwY5i0g0bg+87m/gw8Q3/dkX6xrTzhHNcvogeiKKpPUaMajTjk8Qqe1nRqq
	ibXQUBX2bBw6nKIiyxkEgXcl3MTCXPKHSkPr75hvEMI8W33wVA3ocy7BBzfeDWKZRELU
	QVlQ==
X-Received: by 10.66.148.161 with SMTP id tt1mr45012363pab.85.1424129687910;
	Mon, 16 Feb 2015 15:34:47 -0800 (PST)
Received: from localhost.localdomain ([76.14.1.153])
	by mx.google.com with ESMTPSA id e5sm15853719pdj.20.2015.02.16.15.34.45
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 16 Feb 2015 15:34:46 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Feb 2015 15:34:42 -0800
Message-Id: <1424129682-4616-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-cgl][PATCH] README: update BBMASK and add send-email example
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
X-List-Received-Date: Mon, 16 Feb 2015 23:34:51 -0000

From: Armin Kuster <akuster@mvista.com>

libcap-ng is now in meta-oe and removed from meta-security.
mask no longer required.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 README | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/README b/README
index ba311b7..a488cd7 100644
--- a/README
+++ b/README
@@ -57,6 +57,8 @@ used: enealinux@lists.enea.com
 When sending patches please take a look at the contribution guide available
 here: https://wiki.yoctoproject.org/wiki/Contribution_Guidelines
 
+example:
+git send-email -1 -M --to yocto@yoctoproject.org  --subject-prefix=meta-cgl][PATCH
 
 Table of Contents
 =================
@@ -96,7 +98,7 @@ other layers needed. Adapt the below list to proper format.
     meta-cloud-services/meta-openstack
 
 A BBMASK definition is required because of some recipes duplicate existance:
-    BBMASK = "meta-security/recipes-security/libcap-ng|meta-openembedded/meta-oe/recipes-support/multipath-tools"
+    BBMASK = "meta-openembedded/meta-oe/recipes-support/multipath-tools"
 
 
 II. Misc
-- 
1.9.1


