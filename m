Return-Path: <pierluigi.fiorini@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63A44E013D1
	for <yocto@yoctoproject.org>; Sat, 27 Jul 2013 08:45:07 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id c4so2092335eek.29
	for <yocto@yoctoproject.org>; Sat, 27 Jul 2013 08:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer;
	bh=5uB4fZPAgESUmNnI5jZAuYofR+65d1r5QjqAR3tTsGY=;
	b=pEi6NvGetvNYHBVhEw5rrZJzINqByJiJpBvBc0T19Trnduf6s19iGK/TPDN3spslDX
	IpCwE2XtPkuEq3/9rfIfVNQBPj0N376CUtW4GrQnYkxMiJukiW44tXpY5ZCZ+zBWItOb
	493vNwypQr6k1ssx40am/4aEoI4fwtsKg5WRwDmIzmO86ULZ+qHMEtWWekz6K06qVY6s
	ktSoF6iNJWp4Fke6OikTvs90P07C7vNe9dSKYPk7m2bCp/jVqeMablPmPaJJfbSe0inX
	EEkR+zt1vInk/m2cV6iiOe1lSMcOrZr/gitM8Jt89DyaIQE1UrvSOXLAM155Qs8K8nwB
	IZHg==
X-Received: by 10.15.21.76 with SMTP id c52mr1624025eeu.135.1374939906619;
	Sat, 27 Jul 2013 08:45:06 -0700 (PDT)
Received: from localhost.localdomain (93-39-245-167.ip78.fastwebnet.it.
	[93.39.245.167])
	by mx.google.com with ESMTPSA id p49sm88694776eeu.2.2013.07.27.08.45.05
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sat, 27 Jul 2013 08:45:06 -0700 (PDT)
From: Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Jul 2013 17:44:44 +0200
Message-Id: <1374939884-20222-1-git-send-email-pierluigi.fiorini@gmail.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH] Fix QA Issue reported by running bitbake
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
X-List-Received-Date: Sat, 27 Jul 2013 15:45:08 -0000

Fix the following error:
  Variable ALLOW_EMPTY is set as not being package specific, please fix this.
---
 recipes-security/tasks/task-core-selinux.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/tasks/task-core-selinux.bb b/recipes-security/tasks/task-core-selinux.bb
index 05f8dfc..dda9c50 100644
--- a/recipes-security/tasks/task-core-selinux.bb
+++ b/recipes-security/tasks/task-core-selinux.bb
@@ -8,7 +8,7 @@ PACKAGES = "\
     task-core-selinux \
     "
 
-ALLOW_EMPTY = "1"
+ALLOW_EMPTY_${PN} = "1"
 
 RDEPENDS_task-core-selinux = " \
 	ustr \
-- 
1.8.1.4


