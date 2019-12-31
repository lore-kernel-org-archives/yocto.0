Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.435.1577773232354935771
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Dec 2019 22:20:32 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE615E01336; Mon, 30 Dec 2019 22:20:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41A54E01287
	for <yocto@yoctoproject.org>; Mon, 30 Dec 2019 22:20:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBV6KPOl014316
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 30 Dec 2019 22:20:26 -0800 (PST)
Received: from [128.224.162.174] (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 30 Dec
 2019 22:20:24 -0800
Subject: Re: [meta-selinux][PATCH] audit: fix host contamination for swig
To: Joe MacDonald <joe@deserted.net>
CC: <yocto@yoctoproject.org>
References: <20191227024327.19833-1-yi.zhao@windriver.com>
 <20191231042439.GB39081@deserted.net>
From: "Yi Zhao" <yi.zhao@windriver.com>
Message-ID: <56e99bdd-8d6f-0da4-9f58-8468d7d8d715@windriver.com>
Date: Tue, 31 Dec 2019 14:20:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191231042439.GB39081@deserted.net>
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 12/31/19 12:24 PM, Joe MacDonald wrote:
> Hi Yi,
>
> So, just to confirm, this is needed in your experience (I don't have any
> builders that are that old, so I haven't verified).  I just ask because
> we only just dropped this patch to begin with:
>
> commit 6edbe15c3dba7da0cffc1c11099867553e9d5570
> Author: Yi Zhao <yi.zhao@windriver.com>
> Date:   Thu Nov 14 09:49:01 2019 +0800
>
>      audit: switch to python3
>      
>      * Switch to python3
>      
>      * Drop patches:
>        audit-python-configure.patch
>        audit-python.patch
>        fix-swig-host-contamination.patch
>      
>      Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>      Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>
> If we need to bring it back, though, obviously no concerns about it since the
> last time I did and update I carried it along.  :-)


When I dropped it in my previous patch I just tested it on some modern 
Linux distributions (e.g. Ubuntu 16.04/18.04 Fedora 31). There is no 
such error because the audit.h on the host is matched to our audit 
recipe. Then we found the build failure on some old distros (e.g. CentOS 
7) because of the old version autdit.h on host. The CentOS7 is still on 
Yocto support distros list. See: meta-poky/conf/distro/poky.conf. I'm 
afraid we should bring it back.


Thanks,

Yi


>
> -J.
>
> [[meta-selinux][PATCH] audit: fix host contamination for swig] On 19.12.27 (Fri 10:43) Yi Zhao wrote:
>
>> The audit build uses swig to generate a python wrapper. But there is a
>> hardcoded include directory in auditswig.i, which causes header files on
>> the host to be used when building. This will cause build error on some
>> old systems. e.g. on CentOS7 with buildtools:
>>    audit_wrap.c: In function '_wrap_audit_rule_flags_set':
>>    audit_wrap.c:5018:19: error: dereferencing pointer to incomplete type 'struct audit_rule'
>>    5018  if (arg1) (arg1)->flags = arg2;
>>          ^~
>>
>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> ---
>>   .../Fixed-swig-host-contamination-issue.patch | 57 +++++++++++++++++++
>>   recipes-security/audit/audit_2.8.5.bb         |  1 +
>>   2 files changed, 58 insertions(+)
>>   create mode 100644 recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch
>>
>> diff --git a/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch b/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch
>> new file mode 100644
>> index 0000000..7c26995
>> --- /dev/null
>> +++ b/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.patch
>> @@ -0,0 +1,57 @@
>> +From a07271f1cce82122610b622bcea4a8a37528f321 Mon Sep 17 00:00:00 2001
>> +From: Li xin <lixin.fnst@cn.fujitsu.com>
>> +Date: Sun, 19 Jul 2015 02:42:58 +0900
>> +Subject: [PATCH] audit: Fixed swig host contamination issue
>> +
>> +The audit build uses swig to generate a python wrapper.
>> +Unfortunately, the swig info file references host include
>> +directories.  Some of these were previously noticed and
>> +eliminated, but the one fixed here was not.
>> +
>> +Upstream-Status: Inappropriate [embedded specific]
>> +
>> +Signed-off-by: Anders Hedlund <anders.hedlund@windriver.com>
>> +Signed-off-by: Joe Slater <jslater@windriver.com>
>> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> +---
>> + bindings/swig/python3/Makefile.am | 3 ++-
>> + bindings/swig/src/auditswig.i     | 2 +-
>> + 2 files changed, 3 insertions(+), 2 deletions(-)
>> +
>> +diff --git a/bindings/swig/python3/Makefile.am b/bindings/swig/python3/Makefile.am
>> +index 9938418..fa46aac 100644
>> +--- a/bindings/swig/python3/Makefile.am
>> ++++ b/bindings/swig/python3/Makefile.am
>> +@@ -22,6 +22,7 @@
>> + CONFIG_CLEAN_FILES = *.loT *.rej *.orig
>> + AM_CFLAGS = -fPIC -DPIC -fno-strict-aliasing $(PYTHON3_CFLAGS)
>> + AM_CPPFLAGS = -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_INCLUDES)
>> ++STDINC ?= /usr/include
>> + LIBS = $(top_builddir)/lib/libaudit.la
>> + SWIG_FLAGS = -python -py3 -modern
>> + SWIG_INCLUDES = -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_INCLUDES)
>> +@@ -37,7 +38,7 @@ _audit_la_DEPENDENCIES =${top_srcdir}/lib/libaudit.h ${top_builddir}/lib/libaudi
>> + _audit_la_LIBADD = ${top_builddir}/lib/libaudit.la
>> + nodist__audit_la_SOURCES  = audit_wrap.c
>> + audit.py audit_wrap.c: ${srcdir}/../src/auditswig.i
>> +-	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} ${srcdir}/../src/auditswig.i
>> ++	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} -I$(STDINC) ${srcdir}/../src/auditswig.i
>> +
>> + CLEANFILES = audit.py* audit_wrap.c *~
>> +
>> +diff --git a/bindings/swig/src/auditswig.i b/bindings/swig/src/auditswig.i
>> +index 7ebb373..424fb68 100644
>> +--- a/bindings/swig/src/auditswig.i
>> ++++ b/bindings/swig/src/auditswig.i
>> +@@ -39,7 +39,7 @@ signed
>> + #define __attribute(X) /*nothing*/
>> + typedef unsigned __u32;
>> + typedef unsigned uid_t;
>> +-%include "/usr/include/linux/audit.h"
>> ++%include "linux/audit.h"
>> + #define __extension__ /*nothing*/
>> + #include <stdint.h>
>> + %include "../lib/libaudit.h"
>> +--
>> +2.7.4
>> +
>> diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/audit/audit_2.8.5.bb
>> index 1e76d5f..ee3b3b5 100644
>> --- a/recipes-security/audit/audit_2.8.5.bb
>> +++ b/recipes-security/audit/audit_2.8.5.bb
>> @@ -9,6 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>>   
>>   SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintenance \
>>              file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
>> +           file://Fixed-swig-host-contamination-issue.patch \
>>              file://auditd \
>>              file://auditd.service \
>>              file://audit-volatile.conf \
>> -- 
>> 2.17.1
>>
