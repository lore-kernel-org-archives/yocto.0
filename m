Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20681E01455
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 12:25:38 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3862867pbb.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 12:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=mIe4/tePyXhkyxkAHYE/EgqakqA/zROXCI76o4Y41DQ=;
	b=fLWz0QesFHPkI/aeYZH8Z/e/Yl0zf92Ydtb3+DQExz0Mmwfe4gIwQ/07bDbdoe7XH2
	6XFqTCtYuGG3jsMYAX66Pd+oYMEhDqHLWxgCxkkYz1sPf1IVm8octYNpyg+lMP9n/DmR
	FHbgKcahRNWFncWW/siSEN5BU/Qw4C5b3q1CNxjPmIXYlwk6gKIkZnQoDfQkoox3p0+D
	afE2wx+qUs1nytMYxFbramnXuc3uD6HkH7miB9yWhDRw3mLSf4t4xShnIlDv0DxEbQHR
	9O9++Bkl7dfPyz3V6DflBTJTecte0fkoEmJpbbNEZ1O+TExjfGbCOPpf25LLNspyWy5m
	axxA==
Received: by 10.66.75.228 with SMTP id f4mr7291509paw.52.1344108337714;
	Sat, 04 Aug 2012 12:25:37 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id ro7sm379740pbc.8.2012.08.04.12.25.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 04 Aug 2012 12:25:37 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
Date: Sat, 4 Aug 2012 23:25:31 +0400
Message-Id: <C2E650C2-34F0-4E8B-9EFC-304E878FA51F@gmail.com>
References: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Adding gcc-4.5.4 release back into oe-core
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Aug 2012 19:25:38 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0923BCF4-3C68-47E7-A230-299DFC2A0D69"

--Apple-Mail=_0923BCF4-3C68-47E7-A230-299DFC2A0D69
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Aug 4, 2012, at 11:19 PM, Elvis Dowson wrote:

> Do you think it makes sense to add gcc-4.5.4 back into oe-core, if it =
turns out that gcc-4.7.2 is causing a lot of issues for some targets?

I'm creating a gcc-4.5 recipe locally, modeling it after the current =
gcc-4.7 recipe folder. I've taken the patches from the gcc-4.5.1 recipe =
folder from a previous yocto release, and was wondering for the recent =
gcc-4.5.4 release, which of these patches can I drop?

SRC_URI =3D "git://gcc.gnu.org/git/gcc.git;branch=3D${BRANCH};protocol=3Dg=
it \
	   file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch \
	   file://100-uclibc-conf.patch \
           file://gcc-uclibc-locale-ctype_touplow_t.patch \
	   file://cache-amnesia.patch \
	   file://gcc-flags-for-build.patch \
	   file://libstdc++-emit-__cxa_end_cleanup-in-text.patch \
	   file://arm-bswapsi2.patch \
           file://fedora/gcc43-c++-builtin-redecl.patch;striplevel=3D0 \
           file://fedora/gcc43-ia64-libunwind.patch;striplevel=3D0 \
           file://fedora/gcc43-java-nomulti.patch;striplevel=3D0 \
           file://fedora/gcc43-ppc32-retaddr.patch;striplevel=3D0 \
           file://fedora/gcc43-pr32139.patch;striplevel=3D0 \
           file://fedora/gcc43-pr33763.patch;striplevel=3D0 \
           file://fedora/gcc43-rh330771.patch;striplevel=3D0 \
           file://fedora/gcc43-rh341221.patch;striplevel=3D0 \
           file://fedora/gcc43-java-debug-iface-type.patch;striplevel=3D0 =
