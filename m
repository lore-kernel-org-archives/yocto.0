Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1B59E00AA8; Thu, 21 Jan 2016 01:06:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 950F9E0088C
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 01:06:31 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u0L96RNt000735
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 01:06:27 -0800 (PST)
Received: from [128.224.163.169] (128.224.163.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 21 Jan 2016 01:06:26 -0800
Message-ID: <56A09F91.2020704@windriver.com>
Date: Thu, 21 Jan 2016 17:06:25 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <562D8EA2.2030909@windriver.com> <5653C1E1.1090006@gmail.com>
In-Reply-To: <5653C1E1.1090006@gmail.com>
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
X-List-Received-Date: Thu, 21 Jan 2016 09:06:34 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Ping ...

Could it be merged?

Thanks
Wenzong

On 11/24/2015 09:48 AM, Chris Patterson wrote:
>> On 10/21/2015 05:49 AM, Khem Raj wrote:
>>>
>>>>  On Oct 20, 2015, at 2:49 AM,wenzong.fan at windriver.com wrote:
>>>>
>>>>  From: Wenzong Fan <wenzong.fan at windriver.com>
>>>>
>>>>  'ln --relative' doesn't work on Ubuntu 12.04 that has ln 8.13. The
>> >
>> >  OE-Core has lnr script you can use that.
>> /
>> It's good to know this. I did a grep:
>>
>> $ grep lnr -r *
>> meta/recipes-kernel/kmod/kmod_git.bb:        lnr ${D}${base_bindir}/kmod
>> ${D}${base_bindir}/lsmod
>> meta/recipes-kernel/kmod/kmod_git.bb:                lnr
>> ${D}${base_bindir}/kmod ${D}${base_sbindir}/${tool}
>> meta/recipes-core/systemd/systemd_225.bb:    sed -i -e 's:\$(LN_S)
>> --relative -f:lnr:g' ${S}/Makefile.am
>> meta/recipes-core/systemd/systemd_225.bb:    sed -i -e 's:\$(LN_S)
>> --relative:lnr:g' ${S}/Makefile.am
>> meta/recipes-core/ncurses/ncurses.inc:            # Use lnr to ensure
>> this is a relative link despite absolute paths
>> meta/recipes-core/ncurses/ncurses.inc:            lnr
>> ${D}${base_libdir}/libtinfo.so.5 ${D}${libdir}/libtinfo.so
>> meta/classes/populate_sdk_ext.bbclass:    lnr
>> ${SDK_OUTPUT}/${SDKPATH}/${scriptrelpath}/devtool
>> ${SDK_OUTPUT}/${SDKPATHNATIVE}${bindir_nativesdk}/devtool
>> meta/classes/populate_sdk_ext.bbclass:    lnr
>> ${SDK_OUTPUT}/${SDKPATH}/${scriptrelpath}/recipetool
>> ${SDK_OUTPUT}/${SDKPATHNATIVE}${bindir_nativesdk}/recipetool
>>
>> Looks it only used by bb/bbclass.
>>
>> I prefer to add a dependency here rather than patch Makefile with 'lnr'.
>> Agreed?
>>
>
> This approach makes sense to me.
>
>> Thanks
>> Wenzong
>>
>>>
>>>>  changes involved by SELinux commit:
>>>>
>>>>    commit 71393a181d63c9baae5fe8dcaeb9411d1f253998
>>>>    Author: Steve Lawrence <slawrence at tresys.com>
>>>>    Date:   Mon Oct 20 15:46:17 2014 -0400
>>>>
>>>>      libselinux: libsepol: use ln --relative to create .so symlinks
>>>>
>>>>      The current build system assumes SHLIBDIR is ../../ relativeto LIBDIR.
>>>>      However, this isn't always the case. For example, Arch Linuxsets both
>>>>      LIBDIR and SHLIBDIR to /usr/lib, which results in broken symlinks.
>>>>
>>>>      Instead of making that assumption, create .so symlinks using ln
>>>>      --relative so that the correct relative paths are used. Notethat this
>>>>      adds a dependency for the build system to use coretuils-8.16or later.
>>>>
>>>>  Just depends on coreutils-native to fix the issue.
>>>>
>>>>  Signed-off-by: Wenzong Fan <wenzong.fan at windriver.com>
>>>>  ---
>>>>  recipes-security/selinux/libselinux.inc | 2 +-
>>>>  recipes-security/selinux/libsepol.inc   | 2 ++
>>>>  2 files changed, 3 insertions(+), 1 deletion(-)
>>>>
>>>>  diff --git a/recipes-security/selinux/libselinux.incb/recipes-security/selinux/libselinux.inc
>>>>  index d571a7c..b0f7bc4 100644
>>>>  --- a/recipes-security/selinux/libselinux.inc
>>>>  +++ b/recipes-security/selinux/libselinux.inc
>>>>  @@ -7,7 +7,7 @@ LICENSE = "PD"
>>>>
>>>>  inherit lib_package pythonnative
>>>>
>>>>  -DEPENDS += "libsepol python libpcre swig-native"
>>>>  +DEPENDS += "libsepol python libpcre swig-native coreutils-native"
>>>>
>>>>  PACKAGES += "${PN}-python"
>>>>  FILES_${PN}-python ="${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/*"
>>>>  diff --git a/recipes-security/selinux/libsepol.incb/recipes-security/selinux/libsepol.inc
>>>>  index b24ed28..9234f24 100644
>>>>  --- a/recipes-security/selinux/libsepol.inc
>>>>  +++ b/recipes-security/selinux/libsepol.inc
>>>>  @@ -8,6 +8,8 @@ LICENSE = "LGPLv2+"
>>>>
>>>>  inherit lib_package
>>>>
>>>>  +DEPENDS += "coreutils-native"
>>>>  +
>>>>  # Change RANLIB for cross compiling, use host-tools $(AR) rather than
>>>>  # local ranlib.
>>>>  EXTRA_OEMAKE += "RANLIB='$(AR) s'"
>>>>  --
>>>>  1.9.1
>
> +1, this patch resolved the issue nicely for me! :)
>
> Thanks,
> -Chris

