Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97295E009A1; Fri, 12 Dec 2014 01:27:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12AB5E00982
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 01:27:06 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44948032"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 12 Dec 2014 17:23:41 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sBC9QaK8011742
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 17:26:37 +0800
Received: from localhost.localdomain (10.167.226.35) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Fri, 12 Dec 2014 17:27:00 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Dec 2014 17:26:06 +0800
Message-ID: <1418376367-7119-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.35]
Subject: [meta-cgl][PATCH] ocfs2-tools: add new recipe
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
X-List-Received-Date: Fri, 12 Dec 2014 09:27:10 -0000
Content-Type: text/plain

Programs to manage the Ocfs2 cluster file system, including
mkfs.ocfs2,tunefs.ocfs2 and fsck.ocfs2

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 ...ocfs2_controld-Makefile-fix-compile-error.patch |  62 +++
 ...cfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch |  51 +++
 ...-vendor-common-o2cb.ocf-add-new-conf-file.patch | 478 +++++++++++++++++++++
 .../ocfs2-tools/ocfs2-tools/cluster.conf.sample    |  10 +
 .../ocfs2-tools/ocfs2-tools/o2cb.service           |  12 +
 .../ocfs2-tools/ocfs2-tools/ocfs2.service          |  13 +
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb   |  77 ++++
 7 files changed, 703 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch
