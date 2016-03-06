Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BD34E00C00; Sun,  6 Mar 2016 15:50:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0768E0084E
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 15:50:18 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aciQO-0001FZ-Hj; Sun, 06 Mar 2016 23:49:27 +0000
To: "T.O. Radzy Radzykewycz" <radzy@windriver.com>, joe_macdonald@mentor.com, 
	mark.hatle@windriver.com
References: <1456786237-28300-1-git-send-email-radzy@windriver.com>
	<56DCBF6A.2020908@twobit.us>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56DCC241.3080403@twobit.us>
Date: Sun, 6 Mar 2016 15:50:25 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <56DCBF6A.2020908@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] audit: upgrade 2.4.4 -> 2.5
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
X-List-Received-Date: Sun, 06 Mar 2016 23:50:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Mark has already clarified this in the eudev thread. That's good enough
for me.

Philip

On 03/06/2016 03:38 PM, Philip Tricca wrote:
> Tested this today and it works as expected: thanks!
> 
> This leaves the same PR value as the previous version. The OE style
> guide thinks PR should be removed when PV changes. Since we're going
> from 2.4.4 -> 2.5 this makes me think that since PV changes PR should be
> removed. I've never given this much thought in the past so I had to look
> it up and may have misunderstood the docs. Is removing PR like this
> correct or should it be left as is?
> 
> Thanks,
> Philip
> 
> On 02/29/2016 02:50 PM, T.O. Radzy Radzykewycz wrote:
>> * rebase patch audit-python-configure.patch
>>
>> * remove audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch
>>   as it had already been applied upstream
>>
>> * 2.5 includes miscellaneous enhancements and fixes:
>>
>> 2.5
>> - Make augenrules the default method to load audit rules
>> - Put rules in its own directory and break out rules into groups
>> - Have auditd do a fsync before closing log
>> - Make default flush setting larger
>> - In auparse. terminate the generated strings (Burn Alting)
>> - In auditd, add incremental_async flushing mode
>> - Clean up dangling fields in DAEMON events
>> - Add audit by process name support to auditctl (Richard Briggs)
>> - Relax permissions on systemd files
>> - Fix auparse to handle interlaced events (Burn Alting)
>> - Allow more syslog facilities in audispd-syslog (Aleksander Adamowski)
>>
>> 2.4.5
>> - Fix auditd disk flushing for data and sync modes
>> - Fix auditctl to not show options not supported on older OS
>> - Add audit.m4 file to aid adding support to other projects
>> - Fix C99 inline function build issue
>> - Add account lock and unlock event types
>> - Change logging loophole check to geteuid()
>> - Fix ausearch to not consider AUDIT_PROCTITLE events malformed (Burn Alting)
>> - Fix ausearch to parse FEATURE_CHANGE events
>>
>> ( From http://people.redhat.com/sgrubb/audit/ChangeLog )
>>
>> Signed-off-by: T.O. Radzy Radzykewycz <radzy@windriver.com>
>> ---
>>  ...et-inline-functions-work-with-gnu89-gnu11.patch |  71 --------------
>>  .../audit/audit/audit-python-configure.patch       |   3 +-
>>  recipes-security/audit/audit_2.4.4.bb              | 100 --------------------
>>  recipes-security/audit/audit_2.5.bb                | 104 +++++++++++++++++++++
>>  4 files changed, 106 insertions(+), 172 deletions(-)
>>  delete mode 100644 recipes-security/audit/audit/audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch
>>  delete mode 100644 recipes-security/audit/audit_2.4.4.bb
>>  create mode 100644 recipes-security/audit/audit_2.5.bb
>>
>> diff --git a/recipes-security/audit/audit/audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch b/recipes-security/audit/audit/audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch
>> deleted file mode 100644
>> index 578cfc1dc476..000000000000
>> --- a/recipes-security/audit/audit/audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch
>> +++ /dev/null
>> @@ -1,71 +0,0 @@
>> -From 15036dd4fa9eb209f5e148c6f7ee081f5ca78fa4 Mon Sep 17 00:00:00 2001
>> -From: Wenzong Fan <wenzong.fan@windriver.com>
>> -Date: Fri, 11 Sep 2015 03:37:13 -0400
>> -Subject: [PATCH] audit/auvirt: get inline functions work with both gnu89 & gnu11
>> -
>> -After gcc upgraded to gcc5, and if the codes are compiled without
>> -optimization (-O0), and the below error will happen:
>> -
>> -  auvirt.c:484: undefined reference to `copy_str'
>> -  auvirt.c:667: undefined reference to `is_resource'
>> -  collect2: error: ld returned 1 exit status
>> -
>> -gcc5 defaults to -std=gnu11 instead of -std=gnu89, and it requires that
>> -exactly one C source file has the callable copy of the inline function.
>> -Consider the following program:
>> -
>> -  inline int
>> -  foo (void)
>> -  {
>> -    return 42;
>> -  }
>> -
>> -  int
>> -  main (void)
>> -  {
>> -    return foo ();
>> -  }
>> -
>> -The program above will not link with the C99 inline semantics, because
>> -no out-of-line function foo is generated. To fix this, either mark the
>> -function foo as static, or add the following declaration:
>> -
>> -  static inline int foo (void);
>> -
>> -More information refer to: https://gcc.gnu.org/gcc-5/porting_to.html
>> -
>> -Note: using "extern inline" will fail to build with gcc4.x, so replace
>> -inline with "static inline".
>> -
>> -Upstream-Status: Pending
>> -
>> -Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>> ----
>> - tools/auvirt/auvirt.c | 4 ++--
>> - 1 file changed, 2 insertions(+), 2 deletions(-)
>> -
>> -diff --git a/tools/auvirt/auvirt.c b/tools/auvirt/auvirt.c
>> -index 655c454..b16d718 100644
>> ---- a/tools/auvirt/auvirt.c
>> -+++ b/tools/auvirt/auvirt.c
>> -@@ -138,7 +138,7 @@ void event_free(struct event *event)
>> - 	}
>> - }
>> - 
>> --inline char *copy_str(const char *str)
>> -+static inline char *copy_str(const char *str)
>> - {
>> - 	return (str) ? strdup(str) : NULL;
>> - }
>> -@@ -650,7 +650,7 @@ int process_control_event(auparse_state_t *au)
>> - 	return 0;
>> - }
>> - 
>> --inline int is_resource(const char *res)
>> -+static inline int is_resource(const char *res)
>> - {
>> - 	if (res == NULL ||
>> - 	    res[0] == '\0' ||
>> --- 
>> -1.9.1
>> -
>> diff --git a/recipes-security/audit/audit/audit-python-configure.patch b/recipes-security/audit/audit/audit-python-configure.patch
>> index b47cf5d2d968..cb62ec3022bb 100644
>> --- a/recipes-security/audit/audit/audit-python-configure.patch
>> +++ b/recipes-security/audit/audit/audit-python-configure.patch
>> @@ -8,6 +8,7 @@ Upstream-Status: pending
>>  Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
>>  Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
>>  Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>> +Signed-off-by: T.O. Radzy Radzykewycz <radzy@windriver.com>
>>  ---
>>   configure.ac | 17 ++---------------
>>   1 file changed, 2 insertions(+), 15 deletions(-)
>> @@ -29,7 +30,7 @@ index 1f48cb4..cdb5219 100644
>>  -	AC_MSG_NOTICE(Python bindings will be built)
>>  -else
>>  -	python_found="no"
>> --	if test x$use_python = xyes ; then
>> +-	if test "x$use_python" = xyes ; then
>>  -		AC_MSG_ERROR([Python explicitly requested and python headers were not found])
>>  -	else
>>  -		AC_MSG_WARN("Python headers not found - python bindings will not be made")
>> diff --git a/recipes-security/audit/audit_2.4.4.bb b/recipes-security/audit/audit_2.4.4.bb
>> deleted file mode 100644
>> index 55a5b12ba9c9..000000000000
>> --- a/recipes-security/audit/audit_2.4.4.bb
>> +++ /dev/null
>> @@ -1,100 +0,0 @@
>> -SUMMARY = "User space tools for kernel auditing"
>> -DESCRIPTION = "The audit package contains the user space utilities for \
>> -storing and searching the audit records generated by the audit subsystem \
>> -in the Linux kernel."
>> -HOMEPAGE = "http://people.redhat.com/sgrubb/audit/"
>> -SECTION = "base"
>> -PR = "r8"
>> -LICENSE = "GPLv2+ & LGPLv2+"
>> -LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>> -
>> -SRC_URI = "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
>> -           file://audit-python-configure.patch \
>> -           file://audit-python.patch \
>> -           file://fix-swig-host-contamination.patch \
>> -           file://auditd \
>> -           file://auditd.service \
>> -           file://audit-volatile.conf \
>> -           file://audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch \
>> -"
>> -SRC_URI[md5sum] = "72b0fd94d32846142bc472f0d91e62b4"
>> -SRC_URI[sha256sum] = "25f57f465f3230d7b1166b615ffd6748818a3dc225d0e8b396c5b2e951674e23"
>> -
>> -inherit autotools pythonnative update-rc.d systemd
>> -
>> -UPDATERCPN = "auditd"
>> -INITSCRIPT_NAME = "auditd"
>> -INITSCRIPT_PARAMS = "defaults"
>> -
>> -SYSTEMD_SERVICE_${PN} = "auditd.service"
>> -
>> -DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30)"
>> -
>> -EXTRA_OECONF += "--without-prelude \
>> -	--with-libwrap \
>> -	--enable-gssapi-krb5=no \
>> -	--with-libcap-ng=yes \
>> -	--with-python=yes \
>> -	--libdir=${base_libdir} \
>> -	--sbindir=${base_sbindir} \
>> -        --without-python3 \
>> -        --disable-zos-remote \
>> -	"
>> -EXTRA_OECONF_append_arm = " --with-arm=yes"
>> -
>> -EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
>> -	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
>> -	pyexecdir=${libdir}/python${PYTHON_BASEVERSION}/site-packages \
>> -	STDINC='${STAGING_INCDIR}' \
>> -	"
>> -
>> -SUMMARY_audispd-plugins = "Plugins for the audit event dispatcher"
>> -DESCRIPTION_audispd-plugins = "The audispd-plugins package provides plugins for the real-time \
>> -interface to the audit system, audispd. These plugins can do things \
>> -like relay events to remote machines or analyze events for suspicious \
>> -behavior."
>> -
>> -PACKAGES =+ "audispd-plugins"
>> -PACKAGES += "auditd ${PN}-python"
>> -
>> -FILES_${PN} = "${sysconfdir}/libaudit.conf ${base_libdir}/libaudit.so.1* ${base_libdir}/libauparse.so.*"
>> -FILES_auditd += "${bindir}/* ${base_sbindir}/* ${sysconfdir}/*"
>> -FILES_audispd-plugins += "${sysconfdir}/audisp/audisp-remote.conf \
>> -	${sysconfdir}/audisp/plugins.d/au-remote.conf \
>> -	${sbindir}/audisp-remote ${localstatedir}/spool/audit \
>> -	"
>> -FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
>> -FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
>> -FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la ${base_libdir}/pkgconfig/*"
>> -
>> -CONFFILES_auditd += "${sysconfdir}/audit/audit.rules"
>> -RDEPENDS_auditd += "bash"
>> -
>> -do_install_append() {
>> -	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.a
>> -	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.la
>> -
>> -	# reuse auditd config
>> -	[ ! -e ${D}/etc/default ] && mkdir ${D}/etc/default
>> -	mv ${D}/etc/sysconfig/auditd ${D}/etc/default
>> -	rmdir ${D}/etc/sysconfig/
>> -
>> -	# replace init.d
>> -	install -D -m 0755 ${S}/../auditd ${D}/etc/init.d/auditd
>> -	rm -rf ${D}/etc/rc.d
>> -
>> -	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
>> -		install -d ${D}${sysconfdir}/tmpfiles.d/
>> -		install -m 0644 ${WORKDIR}/audit-volatile.conf ${D}${sysconfdir}/tmpfiles.d/
>> -	fi
>> -	
>> -	# install systemd unit files
>> -	install -d ${D}${systemd_unitdir}/system
>> -	install -m 0644 ${WORKDIR}/auditd.service ${D}${systemd_unitdir}/system
>> -
>> -	chmod 750 ${D}/etc/audit ${D}/etc/audit/rules.d
>> -	chmod 640 ${D}/etc/audit/auditd.conf ${D}/etc/audit/rules.d/audit.rules
>> -
>> -	# Based on the audit.spec "Copy default rules into place on new installation"
>> -	cp ${D}/etc/audit/rules.d/audit.rules ${D}/etc/audit/audit.rules
>> -}
>> diff --git a/recipes-security/audit/audit_2.5.bb b/recipes-security/audit/audit_2.5.bb
>> new file mode 100644
>> index 000000000000..53aa23dabdd9
>> --- /dev/null
>> +++ b/recipes-security/audit/audit_2.5.bb
>> @@ -0,0 +1,104 @@
>> +SUMMARY = "User space tools for kernel auditing"
>> +DESCRIPTION = "The audit package contains the user space utilities for \
>> +storing and searching the audit records generated by the audit subsystem \
>> +in the Linux kernel."
>> +HOMEPAGE = "http://people.redhat.com/sgrubb/audit/"
>> +SECTION = "base"
>> +PR = "r8"
>> +LICENSE = "GPLv2+ & LGPLv2+"
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>> +
>> +SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
>> +           file://audit-python-configure.patch \
>> +           file://audit-python.patch \
>> +           file://fix-swig-host-contamination.patch \
>> +           file://auditd \
>> +           file://auditd.service \
>> +           file://audit-volatile.conf \
>> +"
>> +SRC_URI[md5sum] = "e721d48f3e1927c84b7c176b3bdbc443"
>> +SRC_URI[sha256sum] = "9b0a0760c6f37d80cbbfe46a74db722e60ac8100b28eb31953878ffca8ac14b4"
>> +
>> +
>> +inherit autotools pythonnative update-rc.d systemd
>> +
>> +UPDATERCPN = "auditd"
>> +INITSCRIPT_NAME = "auditd"
>> +INITSCRIPT_PARAMS = "defaults"
>> +
>> +SYSTEMD_SERVICE_${PN} = "auditd.service"
>> +
>> +DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30)"
>> +
>> +EXTRA_OECONF += "--without-prelude \
>> +	--with-libwrap \
>> +	--enable-gssapi-krb5=no \
>> +	--with-libcap-ng=yes \
>> +	--with-python=yes \
>> +	--libdir=${base_libdir} \
>> +	--sbindir=${base_sbindir} \
>> +        --without-python3 \
>> +        --disable-zos-remote \
>> +	"
>> +EXTRA_OECONF_append_arm = " --with-arm=yes"
>> +
>> +EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
>> +	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
>> +	pyexecdir=${libdir}/python${PYTHON_BASEVERSION}/site-packages \
>> +	STDINC='${STAGING_INCDIR}' \
>> +	"
>> +
>> +SUMMARY_audispd-plugins = "Plugins for the audit event dispatcher"
>> +DESCRIPTION_audispd-plugins = "The audispd-plugins package provides plugins for the real-time \
>> +interface to the audit system, audispd. These plugins can do things \
>> +like relay events to remote machines or analyze events for suspicious \
>> +behavior."
>> +
>> +PACKAGES =+ "audispd-plugins"
>> +PACKAGES += "auditd ${PN}-python"
>> +
>> +FILES_${PN} = "${sysconfdir}/libaudit.conf ${base_libdir}/libaudit.so.1* ${base_libdir}/libauparse.so.*"
>> +FILES_auditd += "${bindir}/* ${base_sbindir}/* ${sysconfdir}/*"
>> +FILES_audispd-plugins += "${sysconfdir}/audisp/audisp-remote.conf \
>> +	${sysconfdir}/audisp/plugins.d/au-remote.conf \
>> +	${sbindir}/audisp-remote ${localstatedir}/spool/audit \
>> +	"
>> +FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
>> +FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
>> +FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la ${base_libdir}/pkgconfig/*"
>> +
>> +CONFFILES_auditd += "${sysconfdir}/audit/audit.rules"
>> +RDEPENDS_auditd += "bash"
>> +
>> +do_install_append() {
>> +	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.a
>> +	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.la
>> +
>> +	# reuse auditd config
>> +	[ ! -e ${D}/etc/default ] && mkdir ${D}/etc/default
>> +	mv ${D}/etc/sysconfig/auditd ${D}/etc/default
>> +	rmdir ${D}/etc/sysconfig/
>> +
>> +	# replace init.d
>> +	install -D -m 0755 ${S}/../auditd ${D}/etc/init.d/auditd
>> +	rm -rf ${D}/etc/rc.d
>> +
>> +	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
>> +		install -d ${D}${sysconfdir}/tmpfiles.d/
>> +		install -m 0644 ${WORKDIR}/audit-volatile.conf ${D}${sysconfdir}/tmpfiles.d/
>> +	fi
>> +	
>> +	# install systemd unit files
>> +	install -d ${D}${systemd_unitdir}/system
>> +	install -m 0644 ${WORKDIR}/auditd.service ${D}${systemd_unitdir}/system
>> +
>> +	# audit-2.5 doesn't install any rules by default, so we do that here
>> +	mkdir -p ${D}/etc/audit ${D}/etc/audit/rules.d
>> +	cp ${S}/rules/10-base-config.rules ${D}/etc/audit/rules.d/audit.rules
>> +
>> +	chmod 750 ${D}/etc/audit ${D}/etc/audit/rules.d
>> +	chmod 640 ${D}/etc/audit/auditd.conf ${D}/etc/audit/rules.d/audit.rules
>> +
>> +	# Based on the audit.spec "Copy default rules into place on new installation"
>> +	cp ${D}/etc/audit/rules.d/audit.rules ${D}/etc/audit/audit.rules
>> +}
>>
> 


