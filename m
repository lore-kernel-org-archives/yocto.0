Return-Path: <cjp256@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 560A3E00AC5; Mon, 23 Nov 2015 17:48:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cjp256[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21E91E007C9
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 17:48:19 -0800 (PST)
Received: by vkfr145 with SMTP id r145so2007453vkf.0
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 17:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=8TfFCDKcdpaG16kL98br11VUgY5l+32MQJtWK2wgmhI=;
	b=YzjYtVeGAvZGxaghOEbrNwHEaygyxj1064kXj2X3WD0ynosFY+VSwAKXZZvtk3DF/m
	OKazxpWdssadmxakHUZwPTyn0DzMuNG1ACMXuzX3VDgE7wZhfC8oNlIp0/AZqV9xG3hg
	uxNu15Ia/5zxY9NATObiS/FesKsN/X7xq5rhwCP8pT+mgIvay5J1bevrM/1if0U4zif/
	Gnlfzqhd0v5nD2zLOdDhajbVn/brb8pbCz9bOvt6fizPggRWEz0LrPKEN2wIaVPRj3Mi
	I96XP+4TiGRknLaqY6LlI8Ptwc6bUeNGRzrg9BF4L4OJQdinbJah0B6fraUd4NalYqcj
	o7Ig==
X-Received: by 10.31.169.137 with SMTP id s131mr23277042vke.144.1448329699024; 
	Mon, 23 Nov 2015 17:48:19 -0800 (PST)
Received: from [192.168.1.11] (cpe-104-229-186-216.twcny.res.rr.com.
	[104.229.186.216]) by smtp.googlemail.com with ESMTPSA id
	v145sm12986160vkv.6.2015.11.23.17.48.17 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 23 Nov 2015 17:48:17 -0800 (PST)
Message-ID: <5653C1E1.1090006@gmail.com>
Date: Mon, 23 Nov 2015 20:48:17 -0500
From: Chris Patterson <cjp256@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <562D8EA2.2030909@windriver.com>
In-Reply-To: <562D8EA2.2030909@windriver.com>
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
X-List-Received-Date: Tue, 24 Nov 2015 01:48:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

 > On 10/21/2015 05:49 AM, Khem Raj wrote:
 >>
 >>>  On Oct 20, 2015, at 2:49 AM,wenzong.fan at windriver.com wrote:
 >>>
 >>>  From: Wenzong Fan <wenzong.fan at windriver.com>
 >>>
 >>>  'ln --relative' doesn't work on Ubuntu 12.04 that has ln 8.13. The
 > >
 > >  OE-Core has lnr script you can use that.
 > /
 > It's good to know this. I did a grep:
 >
 > $ grep lnr -r *
 > meta/recipes-kernel/kmod/kmod_git.bb:        lnr ${D}${base_bindir}/kmod
 > ${D}${base_bindir}/lsmod
 > meta/recipes-kernel/kmod/kmod_git.bb:                lnr
 > ${D}${base_bindir}/kmod ${D}${base_sbindir}/${tool}
 > meta/recipes-core/systemd/systemd_225.bb:	sed -i -e 's:\$(LN_S)
 > --relative -f:lnr:g' ${S}/Makefile.am
 > meta/recipes-core/systemd/systemd_225.bb:	sed -i -e 's:\$(LN_S)
 > --relative:lnr:g' ${S}/Makefile.am
 > meta/recipes-core/ncurses/ncurses.inc:            # Use lnr to ensure
 > this is a relative link despite absolute paths
 > meta/recipes-core/ncurses/ncurses.inc:            lnr
 > ${D}${base_libdir}/libtinfo.so.5 ${D}${libdir}/libtinfo.so
 > meta/classes/populate_sdk_ext.bbclass:	lnr
 > ${SDK_OUTPUT}/${SDKPATH}/${scriptrelpath}/devtool
 > ${SDK_OUTPUT}/${SDKPATHNATIVE}${bindir_nativesdk}/devtool
 > meta/classes/populate_sdk_ext.bbclass:	lnr
 > ${SDK_OUTPUT}/${SDKPATH}/${scriptrelpath}/recipetool
 > ${SDK_OUTPUT}/${SDKPATHNATIVE}${bindir_nativesdk}/recipetool
 >
 > Looks it only used by bb/bbclass.
 >
 > I prefer to add a dependency here rather than patch Makefile with 'lnr'.
 > Agreed?
 >

This approach makes sense to me.

 > Thanks
 > Wenzong
 >
 >>
 >>>  changes involved by SELinux commit:
 >>>
 >>>    commit 71393a181d63c9baae5fe8dcaeb9411d1f253998
 >>>    Author: Steve Lawrence <slawrence at tresys.com>
 >>>    Date:   Mon Oct 20 15:46:17 2014 -0400
 >>>
 >>>      libselinux: libsepol: use ln --relative to create .so symlinks
 >>>
 >>>      The current build system assumes SHLIBDIR is ../../ relative 
to LIBDIR.
 >>>      However, this isn't always the case. For example, Arch Linux 
sets both
 >>>      LIBDIR and SHLIBDIR to /usr/lib, which results in broken symlinks.
 >>>
 >>>      Instead of making that assumption, create .so symlinks using ln
 >>>      --relative so that the correct relative paths are used. Note 
that this
 >>>      adds a dependency for the build system to use coretuils-8.16 
or later.
 >>>
 >>>  Just depends on coreutils-native to fix the issue.
 >>>
 >>>  Signed-off-by: Wenzong Fan <wenzong.fan at windriver.com>
 >>>  ---
 >>>  recipes-security/selinux/libselinux.inc | 2 +-
 >>>  recipes-security/selinux/libsepol.inc   | 2 ++
 >>>  2 files changed, 3 insertions(+), 1 deletion(-)
 >>>
 >>>  diff --git a/recipes-security/selinux/libselinux.inc 
b/recipes-security/selinux/libselinux.inc
 >>>  index d571a7c..b0f7bc4 100644
 >>>  --- a/recipes-security/selinux/libselinux.inc
 >>>  +++ b/recipes-security/selinux/libselinux.inc
 >>>  @@ -7,7 +7,7 @@ LICENSE = "PD"
 >>>
 >>>  inherit lib_package pythonnative
 >>>
 >>>  -DEPENDS += "libsepol python libpcre swig-native"
 >>>  +DEPENDS += "libsepol python libpcre swig-native coreutils-native"
 >>>
 >>>  PACKAGES += "${PN}-python"
 >>>  FILES_${PN}-python = 
"${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/*"
 >>>  diff --git a/recipes-security/selinux/libsepol.inc 
b/recipes-security/selinux/libsepol.inc
 >>>  index b24ed28..9234f24 100644
 >>>  --- a/recipes-security/selinux/libsepol.inc
 >>>  +++ b/recipes-security/selinux/libsepol.inc
 >>>  @@ -8,6 +8,8 @@ LICENSE = "LGPLv2+"
 >>>
 >>>  inherit lib_package
 >>>
 >>>  +DEPENDS += "coreutils-native"
 >>>  +
 >>>  # Change RANLIB for cross compiling, use host-tools $(AR) rather than
 >>>  # local ranlib.
 >>>  EXTRA_OEMAKE += "RANLIB='$(AR) s'"
 >>>  --
 >>>  1.9.1

+1, this patch resolved the issue nicely for me! :)

Thanks,
-Chris

