Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E30FE0090F; Mon,  5 Jan 2015 04:32:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 45FCEE00751
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 04:32:48 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0158.001; Mon, 5 Jan 2015 13:32:43 +0100
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Li xin <lixin.fnst@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] ocfs2-tools: add new recipe
Thread-Index: AQHQFe7d4jg2a6DrjE6qWuFt/4nj35yxmvzA
Date: Mon, 5 Jan 2015 12:32:42 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D756929@SESTOEX04.enea.se>
References: <1418376367-7119-1-git-send-email-lixin.fnst@cn.fujitsu.com>
In-Reply-To: <1418376367-7119-1-git-send-email-lixin.fnst@cn.fujitsu.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.189]
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH] ocfs2-tools: add new recipe
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
X-List-Received-Date: Mon, 05 Jan 2015 12:32:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged this patch onto repository and updated the bugzilla task with releva=
nt information.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7071

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Li xin
Sent: Friday, December 12, 2014 11:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH] ocfs2-tools: add new recipe

Programs to manage the Ocfs2 cluster file system, including
mkfs.ocfs2,tunefs.ocfs2 and fsck.ocfs2

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 ...ocfs2_controld-Makefile-fix-compile-error.patch |  62 +++  ...cfs2_fs.h=
-mount.ocfs2.c-fix-compile-error.patch |  51 +++  ...-vendor-common-o2cb.oc=
f-add-new-conf-file.patch | 478 +++++++++++++++++++++
 .../ocfs2-tools/ocfs2-tools/cluster.conf.sample    |  10 +
 .../ocfs2-tools/ocfs2-tools/o2cb.service           |  12 +
 .../ocfs2-tools/ocfs2-tools/ocfs2.service          |  13 +
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb   |  77 ++++
 7 files changed, 703 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/000=
