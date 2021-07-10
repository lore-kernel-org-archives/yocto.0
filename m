Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web12.27049.1625940931225076635
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Jul 2021 11:15:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=paU6LcGr;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id b5so6785759plg.2
        for <yocto@lists.yoctoproject.org>; Sat, 10 Jul 2021 11:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=HlszlW0wKPWUqBtMWpBJ4YTj6XJce3uaNV2an7WE75A=;
        b=paU6LcGrtVJCxge8sB78imiSjeSxrZhRalys2Q84nll4DGUBM+JK77V53KkZ9yYmBH
         4paTCbfUrjaHq4Z4x5W7fpGO0fgUNyXi4PtNa1F617K2z7s1eeByIF0Mn1unz4uSdB2Y
         WBqoU/6Olkr95aC8jBTP4a79kY10+Uv50ZyHMLsPBZYdXJmcbptPZls+Lb9lRS9tVK3f
         SxJiHi0xb6QXLzp+Tj95rbEMo5dh3m8QHzG0C2rmZ52Jy1bgg49NJfHzPYk77myHJ7gL
         PzWfIDMCrUKzWHpjx5ALzu60GCTeRqSJLdp4TEfERcmND9cEoM4LKV0cFUSdBnnh5Khp
         oOAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=HlszlW0wKPWUqBtMWpBJ4YTj6XJce3uaNV2an7WE75A=;
        b=QUomwSKTHN5JK1EriPfLOfx0xlFwK5mdJp0osKvhGLq+3vCsaM534xXketAC8uZS1p
         EMTmh6KKieN6RUWe2IhEjL/cg9V31DTHh/ByCyBAzxnVpHuznDoyQm+E8NzJHTAPgUv2
         WZaYIs8ZNVF96ykRjOPB1+6hOR6m7Xb+Gv0YIH4MMaD8zrGv3yfKVvK+E4qXv53i6hUO
         7OdqvZTRdUPRmkTtdOG6W1CKAcU5KRV8eM/CXTTCXgMOiCs1QMibz/YdTb0GqIyVD+XV
         cs3+BImyHZC3HYpdB8WFez0ko0pSGWBACH06ykr57zItxyjE9AX0hgR5IrVSDaphbtq5
         omyQ==
X-Gm-Message-State: AOAM531LAj6B2WbKaIkMxWj3e3d+i3IIS+8TTXq/ktIJI4cHleYcVhRG
	WsaS7rvK+1TrfjivPRvm28Zx+OrFcjtKRg==
X-Google-Smtp-Source: ABdhPJyJWbqUo5i9OllZ/IhWsFNdhh+zDLa/OAVLeZpu3PxgSoT94/XxsMO2cnUOsxOX8Ck9ZG6fuQ==
X-Received: by 2002:a17:902:c64b:b029:12a:d8db:d0fe with SMTP id s11-20020a170902c64bb029012ad8dbd0femr9156795pls.11.1625940930300;
        Sat, 10 Jul 2021 11:15:30 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:bb2:312:eca2:b50d? ([2601:202:4180:a5c0:bb2:312:eca2:b50d])
        by smtp.gmail.com with ESMTPSA id r29sm10887259pfq.177.2021.07.10.11.15.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 11:15:29 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 2/2] apparmor: use its own initscript and service files
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20210623091504.1283317-1-yi.zhao@windriver.com>
 <168B2B5232A141EF.5306@lists.yoctoproject.org>
 <fcb251ae-e377-df3c-4fd6-0516ddf5d659@windriver.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <1bb3dd86-8d74-ef87-feb1-590f4c1efe27@gmail.com>
Date: Sat, 10 Jul 2021 11:15:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <fcb251ae-e377-df3c-4fd6-0516ddf5d659@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged.

thanks for the reminder.

-armin

