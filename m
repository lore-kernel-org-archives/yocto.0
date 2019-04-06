Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B68EE00D52; Fri,  5 Apr 2019 23:37:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84A90E00E4D
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 23:37:06 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id e6so4229579pgc.4
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 23:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=z8J0nbcLTMMLzu96lHJTKfhQSTPZskeNwii/UnWzIHs=;
	b=MQSx7yIBvUBgLlV0SerHZ/P//LQXLBy0cxTlkK6Q+bA3UdFyYGV04H45jnsQVa4pI2
	B2R108y5NEePvWDDbowTfkiPXj0Mww6VDu/FZuTrBfiQad46bjTETTjKyBkyFJQV9qna
	AVpmKczy50QvQASxgg/XSYwLemlXXr+Jv6rafyXwyvJ1mxt3fZs9CC3338l/rpKl/RLf
	8WKHvaPadpWaSWMZ0/Q0fL7rwCDrdKrfopL3psFTSiZN/EJJ2oNqAagOaKLsdYnFRith
	6kfWn7ZyI+fsxPNFu+8Nj8Hl8Shs03xgFaH7/9OJ8wF6Gp2c1LumoQI9cmAPMukPlNUf
	BTcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=z8J0nbcLTMMLzu96lHJTKfhQSTPZskeNwii/UnWzIHs=;
	b=T/q9NxgX6gqCQ3ZREVOdf9/fmRKZoIwPjB3rpIn7YPWypN0He7MnuEKO6oD6lOi+3g
	+knPh/jiTLz8EJmNoCerEINcoCaiKecTLxn8AXrcU5JN5heU0IwRd1Fx25dAOkV5sIjv
	SXk82km1yTCB6bhdMt8IfGkypvwBh9UMa30d68l89Hy0z5KvFkny545EK0TJngS0kIy/
	nHTJ7b4qqwYuq6DPeJuz0V1jZxViS2C/qggZgfJ7JFC8QyN+aXDHlawh1r4tjzEQwXVr
	dwdsSKO/HijKrGgQqcYwe2u2obMXEB5ephR46eZPvWdTluYYS88WZUnjbF02xoQ9wgnj
	amcA==
X-Gm-Message-State: APjAAAVoLPXjwRawgKlojMvNOmAsKim/yjwmKihj1WWKrVJhfRzk0Y22
	EhdT3VyuHhXej0ZWLosuKFVIeA+bocw=
X-Google-Smtp-Source: APXvYqw2WZd0Mq2fYmAXf3wdWUMXsTn3Q8lIVWj0xAkTdbqoRe0KLsS0deN10sZguMqYOYkt/C3VCg==
X-Received: by 2002:a63:158:: with SMTP id 85mr16341772pgb.351.1554532625580; 
	Fri, 05 Apr 2019 23:37:05 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	h1sm11519235pgs.67.2019.04.05.23.37.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 05 Apr 2019 23:37:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Apr 2019 12:06:52 +0530
Message-Id: <1554532613-27895-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] libldb: add earlier version
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
X-List-Received-Date: Sat, 06 Apr 2019 06:37:16 -0000

This version does not have a dependacy on samba

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libldb/avoid-openldap-unless-wanted.patch      |  13 ++
 ...-import-target-module-while-cross-compile.patch |  58 +++++++
 recipes-support/libldb/libldb/options-1.3.1.patch  | 193 +++++++++++++++++++++
 recipes-support/libldb/libldb_1.3.1.bb             |  64 +++++++
 4 files changed, 328 insertions(+)
 create mode 100644 recipes-support/libldb/libldb/avoid-openldap-unless-wanted.patch
 create mode 100755 recipes-support/libldb/libldb/do-not-import-target-module-while-cross-compile.patch
 create mode 100644 recipes-support/libldb/libldb/options-1.3.1.patch
 create mode 100644 recipes-support/libldb/libldb_1.3.1.bb

