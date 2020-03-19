Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3972.1584582813828292677
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MHo4ZhrS;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAC50E0188B; Wed, 18 Mar 2020 18:53:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E80FE0183B
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id g2so329675plo.3
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vLlRs5gWjjFHS/GX+U5LS1aCFV2FYyGg0YdsKAgRo2Q=;
        b=MHo4ZhrS+ukQ65cR25/UvUAqrJN+bLOhKJRFFwsyPvickRpfo5FBkdAjSRXI4xX18O
         AP423A0cNvgD+GNeJVrH6kZRJ6oCFhNRgUrJ6oBLqFMl5JA+fh8OK0JTU0ywaS452ZE+
         gzZqnK5wOCO/eA72Z3UQ/AYbyCiyKZRI9n49Q1y+7E7CZm6/Zn/6Wj0Zczuxz8mVEqEt
         wvEdT2wj4X/S4ZklVCuzGTtN0bWbNrALej/k5EjlCjo+fvZo8D5vmNJpvVn0F+1lMqLm
         BCt9gMsLLk2PKqK6juc4rKxhuf4HCfN8bzmeg398QYCs3mCU3VbXs7a4dfoGtI9TzAz8
         ag4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=vLlRs5gWjjFHS/GX+U5LS1aCFV2FYyGg0YdsKAgRo2Q=;
        b=A+uorNGWehnmKlfLdilZeoE1mPvTXRgqJ3aExfghoJpepx/2FzLZdNmiZlE068VN3B
         bie8g75WaU6vnoZedJrsG5diz8FIXLWjB52pw/W7RP/MR0qppApO1HE0Vd7OuqOL31rm
         rR+feVQl98DcIRtzeIHuQ+zpjH2F8dw/R5J+qtFELrELimJnZ/ZTUlj5bycOWvyZuQE3
         ML7vWkBQ8F7guR/eZydfTlH8LGMIYVkkGXU9snXelj3UtFZs+I2FNWyDQczhTwZgOhz0
         hCpJkqtZhdRAEbCP6XUO7qjY9/7JADJrhFGzvhdaIe2TLROnmEoVXTJCBn34FlSf8my3
         E0xQ==
X-Gm-Message-State: ANhLgQ1Bn1rLLzRtvvrb0NGlY+rstmMQgvpDy0ioWcPo+0HY2pbAl90I
	hVMPajSgMJ+fvaHjmUeIEHV8kXwWJF0=
X-Google-Smtp-Source: ADFU+vtY3ii7k/JI3XSJrwnLvJyjzwQyZ+owKoHb19N1wXjrm30xJfG5ssrKSmko+GVABIDC9LF7bA==
X-Received: by 2002:a17:902:788e:: with SMTP id q14mr1176076pll.72.1584582810468;
        Wed, 18 Mar 2020 18:53:30 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id k4sm290506pfh.0.2020.03.18.18.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id CADC62A04DA; Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 07/20] cluster-glue: Update to current
Date: Wed, 18 Mar 2020 18:53:08 -0700
Message-Id: <20200319015321.15525-7-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