\
           file://fedora/gcc43-i386-libgomp.patch;striplevel=3D0 \
           file://fedora/gcc45-no-add-needed.patch;striplevel=3D0 \
           file://103-uclibc-conf-noupstream.patch  \
           file://200-uclibc-locale.patch  \
           file://203-uclibc-locale-no__x.patch; \
           file://204-uclibc-locale-wchar_fix.patch; \
           file://205-uclibc-locale-update.patch; \
           file://301-missing-execinfo_h.patch  \
           file://302-c99-snprintf.patch  \
           file://303-c99-complex-ugly-hack.patch  \
           file://304-index_macro.patch  \
           file://305-libmudflap-susv3-legacy.patch  \
           file://306-libstdc++-namespace.patch  \
           file://740-sh-pr24836.patch  \
           file://800-arm-bigendian.patch  \
           file://904-flatten-switch-stmt-00.patch  \
           file://arm-nolibfloat.patch  \
           file://arm-softfloat.patch \
           file://zecke-xgcc-cpp.patch \
           file://gcc-poison-system-directories.patch \
           file://gcc-poison-dir-extend.patch \
           file://gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch \
	   file://64bithack.patch \
	   file://optional_libstdc.patch \
	   file://disable_relax_pic_calls_flag.patch \
	   file://GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch \
	   file://COLLECT_GCC_OPTIONS.patch \
	   file://use-defaults.h-and-t-oe-in-B.patch \
	   file://pr43810.patch \
	   file://pr44290.patch \
	   file://pr44606.patch \
	   file://pr45094.patch \
	   file://pr45052.patch \
	   file://pr45886.patch \
	   file://pr44618.patch \
	  "

SRC_URI_append_sh3  =3D " file://sh3-installfix-fixheaders.patch "

I notice that around 60 to 70% of the above patches are still applied to =
the gcc-4.7 recipe, so I was wondering how one maintains this recipe.

Best regards,

Elvis Dowson




--Apple-Mail=_0923BCF4-3C68-47E7-A230-299DFC2A0D69
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Aug 4, 2012, at 11:19 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>Do you think it makes sense to add gcc-4.5.4 back =
into oe-core, if it turns out that gcc-4.7.2 is causing a lot of issues =
for some targets?<br></div></blockquote><div><br></div>I'm creating a =
gcc-4.5 recipe locally, modeling it after the current gcc-4.7 recipe =
folder. I've taken the patches from the gcc-4.5.1 recipe folder from a =
previous yocto release, and was wondering for the recent gcc-4.5.4 =
release, which of these patches can I =
drop?</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">SRC_URI =3D "<a =
href=3D"git://gcc.gnu.org/git/gcc.git;branch=3D${BRANCH};protocol=3Dgit">g=
it://gcc.gnu.org/git/gcc.git;branch=3D${BRANCH};protocol=3Dgit</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a =
href=3D"file:///gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch">file://gcc-4.3.1-AR=
CH_FLAGS_FOR_TARGET.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp; =
<a href=3D"file:///100-uclibc-conf.patch">file://100-uclibc-conf.patch</a>=
 \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///gcc-uclibc-locale-ctype_touplow_t.patch">file://gcc-uclibc=
