Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76618E00D4E; Fri, 15 Sep 2017 00:38:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61857E00C45
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8F7cUHp005185
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:30 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Fri, 15 Sep 2017 00:38:28 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Sep 2017 15:37:27 +0800
Message-ID: <402d7850a5ad8774d5a66f41a255a793b2cc69a9.1505460823.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1505460823.git.jackie.huang@windriver.com>
References: <cover.1505460823.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 3/4] samhain: avoid searching host dir for postgresql
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
X-List-Received-Date: Fri, 15 Sep 2017 07:38:34 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Add a patch to avoid searching host dir for postgresql,
and set PGSQL_INC_DIR and PGSQL_LIB_DIR instead.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 ...mhain-avoid-searching-host-for-postgresql.patch | 134 +++++++++++++++++++++
 recipes-security/samhain/samhain.inc               |   3 +-
 2 files changed, 136 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/samhain/files/samhain-avoid-searching-host-for-postgresql.patch

diff --git a/recipes-security/samhain/files/samhain-avoid-searching-host-for-postgresql.patch b/recipes-security/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
new file mode 100644
index 0000000..6bf67e0
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
@@ -0,0 +1,134 @@
+From 3e2ca7e06b16ceff6d12beb5113312f6525df595 Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Thu, 14 Sep 2017 11:02:12 +0800
+Subject: [PATCH] configure.ac: avoid searching host for postgresql
+
+Upstream-Status: Inappropriate [cross compile specific]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ configure.ac | 101 +++--------------------------------------------------------
+ 1 file changed, 5 insertions(+), 96 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index a224c68..f658d53 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -1278,90 +1278,11 @@ AC_ARG_WITH(database,
+           AC_DEFINE(WITH_POSTGRES)
+           AC_DEFINE(WITH_DATABASE)
+ 	  #
+-	  PGCONF="no"
+-	  MY_PATH="${PATH}:/usr/local/bin:/usr/local/pgsql/bin"
+-	  OLD_IFS="$IFS"
+-	  IFS=":"
+-	  for ff in ${MY_PATH}
+-	  do
+-	    if test -f "$ff/pg_config"
+-	    then
+-		PGCONF="$ff/pg_config"
+-	    fi
+-	  done
+-	  IFS="${OLD_IFS}"
+-	  #
+-	  #
+-	  if test "x${PGCONF}" = "xno"
+-	  then
+-	    AC_MSG_CHECKING(for PostgreSQL in /usr/local/pgsql /usr/pgsql /usr/local /usr PGSQL_HOME)
+-	    pgsql_directory="/usr/local/pgsql /usr/pgsql /usr/local /usr ${PGSQL_HOME}"
+-  	    for i in $pgsql_directory; do 
+-    	      if test -r $i/include/pgsql/libpq-fe.h; then
+-                PGSQL_INC_DIR=$i/include
+-		PGSQL_DIR=$i
+-		# use AC_CHECK_HEADERS to check for pgsql/libpq-fe.h
+-              fi
+-            done 
+-            if test -z "$PGSQL_DIR"; then
+-  	      for i in $pgsql_directory; do 
+-    	        if test -r $i/include/postgresql/libpq-fe.h; then
+-                  PGSQL_INC_DIR=$i/include
+-		  PGSQL_DIR=$i
+-                fi
+-              done
+-	    fi
+-            if test -z "$PGSQL_DIR"; then
+-  	      for i in $pgsql_directory; do 
+-    	        if test -r $i/include/libpq-fe.h; then
+-                  PGSQL_INC_DIR=$i/include
+-		  PGSQL_DIR=$i
+-                fi
+-              done
+-	    fi
+-	    
+-            if test -z "$PGSQL_DIR"; then
+-              tmp=""
+-              for i in $pgsql_directory; do
+-                tmp="$tmp $i/include $i/include/pgsql $i/include/postgresql"
+-              done
+-              FAIL_MESSAGE("PostgreSQL header file (libpq-fe.h)", $tmp)
+-	    fi
+-
+-	    for i in lib lib/pgsql lib/postgresql; do
+-      		str="$PGSQL_DIR/$i/libpq.*"
+-      		for j in `echo $str`; do
+-       		 if test -r $j; then
+-       		   PGSQL_LIB_DIR="$PGSQL_DIR/$i"
+-       		   break 2
+-      		  fi
+-    		done
+-   	    done
+-
+-	    if test -z "$PGSQL_LIB_DIR"; then
+-	      for ff in $pgsql_directory; do
+-		for i in lib lib/pgsql lib/postgresql; do
+-      		  str="$ff/$i/libpq.*"
+-      		  for j in `echo $str`; do
+-       		    if test -r $j; then
+-       		      PGSQL_LIB_DIR="$ff/$i"
+-       		      break 3
+-      		    fi
+-    		  done
+-   	        done
+-              done
+-	    fi
+-
+-	    if test -z "$PGSQL_LIB_DIR"; then
+-	       tmp=""
+-	       for i in $pgsql_directory; do
+-		   tmp="$i/lib $i/lib/pgsql $i/lib/postgresql"
+-	       done
+-	       FAIL_MESSAGE("postgresql library libpq", $tmp)
+-            fi
+-
+-            AC_MSG_RESULT(yes)
+-
++	  if test -z "${PGSQL_LIB_DIR}" ; then
++            FAIL_MESSAGE("PGSQL_LIB_DIR is not set!")
++	  elif test -z "${PGSQL_INC_DIR}" ; then
++            FAIL_MESSAGE("PGSQL_INC_DIR is not set!")
++	  else
+ 	    LIBS="$LIBS -L${PGSQL_LIB_DIR} -lpq -lm"
+ 	    if test x"$enable_static" = xyes; then
+ 	      LIBS="$LIBS -L${PGSQL_LIB_DIR} -lpq -lcrypt -lm"
+@@ -1370,18 +1291,6 @@ AC_ARG_WITH(database,
+ 	    fi
+ 	    # CFLAGS="$CFLAGS -I${PGSQL_INC_DIR}"
+ 	    CPPFLAGS="$CPPFLAGS -I${PGSQL_INC_DIR}"
+-	    AC_CHECK_HEADERS(pgsql/libpq-fe.h)
+-	    AC_CHECK_HEADERS(postgresql/libpq-fe.h)
+-	  else
+-	    pg_lib_dir=`${PGCONF} --libdir`
+-	    if test x"$enable_static" = xyes; then
+-	      LIBS="$LIBS -L${pg_lib_dir} -lpq -lcrypt -lm"
+-            else
+-	      LIBS="$LIBS -L${pg_lib_dir} -lpq -lm"
+-            fi
+-	    pg_inc_dir=`${PGCONF} --includedir`
+-	    # CFLAGS="$CFLAGS -I${pg_inc_dir}"
+-	    CPPFLAGS="$CPPFLAGS -I${pg_inc_dir}"
+ 	  fi
+ 	elif test "x${withval}" = "xodbc"; then
+ 	  AC_MSG_CHECKING(for odbc in /usr /usr/local ODBC_HOME)
+-- 
+2.11.0
+
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index d25f653..a11b7d8 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -12,6 +12,7 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-pid-path.patch \
            file://samhain-sha256-big-endian.patch \
            file://samhain-configure-add-option-for-ps.patch \
+           file://samhain-avoid-searching-host-for-postgresql.patch \
            file://${INITSCRIPT_NAME}.init \
            file://${INITSCRIPT_NAME}.default \
            file://samhain.service \
@@ -50,7 +51,7 @@ PACKAGECONFIG ??= "postgresql ps \
     ${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)} \
 "
 
-PACKAGECONFIG[postgresql]  = "--with-database=postgresql --enable-xml-log, , postgresql"
+PACKAGECONFIG[postgresql]  = "--with-database=postgresql --enable-xml-log PGSQL_INC_DIR=${STAGING_INCDIR} PGSQL_LIB_DIR=${STAGING_LIBDIR}, , postgresql"
 PACKAGECONFIG[suidcheck]  = "--enable-suidcheck, , "
 PACKAGECONFIG[logwatch]  = "--enable-login-watch, , "
 PACKAGECONFIG[mounts]  = "--enable-mounts-check, , "
-- 
2.11.0