* Fix various mutlilib issues.
* Update python3 issues
* License updates were change of address for FSF

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../cluster-glue/0001-Update-for-python3.patch     | 260 +++++++++++++++++++++
 .../cluster-glue/cluster-glue_1.0.12.bb            |  20 +-
 2 files changed, 273 insertions(+), 7 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-Update-for-python3.patch

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-Update-for-python3.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-Update-for-python3.patch
new file mode 100644
index 0000000..e089dc4
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-Update-for-python3.patch
@@ -0,0 +1,260 @@
+From 3ac95d9da4e207f5d1db14ecbf9c10c13247dd45 Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Wed, 19 Feb 2020 22:35:51 +0000
+Subject: [PATCH] Update for python3
+
+Upstream-Status: Inappropriate
+---
+ lib/plugins/stonith/external/dracmc-telnet | 10 +++++-----
+ lib/plugins/stonith/external/ibmrsa-telnet |  8 ++++----
+ lib/plugins/stonith/external/riloe         | 30 +++++++++++++++---------------
+ lib/plugins/stonith/ribcl.py.in            | 20 ++++++++++----------
+ 4 files changed, 34 insertions(+), 34 deletions(-)
+
+diff --git a/lib/plugins/stonith/external/dracmc-telnet b/lib/plugins/stonith/external/dracmc-telnet
+index 78c01453..7fbed86b 100644
+--- a/lib/plugins/stonith/external/dracmc-telnet
++++ b/lib/plugins/stonith/external/dracmc-telnet
+@@ -1,4 +1,4 @@
+-#!/usr/bin/env python
++#!/usr/bin/env python3
+ # vim: set filetype=python
+ #######################################################################
+ #
+@@ -74,7 +74,7 @@ class DracMC(telnetlib.Telnet):
+ 
+     def _get_timestamp(self):
+         ct = time.time()
+-        msecs = (ct - long(ct)) * 1000
++        msecs = (ct - int(ct)) * 1000
+         return "%s,%03d" % (time.strftime("%Y-%m-%d %H:%M:%S",
+                             time.localtime(ct)), msecs)
+ 
+@@ -170,7 +170,7 @@ class DracMCStonithPlugin:
+ 
+     def _get_timestamp(self):
+         ct = time.time()
+-        msecs = (ct - long(ct)) * 1000
++        msecs = (ct - int(ct)) * 1000
+         return "%s,%03d" % (time.strftime("%Y-%m-%d %H:%M:%S",
+                             time.localtime(ct)), msecs)
+ 
+@@ -200,7 +200,7 @@ class DracMCStonithPlugin:
+                            self._parameters['cyclades_port'])
+                     c.login(self._parameters['username'],
+                             self._parameters['password'])
+-                except Exception, args:
++                except Exception as args:
+                     if "Connection reset by peer" in str(args):
+                         self._echo_debug("Someone is already logged in... retry=%s" % tries)
+                         c.close()
+@@ -362,7 +362,7 @@ class DracMCStonithPlugin:
+             func = getattr(self, cmd, self.not_implemented)
+             rc = func()
+             return(rc)
+-        except Exception, args:
++        except Exception as args:
+             self.echo_log("err", 'Exception raised:', str(args))
+             if self._connection:
+                 self.echo_log("err", self._connection.get_history())
+diff --git a/lib/plugins/stonith/external/ibmrsa-telnet b/lib/plugins/stonith/external/ibmrsa-telnet
+index adb2a3eb..0a3ce3c2 100644
+--- a/lib/plugins/stonith/external/ibmrsa-telnet
++++ b/lib/plugins/stonith/external/ibmrsa-telnet
+@@ -1,4 +1,4 @@
+-#!/usr/bin/python
++#!/usr/bin/env python3
+ # vim: set filetype=python
+ #######################################################################
+ #
+@@ -71,7 +71,7 @@ class RSABoard(telnetlib.Telnet):
+ 
+     def _get_timestamp(self):
+         ct = time.time()
+-        msecs = (ct - long(ct)) * 1000
++        msecs = (ct - int(ct)) * 1000
+         return "%s,%03d" % (time.strftime("%Y-%m-%d %H:%M:%S",
+                             time.localtime(ct)), msecs)
+ 
+@@ -149,7 +149,7 @@ class RSAStonithPlugin:
+ 
+     def _get_timestamp(self):
+         ct = time.time()
+-        msecs = (ct - long(ct)) * 1000
++        msecs = (ct - int(ct)) * 1000
+         return "%s,%03d" % (time.strftime("%Y-%m-%d %H:%M:%S",
+                             time.localtime(ct)), msecs)
+ 
+@@ -305,7 +305,7 @@ class RSAStonithPlugin:
+             func = getattr(self, cmd, self.not_implemented)
+             rc = func()
+             return(rc)
+-        except Exception, args:
++        except Exception as args:
+             self.echo_log("err", 'Exception raised:', str(args))
+             if self._connection:
+                 self.echo_log("err", self._connection.get_history())
+diff --git a/lib/plugins/stonith/external/riloe b/lib/plugins/stonith/external/riloe
+index 412873f5..370fd57f 100644
+--- a/lib/plugins/stonith/external/riloe
++++ b/lib/plugins/stonith/external/riloe
+@@ -1,4 +1,4 @@
+-#!/usr/bin/env python
++#!/usr/bin/env python3
+ #
+ # Stonith module for RILOE Stonith device
+ #
+@@ -35,7 +35,7 @@ import os
+ import socket
+ import subprocess
+ import xml.dom.minidom
+-import httplib
++import http.client
+ import time
+ import re
+ 
+@@ -163,12 +163,12 @@ info = {
+ }
+ 
+ if cmd in info:
+-    print info[cmd]
++    print(info[cmd])
+     sys.exit(0)
+ 
+ if cmd == 'getconfignames':
+     for arg in [ "hostlist", "ilo_hostname", "ilo_user", "ilo_password", "ilo_can_reset", "ilo_protocol", "ilo_powerdown_method", "ilo_proxyhost", "ilo_proxyport"]:
+-        print arg
++        print(arg)
+     sys.exit(0)
+ 
+ if not rihost:
+@@ -257,7 +257,7 @@ def read_resp(node):
+     '''
+     msg = ""
+     str_status = ""
+-    for attr in node.attributes.keys():
++    for attr in list(node.attributes.keys()):
+         if attr == A_STATUS:
+             str_status = node.getAttribute(attr)
+         elif attr == A_MSG:
+@@ -285,7 +285,7 @@ def read_power(node):
+     variable correspondingly.
+     '''
+     global power
+-    for attr in node.attributes.keys():
++    for attr in list(node.attributes.keys()):
+         if attr == A_POWER_STATE:
+             power_state = node.getAttribute(attr).upper()
+         else:
+@@ -339,18 +339,18 @@ def open_ilo(host):
+                 fatal("Error status=: %s" %(response))
+             import ssl
+             sock = ssl.wrap_socket(proxy) 
+-            h=httplib.HTTPConnection('localhost')
++            h=http.client.HTTPConnection('localhost')
+             h.sock=sock
+             return h
+         else:
+-            return httplib.HTTPSConnection(host)
+-    except socket.gaierror, msg:
++            return http.client.HTTPSConnection(host)
++    except socket.gaierror as msg:
+         fatal("%s: %s" %(msg,host))
+-    except socket.sslerror, msg:
++    except socket.sslerror as msg:
+         fatal("%s for %s" %(msg,host))
+-    except socket.error, msg:
++    except socket.error as msg:
+         fatal("%s while talking to %s" %(msg,host))
+-    except ImportError, msg:
++    except ImportError as msg:
+         fatal("ssl support missing (%s)" %msg)
+ 
+ def send_request(req,proc_f):
+@@ -364,7 +364,7 @@ def send_request(req,proc_f):
+     c = open_ilo(rihost)
+     try:
+         c.send(req+'\r\n')
+-    except socket.error, msg:
++    except socket.error as msg:
+         fatal("%s, while talking to %s" %(msg,rihost))
+     t_end = time.time()
+     my_debug("request sent in %0.2f s" % ((t_end-t_begin)))
+@@ -377,7 +377,7 @@ def send_request(req,proc_f):
+             if not reply:
+                 break
+             result.append(reply)
+-        except socket.error, msg:
++        except socket.error as msg:
+             if msg[0] == 6: # connection closed
+                 break
+             my_err("%s, while talking to %s" %(msg,rihost))
+@@ -393,7 +393,7 @@ def send_request(req,proc_f):
+             reply = re.sub("<(RIBCL.*)/>", r"<\1>", reply)
+         try:
+             doc = xml.dom.minidom.parseString(reply)
+-        except xml.parsers.expat.ExpatError,msg:
++        except xml.parsers.expat.ExpatError as msg:
+             fatal("malformed response: %s\n%s"%(msg,reply))
+         rc = proc_f(doc)
+         doc.unlink()
+diff --git a/lib/plugins/stonith/ribcl.py.in b/lib/plugins/stonith/ribcl.py.in
+index 0733bb24..3533dee3 100644
+--- a/lib/plugins/stonith/ribcl.py.in
++++ b/lib/plugins/stonith/ribcl.py.in
+@@ -1,4 +1,4 @@
+-#!@TRAGET_PYTHON@
++#!/usr/bin/env python3
+ 
+ 
+ #
+@@ -18,7 +18,7 @@
+ 
+ import sys
+ import socket
+-from httplib import *
++from http.client import *
+ from time import sleep
+ 
+ 
+@@ -29,7 +29,7 @@ try:
+         host = argv[1].split('.')[0]+'-rm'
+         cmd = argv[2]
+ except IndexError:
+-        print "Not enough arguments"
++        print("Not enough arguments")
+         sys.exit(1)
+ 
+ 
+@@ -66,7 +66,7 @@ try:
+         else:   
+                 acmds.append(login + todo[cmd] + logout)
+ except KeyError:
+-        print "Invalid command: "+ cmd
++        print("Invalid command: "+ cmd)
+         sys.exit(1)
+ 
+ 
+@@ -88,13 +88,13 @@ try:
+                 sleep(1)
+ 
+ 
+-except socket.gaierror, msg:
+-        print msg
++except socket.gaierror as msg:
++        print(msg)
+         sys.exit(1)
+-except socket.sslerror, msg:
+-        print msg
++except socket.sslerror as msg:
++        print(msg)
+         sys.exit(1)
+-except socket.error, msg:
+-        print msg
++except socket.error as msg:
++        print(msg)
+         sys.exit(1)
+ 
+-- 
+2.13.3
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index 749ce8c..d9df83b 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -4,8 +4,8 @@ is not the cluster messaging layer (Heartbeat), nor the cluster resource manager
 (Pacemaker), nor a Resource Agent."
 HOMEPAGE = "http://clusterlabs.org/"
 LICENSE = "GPLv2 & LGPLv2.1"
-LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
-                    file://COPYING.LIB;md5=243b725d71bb5df4a1e5920b344b86ad \
+LIC_FILES_CHKSUM = "file://COPYING;md5=b70d30a00a451e19d7449d7465d02601 \
+                    file://COPYING.LIB;md5=c386bfabdebabbdc1f28e9fde4f4df6d \
 "
 
 DEPENDS = "libxml2 libtool glib-2.0 bzip2 util-linux net-snmp openhpi"
@@ -14,14 +14,15 @@ SRC_URI = " \
     git://github.com/ClusterLabs/${BPN}.git \
     file://0001-don-t-compile-doc-and-Error-Fix.patch \
     file://0001-ribcl.py.in-Warning-Fix.patch \
+    file://0001-Update-for-python3.patch \
     file://volatiles \
     file://tmpfiles \
 "
 SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
 
-SRCREV = "1bc77825c0cfb0c80f9c82a061af7ede68676cb4"
+SRCREV = "fd5a3befacd23d056a72cacd2b8ad6bba498e56b"
 
-inherit autotools useradd pkgconfig systemd
+inherit autotools useradd pkgconfig systemd multilib_script multilib_header
 
 SYSTEMD_SERVICE_${PN} = "logd.service"
 SYSTEMD_AUTO_ENABLE = "disable"
