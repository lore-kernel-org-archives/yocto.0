Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06ABFE009D2; Fri,  8 May 2015 13:13:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23F90E009F6
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 13:13:37 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YqoeO-0002tj-NW from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 08 May 2015 13:13:36 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 8 May 2015 21:13:34 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 May 2015 23:13:28 +0300
Message-ID: <1431116010-14977-8-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
References: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 08/10] heartbeat: make bootstrap work without checking for libtool command
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
X-List-Received-Date: Fri, 08 May 2015 20:13:42 -0000
Content-Type: text/plain

There is no use for just 'libtool' script, other than deriving
libtoolize from it. Make bootstrap script look for libtoolize directly
and forget about libtool completely.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 .../heartbeat/heartbeat-bootstrap-libtool.patch    | 52 ++++++++++++++++++++++
 .../recipes-cgl/heartbeat/heartbeat_3.0.5.bb       |  1 +
 2 files changed, 53 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-bootstrap-libtool.patch

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-bootstrap-libtool.patch b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-bootstrap-libtool.patch
new file mode 100644
index 0000000..bcddab2
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-bootstrap-libtool.patch
@@ -0,0 +1,52 @@
+Index: Heartbeat-3-0-7e3a82377fa8/bootstrap
+===================================================================
+--- Heartbeat-3-0-7e3a82377fa8.orig/bootstrap
++++ Heartbeat-3-0-7e3a82377fa8/bootstrap
+@@ -173,23 +173,22 @@ ln -s `which $automake` ./automake
+ 
+ # Check for Libtool
+ pkg="libtool"
+-for command in libtool libtool14 libtool15 glibtool
++for command in libtoolize libtoolize14 libtoolize15 glibtoolize
+ do
+   URL=$gnu/$pkg/
+   if
+     testProgram $command
+   then
+     : OK $pkg is installed
+-    libtool=$command
+-    libtoolize=`echo  "$libtool" | sed -e 's/libtool/libtoolize/'`
++    libtoolize=$command
+   fi
+ done
+ 
+ # Check to see if we got a valid command.
+ if 
+-    $libtool --version </dev/null >/dev/null 2>&1
++    $libtoolize --version </dev/null >/dev/null 2>&1
+ then
+-    echo "Libtool package $libtool found."
++    echo "Libtool package $libtoolize found."
+ else
+     RC=$?
+     cat <<-EOF >&2
+@@ -200,10 +199,6 @@ else
+ 	EOF
+ fi
+ 
+-# Create local copy so that the incremental updates will work.
+-rm -f          ./libtool
+-ln -s `which $libtool` ./libtool
+-
+ case $RC in
+   0)	;;
+   *)	exit $RC;;
+@@ -217,7 +212,7 @@ oneline() {
+   read x; echo "$x"
+ }
+ 
+-LT_version=`$libtool --version | oneline | sed -e 's%^[^0-9]*%%' -e s'% .*%%'`
++LT_version=`$libtoolize --version | oneline | sed -e 's%^[^0-9]*%%' -e s'% .*%%'`
+ LT_majvers=`echo "$LT_version" | sed -e 's%\..*%%'`
+ LT_minvers=`echo "$LT_version" | sed -e 's%^[^.]*\.%%' `
+ LT_minnum=`echo  "$LT_minvers" | sed -e 's%[^0-9].*%%'`
diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
index 369bd23..184ad22 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
@@ -34,6 +34,7 @@ SRC_URI = " \
     file://ucast.c-fix-compile-errors.patch \
     file://configure.in-Error-and-warning-fix.patch \
     file://heartbeat-init.d-heartbeat.in-modify-parameter.patch \
+    file://heartbeat-bootstrap-libtool.patch \
     file://heartbeat.service \
 "
 SRC_URI[md5sum] = "396510e3c143a9c2288bc52cfc9caa3c"
-- 
2.1.4


