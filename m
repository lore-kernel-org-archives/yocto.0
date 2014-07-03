Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5C4EE006EF; Thu,  3 Jul 2014 02:17:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3F952E006C4
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 02:17:20 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Thu, 3 Jul 2014
	11:17:12 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 4FC40285092;
	Thu,  3 Jul 2014 11:17:12 +0200 (CEST)
From: <maxin@maxinbjohn.info>
To: <yocto@yoctoproject.org>
Date: Thu, 3 Jul 2014 11:17:09 +0200
Message-ID: <1404379029-44995-1-git-send-email-maxin@maxinbjohn.info>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: maxin@maxinbjohn.info does not
	designate permitted sender hosts)
Subject: [PATCH] documentation: update git version requirement
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
X-List-Received-Date: Thu, 03 Jul 2014 09:17:25 -0000
Content-Type: text/plain

From: "Maxin B. John" <maxin.john@enea.com>

git version 1.7.8 added the --list option to git-branch. Since we depend
on this option in git.py, the minimum requiremnt for git should be updated
to Git 1.7.8+

Signed-off-by: Maxin B. John <maxin.john@enea.com>
---
 documentation/ref-manual/introduction.xml           | 2 +-
 documentation/ref-manual/migration.xml              | 2 +-
 documentation/yocto-project-qs/yocto-project-qs.xml | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/ref-manual/introduction.xml b/documentation/ref-manual/introduction.xml
index f48489a..6fa3785 100644
--- a/documentation/ref-manual/introduction.xml
+++ b/documentation/ref-manual/introduction.xml
@@ -352,7 +352,7 @@
             must meet the following version requirements for Git, tar, and
             Python:
             <itemizedlist>
-                <listitem><para>Git 1.7.5 or greater</para></listitem>
+                <listitem><para>Git 1.7.8 or greater</para></listitem>
                 <listitem><para>tar 1.24 or greater</para></listitem>
                 <listitem><para>Python 2.7.3 or greater not including
                     Python 3.x, which is not supported.</para></listitem>
diff --git a/documentation/ref-manual/migration.xml b/documentation/ref-manual/migration.xml
index 7cefa5e..1b63571 100644
--- a/documentation/ref-manual/migration.xml
+++ b/documentation/ref-manual/migration.xml
@@ -598,7 +598,7 @@
             <itemizedlist>
                 <listitem><para>Python 2.7.3+</para></listitem>
                 <listitem><para>Tar 1.24+</para></listitem>
-                <listitem><para>Git 1.7.5+</para></listitem>
+                <listitem><para>Git 1.7.8+</para></listitem>
                 <listitem><para>Patched version of Make if you are using
                     3.82.
                     Most distributions that provide Make 3.82 use the patched
diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 5ffe674..31babd1 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -210,7 +210,7 @@
             distribution that has the following versions for Git, tar, and
             Python.
             <itemizedlist>
-                <listitem><para>Git 1.7.5 or greater</para></listitem>
+                <listitem><para>Git 1.7.8 or greater</para></listitem>
                 <listitem><para>tar 1.24 or greater</para></listitem>
                 <listitem><para>Python 2.7.3 or greater excluding Python
                    3.x, which is not supported.</para></listitem>
-- 
1.9.1