@@ -30,6 +31,7 @@ HA_USER = "hacluster"
 HA_GROUP = "haclient"
 
 S = "${WORKDIR}/git"
+PV = "1.0.12+git${SRCPV}"
 
 PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir},--without-systemdsystemunitdir,systemd"
@@ -48,6 +50,8 @@ USERADD_PARAM_${PN} = "--home-dir=${localstatedir}/lib/heartbeat/cores/${HA_USER
                       "
 GROUPADD_PARAM_${PN} = "-r ${HA_GROUP}"
 
+MULTILIB_SCRIPTS = "${PN}:${sbindir}/cibsecret"
+
 do_configure_prepend() {
     ln -sf ${PKG_CONFIG_SYSROOT_DIR}/usr/include/libxml2/libxml ${PKG_CONFIG_SYSROOT_DIR}/usr/include/libxml
 }
@@ -57,6 +61,8 @@ do_install_append() {
 	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/04_cluster-glue
 	install -d ${D}${sysconfdir}/tmpfiles.d
 	install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
+
+    oe_multilib_header heartbeat/glue_config.h
 }
 
 pkg_postinst_${PN} () {
@@ -86,9 +92,9 @@ PACKAGES =+ "\
 	 ${PN}-plugin-interfacemgr-dbg \
 	 ${PN}-plugin-interfacemgr-staticdev \
 	 ${PN}-lrmtest \
-         ${PN}-plugin-compress \
-         ${PN}-plugin-compress-dbg \
-         ${PN}-plugin-compress-staticdev \
+     ${PN}-plugin-compress \
+     ${PN}-plugin-compress-dbg \
+     ${PN}-plugin-compress-staticdev \
 	 "
 
 FILES_${PN} = "${sysconfdir} /var ${libdir}/lib*.so.* ${sbindir} ${datadir}/cluster-glue/*sh ${datadir}/cluster-glue/*pl\
-- 
2.13.3

