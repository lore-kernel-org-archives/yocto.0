Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97553E00B01; Tue, 25 Apr 2017 18:13:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AF49E00867
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 18:13:24 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id g23so13244588pfj.1
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 18:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=dHksVZk1/pPr7Iig39e12hmlivd0XF5ewv9NDbd99rM=;
	b=IbAk9CWpDNTPcBuJsmm8kghycVh+ByT3ZYpbZzoGfW/If2sLZ/E0F0SgDPzImQ4BgK
	KXyOl64CJsP0YX7Q/bHM68DSPfDmPSVjTLiCzPvlz2U/r1iG6IwTKQ1uy+ccUihs+57u
	NDlrQuPJtq63mdPokjMbj02gK2E8sx6eUHgamjJFB5qOb85QYCAAPczJewR9KjJSnJmm
	s3NUC1xWQQhVkfSSGC5YE/4RyBDocatu5tVh8rogDW93oEbL3U8KuBDW0OV+ScHdt0e+
	Dc/bMSth69KNaKR0JnvMUfkvXUZE+Q9tgfYOQ+C6LnAcxzdY1GH/Y7leUKR8+7yRNwYk
	6pyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=dHksVZk1/pPr7Iig39e12hmlivd0XF5ewv9NDbd99rM=;
	b=sPzulDFczihQNXk05WpdBtcNaZtqz68+dy4eun9pxfDS1kcI4fqPbJKbGvgNa06Aqu
	NsAN0h/SPoAUmq0VAWqWbHddZXg58bT7Zn2wV6or1Ilc/1TG4FhJV5XTbgN6FBp3duq9
	W7vOXSiIaMuQmTO7nEBk09jdBV9XHf6xIqtU9inTr22GQJe41ZXjLDQJ3CWHZGprNLdL
	JZR+ZArbF1gojgcaEex9wmWhSKoYUSxu9VbNF0kJlEbnPTIbKI5QEDjH6j1WbaCSE0T1
	W7Ph8Ql84KRGzIPSSoOLG7ktgbfRUFZXaIJbtWO+ID9ha7vldwqdQp/o2t8Nd6m+/mN1
	ee5A==
X-Gm-Message-State: AN3rC/687KEtrqCbgzQGd0fzIYAp+QCEDBNhlqO/QQ9Qsj/+vAaaUum7
	dQ5BBbPp0EDuMngM
X-Received: by 10.98.144.155 with SMTP id q27mr29892148pfk.179.1493169203769; 
	Tue, 25 Apr 2017 18:13:23 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	(50-233-148-156-static.hfc.comcastbusiness.net. [50.233.148.156])
	by smtp.gmail.com with ESMTPSA id
	r131sm38472057pgr.67.2017.04.25.18.13.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 25 Apr 2017 18:13:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 25 Apr 2017 18:13:22 -0700
Message-Id: <1493169202-31782-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] freediameter: Add recipe
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
X-List-Received-Date: Wed, 26 Apr 2017 01:13:28 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../freediameter/files/freeDiameter.conf           | 250 +++++++++++++++++++++
 recipes-security/freediameter/files/init           | 160 +++++++++++++
 .../freediameter/files/no_test_run.patch           |  12 +
 .../freediameter/freediameter_1.2.1.bb             |  71 ++++++
 4 files changed, 493 insertions(+)
 create mode 100644 recipes-security/freediameter/files/freeDiameter.conf
 create mode 100644 recipes-security/freediameter/files/init
 create mode 100644 recipes-security/freediameter/files/no_test_run.patch
 create mode 100644 recipes-security/freediameter/freediameter_1.2.1.bb

