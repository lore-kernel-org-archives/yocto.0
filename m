Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4D47E007F6
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 23:56:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1L7uBYL015450
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 23:56:12 -0800 (PST)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.158.235) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Thu, 20 Feb 2014 23:56:11 -0800
Message-ID: <53070699.6080909@windriver.com>
Date: Fri, 21 Feb 2014 15:56:09 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Rongqing Li <rongqing.li@windriver.com>
References: <1392901189-22637-1-git-send-email-rongqing.li@windriver.com>
	<5306E9C0.2090600@windriver.com> <5307036D.2070002@windriver.com>
In-Reply-To: <5307036D.2070002@windriver.com>
X-TagToolbar-Keys: D20140221155609794
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] audit: fix the permission of configuration file
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
X-List-Received-Date: Fri, 21 Feb 2014 07:56:18 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 14-2-21 下午3:42, Rongqing Li 写道:
>
>
> On 02/21/2014 01:53 PM, Pascal Ouyang wrote:
>> 于 14-2-20 下午8:59, rongqing.li@windriver.com 写道:
>>> From: Roy Li <rongqing.li@windriver.com>
>>>
>>> Signed-off-by: Roy Li <rongqing.li@windriver.com>
>>> ---
>>>   .../audit/fix-auditd.conf-file-s-permission.patch  |   41
>>> ++++++++++++++++++++
>>>   recipes-security/audit/audit_2.3.2.bb              |    4 +-
>>>   2 files changed, 44 insertions(+), 1 deletion(-)
>>>   create mode 100644
>>> recipes-security/audit/audit/fix-auditd.conf-file-s-permission.patch
>>>
>>> diff --git
>>> a/recipes-security/audit/audit/fix-auditd.conf-file-s-permission.patch
>>> b/recipes-security/audit/audit/fix-auditd.conf-file-s-permission.patch
>>> new file mode 100644
>>> index 0000000..be3412b
>>> --- /dev/null
>>> +++
>>> b/recipes-security/audit/audit/fix-auditd.conf-file-s-permission.patch
>>> @@ -0,0 +1,41 @@
>>> +From abeb7f0e35a4e77e914fea34ddaf8b30b51e49e3 Mon Sep 17 00:00:00 2001
>>> +From: Roy Li <rongqing.li@windriver.com>
>>> +Date: Thu, 20 Feb 2014 20:38:31 +0800
>>> +Subject: [PATCH] fix auditd.conf file and path permission
>>> +
>>> +Upstream-Status: Pending
>>> +
>>> +A ordinary use should not to access auditd configuration files
>>> +
>>> +Signed-off-by: Roy Li <rongqing.li@windriver.com>
>>> +---
>>> + init.d/Makefile.am |    8 ++++++--
>>> + 1 file changed, 6 insertions(+), 2 deletions(-)
>>> +
>>> +diff --git a/init.d/Makefile.am b/init.d/Makefile.am
>>> +index 521dd1d..50728bc 100644
>>> +--- a/init.d/Makefile.am
>>> ++++ b/init.d/Makefile.am
>>> +@@ -37,13 +37,17 @@ endif
>>> +
>>> + auditdir = $(sysconfdir)/audit
>>> + auditrdir = $(auditdir)/rules.d
>>> +-dist_audit_DATA = auditd.conf
>>> +-dist_auditr_DATA = audit.rules
>>> ++auditconfig = auditd.conf
>>> ++auditrconfig = audit.rules
>>> + sbin_SCRIPTS = augenrules
>>> +
>>> + install-data-hook:
>>> +     $(INSTALL_DATA) -D -m 640 ${srcdir}/${dispconfig}
>>> ${DESTDIR}${dispconfigdir}
>>> +     $(INSTALL_DATA) -D -m 640 ${srcdir}/${libconfig}
>>> ${DESTDIR}${sysconfdir}
>>> ++    $(INSTALL_DATA) -d -m 750 ${DESTDIR}${auditdir}
>>> ++    $(INSTALL_DATA) -d -m 750 ${DESTDIR}${auditrdir}
>>> ++    $(INSTALL_DATA) -m 640 ${srcdir}/${auditconfig}
>>> ${DESTDIR}${auditdir}
>>> ++    $(INSTALL_DATA) -m 640 ${srcdir}/${auditrconfig}
>>> ${DESTDIR}${auditrdir}
>>> + if ENABLE_SYSTEMD
>>> + else
>>> +     $(INSTALL_DATA) -D -m 640 ${srcdir}/auditd.sysconfig
>>> ${DESTDIR}${sysconfigdir}/auditd
>>> +--
>>> +1.7.10.4
>>> +
>>> diff --git a/recipes-security/audit/audit_2.3.2.bb
>>> b/recipes-security/audit/audit_2.3.2.bb
>>> index edcb881..6e376f8 100644
>>> --- a/recipes-security/audit/audit_2.3.2.bb
>>> +++ b/recipes-security/audit/audit_2.3.2.bb
>>> @@ -14,7 +14,9 @@ SRC_URI =
>>> "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
>>>          file://audit-python-configure.patch \
>>>          file://audit-for-cross-compiling.patch \
>>>          file://auditd \
>>> -       file://fix-swig-host-contamination.patch"
>>> +       file://fix-swig-host-contamination.patch \
>>> +       file://fix-auditd.conf-file-s-permission.patch \
>>> +"
>>>
>>>   inherit autotools pythonnative update-rc.d
>>>
>>>
>>
>> chmod in do_install is enough, please do not use a patch.
>>
>
> Why ?
>
> -Roy
>
>> Thanks. :)
>>
>

Because more patches need more maintain work. It is not unnecessary if 
simple bb modify also work.

Thanks. :)

-- 
- Pascal

