Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36B73E00A08; Fri, 10 Mar 2017 13:39:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 309 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 13:39:17 PST
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 980D2E009B9
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 13:39:17 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 83AFB18406
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 22:34:07 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id JVvL0zvDGQBS for <yocto@yoctoproject.org>;
	Fri, 10 Mar 2017 22:34:06 +0100 (CET)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id C891C1821D
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 22:34:06 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B59C01E07A
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 22:34:06 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id AAB511E077
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 22:34:06 +0100 (CET)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 22:34:06 +0100 (CET)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by thoth.se.axis.com (Postfix) with ESMTP id 9F1F53E2
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 22:34:06 +0100 (CET)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id v2ALY6gR025071
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 22:34:06 +0100
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id v2ALY6vK025070
	for yocto@yoctoproject.org; Fri, 10 Mar 2017 22:34:06 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Mar 2017 22:34:02 +0100
Message-Id: <20170310213402.25027-1-pkj@axis.com>
X-Mailer: git-send-email 2.9.0
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][PATCH] dosfstools: Restore support for the -h option to mkdosfs
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
X-List-Received-Date: Fri, 10 Mar 2017 21:39:19 -0000

From: Emma Holmberg Ohlsson <emma.holmberg.ohlsson@axis.com>

The support for the -h option to mkdosfs was accidentally removed when
the target and native versions of the recipe were unified back in
Dylan...

Signed-off-by: Emma Holmberg Ohlsson <emma.holmberg.ohlsson@axis.com>
Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch | 2 +-
 recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch b/recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch
index ae21bee..872fd82 100644
--- a/recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch
+++ b/recipes-devtools/dosfstools/dosfstools/mkdosfs-bootcode.patch
@@ -183,7 +183,7 @@ Index: dosfstools-2.11/mkdosfs/mkdosfs.c
  	   program_name);
  
 -  while ((c = getopt (argc, argv, "AbcCf:F:Ii:l:m:n:r:R:s:S:h:v")) != EOF)
-+  while ((c = getopt (argc, argv, "AbcCf:F:Ii:l:m:n:r:R:s:S:v:B:")) != EOF)
++  while ((c = getopt (argc, argv, "AbcCf:F:Ii:l:m:n:r:R:s:S:h:v:B:")) != EOF)
      /* Scan the command line for options */
      switch (c)
        {
diff --git a/recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch b/recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch
index 3ba4711..9643932 100644
--- a/recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch
+++ b/recipes-devtools/dosfstools/dosfstools/mkdosfs-dir.patch
@@ -609,8 +609,8 @@ Index: dosfstools-2.11/mkdosfs/mkdosfs.c
    printf ("%s " VERSION " (" VERSION_DATE ")\n",
  	   program_name);
  
--  while ((c = getopt (argc, argv, "AbcCf:F:Ii:l:m:n:r:R:s:S:v:B:")) != EOF)
-+  while ((c = getopt (argc, argv, "AbcCd:f:F:Ii:l:m:n:r:R:s:S:v:B:")) != EOF)
+-  while ((c = getopt (argc, argv, "AbcCf:F:Ii:l:m:n:r:R:s:S:h:v:B:")) != EOF)
++  while ((c = getopt (argc, argv, "AbcCd:f:F:Ii:l:m:n:r:R:s:S:h:v:B:")) != EOF)
      /* Scan the command line for options */
      switch (c)
        {
-- 
2.9.0