diff --git a/recipes-support/libldb/libldb/avoid-openldap-unless-wanted.patch b/recipes-support/libldb/libldb/avoid-openldap-unless-wanted.patch
new file mode 100644
index 0000000..8ab094f
--- /dev/null
+++ b/recipes-support/libldb/libldb/avoid-openldap-unless-wanted.patch
@@ -0,0 +1,13 @@
+--- a/wscript	2015-11-18 12:43:33.000000000 +0100
++++ b/wscript	2015-11-18 12:46:25.000000000 +0100
+@@ -58,9 +58,7 @@
+     if conf.env.standalone_ldb:
+         conf.CHECK_XSLTPROC_MANPAGES()
+ 
+-        # we need this for the ldap backend
+-        if conf.CHECK_FUNCS_IN('ber_flush ldap_open ldap_initialize', 'lber ldap', headers='lber.h ldap.h'):
+-            conf.env.ENABLE_LDAP_BACKEND = True
++        conf.env.ENABLE_LDAP_BACKEND = False
+ 
+         # we don't want any libraries or modules to rely on runtime
+         # resolution of symbols
diff --git a/recipes-support/libldb/libldb/do-not-import-target-module-while-cross-compile.patch b/recipes-support/libldb/libldb/do-not-import-target-module-while-cross-compile.patch
new file mode 100755
index 0000000..fdd312c
--- /dev/null
+++ b/recipes-support/libldb/libldb/do-not-import-target-module-while-cross-compile.patch
@@ -0,0 +1,58 @@
+Some modules such as dynamic library maybe cann't be imported while cross compile,
+we just check whether does the module exist.
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
+Index: ldb-1.1.26/buildtools/wafsamba/samba_bundled.py
+===================================================================
+--- ldb-1.1.26.orig/buildtools/wafsamba/samba_bundled.py
++++ ldb-1.1.26/buildtools/wafsamba/samba_bundled.py
+@@ -2,6 +2,7 @@
+ 
+ import sys
+ import Build, Options, Logs
++import imp, os
+ from Configure import conf
+ from samba_utils import TO_LIST
+ 
+@@ -230,17 +231,32 @@ def CHECK_BUNDLED_SYSTEM_PYTHON(conf, li
+     # versions
+     minversion = minimum_library_version(conf, libname, minversion)
+ 
+-    try:
+-        m = __import__(modulename)
+-    except ImportError:
+-        found = False
+-    else:
++    # Find module in PYTHONPATH
++    stuff = imp.find_module(modulename, [os.environ["PYTHONPATH"]])
++    if stuff:
+         try:
+-            version = m.__version__
+-        except AttributeError:
++            m = imp.load_module(modulename, stuff[0], stuff[1], stuff[2])
++        except ImportError:
+             found = False
++
++            if conf.env.CROSS_COMPILE:
++                # Some modules such as dynamic library maybe cann't be imported
++                # while cross compile, we just check whether the module exist
++                Logs.warn('Cross module[%s] has been found, but can not be loaded.' % (stuff[1]))
++                found = True
+         else:
+-            found = tuplize_version(version) >= tuplize_version(minversion)
++            try:
++                version = m.__version__
++            except AttributeError:
++                found = False
++            else:
++                found = tuplize_version(version) >= tuplize_version(minversion)
++        finally:
++            if stuff[0]:
++                stuff[0].close()
++    else:
++        found = False
++
+     if not found and not conf.LIB_MAY_BE_BUNDLED(libname):
+         Logs.error('ERROR: Python module %s of version %s not found, and bundling disabled' % (libname, minversion))
+         sys.exit(1)
diff --git a/recipes-support/libldb/libldb/options-1.3.1.patch b/recipes-support/libldb/libldb/options-1.3.1.patch
new file mode 100644
index 0000000..ffe253b
--- /dev/null
+++ b/recipes-support/libldb/libldb/options-1.3.1.patch
@@ -0,0 +1,193 @@
+From a4da3ab4d76013aaa731d43d52ccca1ebd37c395 Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Wed, 21 Sep 2016 10:06:39 +0800
+Subject: [PATCH 1/1] ldb: Add configure options for packages
+
+Add configure options for the following packages:
+ - acl
+ - attr
+ - libaio
+ - libbsd
+ - libcap
+ - valgrind
+
+Upstream-Status: Inappropriate [oe deterministic build specific]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ lib/replace/system/wscript_configure |  6 ++-
+ lib/replace/wscript                  | 94 +++++++++++++++++++++++++++---------
+ wscript                              |  7 +++
+ 3 files changed, 83 insertions(+), 24 deletions(-)
+
+diff --git a/lib/replace/system/wscript_configure b/lib/replace/system/wscript_configure
+index 2035474..10f9ae7 100644
+--- a/lib/replace/system/wscript_configure
++++ b/lib/replace/system/wscript_configure
+@@ -1,6 +1,10 @@
+ #!/usr/bin/env python
+ 
+-conf.CHECK_HEADERS('sys/capability.h')
++import Options
++
++if Options.options.enable_libcap:
++    conf.CHECK_HEADERS('sys/capability.h')
++
+ conf.CHECK_FUNCS('getpwnam_r getpwuid_r getpwent_r')
+ 
+ # solaris varients of getXXent_r
+diff --git a/lib/replace/wscript b/lib/replace/wscript
+index 2f94d49..68b2d3a 100644
+--- a/lib/replace/wscript
++++ b/lib/replace/wscript
+@@ -23,6 +23,41 @@ def set_options(opt):
+     opt.PRIVATE_EXTENSION_DEFAULT('')
+     opt.RECURSE('buildtools/wafsamba')
+ 
++    opt.add_option('--with-acl',
++                   help=("Enable use of acl"),
++                   action="store_true", dest='enable_acl')
++    opt.add_option('--without-acl',
++                   help=("Disable use of acl"),
++                   action="store_false", dest='enable_acl', default=False)
++
++    opt.add_option('--with-attr',
++                   help=("Enable use of attr"),
++                   action="store_true", dest='enable_attr')
++    opt.add_option('--without-attr',
++                   help=("Disable use of attr"),
++                   action="store_false", dest='enable_attr', default=False)
++
++    opt.add_option('--with-libaio',
++                   help=("Enable use of libaio"),
++                   action="store_true", dest='enable_libaio')
++    opt.add_option('--without-libaio',
++                   help=("Disable use of libaio"),
++                   action="store_false", dest='enable_libaio', default=False)
++
++    opt.add_option('--with-libbsd',
++                   help=("Enable use of libbsd"),
++                   action="store_true", dest='enable_libbsd')
++    opt.add_option('--without-libbsd',
++                   help=("Disable use of libbsd"),
++                   action="store_false", dest='enable_libbsd', default=False)
++
++    opt.add_option('--with-libcap',
++                   help=("Enable use of libcap"),
++                   action="store_true", dest='enable_libcap')
++    opt.add_option('--without-libcap',
++                   help=("Disable use of libcap"),
++                   action="store_false", dest='enable_libcap', default=False)
++
+ @Utils.run_once
+ def configure(conf):
+     conf.RECURSE('buildtools/wafsamba')
+@@ -32,12 +67,25 @@ def configure(conf):
+     conf.DEFINE('HAVE_LIBREPLACE', 1)
+     conf.DEFINE('LIBREPLACE_NETWORK_CHECKS', 1)
+ 
+-    conf.CHECK_HEADERS('linux/types.h crypt.h locale.h acl/libacl.h compat.h')
+-    conf.CHECK_HEADERS('acl/libacl.h attr/xattr.h compat.h ctype.h dustat.h')
++    conf.CHECK_HEADERS('linux/types.h crypt.h locale.h compat.h')
++    conf.CHECK_HEADERS('compat.h ctype.h dustat.h')
+     conf.CHECK_HEADERS('fcntl.h fnmatch.h glob.h history.h krb5.h langinfo.h')
+-    conf.CHECK_HEADERS('libaio.h locale.h ndir.h pwd.h')
+-    conf.CHECK_HEADERS('shadow.h sys/acl.h')
+-    conf.CHECK_HEADERS('sys/attributes.h attr/attributes.h sys/capability.h sys/dir.h sys/epoll.h')
++    conf.CHECK_HEADERS('locale.h ndir.h pwd.h')
++    conf.CHECK_HEADERS('shadow.h')
++    conf.CHECK_HEADERS('sys/attributes.h sys/dir.h sys/epoll.h')
++
++    if Options.options.enable_acl:
++        conf.CHECK_HEADERS('acl/libacl.h sys/acl.h')
++
++    if Options.options.enable_attr:
++        conf.CHECK_HEADERS('attr/attributes.h attr/xattr.h')
++
++    if Options.options.enable_libaio:
++        conf.CHECK_HEADERS('libaio.h')
++
++    if Options.options.enable_libcap:
++        conf.CHECK_HEADERS('sys/capability.h')
++
+     conf.CHECK_HEADERS('port.h')
+     conf.CHECK_HEADERS('sys/fcntl.h sys/filio.h sys/filsys.h sys/fs/s5param.h sys/fs/vx/quota.h')
+     conf.CHECK_HEADERS('sys/id.h sys/ioctl.h sys/ipc.h sys/mman.h sys/mode.h sys/ndir.h sys/priv.h')
+@@ -73,7 +121,9 @@ def configure(conf):
+ 
+     conf.CHECK_CODE('', headers='rpc/rpc.h rpcsvc/yp_prot.h', define='HAVE_RPCSVC_YP_PROT_H')
+ 
+-    conf.CHECK_HEADERS('valgrind.h valgrind/valgrind.h valgrind/memcheck.h')
++    if Options.options.enable_valgrind:
++        conf.CHECK_HEADERS('valgrind.h valgrind/valgrind.h valgrind/memcheck.h')
++
+     conf.CHECK_HEADERS('nss_common.h nsswitch.h ns_api.h')
+     conf.CHECK_HEADERS('sys/extattr.h sys/ea.h sys/proplist.h sys/cdefs.h')
+     conf.CHECK_HEADERS('utmp.h utmpx.h lastlog.h')
+@@ -266,22 +316,20 @@ def configure(conf):
+ 
+     conf.CHECK_FUNCS('prctl dirname basename')
+ 
+-    strlcpy_in_bsd = False
+-
+-    # libbsd on some platforms provides strlcpy and strlcat
+-    if not conf.CHECK_FUNCS('strlcpy strlcat'):
+-        if conf.CHECK_FUNCS_IN('strlcpy strlcat', 'bsd', headers='bsd/string.h',
+-                               checklibc=True):
+-            strlcpy_in_bsd = True
+-    if not conf.CHECK_FUNCS('getpeereid'):
+-        conf.CHECK_FUNCS_IN('getpeereid', 'bsd', headers='sys/types.h bsd/unistd.h')
+-    if not conf.CHECK_FUNCS_IN('setproctitle', 'setproctitle', headers='setproctitle.h'):
+-        conf.CHECK_FUNCS_IN('setproctitle', 'bsd', headers='sys/types.h bsd/unistd.h')
+-    if not conf.CHECK_FUNCS('setproctitle_init'):
+-        conf.CHECK_FUNCS_IN('setproctitle_init', 'bsd', headers='sys/types.h bsd/unistd.h')
+-
+-    if not conf.CHECK_FUNCS('closefrom'):
+-        conf.CHECK_FUNCS_IN('closefrom', 'bsd', headers='bsd/unistd.h')
++    if Options.options.enable_libbsd:
++        # libbsd on some platforms provides strlcpy and strlcat
++        if not conf.CHECK_FUNCS('strlcpy strlcat'):
++            conf.CHECK_FUNCS_IN('strlcpy strlcat', 'bsd', headers='bsd/string.h',
++                    checklibc=True)
++        if not conf.CHECK_FUNCS('getpeereid'):
++            conf.CHECK_FUNCS_IN('getpeereid', 'bsd', headers='sys/types.h bsd/unistd.h')
++        if not conf.CHECK_FUNCS_IN('setproctitle', 'setproctitle', headers='setproctitle.h'):
++            conf.CHECK_FUNCS_IN('setproctitle', 'bsd', headers='sys/types.h bsd/unistd.h')
++        if not conf.CHECK_FUNCS('setproctitle_init'):
++            conf.CHECK_FUNCS_IN('setproctitle_init', 'bsd', headers='sys/types.h bsd/unistd.h')
++
++        if not conf.CHECK_FUNCS('closefrom'):
++            conf.CHECK_FUNCS_IN('closefrom', 'bsd', headers='bsd/unistd.h')
+ 
+     conf.CHECK_CODE('''
+                 struct ucred cred;
+@@ -632,7 +680,7 @@ removeea setea
+     # look for a method of finding the list of network interfaces
+     for method in ['HAVE_IFACE_GETIFADDRS', 'HAVE_IFACE_AIX', 'HAVE_IFACE_IFCONF', 'HAVE_IFACE_IFREQ']:
+         bsd_for_strlcpy = ''
+-        if strlcpy_in_bsd:
++        if Options.options.enable_libbsd:
+             bsd_for_strlcpy = ' bsd'
+         if conf.CHECK_CODE('''
+                            #define %s 1
+diff --git a/wscript b/wscript
+index 8ae5be3..a178cc4 100644
+--- a/wscript
++++ b/wscript
+@@ -31,6 +31,13 @@ def set_options(opt):
+     opt.RECURSE('lib/replace')
+     opt.tool_options('python') # options for disabling pyc or pyo compilation
+ 
++    opt.add_option('--with-valgrind',
++                   help=("enable use of valgrind"),
++                   action="store_true", dest='enable_valgrind')
++    opt.add_option('--without-valgrind',
++                   help=("disable use of valgrind"),
++                   action="store_false", dest='enable_valgrind', default=False)
++
+ def configure(conf):
+     conf.RECURSE('lib/tdb')
+     conf.RECURSE('lib/tevent')
+-- 
+2.16.2
+
diff --git a/recipes-support/libldb/libldb_1.3.1.bb b/recipes-support/libldb/libldb_1.3.1.bb
new file mode 100644
index 0000000..c644b20
--- /dev/null
+++ b/recipes-support/libldb/libldb_1.3.1.bb
@@ -0,0 +1,64 @@
+SUMMARY = "Hierarchical, reference counted memory pool system with destructors"
+HOMEPAGE = "http://ldb.samba.org"
+SECTION = "libs"
+LICENSE = "LGPL-3.0+ & LGPL-2.1+ & GPL-3.0+"
+
+DEPENDS += "libtdb libtalloc libtevent popt"
+RDEPENDS_pyldb += "python"
+
+SRC_URI = "http://samba.org/ftp/ldb/ldb-${PV}.tar.gz \
+           file://do-not-import-target-module-while-cross-compile.patch \
+           file://options-1.3.1.patch \
+          "
+
+PACKAGECONFIG ??= "\
+    ${@bb.utils.filter('DISTRO_FEATURES', 'acl', d)} \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'xattr', 'attr', '', d)} \
+"
+PACKAGECONFIG[acl] = "--with-acl,--without-acl,acl"
+PACKAGECONFIG[attr] = "--with-attr,--without-attr,attr"
+PACKAGECONFIG[ldap] = ",,openldap"
+PACKAGECONFIG[libaio] = "--with-libaio,--without-libaio,libaio"
+PACKAGECONFIG[libbsd] = "--with-libbsd,--without-libbsd,libbsd"
+PACKAGECONFIG[libcap] = "--with-libcap,--without-libcap,libcap"
+PACKAGECONFIG[valgrind] = "--with-valgrind,--without-valgrind,valgrind"
+
+SRC_URI += "${@bb.utils.contains('PACKAGECONFIG', 'ldap', '', 'file://avoid-openldap-unless-wanted.patch', d)}"
+
+LIC_FILES_CHKSUM = "file://pyldb.h;endline=24;md5=dfbd238cecad76957f7f860fbe9adade \
+                    file://man/ldb.3.xml;beginline=261;endline=262;md5=137f9fd61040c1505d1aa1019663fd08 \
+                    file://tools/ldbdump.c;endline=19;md5=a7d4fc5d1f75676b49df491575a86a42"
+
+SRC_URI[md5sum] = "e5233f202bca27f6ce8474fb8ae65983"
+SRC_URI[sha256sum] = "b19f2c9f55ae0f46aa5ebaea0bf1a47ec1ac135e1d78af0f6318cf50bf62cbd2"
+
+CROSS_METHOD="exec"
+inherit waf-samba
+
+S = "${WORKDIR}/ldb-${PV}"
+
+EXTRA_OECONF += "--disable-rpath \
+                 --disable-rpath-install \
+                 --bundled-libraries=cmocka \
+                 --builtin-libraries=replace \
+                 --with-modulesdir=${libdir}/ldb/modules \
+                 --with-privatelibdir=${libdir}/ldb \
+                 --with-libiconv=${STAGING_DIR_HOST}${prefix}\
+                "
+
+PACKAGES =+ "pyldb pyldb-dbg pyldb-dev"
+
+NOAUTOPACKAGEDEBUG = "1"
+
+FILES_${PN} += "${libdir}/ldb/*"
+FILES_${PN}-dbg += "${bindir}/.debug/* \
+                    ${libdir}/.debug/* \
+                    ${libdir}/ldb/.debug/* \
+                    ${libdir}/ldb/modules/ldb/.debug/*"
+
+FILES_pyldb = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/* \
+               ${libdir}/libpyldb-util.so.* \
+              "
+FILES_pyldb-dbg = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug \
+                   ${libdir}/.debug/libpyldb-util.so.*"
+FILES_pyldb-dev = "${libdir}/libpyldb-util.so"
-- 
2.7.4