1-ocfs2_controld-Makefile-fix-compile-error.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/000=
2-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/000=
3-vendor-common-o2cb.ocf-add-new-conf-file.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/clu=
ster.conf.sample
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2c=
b.service
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocf=
s2.service
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4=
.3.bb

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2=
_controld-Makefile-fix-compile-error.patch b/meta-cgl-common/recipes-cgl/oc=
fs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch
new file mode 100644
index 0000000..c30f38f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_con
+++ trold-Makefile-fix-compile-error.patch
@@ -0,0 +1,62 @@
+From 865444fb9ecfe5b0050075f986a328701aa3d580 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Fri, 12 Dec 2014 16:11:43 +0900
+Subject: [PATCH 1/3] ocfs2_controld/Makefile: fix compile error
+
+ERROR: This autoconf log indicates errors, it looked at host include=20
+and/or library paths while determining system capabilities.
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ ocfs2_controld/Makefile    | 4 ++--
+ ocfs2_controld/pacemaker.c | 3 ++-
+ 2 files changed, 4 insertions(+), 3 deletions(-)
+
+diff --git a/ocfs2_controld/Makefile b/ocfs2_controld/Makefile index=20
+52aa493..b530d72 100644
+--- a/ocfs2_controld/Makefile
++++ b/ocfs2_controld/Makefile
+@@ -17,7 +17,7 @@ SBIN_PROGRAMS +=3D ocfs2_controld.pcmk  PCMK_INCLUDES =
=3D=20
+-I/usr/include/pacemaker -I/usr/include/heartbeat/ $(GLIB_CFLAGS) =20
+endif
+=20
+-INCLUDES =3D -I$(TOPDIR)/include -I. $(PCMK_INCLUDES)
++INCLUDES =3D -I/usr/include/libxml2 -I$(TOPDIR)/include -I.=20
++$(PCMK_INCLUDES)
+ LIBO2CB_LIBS =3D -L$(TOPDIR)/libo2cb -lo2cb  LIBO2CB_DEPS =3D=20
+$(TOPDIR)/libo2cb/libo2cb.a  LIBOCFS2_LIBS =3D -L$(TOPDIR)/libocfs2=20
+-locfs2
+@@ -67,7 +67,7 @@ DIST_FILES =3D				\
+ ocfs2_controld.pcmk: $(PCMK_DAEMON_OBJS) $(LIBO2CB_DEPS)
+ 	$(LINK) $(GLIB_LIBS) $(LIBO2CB_LIBS) $(COM_ERR_LIBS) \
+ 		$(OPENAIS_LIBS) $(COROSYNC_LIBS) \
+-		$(DLMCONTROL_LIBS) -lcrmcluster -lstonithd
++		$(DLMCONTROL_LIBS) -lcrmcluster -lcrmcommon
+=20
+ ocfs2_controld.cman: $(CMAN_DAEMON_OBJS) $(LIBO2CB_DEPS)
+ 	$(LINK) $(LIBO2CB_LIBS) $(COM_ERR_LIBS) $(OPENAIS_LIBS) \ diff --git=20
+a/ocfs2_controld/pacemaker.c b/ocfs2_controld/pacemaker.c index=20
+8df1052..1361b13 100644
+--- a/ocfs2_controld/pacemaker.c
++++ b/ocfs2_controld/pacemaker.c
+@@ -22,6 +22,7 @@
+=20
+ #include <bzlib.h>
+=20
++#include <corosync/corodefs.h>
+ #include <pacemaker/crm_config.h>
+ /* heartbeat support is irrelevant here */  #undef SUPPORT_HEARTBEAT=20
+@@ -155,7 +156,7 @@ int setup_stack(void)
+ 	crm_log_init("ocfs2_controld", LOG_INFO, FALSE, TRUE, 0, NULL);
+=20
+ 	if(init_ais_connection(NULL, NULL, NULL, &local_node_uname, &our_nodeid)=
 =3D=3D FALSE) {
+-		log_error("Connection to our AIS plugin (%d) failed", CRM_SERVICE);
++		log_error("Connection to our AIS plugin (%d) failed", PCMK_SERVICE);
+ 		return -1;
+ 	}
+=20
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2=
_fs.h-mount.ocfs2.c-fix-compile-error.patch b/meta-cgl-common/recipes-cgl/o=
cfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patc=
h
new file mode 100644
index 0000000..799eb45
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.
+++ h-mount.ocfs2.c-fix-compile-error.patch
@@ -0,0 +1,51 @@
+From 507f5cf55e25fd12d138cc28eb061c7e0b8615b8 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Fri, 12 Dec 2014 16:14:10 +0900
+Subject: [PATCH 2/3] ocfs2_fs.h mount.ocfs2.c: fix compile error
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ include/ocfs2-kernel/ocfs2_fs.h | 2 +-
+ mount.ocfs2/mount.ocfs2.c       | 4 +++-
+ 2 files changed, 4 insertions(+), 2 deletions(-)
+
+diff --git a/include/ocfs2-kernel/ocfs2_fs.h=20
+b/include/ocfs2-kernel/ocfs2_fs.h index 2140bb3..00add7b 100644
+--- a/include/ocfs2-kernel/ocfs2_fs.h
++++ b/include/ocfs2-kernel/ocfs2_fs.h
+@@ -1311,7 +1311,7 @@ static inline int=20
+ocfs2_sprintf_system_inode_name(char *buf, int len,  }
+=20
+ static inline void ocfs2_set_de_type(struct ocfs2_dir_entry *de,
+-				    umode_t mode)
++				     unsigned short mode)
+ {
+ 	de->file_type =3D ocfs2_type_by_mode[(mode & S_IFMT)>>S_SHIFT];  } diff=
=20
+--git a/mount.ocfs2/mount.ocfs2.c b/mount.ocfs2/mount.ocfs2.c index=20
+f820a30..3e5b362 100644
+--- a/mount.ocfs2/mount.ocfs2.c
++++ b/mount.ocfs2/mount.ocfs2.c
+@@ -261,7 +261,7 @@ int main(int argc, char **argv)
+ 	char *extra =3D NULL;
+ 	int dev_ro =3D 0;
+ 	char *hbstr =3D NULL;
+-	char stackstr[strlen(OCFS2_CLUSTER_STACK_ARG) + OCFS2_STACK_LABEL_LEN + =
1] =3D "";
++	char stackstr[strlen(OCFS2_CLUSTER_STACK_ARG) + OCFS2_STACK_LABEL_LEN=20
+++ 1];
+ 	ocfs2_filesys *fs =3D NULL;
+ 	struct o2cb_cluster_desc cluster;
+ 	struct o2cb_region_desc desc;
+@@ -269,6 +269,8 @@ int main(int argc, char **argv)
+ 	int hb_started =3D 0;
+ 	struct stat statbuf;
+=20
++	stackstr[0] =3D '\0';
++
+ 	initialize_ocfs_error_table();
+ 	initialize_o2dl_error_table();
+ 	initialize_o2cb_error_table();
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendo=
r-common-o2cb.ocf-add-new-conf-file.patch b/meta-cgl-common/recipes-cgl/ocf=
s2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
new file mode 100644
index 0000000..2df4ed8
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-co
+++ mmon-o2cb.ocf-add-new-conf-file.patch
@@ -0,0 +1,478 @@
+From b18f5bab9b805fdb288f3e7202dd859f49226a3e Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Fri, 12 Dec 2014 16:15:28 +0900
+Subject: [PATCH 3/3] vendor/common/o2cb.ocf: add new conf file
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ vendor/common/o2cb.ocf | 456=20
++++++++++++++++++++++++++++++++++++++++++++++++++
+ 1 file changed, 456 insertions(+)
+ create mode 100644 vendor/common/o2cb.ocf
+
+diff --git a/vendor/common/o2cb.ocf b/vendor/common/o2cb.ocf new file=20
+mode 100644 index 0000000..f9103cb
+--- /dev/null
++++ b/vendor/common/o2cb.ocf
+@@ -0,0 +1,456 @@
++#!/bin/bash
++# Copyright (c) 2008 Andrew Beekhof
++#                    All Rights Reserved.
++#
++# This program is free software; you can redistribute it and/or modify=20
++# it under the terms of version 2 of the GNU General Public License as=20
++# published by the Free Software Foundation.
++#
++# This program is distributed in the hope that it would be useful, but=20
++# WITHOUT ANY WARRANTY; without even the implied warranty of #=20
++MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
++#
++# Further, this software is distributed without any warranty that it=20
++is # free of the rightful claim of any third person regarding=20
++infringement # or the like.  Any license provided herein, whether=20
++implied or # otherwise, applies only to this software file.  Patent=20
++licenses, if # any, provided herein do not apply to combinations of=20
++this program with # other software, or any other product whatsoever.
++#
++# You should have received a copy of the GNU General Public License #=20
++along with this program; if not, write the Free Software Foundation, #=20
++Inc., 59 Temple Place - Suite 330, Boston MA 02111-1307, USA.
++#
++######################################################################
++#
++
++# OCF initialization
++. ${OCF_ROOT}/resource.d/heartbeat/.ocf-shellfuncs
++
++# Parameter defaults
++: ${OCF_RESKEY_stack:=3D"pcmk"}
++: ${OCF_RESKEY_sysfs:=3D"/sys/fs"}
++: ${OCF_RESKEY_daemon_timeout:=3D"10"}
++: ${OCF_RESKEY_configfs:=3D"/sys/kernel/config"}
++: ${OCF_RESKEY_CRM_meta_gloablly_unique:=3D"false"}
++
++# Common variables
++DAEMON=3D"/sbin/ocfs2_controld.${OCF_RESKEY_stack}"
++CLUSTER_STACK_FILE=3D"${OCF_RESKEY_sysfs}/ocfs2/cluster_stack"
++LOADED_PLUGINS_FILE=3D"${OCF_RESKEY_sysfs}/ocfs2/loaded_cluster_plugins"
++
++#
++# Check to see if a filesystem driver is loaded.
++# 0 is loaded, 1 is not.
++#
++driver_filesystem() {
++    if [ -z "$1" ]
++    then
++        ocf_log err "driver_filesystem(): Missing an argument"
++        exit 1
++    fi
++    FSNAME=3D"$1"
++
++    FSOUT=3D"$(awk '(NF =3D=3D 1 && $1 ~ /^'$FSNAME'$/) || $2 ~ /^'$FSNAM=
E'$/{
++                      print $1;exit
++                  }' /proc/filesystems 2>/dev/null)"
++
++    test -n "$FSOUT"
++    return $?
++}
++
++#
++# Check to see if a filesystem of type $1 is mounted at $2.
++#
++# 0 is mounted, 1 is not.
++#
++check_filesystem()
++{
++    if [ "$#" !=3D "2" -o -z "$1" -o -z "$2" ]
++    then
++        ocf_log err "check_filesystem(): Missing arguments"
++        exit 4
++    fi
++    FSNAME=3D"$1"
++    MOUNTPOINT=3D"$2"
++
++    FULL_MOUNTSEARCH=3D"`echo "$MOUNTPOINT" | sed -e 's/\//\\\\\//g'`"
++    MOUNTOUT=3D"`awk '$2 ~ /^'$FULL_MOUNTSEARCH'$/ && $3 ~ /^'$FSNAME'$/{=
print $2; exit}' < /proc/mounts 2>/dev/null`"
++    test -n "$MOUNTOUT"
++    return $?
++}
++
++#
++# Unload a filesystem driver. =20
++# Be careful to notice if the driver is built-in and do nothing.
++#
++# 0 is success, 1 is error, 2 is already unloaded.
++#
++unload_filesystem()
++{
++    if [ "$#" !=3D "1" -o -z "$1" ]
++    then
++        ocf_log err "unload_filesystem(): Missing an argument"
++        return 1
++    fi
++    FSNAME=3D"$1"
++
++    driver_filesystem "$FSNAME" || return 2
++
++    MODOUT=3D"`awk '$1 ~ /^'$FSNAME'$/{print $1,$3;exit}' < /proc/modules=
 2>/dev/null`"
++    if [ -z "$MODOUT" ]; then
++        # The driver is built in, we can't unload it.
++        return 0
++    fi
++
++    case "$MODOUT" in
++    $FSNAME\ 0)
++        ;;
++    $FSNAME\ *)
++        # The driver is busy, leave it alone
++        ocf_log err "Module $FSNAME is still in use"
++        return 1
++        ;;
++    *)
++        ocf_log err "Invalid module parsing! "
++        return 1
++        ;;
++    esac
++
++    modprobe -rs "$FSNAME"
++    if [ "$?" !=3D 0 ]; then
++        ocf_log err "Unable to unload module: $FSNAME"
++        return 1
++    fi
++
++    return 0
++}
++
++status_daemon()
++{
++    PID=3D`pidof "$DAEMON"`
++    if [ -n "$PID" ]; then
++	return $OCF_SUCCESS
++    fi
++    return $OCF_NOT_RUNNING
++}
++
++bringup_daemon()
++{
++    if [ ! -e "$DAEMON" ]; then
++	ocf_log err "Required binary not found: $DAEMON"
++	return $OCF_ERR_INSTALLED
++    fi
++
++     "$DAEMON"; rc=3D$?
++    if [ $rc !=3D 0 ]; then
++	ocf_log err "Could not start $DAEMON"
++	return $OCF_ERR_GENERIC
++    fi
++
++    sleep 1
++    COUNT=3D0
++    rc=3D$OCF_NOT_RUNNING
++
++    while [ $rc =3D $OCF_NOT_RUNNING ]; do
++        COUNT=3D`expr $COUNT + 1`
++        if [ $COUNT -gt $OCF_RESKEY_daemon_timeout ]; then
++	    ocf_log err "`basename $DAEMON` did not come up"
++	    ps axf | grep -C 3 $$
++	    return $OCF_ERR_GENERIC
++        fi
++	status_daemon; rc=3D$?
++        sleep 1
++    done
++
++    return $rc
++}
++
++kill_daemon()
++{
++    status_daemon; rc=3D$?
++    if [ $rc !=3D $OCF_SUCCESS ]; then
++	return $rc
++    fi
++
++    ocf_log info "Stopping `basename "$DAEMON"`"
++    killproc "$DAEMON"
++
++    while [ $rc =3D $OCF_NOT_RUNNING ]; do
++        sleep 1
++	status_daemon; rc=3D$?
++    done
++
++    return $OCF_SUCCESS
++}
++
++#
++# Unload a module
++# 0 is success, 1 is error, 2 is not loaded #
++unload_module()
++{
++    if [ "$#" -lt "1" -o -z "$1" ]
++    then
++	ocf_log err  "unload_module(): Requires an argument"
++        return 1
++    fi
++    MODNAME=3D"$1"
++
++    MODOUT=3D"`awk '$1 ~ /^'$MODNAME'$/{print $1,$3;exit}' < /proc/module=
s 2>/dev/null`"
++    if [ -z "$MODOUT" ]
++    then
++        return 2
++    fi
++
++    case "$MODOUT" in
++    $MODNAME\ 0)
++        ;;
++    $MODNAME\ *)
++        return 2
++        ;;
++    *)
++	ocf_log err "Invalid module parsing!"
++        return 1
++        ;;
++    esac
++
++    modprobe -rs "$MODNAME"
++    if [ "$?" !=3D 0 ]; then
++	ocf_log err "Unable to unload module \"$MODNAME\""
++        return 1
++    fi
++
++    return 0
++}
++
++o2cb_start() {
++
++    o2cb_monitor; rc=3D$?
++    if [ $rc !=3D $OCF_NOT_RUNNING ]; then=20
++	return $rc
++    fi
++
++    ocf_log info "Starting $OCF_RESOURCE_INSTANCE"
++
++    if [ ! -e "$CLUSTER_STACK_FILE" ]; then
++	modprobe -s ocfs2_stackglue
++	if [ $? !=3D 0 ]; then
++	    ocf_log err "Could not load ocfs2_stackglue"
++	    return $OCF_ERR_INSTALLED
++	fi
++    fi
++
++    SP_OUT=3D"$(awk '/^'user'$/{print; exit}' "$LOADED_PLUGINS_FILE" 2>/d=
ev/null)"
++    if [ -z "$SP_OUT" ]
++    then
++        modprobe -s ocfs2_stack_user
++	if [ $? !=3D 0 ]; then
++	    ocf_log err "Could not load ocfs2_stack_user"
++	    return $OCF_ERR_INSTALLED
++	fi
++    fi
++
++    SP_OUT=3D"$(awk '/^'user'$/{print; exit}' "$LOADED_PLUGINS_FILE" 2>/d=
ev/null)"
++    if [ -z "$SP_OUT" ]; then
++	ocf_log err "Switch to userspace stack unsuccessful"
++	return $OCF_ERR_INSTALLED
++    fi
++
++    if [ -f "$CLUSTER_STACK_FILE" ]; then
++        echo "$OCF_RESKEY_stack" >"$CLUSTER_STACK_FILE"
++        if [ $? !=3D 0 ]; then
++	    ocf_log err "Userspace stack '$OCF_RESKEY_stack' not supported"
++	    return $OCF_ERR_INSTALLED
++	fi
++    else
++	ocf_log err "Switch to userspace stack not supported"
++	return $OCF_ERR_INSTALLED
++    fi
++
++    driver_filesystem ocfs2; rc=3D$?
++    if [ $rc !=3D 0 ]; then
++	modprobe -s ocfs2
++	if [ "$?" !=3D 0 ]; then
++            ocf_log err "Unable to load ocfs2 module"
++            return $OCF_ERR_INSTALLED
++	fi
++    fi
++
++    bringup_daemon
++    return $?
++}
++
++o2cb_stop() {
++    o2cb_monitor; rc=3D$?
++    case $rc in
++	$OCF_NOT_RUNNING) return $OCF_SUCCESS;;
++    esac
++
++    ocf_log info "Stopping $OCF_RESOURCE_INSTANCE"
++
++    kill_daemon
++    if [ $? !=3D 0 ]; then=20
++        ocf_log err "Unable to unload modules: the cluster is still onlin=
e"
++	return $OCF_ERR_GENERIC
++    fi
++
++    unload_filesystem ocfs2
++    if [ $? =3D 1 ]; then
++	ocf_log err "Unable to unload ocfs2 module"
++	return $OCF_ERR_GENERIC
++    fi
++
++    # If we can't find the stack glue, we have nothing to do.
++    [ ! -e "$LOADED_PLUGINS_FILE" ] && return $OCF_SUCCESS
++
++    while read plugin
++    do
++        unload_module "ocfs2_stack_${plugin}"
++        if [ $? =3D 1 ]; then
++	    ocf_log err "Unable to unload ocfs2_stack_${plugin}"
++	    return $OCF_ERR_GENERIC
++	fi
++    done <"$LOADED_PLUGINS_FILE"
++
++    unload_module "ocfs2_stackglue"
++    if [ $? =3D 1 ]; then
++	ocf_log err "Unable to unload ocfs2_stackglue"
++	return $OCF_ERR_GENERIC
++    fi
++
++    # Dont unmount configfs - its always in use by libdlm }
++
++o2cb_monitor() {
++    o2cb_validate
++
++    # Assume that ocfs2_controld will terminate if any of the=20
++ conditions below are met
++
++    driver_filesystem configfs; rc=3D$?
++    if [ $rc !=3D 0 ]; then
++	ocf_log info "configfs not laoded"
++	return $OCF_NOT_RUNNING
++    fi
++
++    check_filesystem configfs "${OCF_RESKEY_configfs}"; rc=3D$?
++    if [ $rc !=3D 0 ]; then
++	ocf_log info "configfs not mounted"
++	return $OCF_NOT_RUNNING
++    fi
++
++    if [ ! -e "$LOADED_PLUGINS_FILE" ]; then
++	ocf_log info "Stack glue driver not loaded"
++	return $OCF_NOT_RUNNING
++    fi
++
++    grep user "$LOADED_PLUGINS_FILE" >/dev/null 2>&1; rc=3D$?
++    if [ $rc !=3D 0 ]; then
++	ocf_log err "Wrong stack `cat $LOADED_PLUGINS_FILE`"
++	return $OCF_ERR_INSTALLED
++    fi
++
++    driver_filesystem ocfs2; rc=3D$?
++    if [ $rc !=3D 0 ]; then
++	ocf_log info "ocfs2 not loaded"
++	return $OCF_NOT_RUNNING
++    fi
++
++    status_daemon
++    return $?
++}
++
++o2cb_usage() {
++    echo "usage: $0 {start|stop|monitor|validate-all|meta-data}"
++    echo "  Expects to have a fully populated OCF RA-compliant environmen=
t set."
++    echo "  In particualr, a value for OCF_ROOT"
++}
++
++o2cb_validate() {
++    : TODO: check for gloablly_unique=3Dtrue and return OCF_ERR_CONFIGURE=
D
++    case ${OCF_RESKEY_CRM_meta_gloablly_unique} in
++	yes|Yes|true|True|1)=20
++	    ocf_log err "$OCF_RESOURCE_INSTANCE must be configured with the gloa=
blly_unique=3Dfalse meta attribute"
++	    exit $OCF_ERR_CONFIGURED
++	    ;;
++    esac
++
++    return $OCF_SUCCESS
++}
++
++meta_data() {
++	cat <<END
++<?xml version=3D"1.0"?>
++<!DOCTYPE resource-agent SYSTEM "ra-api-1.dtd"> <resource-agent=20
++name=3D"o2cb">
++  <version>1.0</version>
++  <shortdesc lang=3D"en">o2cb resource agent</shortdesc>
++  <longdesc lang=3D"en">
++This is a o2cb Resource Agent. It runs o2cb daemon as a instance of anony=
mous clone.
++  </longdesc>
++  <parameters>
++
++    <parameter name=3D"sysfs" unique=3D"0">
++      <longdesc lang=3D"en">
++Location where sysfs is mounted
++      </longdesc>
++      <shortdesc lang=3D"en">Sysfs location</shortdesc>
++      <content type=3D"string" default=3D"/sys/fs"/>
++    </parameter>
++
++    <parameter name=3D"configfs" unique=3D"0">
++      <longdesc lang=3D"en">
++Location where configfs is mounted
++      </longdesc>
++      <shortdesc lang=3D"en">Configfs location</shortdesc>
++      <content type=3D"string" default=3D"/sys/kernel/config"/>
++    </parameter>
++
++    <parameter name=3D"stack" unique=3D"0">
++      <longdesc lang=3D"en">
++Which userspace stack to use.  Known values: pcmk, cman
++      </longdesc>
++      <shortdesc lang=3D"en">Userspace stack</shortdesc>
++      <content type=3D"string" default=3D"pcmk"/>
++    </parameter>
++
++    <parameter name=3D"daemon_timeout" unique=3D"0">
++      <longdesc lang=3D"en">
++Number of seconds to allow the control daemon to come up
++      </longdesc>
++      <shortdesc lang=3D"en">Daemon Timeout</shortdesc>
++      <content type=3D"string" default=3D"10"/>
++    </parameter>
++
++  </parameters>
++  <actions>
++    <action name=3D"start"         timeout=3D"90" />
++    <action name=3D"stop"          timeout=3D"100" />
++    <action name=3D"monitor"       timeout=3D"20" depth=3D"0"/>
++    <action name=3D"meta-data"     timeout=3D"5" />
++    <action name=3D"validate-all"  timeout=3D"30" />
++  </actions>
++</resource-agent>
++END
++}
++
++case $__OCF_ACTION in
++meta-data)	meta_data
++		exit $OCF_SUCCESS
++		;;
++start)		o2cb_start
++		;;
++stop)		o2cb_stop
++		;;
++monitor)	o2cb_monitor
++		;;
++validate-all)	o2cb_validate
++		;;
++usage|help)	o2cb_usage
++		exit $OCF_SUCCESS
++		;;
++*)		o2cb_usage
++		exit $OCF_ERR_UNIMPLEMENTED
++		;;
++esac
++
++exit $?
+--
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.co=
nf.sample b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.con=
f.sample
new file mode 100644
index 0000000..d7252b5
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.s
+++ ample
@@ -0,0 +1,10 @@
+node:
+	ip_port =3D 7777
+	ip_address =3D 192.168.246.100
+	number =3D 0
+	name =3D localhost.localdomain
+	cluster =3D ocfs2
+
+cluster:
+	node_count =3D 1
+	name =3D ocfs2
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.servi=
ce b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service
new file mode 100644
index 0000000..520b530
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service
@@ -0,0 +1,12 @@
+[Unit]
+Description=3DLoad O2CB cluster services
+After=3Dnetwork.target
+
+[Service]
+Type=3Doneshot
+RemainAfterExit=3Dyes
+ExecStart=3D/usr/lib/ocfs2-tools/o2cb-helper start=20
+ExecStop=3D/usr/lib/ocfs2-tools/o2cb-helper stop
+
+[Install]
+WantedBy=3Dmulti-user.target
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.serv=
ice b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service
new file mode 100644
index 0000000..afcbbb9
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service
@@ -0,0 +1,13 @@
+[Unit]
+Description=3DMount OCFS2 volumes
+Requires=3Do2cb.service
+After=3Dnetwork.target o2cb.service
+
+[Service]
+Type=3Doneshot
+RemainAfterExit=3Dyes
+ExecStart=3D/bin/mount -at ocfs2
+ExecStop=3D/bin/umount -a -t ocfs2
+
+[Install]
+WantedBy=3Dmulti-user.target
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb b=
/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
new file mode 100644
index 0000000..92d79d3
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
@@ -0,0 +1,77 @@
+SUMMARY =3D "Tools for managing the Ocfs2 cluster file system"
+DESCRIPTION =3D "Programs to manage the Ocfs2 cluster file system,=20
+including mkfs.ocfs2, \
+tunefs.ocfs2 and fsck.ocfs2.\
+Ocfs2 is a general purpose extent based shared disk cluster file \=20
+system. It supports 64 bit inode numbers, and has automatically \=20
+extending metadata groups which may also make it attractive for \=20
+non-clustered use. Ocfs2 leverages some well tested kernel \=20
+technologies, such as JBD - the same journaling subsystem in use by \=20
+ext3."
+HOMEPAGE =3D "http://oss.oracle.com/projects/ocfs2-tools/"
+SECTION =3D "System Environment/Base"
+LICENSE =3D "GPLv2"
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19=
f"
+SRC_URI =3D " \
+    https://github.com/flexiant/${PN}/archive/${BP}.zip \
+    file://0001-ocfs2_controld-Makefile-fix-compile-error.patch \
+    file://0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch \
+    file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
+    file://cluster.conf.sample \
+    file://o2cb.service \
+    file://ocfs2.service \
+"
+SRC_URI[md5sum] =3D "296f1242f4d00d188231d726d7a1d148"
+SRC_URI[sha256sum] =3D "a809f03c62e515a4c23e98c4b4c3f8150377af2cf44cd2a2ee=
56e175b0e4d0b3"
+S =3D "${WORKDIR}/ocfs2-tools-ocfs2-tools-1.4.3"
+inherit autotools-brokensep pkgconfig
+DEPENDS =3D "corosync openais clutter-1.0 cluster-glue pacemaker libxml2 l=
inux-libc-headers e2fsprogs"
+RDEPENDS_${PN} =3D "bash coreutils net-tools module-init-tools e2fsprogs c=
hkconfig glib-2.0"
+ASNEEDED_pn-${PN} =3D ""
+PARALLEL_MAKE =3D ""
+INSANE_SKIP_${PN} =3D "unsafe-references-in-binaries"
+CFLAGS_append +=3D "-DGLIB_COMPILATION"
+CPPFLAGS_append +=3D "-DGLIB_COMPILATION"
+EXTRA_OECONF =3D " \
+    --enable-ocfs2console=3Dno \
+    --enable-dynamic-fsck=3Dyes \
+    --enable-dynamic-ctl=3Dyes \
+"
+do_compile_prepend() {
+    for m in `find . -name "Makefile"` ; do
+        sed -i -e "s@-I/usr/include@-I${STAGING_DIR_TARGET}/usr/include@g"=
 $m
+    done
+}
+
+inherit=20
+${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)=
} SYSTEMD_SERVICE_${PN} =3D "o2cb.service ocfs2.service"
+SYSTEMD_AUTO_ENABLE =3D "enable"
+
+FILES_${PN} +=3D "${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd=
','${systemd_unitdir}','', d)}"
+
+do_install() {
+    install -d ${D}/etc/init.d
+    install vendor/common/o2cb.init ${D}/etc/init.d/o2cb
+    install vendor/common/ocfs2.init ${D}/etc/init.d/ocfs2
+    install -d ${D}/etc/sysconfig
+    install vendor/common/o2cb.sysconfig ${D}/etc/sysconfig/o2cb
+    install -d ${D}/etc/udev/rules.d
+    install vendor/common/51-ocfs2.rules ${D}/etc/udev/rules.d/51-ocfs2.ru=
les
+    install -d ${D}/${libdir}/ocf/resource.d/ocfs2
+    install  -m 0755 vendor/common/o2cb.ocf ${D}/${libdir}/ocf/resource.d/=
ocfs2/o2cb
+    oe_runmake DESTDIR=3D"${D}" install
+    chmod 644 ${D}/${libdir}/*.a
+    install -dm 0755  ${D}/etc/ocfs2
+    install -m 0644 ${WORKDIR}/cluster.conf.sample ${D}/etc/ocfs2/cluster.=
conf.sample
+    rm -rf ${D}/${libdir}/ocf
+    rm -rf ${D}/sbin/ocfs2_controld.pcmk
+    rm -rf ${D}/sbin/ocfs2_controld.cman
+    # fix up hardcoded paths
+    sed -i -e 's,/usr/lib/,${libdir}/,' ${WORKDIR}/o2cb.service
+    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; th=
en
+        install -d ${D}/${systemd_unitdir}/system
+        install -m 644 ${WORKDIR}/o2cb.service ${D}/${systemd_unitdir}/sys=
tem
+        install -m 644 ${WORKDIR}/ocfs2.service ${D}/${systemd_unitdir}/sy=
stem
+        install -d ${D}/${libexecdir}
+        install -m 755 vendor/common/o2cb.init ${D}/${libexecdir}/o2cb-hel=
per
+    fi
+}
--
1.8.4.2

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