diff --git a/recipes-security/freediameter/files/freeDiameter.conf b/recipes-security/freediameter/files/freeDiameter.conf
new file mode 100644
index 0000000..7b56d74
--- /dev/null
+++ b/recipes-security/freediameter/files/freeDiameter.conf
@@ -0,0 +1,250 @@
+# This is a sample configuration file for freeDiameter daemon.
+
+# Most of the options can be omitted, as they default to reasonable values.
+# Only TLS-related options must be configured properly in usual setups.
+
+# It is possible to use "include" keyword to import additional files
+# e.g.: include "/etc/freeDiameter.d/*.conf"
+# This is exactly equivalent as copy & paste the content of the included file(s) 
+# where the "include" keyword is found.
+
+
+##############################################################
+##  Peer identity and realm 
+
+# The Diameter Identity of this daemon.
+# This must be a valid FQDN that resolves to the local host.
+# Default: hostname's FQDN
+#Identity = "aaa.koganei.freediameter.net";
+
+# The Diameter Realm of this daemon.
+# Default: the domain part of Identity (after the first dot).
+#Realm = "koganei.freediameter.net";
+
+##############################################################
+##  Transport protocol configuration
+
+# The port this peer is listening on for incoming connections (TCP and SCTP).
+# Default: 3868. Use 0 to disable.
+#Port = 3868;
+
+# The port this peer is listening on for incoming TLS-protected connections (TCP and SCTP).
+# See TLS_old_method for more information about TLS flavours.
+# Note: we use TLS/SCTP instead of DTLS/SCTP at the moment. This will change in future version of freeDiameter.
+# Default: 5868. Use 0 to disable.
+#SecPort = 5868;
+
+# Use RFC3588 method for TLS protection, where TLS is negociated after CER/CEA exchange is completed 
+# on the unsecure connection. The alternative is RFC6733 mechanism, where TLS protects also the 
+# CER/CEA exchange on a dedicated secure port.
+# This parameter only affects outgoing connections. 
+# The setting can be also defined per-peer (see Peers configuration section).
+# Default: use RFC6733 method with separate port for TLS.
+#TLS_old_method;
+
+# Disable use of TCP protocol (only listen and connect over SCTP)
+# Default : TCP enabled
+#No_TCP;
+
+# Disable use of SCTP protocol (only listen and connect over TCP)
+# Default : SCTP enabled
+#No_SCTP;
+# This option is ignored if freeDiameter is compiled with DISABLE_SCTP option.
+
+# Prefer TCP instead of SCTP for establishing new connections.
+# This setting may be overwritten per peer in peer configuration blocs.
+# Default : SCTP is attempted first.
+#Prefer_TCP;
+
+# Default number of streams per SCTP associations.
+# This setting may be overwritten per peer basis.
+# Default : 30 streams
+#SCTP_streams = 30;
+
+##############################################################
+##  Endpoint configuration
+
+# Disable use of IP addresses (only IPv6)
+# Default : IP enabled
+#No_IP;
+
+# Disable use of IPv6 addresses (only IP)
+# Default : IPv6 enabled
+#No_IPv6;
+
+# Specify local addresses the server must bind to
+# Default : listen on all addresses available.
+#ListenOn = "202.249.37.5";
+#ListenOn = "2001:200:903:2::202:1";
+#ListenOn = "fe80::21c:5ff:fe98:7d62%eth0";
+
+
+##############################################################
+##  Server configuration
+
+# How many Diameter peers are allowed to be connecting at the same time ?
+# This parameter limits the number of incoming connections from the time
+# the connection is accepted until the first CER is received.
+# Default: 5 unidentified clients in paralel.
+#ThreadsPerServer = 5;
+
+##############################################################
+##  TLS Configuration
+
+# TLS is managed by the GNUTLS library in the freeDiameter daemon.
+# You may find more information about parameters and special behaviors
+# in the relevant documentation.
+# http://www.gnu.org/software/gnutls/manual/
+
+# Credentials of the local peer
+# The X509 certificate and private key file to use for the local peer.
+# The files must contain PKCS-1 encoded RSA key, in PEM format.
+# (These parameters are passed to gnutls_certificate_set_x509_key_file function)
+# Default : NO DEFAULT
+#TLS_Cred = "<x509 certif file.PEM>" , "<x509 private key file.PEM>";
+#TLS_Cred = "/etc/ssl/certs/freeDiameter.pem", "/etc/ssl/private/freeDiameter.key";
+
+# Certificate authority / trust anchors
+# The file containing the list of trusted Certificate Authorities (PEM list)
+# (This parameter is passed to gnutls_certificate_set_x509_trust_file function)
+# The directive can appear several times to specify several files.
+# Default : GNUTLS default behavior
+#TLS_CA = "<file.PEM>";
+
+# Certificate Revocation List file
+# The information about revoked certificates.
+# The file contains a list of trusted CRLs in PEM format. They should have been verified before. 
+# (This parameter is passed to gnutls_certificate_set_x509_crl_file function)
+# Note: openssl CRL format might have interoperability issue with GNUTLS format.
+# Default : GNUTLS default behavior
+#TLS_CRL = "<file.PEM>";
+
+# GNU TLS Priority string
+# This string allows to configure the behavior of GNUTLS key exchanges 
+# algorithms. See gnutls_priority_init function documentation for information.
+# You should also refer to the Diameter required TLS support here:
+#   http://tools.ietf.org/html/rfc6733#section-13.1
+# Default : "NORMAL"
+# Example: TLS_Prio = "NONE:+VERS-TLS1.1:+AES-128-CBC:+RSA:+SHA1:+COMP-NULL";
+#TLS_Prio = "NORMAL";
+
+# Diffie-Hellman parameters size
+# Set the number of bits for generated DH parameters
+# Valid value should be 768, 1024, 2048, 3072 or 4096.
+# (This parameter is passed to gnutls_dh_params_generate2 function, 
+# it usually should match RSA key size)
+# Default : 1024
+#TLS_DH_Bits = 1024;
+
+# Alternatively, you can specify a file to load the PKCS#3 encoded
+# DH parameters directly from. This accelerates the daemon start 
+# but is slightly less secure. If this file is provided, the
+# TLS_DH_Bits parameters has no effect.
+# Default : no default.
+#TLS_DH_File = "<file.PEM>";
+
+
+##############################################################
+##  Timers configuration
+
+# The Tc timer of this peer.
+# It is the delay before a new attempt is made to reconnect a disconnected peer.
+# The value is expressed in seconds. The recommended value is 30 seconds.
+# Default: 30
+#TcTimer = 30;
+
+# The Tw timer of this peer.
+# It is the delay before a watchdog message is sent, as described in RFC 3539.
+# The value is expressed in seconds. The default value is 30 seconds. Value must
+# be greater or equal to 6 seconds. See details in the RFC.
+# Default: 30
+#TwTimer = 30;
+
+##############################################################
+##  Applications configuration
+
+# Disable the relaying of Diameter messages?
+# For messages not handled locally, the default behavior is to forward the
+# message to another peer if any is available, according to the routing 
+# algorithms. In addition the "0xffffff" application is advertised in CER/CEA 
+# exchanges.
+# Default: Relaying is enabled.
+#NoRelay;
+
+# Number of server threads that can handle incoming messages at the same time.
+# Default: 4
+#AppServThreads = 4;
+
+# Other applications are configured by loaded extensions.
+
+##############################################################
+##  Extensions configuration
+
+#  The freeDiameter framework merely provides support for
+# Diameter Base Protocol. The specific application behaviors,
+# as well as advanced functions, are provided
+# by loadable extensions (plug-ins).
+#  These extensions may in addition receive the name of a 
+# configuration file, the format of which is extension-specific.
+#
+# Format:
+#LoadExtension = "/path/to/extension" [ : "/optional/configuration/file" ] ;
+#
+# Examples:
+#LoadExtension = "extensions/sample.fdx";
+#LoadExtension = "extensions/sample.fdx":"conf/sample.conf";
+
+# Extensions are named as follow:
+# dict_* for extensions that add content to the dictionary definitions.
+# dbg_*  for extensions useful only to retrieve more information on the framework execution.
+# acl_*  : Access control list, to control which peers are allowed to connect.
+# rt_*   : routing extensions that impact how messages are forwarded to other peers.
+# app_*  : applications, these extensions usually register callbacks to handle specific messages.
+# test_* : dummy extensions that are useful only in testing environments.
+
+
+# The dbg_msg_dump.fdx extension allows you to tweak the way freeDiameter displays some
+# information about some events. This extension does not actually use a configuration file
+# but receives directly a parameter in the string passed to the extension. Here are some examples:
+## LoadExtension = "dbg_msg_dumps.fdx" : "0x1111"; # Removes all default hooks, very quiet even in case of errors.
+## LoadExtension = "dbg_msg_dumps.fdx" : "0x2222"; # Display all events with few details.
+## LoadExtension = "dbg_msg_dumps.fdx" : "0x0080"; # Dump complete information about sent and received messages.
+# The four digits respectively control: connections, routing decisions, sent/received messages, errors.
+# The values for each digit are:
+#  0 - default - keep the default behavior
+#  1 - quiet   - remove any specific log
+#  2 - compact - display only a summary of the information
+#  4 - full    - display the complete information on a single long line
+#  8 - tree    - display the complete information in an easier to read format spanning several lines.
+
+
+##############################################################
+##  Peers configuration
+
+#  The local server listens for incoming connections. By default,
+# all unknown connecting peers are rejected. Extensions can override this behavior (e.g., acl_wl).
+# 
+#  In addition to incoming connections, the local peer can
+# be configured to establish and maintain connections to some 
+# Diameter nodes and allow connections from these nodes.
+#  This is achieved with the ConnectPeer directive described below.
+#
+# Note that the configured Diameter Identity MUST match
+# the information received inside CEA, or the connection will be aborted.
+#
+# Format:
+#ConnectPeer = "diameterid" [ { parameter1; parameter2; ...} ] ;
+# Parameters that can be specified in the peer's parameter list:
+#  No_TCP; No_SCTP; No_IP; No_IPv6; Prefer_TCP; TLS_old_method;
+#  No_TLS;       # assume transparent security instead of TLS. DTLS is not supported yet (will change in future versions).
+#  Port = 5868;  # The port to connect to
+#  TcTimer = 30;
+#  TwTimer = 30;
+#  ConnectTo = "202.249.37.5";
+#  ConnectTo = "2001:200:903:2::202:1";
+#  TLS_Prio = "NORMAL";
+#  Realm = "realm.net"; # Reject the peer if it does not advertise this realm.
+# Examples:
+#ConnectPeer = "aaa.wide.ad.jp";
+#ConnectPeer = "old.diameter.serv" { TcTimer = 60; TLS_old_method; No_SCTP; Port=3868; } ;
+##############################################################
diff --git a/recipes-security/freediameter/files/init b/recipes-security/freediameter/files/init
new file mode 100644
index 0000000..7b2a31a
--- /dev/null
+++ b/recipes-security/freediameter/files/init
@@ -0,0 +1,160 @@
+#! /bin/sh
+
+### BEGIN INIT INFO
+# Provides:          freediameter
+# Default-Start:     2 3 4 5
+# Default-Stop:      0 1 6
+# Required-Start:    $remote_fs $syslog
+# Required-Stop:     $remote_fs $syslog
+# Short-Description: Start freeDiameter daemon at boot time
+# Description:       Start the freeDiameter daemon at boot time.
+#	freeDiameter is an extensible implementation of the Diameter protocol,
+#	designed for Authentication, Authorization and Accounting. Diameter is
+#	an evolution of the RADIUS protocol.
+### END INIT INFO#
+
+DAEMON=/usr/bin/freeDiameterd
+CONF=/etc/freeDiameter/freeDiameter.conf
+NAME=freediameter
+DESC="freeDiameter daemon"
+
+test -x $DAEMON || exit 0
+
+LOGDIR=/var/log/freediameter
+PIDFILE=/var/run/$NAME.pid
+DODTIME=30                  # Time to wait for the server to die, in seconds
+                            # The value is high because we wait for STA answers
+			    # before disconnecting the peers.
+
+# Include freediameter defaults if available
+if [ -f /etc/default/freediameter ] ; then
+    . /etc/default/freediameter
+fi
+
+test x"" != x$DAEMON_OPTS || test -f $CONF || exit 0
+
+set -e
+
+running_pid()
+{
+    # Check if a given process pid's cmdline matches a given name
+    pid=$1
+    name=$2
+    [ -z "$pid" ] && return 1
+    [ ! -d /proc/$pid ] &&  return 1
+    cmd=`cat /proc/$pid/cmdline | tr "\000" "\n"|head -n 1 |cut -d : -f 1`
+    # Is this the expected child?
+    [ "$cmd" != "$name" ] &&  return 1
+    return 0
+}
+
+running()
+{
+# Check if the process is running looking at /proc
+# (works for all users)
+
+    # No pidfile, probably no daemon present
+    [ ! -f "$PIDFILE" ] && return 1
+    # Obtain the pid and check it against the binary name
+    pid=`cat $PIDFILE`
+    running_pid $pid $DAEMON || return 1
+    return 0
+}
+
+force_stop() {
+# Forcefully kill the process
+    [ ! -f "$PIDFILE" ] && return
+    if running ; then
+        kill -15 $pid
+        # Is it really dead?
+        [ -n "$DODTIME" ] && sleep "$DODTIME"s
+        if running ; then
+            kill -9 $pid
+            [ -n "$DODTIME" ] && sleep "$DODTIME"s
+            if running ; then
+                echo "Cannot kill $LABEL (pid=$pid)!"
+                exit 1
+            fi
+        fi
+    fi
+    rm -f $PIDFILE
+    return 0
+}
+
+case "$1" in
+  start)
+        echo -n "Starting $DESC: "
+        start-stop-daemon --start --quiet --pidfile $PIDFILE \
+            --exec $DAEMON -- $DAEMON_OPTS
+        if running ; then
+            echo "$NAME."
+        else
+            echo " ERROR."
+        fi
+        ;;
+  stop)
+        echo -n "Stopping $DESC: "
+        start-stop-daemon --stop --quiet --pidfile $PIDFILE \
+            --exec $DAEMON
+        echo "$NAME."
+        ;;
+  force-stop)
+        echo -n "Forcefully stopping $DESC: "
+        force_stop
+        if ! running ; then
+            echo "$NAME."
+        else
+            echo " ERROR."
+        fi
+        ;;
+  #reload)
+        #
+        # If the daemon can reload its config files on the fly
+        # for example by sending it SIGHUP, do it here.
+        #
+        # If the daemon responds to changes in its config file
+        # directly anyway, make this a do-nothing entry.
+        #
+        # echo "Reloading $DESC configuration files."
+        # start-stop-daemon --stop --signal 1 --quiet --pidfile \
+        #       /var/run/$NAME.pid --exec $DAEMON
+  #;;
+  force-reload)
+        #
+        # If the "reload" option is implemented, move the "force-reload"
+        # option to the "reload" entry above. If not, "force-reload" is
+        # just the same as "restart" except that it does nothing if the
+        # daemon isn't already running.
+        # check wether $DAEMON is running. If so, restart
+        start-stop-daemon --stop --test --quiet --pidfile \
+            /var/run/$NAME.pid --exec $DAEMON \
+            && $0 restart \
+            || exit 0
+        ;;
+  restart)
+    echo -n "Restarting $DESC: "
+        start-stop-daemon --stop --quiet --pidfile \
+            /var/run/$NAME.pid --exec $DAEMON
+        [ -n "$DODTIME" ] && sleep $DODTIME
+        start-stop-daemon --start --quiet --pidfile \
+            /var/run/$NAME.pid --exec $DAEMON -- $DAEMON_OPTS
+        echo "$NAME."
+        ;;
+  status)
+    echo -n "$LABEL is "
+    if running ;  then
+        echo "running"
+    else
+        echo " not running."
+        exit 1
+    fi
+    ;;
+  *)
+    N=/etc/init.d/$NAME
+    # echo "Usage: $N {start|stop|restart|reload|force-reload}" >&2
+    echo "Usage: $N {start|stop|restart|force-reload|status|force-stop}" >&2
+    exit 1
+    ;;
+esac
+
+exit 0
diff --git a/recipes-security/freediameter/files/no_test_run.patch b/recipes-security/freediameter/files/no_test_run.patch
new file mode 100644
index 0000000..8b5aa64
--- /dev/null
+++ b/recipes-security/freediameter/files/no_test_run.patch
@@ -0,0 +1,12 @@
+Index: freeDiameter-8662db9f6105/tests/CMakeLists.txt
+===================================================================
+--- freeDiameter-8662db9f6105.orig/tests/CMakeLists.txt
++++ freeDiameter-8662db9f6105/tests/CMakeLists.txt
+@@ -107,7 +107,6 @@ ENDIF(BUILD_APP_ACCT OR ALL_EXTENSIONS)
+ FOREACH( TEST ${TEST_LIST} )
+    ADD_EXECUTABLE(${TEST} ${TEST}.c tests.h ${${TEST}_ADDITIONAL})
+    TARGET_LINK_LIBRARIES(${TEST} libfdproto libfdcore ${GNUTLS_LIBRARIES} ${GCRYPT_LIBRARY} ${${TEST}_ADDITIONAL_LIB})
+-   ADD_TEST(${TEST} ${EXECUTABLE_OUTPUT_PATH}/${TEST} ${TEST_ARGUMENTS})
+ ENDFOREACH( TEST )
+ 
+ 
diff --git a/recipes-security/freediameter/freediameter_1.2.1.bb b/recipes-security/freediameter/freediameter_1.2.1.bb
new file mode 100644
index 0000000..a6083a8
--- /dev/null
+++ b/recipes-security/freediameter/freediameter_1.2.1.bb
@@ -0,0 +1,71 @@
+# copyright 2017 Armin Kuster <akuster808@gmail.com>
+#
+
+SUMARRY = "freeDiameter is a implementation of the Diameter protocol specified in RFC3588. Diameter is a protocol for carrying Authentication, Authorization and Accounting information."
+
+HOMEPAGE = "http://www.freediameter.net/trac/"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=892b2ed6ae815488a08416ff7ee74a35"
+LICENSE = "BSD"
+
+DEPENDS = "lksctp-tools libidn gnutls libgcrypt bison flex"
+
+HG_SRCREV = "8662db9f6105"
+SRC_URI = " \
+	http://www.freediameter.net/hg/freeDiameter/archive/${HG_SRCREV}.tar.bz2 \
+	file://init \
+        file://freeDiameter.conf \
+	file://no_test_run.patch"
+
+SRC_URI[md5sum] = "2fbf09aa1e0eba9ae0b5f1ab05a6d462"
+SRC_URI[sha256sum] = "061d9b0d860605f0838c0ab312c3719f45b215bf5e212ad2b45a59d036b670b7"
+
+S = "${WORKDIR}/freeDiameter-${HG_SRCREV}"
+
+inherit cmake pkgconfig update-rc.d 
+
+CONFFILES_${PN} = "${sysconfdir}/freediameter.conf"
+
+EXTRA_OECMAKE += "-DDEFAULT_CONF_PATH:PATH=${sysconfdir}/freeDiameter"
+
+FD_KEY ?="${PN}.key"
+FD_PEM ?= "${PN}.pem"
+FD_CA ?= "${PN}.pem"
+FD_DH_PEM ?= "${PN}-dh.pem"
+FD_HOSTNAME ?= "${MACHINE}"
+FD_REALM ?= "openembedded.org"
+
+do_install_append () {
+	install -d ${D}${sysconfdir}/freeDiameter
+	install ${WORKDIR}/freeDiameter.conf ${D}${sysconfdir}/freeDiameter/freeDiameter.conf
+
+	cat >> ${D}${sysconfdir}/freeDiameter/freeDiameter.conf <<EOF
+## OE specific ##
+#Identity="${FD_HOSTNAME}";
+Identity = "${FD_HOSTNAME}.${FD_REALM}";
+Realm = "${FD_REALM}";
+Port = 30868;
+SecPort = 30869;
+TLS_Cred = "/etc/freeDiameter/${FD_PEM}" , "/etc/freeDiameter/${FD_KEY}";
+TLS_CA = "/etc/freeDiameter/${FD_CA}";
+TLS_DH_File = "/etc/freeDiameter/${FD_DH_PEM}";
+EOF
+	install -d ${D}${sysconfdir}/init.d/
+	install ${WORKDIR}/init ${D}${sysconfdir}/init.d/freediameter
+}
+
+do_install_append () {
+	# create self cert
+	openssl req -x509 -config ${STAGING_DIR_NATIVE}/etc/ssl/openssl.cnf -newkey rsa:4096 -sha256 -nodes -out ${D}${sysconfdir}/freeDiameter/${FD_PEM} -keyout ${D}${sysconfdir}/freeDiameter/${FD_KEY} -days 3650 -subj '/CN=${FD_HOSTNAME}.${FD_REALM}'
+ 	openssl dhparam -out ${D}${sysconfdir}/freeDiameter/${FD_DH_PEM} 1024
+}
+
+PACKAGES += "${PN}-extensions"
+FILES_${PN}-extensions = "${nonarch_libdir}/freeDiameter/*.fdx"
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME_${PN} = "freediameter"
+INITSCRIPT_PARAMS_${PN} = "defaults 80"
+
+RDEPENDS_${PN} = "openssl openssl-conf openssl-engines"
+RDEPENDS_${PN} += "kernel-module-tipc kernel-module-sctp" 
+RDEPENDS_${PN} += "kernel-module-udp-tunnel kernel-module-ipip"
-- 
2.7.4