-locale-ctype_touplow_t.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp; =
<a href=3D"file:///cache-amnesia.patch">file://cache-amnesia.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a =
href=3D"file:///gcc-flags-for-build.patch">file://gcc-flags-for-build.patc=
h</a> \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a =
href=3D"file:///libstdc++-emit-__cxa_end_cleanup-in-text.patch">file://lib=
stdc++-emit-__cxa_end_cleanup-in-text.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp; =
<a href=3D"file:///arm-bswapsi2.patch">file://arm-bswapsi2.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-c++-builtin-redecl.patch;striplevel=3D0">file=
://fedora/gcc43-c++-builtin-redecl.patch;striplevel=3D0</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-ia64-libunwind.patch;striplevel=3D0">file://f=
edora/gcc43-ia64-libunwind.patch;striplevel=3D0</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-java-nomulti.patch;striplevel=3D0">file://fed=
ora/gcc43-java-nomulti.patch;striplevel=3D0</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-ppc32-retaddr.patch;striplevel=3D0">file://fe=
dora/gcc43-ppc32-retaddr.patch;striplevel=3D0</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-pr32139.patch;striplevel=3D0">file://fedora/g=
cc43-pr32139.patch;striplevel=3D0</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-pr33763.patch;striplevel=3D0">file://fedora/g=
cc43-pr33763.patch;striplevel=3D0</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-rh330771.patch;striplevel=3D0">file://fedora/=
gcc43-rh330771.patch;striplevel=3D0</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-rh341221.patch;striplevel=3D0">file://fedora/=
gcc43-rh341221.patch;striplevel=3D0</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-java-debug-iface-type.patch;striplevel=3D0">f=
ile://fedora/gcc43-java-debug-iface-type.patch;striplevel=3D0</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc43-i386-libgomp.patch;striplevel=3D0">file://fed=
ora/gcc43-i386-libgomp.patch;striplevel=3D0</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///fedora/gcc45-no-add-needed.patch;striplevel=3D0">file://fe=
dora/gcc45-no-add-needed.patch;striplevel=3D0</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///103-uclibc-conf-noupstream.patch">file://103-uclibc-conf-n=
oupstream.patch</a> &nbsp;\</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///200-uclibc-locale.patch">file://200-uclibc-locale.patch</a=
> &nbsp;\</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///203-uclibc-locale-no__x.patch">file://203-uclibc-locale-no=
__x.patch</a>; \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///204-uclibc-locale-wchar_fix.patch">file://204-uclibc-local=
e-wchar_fix.patch</a>; \</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///205-uclibc-locale-update.patch">file://205-uclibc-locale-u=
pdate.patch</a>; \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///301-missing-execinfo_h.patch">file://301-missing-execinfo_=
h.patch</a> &nbsp;\</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///302-c99-snprintf.patch">file://302-c99-snprintf.patch</a> =
&nbsp;\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///303-c99-complex-ugly-hack.patch">file://303-c99-complex-ug=
ly-hack.patch</a> &nbsp;\</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///304-index_macro.patch">file://304-index_macro.patch</a> =
&nbsp;\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///305-libmudflap-susv3-legacy.patch">file://305-libmudflap-s=
usv3-legacy.patch</a> &nbsp;\</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///306-libstdc++-namespace.patch">file://306-libstdc++-namesp=
ace.patch</a> &nbsp;\</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///740-sh-pr24836.patch">file://740-sh-pr24836.patch</a> =
&nbsp;\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///800-arm-bigendian.patch">file://800-arm-bigendian.patch</a=
> &nbsp;\</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///904-flatten-switch-stmt-00.patch">file://904-flatten-switc=
h-stmt-00.patch</a> &nbsp;\</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///arm-nolibfloat.patch">file://arm-nolibfloat.patch</a> =
&nbsp;\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///arm-softfloat.patch">file://arm-softfloat.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///zecke-xgcc-cpp.patch">file://zecke-xgcc-cpp.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///gcc-poison-system-directories.patch">file://gcc-poison-sys=
tem-directories.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///gcc-poison-dir-extend.patch">file://gcc-poison-dir-extend.=
patch</a> \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch">file://gcc-4.3.=
3-SYSROOT_CFLAGS_FOR_TARGET.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp; =
<a href=3D"file:///64bithack.patch">file://64bithack.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a =
href=3D"file:///optional_libstdc.patch">file://optional_libstdc.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a =
href=3D"file:///disable_relax_pic_calls_flag.patch">file://disable_relax_p=
ic_calls_flag.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp; =
<a =
href=3D"file:///GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch">file://GPLUSPLUS=
_INCLUDE_DIR_with_sysroot.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp; =
<a =
href=3D"file:///COLLECT_GCC_OPTIONS.patch">file://COLLECT_GCC_OPTIONS.patc=
h</a> \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a =
href=3D"file:///use-defaults.h-and-t-oe-in-B.patch">file://use-defaults.h-=
and-t-oe-in-B.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp; =
<a href=3D"file:///pr43810.patch">file://pr43810.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a href=3D"file:///pr44290.patch">file://pr44290.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a href=3D"file:///pr44606.patch">file://pr44606.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a href=3D"file:///pr45094.patch">file://pr45094.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a href=3D"file:///pr45052.patch">file://pr45052.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a href=3D"file:///pr45886.patch">file://pr45886.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a href=3D"file:///pr44618.patch">file://pr44618.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp;"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">SRC_URI_append_sh3 =
&nbsp;=3D " <a =
href=3D"file:///sh3-installfix-fixheaders.patch">file://sh3-installfix-fix=
headers.patch</a> "</font></div></div><div><br></div><div>I notice that =
around 60 to 70% of the above patches are still applied to the gcc-4.7 =
recipe, so I was wondering how one maintains this =
recipe.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div><div><br></div><br></body></html>=

--Apple-Mail=_0923BCF4-3C68-47E7-A230-299DFC2A0D69--
