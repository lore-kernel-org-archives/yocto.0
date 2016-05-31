Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED040E00CF5; Tue, 31 May 2016 07:14:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AABA5E00CE1
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 07:14:29 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id q62so33188517wmg.3
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 07:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=jv0CGX18wAHtiKCCEV1y45MmPrmkuhnne+9697QTayE=;
	b=cNiMJ+7XBOvhe0fY0Q/KNkA3Vlq38kkQqgXa8iyiZFlWqh7ACZtbxnhjy0cWIQMWlc
	EeutsxjXMZRn5yGfXf8JJxbpA/qd01WtUmprNJhsuktMrC2kvgdhfX0PEJdr3Xu0vQlo
	HHTTWBkCBQ6NyrW+Rt7ELH7q2NLlHi4ElGA3rS0rofwujjayYYnpIVB+fQs2f4pbzJvO
	5cqIAIWNw2T+5ofiFzSawQbFdJj3IvElqyu5LzLUbCNvOvII3aq+9MV4+RaI9XHwH9mO
	ewdOnGwtw5wZVoIUhRazoRi3gmnCViVGVyayrV/NZSj86skfrAVsEj4KyMFdZs3e0E5e
	9mIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=jv0CGX18wAHtiKCCEV1y45MmPrmkuhnne+9697QTayE=;
	b=Ltf4a75ABhqrwwsvhkADmhEYV5WpblPbC+Alhu/pHfXqYGM+uKCfd8tU3UtilA469f
	JAk42lbT1SV+wlwpz2Cf6iEKaUTlMqRwX2GitrtPp31hHFNwC+Fk3tOvp2DVHL5D4jlW
	9N7uoaO7X/Jn7hWF8ySUWJkTWxBN4JfLmH3TdWdqMhXiyCj7oQCnS9MnAtAjw9RQjot5
	QBbQtexXnirum58FDf/E66em1vpy3oMIJBpxb36cL3w2KtQTcOUXhkNblrhQEV4QEybE
	EXyw6NHOOe8G1Ow3qlUrGnSu4NidbO4OHPR9pGOPOeI3kplX6pYaoWpq9ByuiKnmFyMJ
	PPWQ==
X-Gm-Message-State: ALyK8tLOsdfVcSfLt4q8nHY2t0GhDA8r8aPkxv5RsOMrCwRCfi3PNQ2zSUtY1yhsm+fDhw==
X-Received: by 10.28.152.136 with SMTP id a130mr15676811wme.60.1464704067996; 
	Tue, 31 May 2016 07:14:27 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	t13sm29626628wmt.14.2016.05.31.07.14.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 31 May 2016 07:14:27 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 19:44:08 +0530
Message-Id: <1464704048-29897-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH] packagegroup-selinux-policycoreutils: add policycoreutils-hll
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
X-List-Received-Date: Tue, 31 May 2016 14:14:34 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

we need policycoreutils-hll to insert custom policy module/package, without
it semodule install fail with error:

libsemanage.semanage_pipe_data: Unable to execute /usr/libexec/selinux/hll/
pp : No such file or directory
libsemanage.semanage_direct_commit: Failed to compile hll files into cil
files. (No such file or directory).
semodule:  Failed!

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
index 7f56d7c..b566134 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
@@ -33,5 +33,6 @@ RDEPENDS_${PN} = "\
 	policycoreutils-sestatus \
 	policycoreutils-setfiles \
 	policycoreutils-setsebool \
+	policycoreutils-hll \
 	system-config-selinux \
 "
-- 
1.9.1


