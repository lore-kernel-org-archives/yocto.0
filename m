Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29134E00D67; Tue,  5 Dec 2017 23:25:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 446CCE00D00
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 23:25:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vB67PrAb002296
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 5 Dec 2017 23:25:53 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Tue, 5 Dec 2017 23:25:52 -0800
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 6 Dec 2017 15:07:08 +0800
Message-ID: <20171206070708.11112-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.13.3
MIME-Version: 1.0
Subject: [meta-security][PATCH] samhain: remove the path for start-stop-daemon
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
X-List-Received-Date: Wed, 06 Dec 2017 07:25:55 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Remove the absolute path for start-stop-daemon
to fix samhain start-up as start-stop-daemon
sometimes located in /usr/sbin, not the expected
/sbin.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-security/samhain/files/samhain-client.init     | 12 ++++++------
 recipes-security/samhain/files/samhain-server.init     | 10 +++++-----
 recipes-security/samhain/files/samhain-standalone.init | 12 ++++++------
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/recipes-security/samhain/files/samhain-client.init b/recipes-security/samhain/files/samhain-client.init
index 730e1c4..d5fabed 100644
--- a/recipes-security/samhain/files/samhain-client.init
+++ b/recipes-security/samhain/files/samhain-client.init
@@ -70,15 +70,15 @@ case "$1" in
 	    /bin/rm -f ${PIDFILE}
 	fi
 	#
-	echo -n "Starting ${NAME}"
-	/sbin/start-stop-daemon --start --quiet --exec $DAEMON
+        echo -n "Starting ${NAME}"
+        start-stop-daemon --start --quiet --exec $DAEMON
 	RETVAL=$?
 	samhain_done
 	;;
 
   stop)
-	echo -n "Stopping $NAME"
-        ( /sbin/start-stop-daemon --stop --quiet --exec $DAEMON )
+        echo -n "Stopping $NAME"
+        start-stop-daemon --stop --quiet --exec $DAEMON
 	RETVAL=$? 
 
 	#
@@ -101,8 +101,8 @@ case "$1" in
 	;;
 
   reload|force-reload)
-       	echo -n "Reloading $NAME configuration files"
-       	/sbin/start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON
+        echo -n "Reloading $NAME configuration files"
+        start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON
 	RETVAL=$?
 	samhain_done
 	;;
diff --git a/recipes-security/samhain/files/samhain-server.init b/recipes-security/samhain/files/samhain-server.init
index 89bd0aa..c456e51 100644
--- a/recipes-security/samhain/files/samhain-server.init
+++ b/recipes-security/samhain/files/samhain-server.init
@@ -65,14 +65,14 @@ case "$1" in
 	fi
 	#
 	echo -n "Starting ${NAME}"
-	/sbin/start-stop-daemon --start --quiet --exec $DAEMON
+	start-stop-daemon --start --quiet --exec $DAEMON
 	RETVAL=$?
 	samhain_done
 	;;
 
   stop)
-	echo -n "Stopping $NAME"
-        ( /sbin/start-stop-daemon --stop --quiet --exec $DAEMON )
+        echo -n "Stopping $NAME"
+        start-stop-daemon --stop --quiet --exec $DAEMON
 	RETVAL=$? 
 
 	#
@@ -95,8 +95,8 @@ case "$1" in
 	;;
 
   reload|force-reload)
-       	echo -n "Reloading $NAME configuration files"
-       	/sbin/start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON
+        echo -n "Reloading $NAME configuration files"
+        start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON
 	RETVAL=$?
 	samhain_done
 	;;
diff --git a/recipes-security/samhain/files/samhain-standalone.init b/recipes-security/samhain/files/samhain-standalone.init
index ac28efd..2f23bff 100644
--- a/recipes-security/samhain/files/samhain-standalone.init
+++ b/recipes-security/samhain/files/samhain-standalone.init
@@ -69,15 +69,15 @@ case "$1" in
 	    /bin/rm -f ${PIDFILE}
 	fi
 
-	echo -n "Starting ${NAME}"
-	( /sbin/start-stop-daemon --start --quiet --exec $DAEMON )
+        echo -n "Starting ${NAME}"
+        start-stop-daemon --start --quiet --exec $DAEMON
 	RETVAL=$?
 	samhain_done
 	exit $RETVAL
 	;;
   stop)
-    echo -n "Stopping $NAME"
-    ( /sbin/start-stop-daemon --stop --quiet --exec $DAEMON )
+        echo -n "Stopping $NAME"
+        start-stop-daemon --stop --quiet --exec $DAEMON
 	RETVAL=$?
 	samhain_done
 	#
@@ -99,8 +99,8 @@ case "$1" in
 	;;
 
   reload|force-reload)
-    echo -n "Reloading $NAME configuration files"
-    ( /sbin/start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON )
+        echo -n "Reloading $NAME configuration files"
+        start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON
     RETVAL=$?
 	samhain_done
     ;;
-- 
2.13.3