new file mode 100644
index 0000000..c30f38f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch
@@ -0,0 +1,62 @@
+From 865444fb9ecfe5b0050075f986a328701aa3d580 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Fri, 12 Dec 2014 16:11:43 +0900
+Subject: [PATCH 1/3] ocfs2_controld/Makefile: fix compile error
+
+ERROR: This autoconf log indicates errors, it looked at host
+include and/or library paths while determining system capabilities.
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ ocfs2_controld/Makefile    | 4 ++--
+ ocfs2_controld/pacemaker.c | 3 ++-
+ 2 files changed, 4 insertions(+), 3 deletions(-)
+
+diff --git a/ocfs2_controld/Makefile b/ocfs2_controld/Makefile
+index 52aa493..b530d72 100644
+--- a/ocfs2_controld/Makefile
++++ b/ocfs2_controld/Makefile
+@@ -17,7 +17,7 @@ SBIN_PROGRAMS += ocfs2_controld.pcmk
+ PCMK_INCLUDES = -I/usr/include/pacemaker -I/usr/include/heartbeat/ $(GLIB_CFLAGS)
+ endif
+ 
+-INCLUDES = -I$(TOPDIR)/include -I. $(PCMK_INCLUDES)
++INCLUDES = -I/usr/include/libxml2 -I$(TOPDIR)/include -I. $(PCMK_INCLUDES)
+ LIBO2CB_LIBS = -L$(TOPDIR)/libo2cb -lo2cb
+ LIBO2CB_DEPS = $(TOPDIR)/libo2cb/libo2cb.a
+ LIBOCFS2_LIBS = -L$(TOPDIR)/libocfs2 -locfs2
+@@ -67,7 +67,7 @@ DIST_FILES =				\
+ ocfs2_controld.pcmk: $(PCMK_DAEMON_OBJS) $(LIBO2CB_DEPS)
+ 	$(LINK) $(GLIB_LIBS) $(LIBO2CB_LIBS) $(COM_ERR_LIBS) \
+ 		$(OPENAIS_LIBS) $(COROSYNC_LIBS) \
+-		$(DLMCONTROL_LIBS) -lcrmcluster -lstonithd
++		$(DLMCONTROL_LIBS) -lcrmcluster -lcrmcommon
+ 
+ ocfs2_controld.cman: $(CMAN_DAEMON_OBJS) $(LIBO2CB_DEPS)
+ 	$(LINK) $(LIBO2CB_LIBS) $(COM_ERR_LIBS) $(OPENAIS_LIBS) \
+diff --git a/ocfs2_controld/pacemaker.c b/ocfs2_controld/pacemaker.c
+index 8df1052..1361b13 100644
+--- a/ocfs2_controld/pacemaker.c
++++ b/ocfs2_controld/pacemaker.c
+@@ -22,6 +22,7 @@
+ 
+ #include <bzlib.h>
+ 
++#include <corosync/corodefs.h>
+ #include <pacemaker/crm_config.h>
+ /* heartbeat support is irrelevant here */
+ #undef SUPPORT_HEARTBEAT
+@@ -155,7 +156,7 @@ int setup_stack(void)
+ 	crm_log_init("ocfs2_controld", LOG_INFO, FALSE, TRUE, 0, NULL);
+ 
+ 	if(init_ais_connection(NULL, NULL, NULL, &local_node_uname, &our_nodeid) == FALSE) {
+-		log_error("Connection to our AIS plugin (%d) failed", CRM_SERVICE);
++		log_error("Connection to our AIS plugin (%d) failed", PCMK_SERVICE);
+ 		return -1;
+ 	}
+ 
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
new file mode 100644
index 0000000..799eb45
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
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
+diff --git a/include/ocfs2-kernel/ocfs2_fs.h b/include/ocfs2-kernel/ocfs2_fs.h
+index 2140bb3..00add7b 100644
+--- a/include/ocfs2-kernel/ocfs2_fs.h
++++ b/include/ocfs2-kernel/ocfs2_fs.h
+@@ -1311,7 +1311,7 @@ static inline int ocfs2_sprintf_system_inode_name(char *buf, int len,
+ }
+ 
+ static inline void ocfs2_set_de_type(struct ocfs2_dir_entry *de,
+-				    umode_t mode)
++				     unsigned short mode)
+ {
+ 	de->file_type = ocfs2_type_by_mode[(mode & S_IFMT)>>S_SHIFT];
+ }
+diff --git a/mount.ocfs2/mount.ocfs2.c b/mount.ocfs2/mount.ocfs2.c
+index f820a30..3e5b362 100644
+--- a/mount.ocfs2/mount.ocfs2.c
++++ b/mount.ocfs2/mount.ocfs2.c
+@@ -261,7 +261,7 @@ int main(int argc, char **argv)
+ 	char *extra = NULL;
+ 	int dev_ro = 0;
+ 	char *hbstr = NULL;
+-	char stackstr[strlen(OCFS2_CLUSTER_STACK_ARG) + OCFS2_STACK_LABEL_LEN + 1] = "";
++	char stackstr[strlen(OCFS2_CLUSTER_STACK_ARG) + OCFS2_STACK_LABEL_LEN + 1];
+ 	ocfs2_filesys *fs = NULL;
+ 	struct o2cb_cluster_desc cluster;
+ 	struct o2cb_region_desc desc;
+@@ -269,6 +269,8 @@ int main(int argc, char **argv)
+ 	int hb_started = 0;
+ 	struct stat statbuf;
+ 
++	stackstr[0] = '\0';
++
+ 	initialize_ocfs_error_table();
+ 	initialize_o2dl_error_table();
+ 	initialize_o2cb_error_table();
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
new file mode 100644
index 0000000..2df4ed8
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
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
+ vendor/common/o2cb.ocf | 456 +++++++++++++++++++++++++++++++++++++++++++++++++
+ 1 file changed, 456 insertions(+)
+ create mode 100644 vendor/common/o2cb.ocf
+
+diff --git a/vendor/common/o2cb.ocf b/vendor/common/o2cb.ocf
+new file mode 100644
+index 0000000..f9103cb
+--- /dev/null
++++ b/vendor/common/o2cb.ocf
+@@ -0,0 +1,456 @@
++#!/bin/bash
++# Copyright (c) 2008 Andrew Beekhof
++#                    All Rights Reserved.
++#
++# This program is free software; you can redistribute it and/or modify
++# it under the terms of version 2 of the GNU General Public License as
++# published by the Free Software Foundation.
++#
++# This program is distributed in the hope that it would be useful, but
++# WITHOUT ANY WARRANTY; without even the implied warranty of
++# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
++#
++# Further, this software is distributed without any warranty that it is
++# free of the rightful claim of any third person regarding infringement
++# or the like.  Any license provided herein, whether implied or
++# otherwise, applies only to this software file.  Patent licenses, if
++# any, provided herein do not apply to combinations of this program with
++# other software, or any other product whatsoever.
++#
++# You should have received a copy of the GNU General Public License
++# along with this program; if not, write the Free Software Foundation,
++# Inc., 59 Temple Place - Suite 330, Boston MA 02111-1307, USA.
++#
++#######################################################################
++
++# OCF initialization
++. ${OCF_ROOT}/resource.d/heartbeat/.ocf-shellfuncs
++
++# Parameter defaults
++: ${OCF_RESKEY_stack:="pcmk"}
++: ${OCF_RESKEY_sysfs:="/sys/fs"}
++: ${OCF_RESKEY_daemon_timeout:="10"} 
++: ${OCF_RESKEY_configfs:="/sys/kernel/config"}
++: ${OCF_RESKEY_CRM_meta_gloablly_unique:="false"}
++
++# Common variables
++DAEMON="/sbin/ocfs2_controld.${OCF_RESKEY_stack}"
++CLUSTER_STACK_FILE="${OCF_RESKEY_sysfs}/ocfs2/cluster_stack"
++LOADED_PLUGINS_FILE="${OCF_RESKEY_sysfs}/ocfs2/loaded_cluster_plugins"
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
++    FSNAME="$1"
++
++    FSOUT="$(awk '(NF == 1 && $1 ~ /^'$FSNAME'$/) || $2 ~ /^'$FSNAME'$/{
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
++    if [ "$#" != "2" -o -z "$1" -o -z "$2" ]
++    then
++        ocf_log err "check_filesystem(): Missing arguments"
++        exit 4
++    fi
++    FSNAME="$1"
++    MOUNTPOINT="$2"
++
++    FULL_MOUNTSEARCH="`echo "$MOUNTPOINT" | sed -e 's/\//\\\\\//g'`"
++    MOUNTOUT="`awk '$2 ~ /^'$FULL_MOUNTSEARCH'$/ && $3 ~ /^'$FSNAME'$/{print $2; exit}' < /proc/mounts 2>/dev/null`"
++    test -n "$MOUNTOUT"
++    return $?
++}
++
++#
++# Unload a filesystem driver.  
++# Be careful to notice if the driver is built-in and do nothing.
++#
++# 0 is success, 1 is error, 2 is already unloaded.
++#
++unload_filesystem()
++{
++    if [ "$#" != "1" -o -z "$1" ]
++    then
++        ocf_log err "unload_filesystem(): Missing an argument"
++        return 1
++    fi
++    FSNAME="$1"
++
++    driver_filesystem "$FSNAME" || return 2
++
++    MODOUT="`awk '$1 ~ /^'$FSNAME'$/{print $1,$3;exit}' < /proc/modules 2>/dev/null`"
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
++    if [ "$?" != 0 ]; then
++        ocf_log err "Unable to unload module: $FSNAME"
++        return 1
++    fi
++
++    return 0
++}
++
++status_daemon()
++{
++    PID=`pidof "$DAEMON"`
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
++     "$DAEMON"; rc=$?
++    if [ $rc != 0 ]; then
++	ocf_log err "Could not start $DAEMON"
++	return $OCF_ERR_GENERIC
++    fi
++
++    sleep 1
++    COUNT=0
++    rc=$OCF_NOT_RUNNING
++
++    while [ $rc = $OCF_NOT_RUNNING ]; do
++        COUNT=`expr $COUNT + 1`
++        if [ $COUNT -gt $OCF_RESKEY_daemon_timeout ]; then
++	    ocf_log err "`basename $DAEMON` did not come up"
++	    ps axf | grep -C 3 $$
++	    return $OCF_ERR_GENERIC
++        fi
++	status_daemon; rc=$?
++        sleep 1
++    done
++
++    return $rc
++}
++
++kill_daemon()
++{
++    status_daemon; rc=$?
++    if [ $rc != $OCF_SUCCESS ]; then
++	return $rc
++    fi
++
++    ocf_log info "Stopping `basename "$DAEMON"`"
++    killproc "$DAEMON"
++
++    while [ $rc = $OCF_NOT_RUNNING ]; do
++        sleep 1
++	status_daemon; rc=$?
++    done
++
++    return $OCF_SUCCESS
++}
++
++#
++# Unload a module
++# 0 is success, 1 is error, 2 is not loaded
++#
++unload_module()
++{
++    if [ "$#" -lt "1" -o -z "$1" ]
++    then
++	ocf_log err  "unload_module(): Requires an argument"
++        return 1
++    fi
++    MODNAME="$1"
++
++    MODOUT="`awk '$1 ~ /^'$MODNAME'$/{print $1,$3;exit}' < /proc/modules 2>/dev/null`"
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
++    if [ "$?" != 0 ]; then
++	ocf_log err "Unable to unload module \"$MODNAME\""
++        return 1
++    fi
++
++    return 0
++}
++
++o2cb_start() {
++
++    o2cb_monitor; rc=$?
++    if [ $rc != $OCF_NOT_RUNNING ]; then 
++	return $rc
++    fi
++
++    ocf_log info "Starting $OCF_RESOURCE_INSTANCE"
++
++    if [ ! -e "$CLUSTER_STACK_FILE" ]; then
++	modprobe -s ocfs2_stackglue
++	if [ $? != 0 ]; then
++	    ocf_log err "Could not load ocfs2_stackglue"
++	    return $OCF_ERR_INSTALLED
++	fi
++    fi
++
++    SP_OUT="$(awk '/^'user'$/{print; exit}' "$LOADED_PLUGINS_FILE" 2>/dev/null)"
++    if [ -z "$SP_OUT" ]
++    then
++        modprobe -s ocfs2_stack_user
++	if [ $? != 0 ]; then
++	    ocf_log err "Could not load ocfs2_stack_user"
++	    return $OCF_ERR_INSTALLED
++	fi
++    fi
++
++    SP_OUT="$(awk '/^'user'$/{print; exit}' "$LOADED_PLUGINS_FILE" 2>/dev/null)"
++    if [ -z "$SP_OUT" ]; then
++	ocf_log err "Switch to userspace stack unsuccessful"
++	return $OCF_ERR_INSTALLED
++    fi
++
++    if [ -f "$CLUSTER_STACK_FILE" ]; then
++        echo "$OCF_RESKEY_stack" >"$CLUSTER_STACK_FILE"
++        if [ $? != 0 ]; then
++	    ocf_log err "Userspace stack '$OCF_RESKEY_stack' not supported"
++	    return $OCF_ERR_INSTALLED
++	fi
++    else
++	ocf_log err "Switch to userspace stack not supported"
++	return $OCF_ERR_INSTALLED
++    fi
++
++    driver_filesystem ocfs2; rc=$?
++    if [ $rc != 0 ]; then
++	modprobe -s ocfs2
++	if [ "$?" != 0 ]; then
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
++    o2cb_monitor; rc=$?
++    case $rc in
++	$OCF_NOT_RUNNING) return $OCF_SUCCESS;;
++    esac
++
++    ocf_log info "Stopping $OCF_RESOURCE_INSTANCE"
++
++    kill_daemon
++    if [ $? != 0 ]; then 
++        ocf_log err "Unable to unload modules: the cluster is still online"
++	return $OCF_ERR_GENERIC
++    fi
++
++    unload_filesystem ocfs2
++    if [ $? = 1 ]; then
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
++        if [ $? = 1 ]; then
++	    ocf_log err "Unable to unload ocfs2_stack_${plugin}"
++	    return $OCF_ERR_GENERIC
++	fi
++    done <"$LOADED_PLUGINS_FILE"
++
++    unload_module "ocfs2_stackglue"
++    if [ $? = 1 ]; then
++	ocf_log err "Unable to unload ocfs2_stackglue"
++	return $OCF_ERR_GENERIC
++    fi
++
++    # Dont unmount configfs - its always in use by libdlm
++}
++
++o2cb_monitor() {
++    o2cb_validate
++
++    # Assume that ocfs2_controld will terminate if any of the conditions below are met
++
++    driver_filesystem configfs; rc=$?
++    if [ $rc != 0 ]; then
++	ocf_log info "configfs not laoded"
++	return $OCF_NOT_RUNNING
++    fi
++
++    check_filesystem configfs "${OCF_RESKEY_configfs}"; rc=$?
++    if [ $rc != 0 ]; then
++	ocf_log info "configfs not mounted"
++	return $OCF_NOT_RUNNING
++    fi
++
++    if [ ! -e "$LOADED_PLUGINS_FILE" ]; then
++	ocf_log info "Stack glue driver not loaded"
++	return $OCF_NOT_RUNNING
++    fi
++
++    grep user "$LOADED_PLUGINS_FILE" >/dev/null 2>&1; rc=$?
++    if [ $rc != 0 ]; then
++	ocf_log err "Wrong stack `cat $LOADED_PLUGINS_FILE`"
++	return $OCF_ERR_INSTALLED
++    fi
++
++    driver_filesystem ocfs2; rc=$?
++    if [ $rc != 0 ]; then
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
++    echo "  Expects to have a fully populated OCF RA-compliant environment set."
++    echo "  In particualr, a value for OCF_ROOT"
++}
++
++o2cb_validate() {
++    : TODO: check for gloablly_unique=true and return OCF_ERR_CONFIGURED
++    case ${OCF_RESKEY_CRM_meta_gloablly_unique} in
++	yes|Yes|true|True|1) 
++	    ocf_log err "$OCF_RESOURCE_INSTANCE must be configured with the gloablly_unique=false meta attribute"
++	    exit $OCF_ERR_CONFIGURED
++	    ;;
++    esac
++
++    return $OCF_SUCCESS
++}
++
++meta_data() {
++	cat <<END
++<?xml version="1.0"?>
++<!DOCTYPE resource-agent SYSTEM "ra-api-1.dtd">
++<resource-agent name="o2cb">
++  <version>1.0</version>
++  <shortdesc lang="en">o2cb resource agent</shortdesc>
++  <longdesc lang="en">
++This is a o2cb Resource Agent. It runs o2cb daemon as a instance of anonymous clone.
++  </longdesc>
++  <parameters>
++
++    <parameter name="sysfs" unique="0">
++      <longdesc lang="en">
++Location where sysfs is mounted
++      </longdesc>
++      <shortdesc lang="en">Sysfs location</shortdesc>
++      <content type="string" default="/sys/fs"/>
++    </parameter>
++
++    <parameter name="configfs" unique="0">
++      <longdesc lang="en">
++Location where configfs is mounted
++      </longdesc>
++      <shortdesc lang="en">Configfs location</shortdesc>
++      <content type="string" default="/sys/kernel/config"/>
++    </parameter>
++
++    <parameter name="stack" unique="0">
++      <longdesc lang="en">
++Which userspace stack to use.  Known values: pcmk, cman
++      </longdesc>
++      <shortdesc lang="en">Userspace stack</shortdesc>
++      <content type="string" default="pcmk"/>
++    </parameter>
++
++    <parameter name="daemon_timeout" unique="0">
++      <longdesc lang="en">
++Number of seconds to allow the control daemon to come up
++      </longdesc>
++      <shortdesc lang="en">Daemon Timeout</shortdesc>
++      <content type="string" default="10"/>
++    </parameter>
++
++  </parameters>
++  <actions>
++    <action name="start"         timeout="90" />
++    <action name="stop"          timeout="100" />
++    <action name="monitor"       timeout="20" depth="0"/>
++    <action name="meta-data"     timeout="5" />
++    <action name="validate-all"  timeout="30" />
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
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample
new file mode 100644
index 0000000..d7252b5
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample
@@ -0,0 +1,10 @@
+node:
+	ip_port = 7777
+	ip_address = 192.168.246.100
+	number = 0
+	name = localhost.localdomain
+	cluster = ocfs2
+
+cluster:
+	node_count = 1
+	name = ocfs2
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service
new file mode 100644
index 0000000..520b530
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service
@@ -0,0 +1,12 @@
+[Unit]
+Description=Load O2CB cluster services
+After=network.target
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+ExecStart=/usr/lib/ocfs2-tools/o2cb-helper start
+ExecStop=/usr/lib/ocfs2-tools/o2cb-helper stop
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service
new file mode 100644
index 0000000..afcbbb9
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service
@@ -0,0 +1,13 @@
+[Unit]
+Description=Mount OCFS2 volumes
+Requires=o2cb.service
+After=network.target o2cb.service
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+ExecStart=/bin/mount -at ocfs2
+ExecStop=/bin/umount -a -t ocfs2
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
new file mode 100644
index 0000000..92d79d3
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
@@ -0,0 +1,77 @@
+SUMMARY = "Tools for managing the Ocfs2 cluster file system"
+DESCRIPTION = "Programs to manage the Ocfs2 cluster file system, including mkfs.ocfs2, \
+tunefs.ocfs2 and fsck.ocfs2.\
+Ocfs2 is a general purpose extent based shared disk cluster file \
+system. It supports 64 bit inode numbers, and has automatically \
+extending metadata groups which may also make it attractive for \
+non-clustered use. Ocfs2 leverages some well tested kernel \
+technologies, such as JBD - the same journaling subsystem in use by \
+ext3."
+HOMEPAGE = "http://oss.oracle.com/projects/ocfs2-tools/"
+SECTION = "System Environment/Base"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+SRC_URI = " \
+    https://github.com/flexiant/${PN}/archive/${BP}.zip \
+    file://0001-ocfs2_controld-Makefile-fix-compile-error.patch \
+    file://0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch \
+    file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
+    file://cluster.conf.sample \
+    file://o2cb.service \
+    file://ocfs2.service \
+"
+SRC_URI[md5sum] = "296f1242f4d00d188231d726d7a1d148"
+SRC_URI[sha256sum] = "a809f03c62e515a4c23e98c4b4c3f8150377af2cf44cd2a2ee56e175b0e4d0b3"
+S = "${WORKDIR}/ocfs2-tools-ocfs2-tools-1.4.3"
+inherit autotools-brokensep pkgconfig
+DEPENDS = "corosync openais clutter-1.0 cluster-glue pacemaker libxml2 linux-libc-headers e2fsprogs"
+RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
+ASNEEDED_pn-${PN} = ""
+PARALLEL_MAKE = ""
+INSANE_SKIP_${PN} = "unsafe-references-in-binaries"
+CFLAGS_append += "-DGLIB_COMPILATION"
+CPPFLAGS_append += "-DGLIB_COMPILATION"
+EXTRA_OECONF = " \
+    --enable-ocfs2console=no \
+    --enable-dynamic-fsck=yes \
+    --enable-dynamic-ctl=yes \
+"
+do_compile_prepend() {
+    for m in `find . -name "Makefile"` ; do
+        sed -i -e "s@-I/usr/include@-I${STAGING_DIR_TARGET}/usr/include@g" $m
+    done
+}
+
+inherit ${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+SYSTEMD_SERVICE_${PN} = "o2cb.service ocfs2.service"
+SYSTEMD_AUTO_ENABLE = "enable"
+
+FILES_${PN} += "${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','${systemd_unitdir}','', d)}"
+
+do_install() {
+    install -d ${D}/etc/init.d
+    install vendor/common/o2cb.init ${D}/etc/init.d/o2cb
+    install vendor/common/ocfs2.init ${D}/etc/init.d/ocfs2
+    install -d ${D}/etc/sysconfig
+    install vendor/common/o2cb.sysconfig ${D}/etc/sysconfig/o2cb
+    install -d ${D}/etc/udev/rules.d
+    install vendor/common/51-ocfs2.rules ${D}/etc/udev/rules.d/51-ocfs2.rules
+    install -d ${D}/${libdir}/ocf/resource.d/ocfs2
+    install  -m 0755 vendor/common/o2cb.ocf ${D}/${libdir}/ocf/resource.d/ocfs2/o2cb
+    oe_runmake DESTDIR="${D}" install
+    chmod 644 ${D}/${libdir}/*.a
+    install -dm 0755  ${D}/etc/ocfs2
+    install -m 0644 ${WORKDIR}/cluster.conf.sample ${D}/etc/ocfs2/cluster.conf.sample
+    rm -rf ${D}/${libdir}/ocf
+    rm -rf ${D}/sbin/ocfs2_controld.pcmk
+    rm -rf ${D}/sbin/ocfs2_controld.cman
+    # fix up hardcoded paths
+    sed -i -e 's,/usr/lib/,${libdir}/,' ${WORKDIR}/o2cb.service
+    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -d ${D}/${systemd_unitdir}/system
+        install -m 644 ${WORKDIR}/o2cb.service ${D}/${systemd_unitdir}/system
+        install -m 644 ${WORKDIR}/ocfs2.service ${D}/${systemd_unitdir}/system
+        install -d ${D}/${libexecdir}
+        install -m 755 vendor/common/o2cb.init ${D}/${libexecdir}/o2cb-helper
+    fi
+}
-- 
1.8.4.2


