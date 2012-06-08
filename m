Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45D95E006D9
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 09:11:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q58GB9Jb017478
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Jun 2012 09:11:09 -0700 (PDT)
Received: from yow-pgortmak-d2.corp.ad.wrs.com (128.224.146.165) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 8 Jun 2012 09:11:08 -0700
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 Jun 2012 12:10:57 -0400
Message-ID: <1339171857-2776-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.7.9.6
MIME-Version: 1.0
Subject: [PATCH] gitignore: add wildcard to match toplevel patch files
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
X-List-Received-Date: Fri, 08 Jun 2012 16:11:11 -0000
Content-Type: text/plain

To support the basic workflow of trivial patches:

 git format-patch HEAD~.. ; git send-email --to foo@bar.com 0001-foo.patch

We don't want git status reporting on patches lying in the top
level dir in this case.

Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 .gitignore |    1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 7f9f082..688acec 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,6 +1,7 @@
 bitbake
 *.pyc
 *.pyo
+/*.patch
 build*/conf/local.conf
 build*/conf/bblayers.conf
 build*/downloads
-- 
1.7.9.6


