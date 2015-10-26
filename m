Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21824E00B94; Sun, 25 Oct 2015 19:23:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB43EE00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 19:23:33 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t9Q2NWv6005536
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 25 Oct 2015 19:23:32 -0700 (PDT)
Received: from [128.224.162.154] (128.224.162.154) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Sun, 25 Oct 2015 19:23:31 -0700
Message-ID: <562D8EA2.2030909@windriver.com>
Date: Mon, 26 Oct 2015 10:23:30 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1445334560-69082-1-git-send-email-wenzong.fan@windriver.com>
	<653EC6A5-78B8-490E-B37D-B20083C49A9B@gmail.com>
In-Reply-To: <653EC6A5-78B8-490E-B37D-B20083C49A9B@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] libselinux, libsepol: depends on coreutils-native
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
X-List-Received-Date: Mon, 26 Oct 2015 02:23:38 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/2015 05:49 AM, Khem Raj wrote:
>
>> On Oct 20, 2015, at 2:49 AM, wenzong.fan@windriver.com wrote:
>>
>> From: Wenzong Fan <wenzong.fan@windriver.com>
>>
>> 'ln --relative' doesn't work on Ubuntu 12.04 that has ln 8.13. The
>
> OE-Core has lnr script you can use that.

It's good to know this. I did a grep:

$ grep lnr -r *
meta/recipes-kernel/kmod/kmod_git.bb:        lnr ${D}${base_bindir}/kmod 
${D}${base_bindir}/lsmod
meta/recipes-kernel/kmod/kmod_git.bb:                lnr 
${D}${base_bindir}/kmod ${D}${base_sbindir}/${tool}
meta/recipes-core/systemd/systemd_225.bb:	sed -i -e 's:\$(LN_S) 
--relative -f:lnr:g' ${S}/Makefile.am
meta/recipes-core/systemd/systemd_225.bb:	sed -i -e 's:\$(LN_S) 
--relative:lnr:g' ${S}/Makefile.am
meta/recipes-core/ncurses/ncurses.inc:            # Use lnr to ensure 
this is a relative link despite absolute paths
meta/recipes-core/ncurses/ncurses.inc:            lnr 
${D}${base_libdir}/libtinfo.so.5 ${D}${libdir}/libtinfo.so
meta/classes/populate_sdk_ext.bbclass:	lnr 
${SDK_OUTPUT}/${SDKPATH}/${scriptrelpath}/devtool 
${SDK_OUTPUT}/${SDKPATHNATIVE}${bindir_nativesdk}/devtool
meta/classes/populate_sdk_ext.bbclass:	lnr 
${SDK_OUTPUT}/${SDKPATH}/${scriptrelpath}/recipetool 
${SDK_OUTPUT}/${SDKPATHNATIVE}${bindir_nativesdk}/recipetool

Looks it only used by bb/bbclass.

I prefer to add a dependency here rather than patch Makefile with 'lnr'. 
Agreed?

Thanks
Wenzong

>
>> changes involved by SELinux commit:
>>
>>   commit 71393a181d63c9baae5fe8dcaeb9411d1f253998
>>   Author: Steve Lawrence <slawrence@tresys.com>
>>   Date:   Mon Oct 20 15:46:17 2014 -0400
>>
>>     libselinux: libsepol: use ln --relative to create .so symlinks
>>
>>     The current build system assumes SHLIBDIR is ../../ relative to LIBDIR.
>>     However, this isn't always the case. For example, Arch Linux sets both
>>     LIBDIR and SHLIBDIR to /usr/lib, which results in broken symlinks.
>>
>>     Instead of making that assumption, create .so symlinks using ln
>>     --relative so that the correct relative paths are used. Note that this
>>     adds a dependency for the build system to use coretuils-8.16 or later.
>>
>> Just depends on coreutils-native to fix the issue.
>>
>> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>> ---
>> recipes-security/selinux/libselinux.inc | 2 +-
>> recipes-security/selinux/libsepol.inc   | 2 ++
>> 2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
>> index d571a7c..b0f7bc4 100644
>> --- a/recipes-security/selinux/libselinux.inc
>> +++ b/recipes-security/selinux/libselinux.inc
>> @@ -7,7 +7,7 @@ LICENSE = "PD"
>>
>> inherit lib_package pythonnative
>>
>> -DEPENDS += "libsepol python libpcre swig-native"
>> +DEPENDS += "libsepol python libpcre swig-native coreutils-native"
>>
>> PACKAGES += "${PN}-python"
>> FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/*"
>> diff --git a/recipes-security/selinux/libsepol.inc b/recipes-security/selinux/libsepol.inc
>> index b24ed28..9234f24 100644
>> --- a/recipes-security/selinux/libsepol.inc
>> +++ b/recipes-security/selinux/libsepol.inc
>> @@ -8,6 +8,8 @@ LICENSE = "LGPLv2+"
>>
>> inherit lib_package
>>
>> +DEPENDS += "coreutils-native"
>> +
>> # Change RANLIB for cross compiling, use host-tools $(AR) rather than
>> # local ranlib.
>> EXTRA_OEMAKE += "RANLIB='$(AR) s'"
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