On 7/6/21 2:03 AM, Yi Zhao wrote:
>
> Ping ...
>
>
> On 6/23/21 5:15 PM, Yi Zhao wrote:
>> Use initscript and service files provided by apparmor.
>>
>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> ---
>>  recipes-mac/AppArmor/apparmor_3.0.1.bb        |  33 +--
>>  ...x-hardcoded-installation-directories.patch |  51 ++++
>>  ...pparmor.debian-add-missing-functions.patch |  57 ++++
>>  recipes-mac/AppArmor/files/apparmor           | 226 ---------------
>>  recipes-mac/AppArmor/files/apparmor.rc        |  98 -------
>>  recipes-mac/AppArmor/files/apparmor.service   |  22 --
>>  recipes-mac/AppArmor/files/functions          | 271 ------------------
>>  7 files changed, 118 insertions(+), 640 deletions(-)
>>  create mode 100644 recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
>>  create mode 100644 recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
>>  delete mode 100644 recipes-mac/AppArmor/files/apparmor
>>  delete mode 100644 recipes-mac/AppArmor/files/apparmor.rc
>>  delete mode 100644 recipes-mac/AppArmor/files/apparmor.service
>>  delete mode 100644 recipes-mac/AppArmor/files/functions
>>
>> diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
>> index 6377683..ff5b39b 100644
>> --- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
>> +++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
>> @@ -15,15 +15,13 @@ DEPENDS = "bison-native apr gettext-native coreutils-native swig-native"
>>  
>>  SRC_URI = " \
>>      git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-3.0 \
>> +    file://run-ptest \
>>      file://disable_perl_h_check.patch \
>>      file://crosscompile_perl_bindings.patch \
>> -    file://apparmor.rc \
>> -    file://functions \
>> -    file://apparmor \
>> -    file://apparmor.service \
>>      file://0001-Makefile.am-suppress-perllocal.pod.patch \
>> -    file://run-ptest \
>>      file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch \
>> +    file://0001-Makefile-fix-hardcoded-installation-directories.patch \
>> +    file://0001-rc.apparmor.debian-add-missing-functions.patch \
>>      "
>>  
>>  SRCREV = "b0f08aa9d678197b8e3477c2fbff790f50a1de5e"
>> @@ -79,8 +77,6 @@ do_compile () {
>>  }
>>  
>>  do_install () {
>> -    install -d ${D}/${INIT_D_DIR}
>> -    install -d ${D}/lib/apparmor
>>      oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
>>      oe_runmake -C ${B}/binutils DESTDIR="${D}" install
>>      oe_runmake -C ${B}/utils DESTDIR="${D}" install
>> @@ -96,16 +92,16 @@ do_install () {
>>      fi
>>  
>>      if ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'true', 'false', d)}; then
>> -        install -d ${D}/lib/security
>>          oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
>>      fi
>>  
>> -    install -m 755 ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
>> -    install -m 755 ${WORKDIR}/functions ${D}/lib/apparmor
>> +    if ${@bb.utils.contains('DISTRO_FEATURES','sysvinit','true','false',d)}; then
>> +        install -d ${D}${sysconfdir}/init.d
>> +        install -m 755 ${B}/parser/rc.apparmor.debian ${D}${sysconfdir}/init.d/apparmor
>> +    fi
>>  
>>      if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
>> -        install -d ${D}${systemd_system_unitdir}
>> -        install -m 0644 ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
>> +        oe_runmake -C ${B}/parser DESTDIR="${D}" install-systemd
>>      fi
>>  }
>>  
>> @@ -152,15 +148,6 @@ do_install_ptest_arm() {
>>    :
>>  }
>>  
>> -pkg_postinst_ontarget_${PN} () {
>> -if [ ! -d /etc/apparmor.d/cache ] ; then
>> -    mkdir /etc/apparmor.d/cache
>> -fi
>> -}
>> -
>> -# We need the init script so don't rm it
>> -RMINITDIR_class-target_remove = " rm_sysvinit_initddir"
>> -
>>  INITSCRIPT_PACKAGES = "${PN}"
>>  INITSCRIPT_NAME = "apparmor"
>>  INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
>> @@ -171,9 +158,9 @@ SYSTEMD_AUTO_ENABLE ?= "enable"
>>  
>>  PACKAGES += "mod-${PN}"
>>  
>> -FILES_${PN} += "/lib/apparmor/ /lib/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
>> +FILES_${PN} += "${nonarch_base_libdir}/apparmor/ ${base_libdir}/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
>>  FILES_mod-${PN} = "${libdir}/apache2/modules/*"
>> -FILES_${PN}-dbg += "/lib/security/"
>> +FILES_${PN}-dbg += "${base_libdir}/security/.debug"
>>  
>>  DEPENDS_append_libc-musl = " fts "
>>  RDEPENDS_${PN}_libc-musl +=  "musl-utils"
>> diff --git a/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch b/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
>> new file mode 100644
>> index 0000000..f10acb1
>> --- /dev/null
>> +++ b/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
>> @@ -0,0 +1,51 @@
>> +From 363114dcd72abf1c0dcd637c66037227b8be229b Mon Sep 17 00:00:00 2001
>> +From: Yi Zhao <yi.zhao@windriver.com>
>> +Date: Mon, 21 Jun 2021 14:18:30 +0800
>> +Subject: [PATCH 1/2] Makefile: fix hardcoded installation directories
>> +
>> +Update the installation directories to fix the do_install error for
>> +multilib and usrmerge.
>> +
>> +Upstream-Status: Inappropriate [configuration]
>> +
>> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> +---
>> + changehat/pam_apparmor/Makefile | 2 +-
>> + parser/Makefile                 | 8 ++++----
>> + 2 files changed, 5 insertions(+), 5 deletions(-)
>> +
>> +diff --git a/changehat/pam_apparmor/Makefile b/changehat/pam_apparmor/Makefile
>> +index f6ece2d1..0143ae9f 100644
>> +--- a/changehat/pam_apparmor/Makefile
>> ++++ b/changehat/pam_apparmor/Makefile
>> +@@ -77,7 +77,7 @@ $(NAME).so: ${OBJECTS}
>> + 
>> + # need some better way of determining this
>> + DESTDIR=/
>> +-SECDIR ?= ${DESTDIR}/lib/security
>> ++SECDIR ?= ${DESTDIR}/${base_libdir}/security
>> + 
>> + .PHONY: install
>> + install: $(NAME).so
>> +diff --git a/parser/Makefile b/parser/Makefile
>> +index 8250ac45..cf18bc11 100644
>> +--- a/parser/Makefile
>> ++++ b/parser/Makefile
>> +@@ -23,10 +23,10 @@ COMMONDIR=../common/
>> + include $(COMMONDIR)/Make.rules
>> + 
>> + DESTDIR=/
>> +-APPARMOR_BIN_PREFIX=${DESTDIR}/lib/apparmor
>> +-SBINDIR=${DESTDIR}/sbin
>> +-USR_SBINDIR=${DESTDIR}/usr/sbin
>> +-SYSTEMD_UNIT_DIR=${DESTDIR}/usr/lib/systemd/system
>> ++APPARMOR_BIN_PREFIX=${DESTDIR}/${nonarch_base_libdir}/apparmor
>> ++SBINDIR=${DESTDIR}/${base_sbindir}
>> ++USR_SBINDIR=${DESTDIR}/${sbindir}
>> ++SYSTEMD_UNIT_DIR=${DESTDIR}/${systemd_system_unitdir}
>> + CONFDIR=/etc/apparmor
>> + INSTALL_CONFDIR=${DESTDIR}${CONFDIR}
>> + LOCALEDIR=/usr/share/locale
>> +-- 
>> +2.17.1
>> +
>> diff --git a/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
>> new file mode 100644
>> index 0000000..53bdde8
>> --- /dev/null
>> +++ b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
>> @@ -0,0 +1,57 @@
>> +From a737c95ac0f887c365fe8f16583ea95da79de1e9 Mon Sep 17 00:00:00 2001
>> +From: Yi Zhao <yi.zhao@windriver.com>
>> +Date: Mon, 21 Jun 2021 16:53:39 +0800
>> +Subject: [PATCH] rc.apparmor.debian: add missing functions
>> +
>> +Add missing functions:
>> +  aa_log_action_start
>> +  aa_log_action_end
>> +  aa_log_daemon_msg
>> +  aa_log_end_msg
>> +
>> +Fixes:
>> +$ /etc/init.d/apparmor start
>> +/lib/apparmor/rc.apparmor.functions: line 294: aa_log_daemon_msg: command not found
>> +/lib/apparmor/rc.apparmor.functions: line 214: aa_log_action_start: command not found
>> +
>> +Upstream-Status: Pending
>> +
>> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> +---
>> + parser/rc.apparmor.debian | 20 ++++++++++++++++++++
>> + 1 file changed, 20 insertions(+)
>> +
>> +diff --git a/parser/rc.apparmor.debian b/parser/rc.apparmor.debian
>> +index 8efd4400..f35124e8 100644
>> +--- a/parser/rc.apparmor.debian
>> ++++ b/parser/rc.apparmor.debian
>> +@@ -70,6 +70,26 @@ aa_log_skipped_msg() {
>> +         echo ": Skipped."
>> + }
>> + 
>> ++aa_log_action_start()
>> ++{
>> ++    echo "$@"
>> ++}
>> ++
>> ++aa_log_action_end()
>> ++{
>> ++    printf ""
>> ++}
>> ++
>> ++aa_log_daemon_msg()
>> ++{
>> ++    echo "$@"
>> ++}
>> ++
>> ++aa_log_end_msg()
>> ++{
>> ++    printf ""
>> ++}
>> ++
>> + usage() {
>> +     echo "Usage: $0 {start|stop|restart|try-restart|reload|force-reload|status|kill}"
>> + }
>> +-- 
>> +2.17.1
>> +
>> diff --git a/recipes-mac/AppArmor/files/apparmor b/recipes-mac/AppArmor/files/apparmor
>> deleted file mode 100644
>> index 604e48d..0000000
>> --- a/recipes-mac/AppArmor/files/apparmor
>> +++ /dev/null
>> @@ -1,226 +0,0 @@
>> -#!/bin/sh
>> -# ----------------------------------------------------------------------
>> -#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
>> -#     NOVELL (All rights reserved)
>> -#    Copyright (c) 2008, 2009 Canonical, Ltd.
>> -#
>> -#    This program is free software; you can redistribute it and/or
>> -#    modify it under the terms of version 2 of the GNU General Public
>> -#    License published by the Free Software Foundation.
>> -#
>> -#    This program is distributed in the hope that it will be useful,
>> -#    but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -#    GNU General Public License for more details.
>> -#
>> -#    You should have received a copy of the GNU General Public License
>> -#    along with this program; if not, contact Novell, Inc.
>> -# ----------------------------------------------------------------------
>> -# Authors:
>> -#  Steve Beattie <steve.beattie@canonical.com>
>> -#  Kees Cook <kees@ubuntu.com>
>> -#
>> -# /etc/init.d/apparmor
>> -#
>> -### BEGIN INIT INFO
>> -# Provides: apparmor
>> -# Required-Start: $local_fs
>> -# Required-Stop: umountfs
>> -# Default-Start: S
>> -# Default-Stop:
>> -# Short-Description: AppArmor initialization
>> -# Description: AppArmor init script. This script loads all AppArmor profiles.
>> -### END INIT INFO
>> -
>> -log_daemon_msg() {
>> -    echo $*
>> -}
>> -
>> -log_end_msg () {
>> -    retval=$1
>> -    if [ $retval -eq 0 ]; then
>> -        echo "."
>> -    else
>> -        echo " failed!"
>> -    fi
>> -    return $retval
>> -}
>> -
>> -. /lib/apparmor/functions
>> -
>> -usage() {
>> -    echo "Usage: $0 {start|stop|restart|reload|force-reload|status|recache}"
>> -}
>> -
>> -test -x ${PARSER} || exit 0 # by debian policy
>> -# LSM is built-in, so it is either there or not enabled for this boot
>> -test -d /sys/module/apparmor || exit 0
>> -
>> -securityfs() {
>> -	# Need securityfs for any mode
>> -	if [ ! -d "${AA_SFS}" ]; then
>> -		if cut -d" " -f2,3 /proc/mounts | grep -q "^${SECURITYFS} securityfs"'$' ; then
>> -			log_daemon_msg "AppArmor not available as kernel LSM."
>> -			log_end_msg 1
>> -			exit 1
>> -		else
>> -			log_daemon_msg "Mounting securityfs on ${SECURITYFS}"
>> -			if ! mount -t securityfs none "${SECURITYFS}"; then
>> -				log_end_msg 1
>> -				exit 1
>> -			fi
>> -		fi
>> -	fi
>> -	if [ ! -w "$AA_SFS"/.load ]; then
>> -		log_daemon_msg "Insufficient privileges to change profiles."
>> -		log_end_msg 1
>> -		exit 1
>> -	fi
>> -}
>> -
>> -handle_system_policy_package_updates() {
>> -	apparmor_was_updated=0
>> -
>> -	if ! compare_previous_version ; then
>> -		# On snappy flavors, if the current and previous versions are
>> -		# different then clear the system cache. snappy will handle
>> -		# "$PROFILES_CACHE_VAR" itself (on Touch flavors
>> -		# compare_previous_version always returns '0' since snappy
>> -		# isn't available).
>> -		clear_cache_system
>> -		apparmor_was_updated=1
>> -	elif ! compare_and_save_debsums apparmor ; then
>> -		# If the system policy has been updated since the last time we
>> -		# ran, clear the cache to prevent potentially stale binary
>> -		# cache files after an Ubuntu image based upgrade (LP:
>> -		# #1350673). This can be removed once all system image flavors
>> -		# move to snappy (on snappy systems compare_and_save_debsums
>> -		# always returns '0' since /var/lib/dpkg doesn't exist).
>> -		clear_cache
>> -		apparmor_was_updated=1
>> -	fi
>> -
>> -	if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
>> -		# If packages for system policy that affect click packages have
>> -		# been updated since the last time we ran, run aa-clickhook -f
>> -                force_clickhook=0
>> -                force_profile_hook=0
>> -                if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
>> -                        force_clickhook=1
>> -                fi
>> -                if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
>> -                        force_clickhook=1
>> -                fi
>> -                if ! compare_and_save_debsums click-apparmor ; then
>> -                        force_clickhook=1
>> -                        force_profile_hook=1
>> -                fi
>> -                if [ -x /usr/bin/aa-clickhook ] && ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
>> -                        aa-clickhook -f
>> -                fi
>> -                if [ -x /usr/bin/aa-profile-hook ] && ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
>> -                        aa-profile-hook -f
>> -                fi
>> -	fi
>> -}
>> -
>> -# Allow "recache" even when running on the liveCD
>> -if [ "$1" = "recache" ]; then
>> -	log_daemon_msg "Recaching AppArmor profiles"
>> -	recache_profiles
>> -	rc=$?
>> -	log_end_msg "$rc"
>> -	exit $rc
>> -fi
>> -
>> -# do not perform start/stop/reload actions when running from liveCD
>> -test -d /rofs/etc/apparmor.d && exit 0
>> -
>> -rc=255
>> -case "$1" in
>> -	start)
>> -		if test -x /sbin/systemd-detect-virt && \
>> -		   systemd-detect-virt --quiet --container && \
>> -		   ! is_container_with_internal_policy; then
>> -			log_daemon_msg "Not starting AppArmor in container"
>> -			log_end_msg 0
>> -			exit 0
>> -		fi
>> -		log_daemon_msg "Starting AppArmor profiles"
>> -		securityfs
>> -		# That is only useful for click, snappy and system images,
>> -		# i.e. not in Debian. And it reads and writes to /var, that
>> -		# can be remote-mounted, so it would prevent us from using
>> -		# Before=sysinit.target without possibly introducing dependency
>> -		# loops.
>> -		handle_system_policy_package_updates
>> -		load_configured_profiles
>> -		rc=$?
>> -		log_end_msg "$rc"
>> -		;;
>> -	stop)
>> -		log_daemon_msg "Clearing AppArmor profiles cache"
>> -		clear_cache
>> -		rc=$?
>> -		log_end_msg "$rc"
>> -		cat >&2 <<EOM
>> -All profile caches have been cleared, but no profiles have been unloaded.
>> -Unloading profiles will leave already running processes permanently
>> -unconfined, which can lead to unexpected situations.
>> -
>> -To set a process to complain mode, use the command line tool
>> -'aa-complain'. To really tear down all profiles, run the init script
>> -with the 'teardown' option."
>> -EOM
>> -		;;
>> -	teardown)
>> -		if test -x /sbin/systemd-detect-virt && \
>> -		   systemd-detect-virt --quiet --container && \
>> -		   ! is_container_with_internal_policy; then
>> -			log_daemon_msg "Not tearing down AppArmor in container"
>> -			log_end_msg 0
>> -			exit 0
>> -		fi
>> -		log_daemon_msg "Unloading AppArmor profiles"
>> -		securityfs
>> -		running_profile_names | while read profile; do
>> -			if ! unload_profile "$profile" ; then
>> -				log_end_msg 1
>> -				exit 1
>> -			fi
>> -		done
>> -		rc=0
>> -		log_end_msg $rc
>> -		;;
>> -	restart|reload|force-reload)
>> -		if test -x /sbin/systemd-detect-virt && \
>> -		   systemd-detect-virt --quiet --container && \
>> -		   ! is_container_with_internal_policy; then
>> -			log_daemon_msg "Not reloading AppArmor in container"
>> -			log_end_msg 0
>> -			exit 0
>> -		fi
>> -		log_daemon_msg "Reloading AppArmor profiles"
>> -		securityfs
>> -		clear_cache
>> -		load_configured_profiles
>> -		rc=$?
>> -		unload_obsolete_profiles
>> -
>> -		log_end_msg "$rc"
>> -		;;
>> -	status)
>> -		securityfs
>> -		if [ -x /usr/sbin/aa-status ]; then
>> -			aa-status --verbose
>> -		else
>> -			cat "$AA_SFS"/profiles
>> -		fi
>> -		rc=$?
>> -		;;
>> -	*)
>> -		usage
>> -		rc=1
>> -		;;
>> -	esac
>> -exit $rc
>> diff --git a/recipes-mac/AppArmor/files/apparmor.rc b/recipes-mac/AppArmor/files/apparmor.rc
>> deleted file mode 100644
>> index 1507d7b..0000000
>> --- a/recipes-mac/AppArmor/files/apparmor.rc
>> +++ /dev/null
>> @@ -1,98 +0,0 @@
>> -description "Pre-cache and pre-load apparmor profiles"
>> -author "Dimitri John Ledkov <xnox@ubuntu.com> and Jamie Strandboge <jamie@ubuntu.com>"
>> -
>> -task
>> -
>> -start on starting rc-sysinit
>> -
>> -script
>> -    [ -d /rofs/etc/apparmor.d ]  && exit 0 # do not load on liveCD
>> -    [ -d /sys/module/apparmor ]  || exit 0 # do not load without AppArmor
>> -    [ -x /sbin/apparmor_parser ] || exit 0 # do not load without parser
>> -
>> -    . /lib/apparmor/functions
>> -
>> -    systemd-detect-virt --quiet --container && ! is_container_with_internal_policy && exit 0 || true
>> -
>> -    # Need securityfs for any mode
>> -    if [ ! -d /sys/kernel/security/apparmor ]; then
>> -        if cut -d" " -f2,3 /proc/mounts | grep -q "^/sys/kernel/security securityfs"'$' ; then
>> -            exit 0
>> -        else
>> -            mount -t securityfs none /sys/kernel/security || exit 0
>> -        fi
>> -    fi
>> -
>> -    [ -w /sys/kernel/security/apparmor/.load ] || exit 0
>> -
>> -    apparmor_was_updated=0
>> -    if ! compare_previous_version ; then
>> -        # On snappy flavors, if the current and previous versions are
>> -        # different then clear the system cache. snappy will handle
>> -        # "$PROFILES_CACHE_VAR" itself  (on Touch flavors
>> -        # compare_previous_version  always returns '0' since snappy
>> -        # isn't available).
>> -        clear_cache_system
>> -        apparmor_was_updated=1
>> -    elif ! compare_and_save_debsums apparmor ; then
>> -        # If the system policy has been updated since the last time we
>> -        # ran, clear the cache to prevent potentially stale binary
>> -        # cache files after an Ubuntu image based upgrade (LP:
>> -        # #1350673). This can be removed once all system image flavors
>> -        # move to snappy (on snappy systems compare_and_save_debsums
>> -        # always returns '0' since /var/lib/dpkg doesn't exist).
>> -        clear_cache
>> -        apparmor_was_updated=1
>> -    fi
>> -
>> -    if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
>> -        # If packages for system policy that affect click packages have
>> -        # been updated since the last time we ran, run aa-clickhook -f
>> -        force_clickhook=0
>> -        force_profile_hook=0
>> -        if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
>> -            force_clickhook=1
>> -        fi
>> -        if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
>> -            force_clickhook=1
>> -        fi
>> -        if ! compare_and_save_debsums click-apparmor ; then
>> -            force_clickhook=1
>> -            force_profile_hook=1
>> -        fi
>> -        if [ -x /usr/bin/aa-clickhook ] && ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
>> -            aa-clickhook -f
>> -        fi
>> -        if [ -x /usr/bin/aa-profile-hook ] && ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
>> -            aa-profile-hook -f
>> -        fi
>> -    fi
>> -
>> -    if [ "$ACTION" = "teardown" ]; then
>> -        running_profile_names | while read profile; do
>> -            unload_profile "$profile"
>> -        done
>> -        exit 0
>> -    fi
>> -
>> -    if [ "$ACTION" = "clear" ]; then
>> -        clear_cache
>> -        exit 0
>> -    fi
>> -
>> -    if [ "$ACTION" = "reload" ] || [ "$ACTION" = "force-reload" ]; then
>> -        clear_cache
>> -        load_configured_profiles
>> -	unload_obsolete_profiles
>> -        exit 0
>> -    fi
>> -
>> -    # Note: if apparmor-easyprof-ubuntu md5sums didn't match up above,
>> -    # aa-clickhook will have already compiled the policy, generated the cache
>> -    # files and loaded them into the kernel by this point, so reloading click
>> -    # policy from cache, while fairly fast (<2 seconds for 250 profiles on
>> -    # armhf), is redundant. Fixing this would complicate the logic quite a bit
>> -    # and it wouldn't improve the (by far) common case (ie, when
>> -    # 'aa-clickhook -f' is not run).
>> -    load_configured_profiles
>> -end script
>> diff --git a/recipes-mac/AppArmor/files/apparmor.service b/recipes-mac/AppArmor/files/apparmor.service
>> deleted file mode 100644
>> index e66afe4..0000000
>> --- a/recipes-mac/AppArmor/files/apparmor.service
>> +++ /dev/null
>> @@ -1,22 +0,0 @@
>> -[Unit]
>> -Description=AppArmor initialization
>> -After=local-fs.target
>> -Before=sysinit.target
>> -AssertPathIsReadWrite=/sys/kernel/security/apparmor/.load
>> -ConditionSecurity=apparmor
>> -DefaultDependencies=no
>> -Documentation=man:apparmor(7)
>> -Documentation=http://wiki.apparmor.net/
>> -
>> -# Don't start this unit on the Ubuntu Live CD
>> -ConditionPathExists=!/rofs/etc/apparmor.d
>> -
>> -[Service]
>> -Type=oneshot
>> -RemainAfterExit=yes
>> -ExecStart=/etc/init.d/apparmor start
>> -ExecStop=/etc/init.d/apparmor stop
>> -ExecReload=/etc/init.d/apparmor reload
>> -
>> -[Install]
>> -WantedBy=sysinit.target
>> diff --git a/recipes-mac/AppArmor/files/functions b/recipes-mac/AppArmor/files/functions
>> deleted file mode 100644
>> index e9e2bbf..0000000
>> --- a/recipes-mac/AppArmor/files/functions
>> +++ /dev/null
>> @@ -1,271 +0,0 @@
>> -# /lib/apparmor/functions for Debian -*- shell-script -*-
>> -# ----------------------------------------------------------------------
>> -#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
>> -#     NOVELL (All rights reserved)
>> -#    Copyright (c) 2008-2010 Canonical, Ltd.
>> -#
>> -#    This program is free software; you can redistribute it and/or
>> -#    modify it under the terms of version 2 of the GNU General Public
>> -#    License published by the Free Software Foundation.
>> -#
>> -#    This program is distributed in the hope that it will be useful,
>> -#    but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -#    GNU General Public License for more details.
>> -#
>> -#    You should have received a copy of the GNU General Public License
>> -#    along with this program; if not, contact Novell, Inc.
>> -# ----------------------------------------------------------------------
>> -# Authors:
>> -#  Kees Cook <kees@ubuntu.com>
>> -
>> -PROFILES="/etc/apparmor.d"
>> -PROFILES_CACHE="$PROFILES/cache"
>> -PROFILES_VAR="/var/lib/apparmor/profiles"
>> -PROFILES_SNAPPY="/var/lib/snapd/apparmor/profiles"
>> -PROFILES_CACHE_VAR="/var/cache/apparmor"
>> -PARSER="/sbin/apparmor_parser"
>> -SECURITYFS="/sys/kernel/security"
>> -export AA_SFS="$SECURITYFS/apparmor"
>> -
>> -# Suppress warnings when booting in quiet mode
>> -quiet_arg=""
>> -[ "${QUIET:-no}" = yes ] && quiet_arg="-q"
>> -[ "${quiet:-n}" = y ] && quiet_arg="-q"
>> -
>> -foreach_configured_profile() {
>> -	rc_all="0"
>> -	for pdir in "$PROFILES" "$PROFILES_VAR" "$PROFILES_SNAPPY" ; do
>> -		if [ ! -d "$pdir" ]; then
>> -			continue
>> -		fi
>> -		num=`find "$pdir" -type f ! -name '*.md5sums' | wc -l`
>> -		if [ "$num" = "0" ]; then
>> -			continue
>> -		fi
>> -
>> -		cache_dir="$PROFILES_CACHE"
>> -		if [ -d "$PROFILES_CACHE_VAR" ] && [ "$pdir" = "$PROFILES_VAR" ] || [ "$pdir" = "$PROFILES_SNAPPY" ]; then
>> -			cache_dir="$PROFILES_CACHE_VAR"
>> -		fi
>> -		cache_args="--cache-loc=$cache_dir"
>> -		if [ ! -d "$cache_dir" ]; then
>> -			cache_args=
>> -		fi
>> -
>> -		# LP: #1383858 - expr tree simplification is too slow for
>> -		# Touch policy on ARM, so disable it for now
>> -		cache_extra_args=
>> -		if [ -d "$PROFILES_CACHE_VAR" ] && [ "$pdir" = "$PROFILES_VAR" ] || [ "$pdir" = "$PROFILES_SNAPPY" ]; then
>> -			cache_extra_args="-O no-expr-simplify"
>> -		fi
>> -
>> -		# If need to compile everything, then use -n1 with xargs to
>> -		# take advantage of -P. When cache files are in use, omit -n1
>> -		# since it is considerably faster on moderately sized profile
>> -		# sets to give the parser all the profiles to load at once
>> -		n1_args=
>> -		num=`find "$cache_dir" -type f ! -name '.features' | wc -l`
>> -		if [ "$num" = "0" ]; then
>> -			n1_args="-n1"
>> -		fi
>> -
>> -		(ls -1 "$pdir" | egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
>> -		while read profile; do
>> -			if [ -f "$pdir"/"$profile" ]; then
>> -				echo "$pdir"/"$profile"
>> -			fi
>> -		done) | \
>> -		xargs $n1_args -d"\n" -P$(getconf _NPROCESSORS_ONLN) "$PARSER" "$@" $cache_args $cache_extra_args -- || {
>> -			rc_all="$?"
>> -			# FIXME: when the parser properly handles broken
>> -			# profiles (LP: #1377338), remove this if statement.
>> -			# For now, if the xargs returns with error, just run
>> -			# through everything with -n1. (This could be broken
>> -			# out and refactored, but this is temporary so make it
>> -			# easy to understand and revert)
>> -			if [ "$rc_all" != "0" ]; then
>> -				(ls -1 "$pdir" | \
>> -				egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
>> -				while read profile; do
>> -					if [ -f "$pdir"/"$profile" ]; then
>> -						echo "$pdir"/"$profile"
>> -					fi
>> -				done) | \
>> -				xargs -n1 -d"\n" -P$(getconf _NPROCESSORS_ONLN) "$PARSER" "$@" $cache_args $cache_extra_args -- || {
>> -					rc_all="$?"
>> -				}
>> -			fi
>> -		}
>> -	done
>> -	return $rc_all
>> -}
>> -
>> -load_configured_profiles() {
>> -	clear_cache_if_outdated
>> -	foreach_configured_profile $quiet_arg --write-cache --replace
>> -}
>> -
>> -load_configured_profiles_without_caching() {
>> -	foreach_configured_profile $quiet_arg --replace
>> -}
>> -
>> -recache_profiles() {
>> -	clear_cache
>> -	foreach_configured_profile $quiet_arg --write-cache --skip-kernel-load
>> -}
>> -
>> -configured_profile_names() {
>> -	foreach_configured_profile $quiet_arg -N 2>/dev/null | LC_COLLATE=C sort | grep -v '//'
>> -}
>> -
>> -running_profile_names() {
>> -	# Output a sorted list of loaded profiles, skipping libvirt's
>> -	# dynamically generated files
>> -	cat "$AA_SFS"/profiles | sed -e "s/ (\(enforce\|complain\))$//" | egrep -v '^libvirt-[0-9a-f\-]+$' | LC_COLLATE=C sort | grep -v '//'
>> -}
>> -
>> -unload_profile() {
>> -	echo -n "$1" > "$AA_SFS"/.remove
>> -}
>> -
>> -clear_cache() {
>> -	clear_cache_system
>> -	clear_cache_var
>> -}
>> -
>> -clear_cache_system() {
>> -	find "$PROFILES_CACHE" -maxdepth 1 -type f -print0 | xargs -0 rm -f --
>> -}
>> -
>> -clear_cache_var() {
>> -	find "$PROFILES_CACHE_VAR" -maxdepth 1 -type f -print0 | xargs -0 rm -f --
>> -}
>> -
>> -read_features_dir()
>> -{
>> -	for f in `ls -A "$1"` ; do
>> -		if [ -f "$1/$f" ] ; then
>> -			read -r KF < "$1/$f" || true
>> -			echo -n "$f {$KF } "
>> -		elif [ -d "$1/$f" ] ; then
>> -			echo -n "$f {"
>> -			KF=`read_features_dir "$1/$f"` || true
>> -			echo -n "$KF} "
>> -		fi
>> -	done
>> -}
>> -
>> -clear_cache_if_outdated() {
>> -	if [ -r "$PROFILES_CACHE"/.features ]; then
>> -		if [ -d "$AA_SFS"/features ]; then
>> -			KERN_FEATURES=`read_features_dir "$AA_SFS"/features`
>> -		else
>> -			read -r KERN_FEATURES < "$AA_SFS"/features
>> -		fi
>> -		CACHE_FEATURES=`tr '\n' ' ' < "$PROFILES_CACHE"/.features`
>> -		if [ "$KERN_FEATURES" != "$CACHE_FEATURES" ]; then
>> -			clear_cache
>> -		fi
>> -	fi
>> -}
>> -
>> -unload_obsolete_profiles() {
>> -	# Currently we must re-parse all the profiles to get policy names.  :(
>> -	aa_configured=$(mktemp -t aa-XXXXXX)
>> -	configured_profile_names > "$aa_configured" || true
>> -	aa_loaded=$(mktemp -t aa-XXXXXX)
>> -	running_profile_names > "$aa_loaded" || true
>> -	LC_COLLATE=C comm -2 -3 "$aa_loaded" "$aa_configured" | while read profile ; do
>> -		unload_profile "$profile"
>> -        done
>> -	rm -f "$aa_configured" "$aa_loaded"
>> -}
>> -
>> -# If the system debsum differs from the saved debsum, the new system debsum is
>> -# saved and non-zero is returned. Returns 0 if the two debsums matched or if
>> -# the system debsum file does not exist. This can be removed when system image
>> -# flavors all move to snappy.
>> -compare_and_save_debsums() {
>> -	pkg="$1"
>> -
>> -	if [ -n $pkg ] && [ -d "$PROFILES_VAR" ]; then
>> -		sums="/var/lib/dpkg/info/${pkg}.md5sums"
>> -		# store saved md5sums in /var/lib/apparmor/profiles since
>> -		# /var/cache/apparmor might be cleared by apparmor
>> -		saved_sums="${PROFILES_VAR}/.${pkg}.md5sums"
>> -
>> -		if [ -f "$sums" ] && \
>> -		   ! diff -q "$sums" "$saved_sums" 2>&1 >/dev/null ; then
>> -			cp -f "$sums" "$saved_sums"
>> -			return 1
>> -		fi
>> -	fi
>> -
>> -	return 0
>> -}
>> -
>> -compare_previous_version() {
>> -	installed="/usr/share/snappy/security-policy-version"
>> -	previous="/var/lib/snappy/security-policy-version"
>> -
>> -	# When just $previous doesn't exist, assume this is a new system with
>> -	# no cache and don't do anything special.
>> -	if [ -f "$installed" ] && [ -f "$previous" ]; then
>> -		pv=`grep '^apparmor/' "$previous" | cut -d ' ' -f 2`
>> -		iv=`grep '^apparmor/' "$installed" | cut -d ' ' -f 2`
>> -		if [ -n "$iv" ] && [ -n "$pv" ] && [ "$iv" != "$pv" ]; then
>> -			# snappy updates $previous elsewhere, so just return
>> -			return 1
>> -		fi
>> -	fi
>> -
>> -	return 0
>> -}
>> -
>> -# Checks to see if the current container is capable of having internal AppArmor
>> -# profiles that should be loaded. Callers of this function should have already
>> -# verified that they're running inside of a container environment with
>> -# something like `systemd-detect-virt --container`.
>> -#
>> -# The only known container environments capable of supporting internal policy
>> -# are LXD and LXC environment.
>> -#
>> -# Returns 0 if the container environment is capable of having its own internal
>> -# policy and non-zero otherwise.
>> -#
>> -# IMPORTANT: This function will return 0 in the case of a non-LXD/non-LXC
>> -# system container technology being nested inside of a LXD/LXC container that
>> -# utilized an AppArmor namespace and profile stacking. The reason 0 will be
>> -# returned is because .ns_stacked will be "yes" and .ns_name will still match
>> -# "lx[dc]-*" since the nested system container technology will not have set up
>> -# a new AppArmor profile namespace. This will result in the nested system
>> -# container's boot process to experience failed policy loads but the boot
>> -# process should continue without any loss of functionality. This is an
>> -# unsupported configuration that cannot be properly handled by this function.
>> -is_container_with_internal_policy() {
>> -	local ns_stacked_path="${AA_SFS}/.ns_stacked"
>> -	local ns_name_path="${AA_SFS}/.ns_name"
>> -	local ns_stacked
>> -	local ns_name
>> -
>> -	if ! [ -f "$ns_stacked_path" ] || ! [ -f "$ns_name_path" ]; then
>> -		return 1
>> -	fi
>> -
>> -	read -r ns_stacked < "$ns_stacked_path"
>> -	if [ "$ns_stacked" != "yes" ]; then
>> -		return 1
>> -	fi
>> -
>> -	# LXD and LXC set up AppArmor namespaces starting with "lxd-" and
>> -	# "lxc-", respectively. Return non-zero for all other namespace
>> -	# identifiers.
>> -	read -r ns_name < "$ns_name_path"
>> -	if [ "${ns_name#lxd-*}" = "$ns_name" ] && \
>> -	   [ "${ns_name#lxc-*}" = "$ns_name" ]; then
>> -		return 1
>> -	fi
>> -
>> -	return 0
>> -}
>>
>> 
>>

