Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04BBAE011AD
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:40:06 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so4384594pbb.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:cc:to:mime-version
	:x-mailer; bh=toDv4Zi7wqGHB73+ZxraWhLv6M2nxjK7uUh7evu9gXI=;
	b=CobLvZzLm+Itig3EykYaRx0uBhgsTZd0maRBKEXUzaOFqPQ/8xjF2lGJcPdJm9KDOt
	oqsflb41wUJ94RNN5+CnhIFY49wVS4825K/O1ZwSkhLtJ6N8Q3g73FJdtWmLn5ois/Rq
	9ClRKX/DDaF09A7NU5Q8775jYKFpMtpZzUYtpaF0MXTfdd6gSNHi2zxBA8l88goSLs0J
	1nBWhJSsiHt5IuY0cLjdCKBnE1q9rp9+c71v6qLBJMdQEiAx9jaD7cMEYVWkYbpuDVOw
	T/ACCaTpXtWE1emmB6QipoLWW6GOdyCtPmtIu+R6WCoOS8H3HnIERpqRTaDaUWTmIynj
	EuLw==
Received: by 10.68.195.106 with SMTP id id10mr13702103pbc.121.1345822801585;
	Fri, 24 Aug 2012 08:40:01 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id gf7sm8513072pbc.65.2012.08.24.08.39.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Aug 2012 08:40:00 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 24 Aug 2012 19:39:54 +0400
Message-Id: <940C4F71-39E0-43FF-90A0-D0802345B6C8@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Errors while creating a new PowerPC 405e tune file
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
X-List-Received-Date: Fri, 24 Aug 2012 15:40:06 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_15E526FE-9CFD-4790-B578-854516873D7E"

--Apple-Mail=_15E526FE-9CFD-4790-B578-854516873D7E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
     I have defined a tune-ppc405e.inc ( suffixed with an 'e' to signify =
that it has a hardware floating point unit attached), as follows:

DEFAULTTUNE ?=3D "ppc405e"

require conf/machine/include/powerpc/arch-powerpc.inc

TUNEVALID[ppc405e] =3D "Enable ppc405e specific processor optimizations"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc405e", =
"-mcpu=3D405fp", "", d)}"

AVAILTUNES +=3D "ppc405e"
TUNE_FEATURES_tune-ppc405e =3D "m32 ppc405e fpu-hard"
TUNE_PKGARCH_tune-ppc440e =3D "ppc405e"
PACKAGE_EXTRA_ARCHS_tune-ppc405e =3D =
"${PACKAGE_EXTRA_ARCHS_tune-powerpc} ppc405e"

# glibc configure options to get ppc405e specific library (for sqrt)
GLIBC_EXTRA_OECONF +=3D "${@bb.utils.contains("TUNE_FEATURES", =
"ppc405e", "-with-cpu=3D405fp", "", d)}"

And in my machine, should I be defining TARGET_CPU =3D "405fp" or "405e" =
?

TARGET_CPU  =3D "405fp"
#tune for the 405e cpu
require conf/machine/include/tune-ppc405e.inc

The gcc compiler options for -mcpu=3Dcpu_type can be one of '405' or =
'405fp'.

I can't get bitbake to build it for some reason, I keep getting errors =
like this:

$ bitbake -c fetchall core-image-minimal
Pseudo is not present but is required, building this first before the =
main build
NOTE: Error expanding variable oe_runconf                                =
                                          | ETA:  00:00:50
NOTE: Error during finalise of =
/tool/yocto/meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cro=
ss-initial_4.5.bb
ERROR: ExpansionError during parsing =
/tool/yocto/meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cro=
ss-initial_4.5.bb: Failure expanding variable EXTRA_OECONF, expression =
was --with-newlib 		--without-headers 		=
--disable-shared 	--disable-threads 		=
--disable-multilib 		--disable-__cxa_atexit 		=
--enable-languages=3Dc                  		=
--program-prefix=3Dpowerpc-poky-linux- 		=
--with-sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 		=
--with-build-sysroot=3D/tool/yocto/poky/build/tmp/work/${TUNE_PKGARCH_tune=
-ppc405e}-poky-linux/gcc-cross-initial-4.5.1+svnr162773-r14/gcc-4_5-branch=
/build.x86_64-linux.powerpc-poky-linux/tmpsysroot 		=
--disable-libmudflap 			--disable-libgomp 			=
--disable-libssp 			--enable-decimal-float=3Dno 		=
${@base_contains('DISTRO_FEATURES', 'ld-is-gold', =
'--with-ld=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/${TU=
NE_PKGARCH_tune-ppc405e}-poky-linux/powerpc-poky-linux-ld.bfd', '', d)} 	=
	 ${@gettext_oeconf(d)} --enable-__cxa_atexit =
--with-long-double-128 which triggered exception SyntaxError: EOL while =
scanning string literal (EXTRA_OECONF, line 1)
NOTE: Error expanding variable do_install
NOTE: Error during finalise of =
/tool/yocto/meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cro=
ss_4.5.bb
ERROR:  OE-core's config sanity checker detected a potential =
misconfiguration.
    Either fix the cause of this error or at your own risk disable the =
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Error, the PACKAGE_ARCHS variable does not contain TUNE_PKGARCH =
(${TUNE_PKGARCH_tune-ppc405e}).
ERROR: Execution of event handler 'check_sanity_eventhandler' failed
ERROR: Command execution failed: Exited with 1

Summary: There were 4 ERROR messages shown, returning a non-zero exit =
code.

Is this some how related to expanding the variable EXTRA_OECONF_FPU in =
gcc-cross-initial.inc (I'm working on a commit that is before Khem's =
recent rework on gcc-4.7)

EXTRA_OECONF =3D "--with-newlib \
		--without-headers \
		--disable-shared \
		--disable-threads \
		--disable-multilib \
		--disable-__cxa_atexit \
		--enable-languages=3Dc \
                ${OPTSPACE} \
		--program-prefix=3D${TARGET_PREFIX} \
		--with-sysroot=3D${STAGING_DIR_TARGET} \
		--with-build-sysroot=3D${GCCCROSS_BUILDSYSROOT} \
		${EXTRA_OECONF_INITIAL} \
		${@base_contains('DISTRO_FEATURES', 'ld-is-gold', =
'--with-ld=3D${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}ld.bfd', '', =
d)} \
		${EXTRA_OECONF_FPU}"



Best regards,

Elvis Dowson


--Apple-Mail=_15E526FE-9CFD-4790-B578-854516873D7E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp;I have defined a tune-ppc405e.inc ( =
suffixed with an 'e' to signify that it has a hardware floating point =
unit attached), as follows:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DEFAULTTUNE ?=3D =
"ppc405e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">require =
conf/machine/include/powerpc/arch-powerpc.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNEVALID[ppc405e] =3D "Enable ppc405e =
specific processor optimizations"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TUNE_CCARGS +=3D =
"${@bb.utils.contains("TUNE_FEATURES", "ppc405e", "-mcpu=3D405fp", "", =
d)}"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">AVAILTUNES +=3D =
"ppc405e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_FEATURES_tune-ppc405e =3D "m32 ppc405e =
fpu-hard"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_PKGARCH_tune-ppc440e =3D =
"ppc405e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PACKAGE_EXTRA_ARCHS_tune-ppc405e =3D =
"${PACKAGE_EXTRA_ARCHS_tune-powerpc} ppc405e"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># glibc configure options to get ppc405e =
specific library (for sqrt)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">GLIBC_EXTRA_OECONF =
+=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc405e", =
"-with-cpu=3D405fp", "", d)}"</font></div></div><div><br></div><div>And =
in my machine, should I be defining TARGET_CPU =3D "405fp" or "405e" =
?</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TARGET_CPU &nbsp;=3D =
"405fp"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">#tune for the 405e cpu</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">require =
conf/machine/include/tune-ppc405e.inc</font></div></div><div><br></div><di=
v>The gcc compiler options for -mcpu=3Dcpu_type can be one of '405' or =
'405fp'.</div><div><br></div><div>I can't get bitbake to build it for =
some reason, I keep getting errors like =
this:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">$ bitbake -c fetchall =
core-image-minimal</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Pseudo is not present but is required, =
building this first before the main build</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Error =
expanding variable oe_runconf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;| ETA: &nbsp;00:00:50</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Error during =
finalise of =
/tool/yocto/meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cro=
ss-initial_4.5.bb</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: ExpansionError during parsing =
/tool/yocto/meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cro=
ss-initial_4.5.bb: Failure expanding variable EXTRA_OECONF, expression =
was --with-newlib <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>--without-headers <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--disable-shared <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>--disable-threads <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--disable-multilib <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>--disable-__cxa_atexit =
<span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--enable-languages=3Dc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		=
</span>--program-prefix=3Dpowerpc-poky-linux- <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--with-sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
<span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--with-build-sysroot=3D/tool/yocto/poky/build/tmp/work/${TUNE_PKGAR=
CH_tune-ppc405e}-poky-linux/gcc-cross-initial-4.5.1+svnr162773-r14/gcc-4_5=
-branch/build.x86_64-linux.powerpc-poky-linux/tmpsysroot <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--disable-libmudflap <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">			</span>--disable-libgomp =
<span class=3D"Apple-tab-span" style=3D"white-space:pre">			=
</span>--disable-libssp <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">			=
</span>--enable-decimal-float=3Dno <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		=
</span>${@base_contains('DISTRO_FEATURES', 'ld-is-gold', =
'--with-ld=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/${TU=
NE_PKGARCH_tune-ppc405e}-poky-linux/powerpc-poky-linux-ld.bfd', '', d)} =
<span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span> ${@gettext_oeconf(d)} --enable-__cxa_atexit =
--with-long-double-128 which triggered exception SyntaxError: EOL while =
scanning string literal (EXTRA_OECONF, line 1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Error =
expanding variable do_install</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Error during =
finalise of =
/tool/yocto/meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cro=
ss_4.5.bb</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: &nbsp;OE-core's config sanity checker =
detected a potential misconfiguration.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
Either fix the cause of this error or at your own risk disable the =
checker (see sanity.conf).</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
Following is the list of potential problems / =
advisories:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
Error, the PACKAGE_ARCHS variable does not contain TUNE_PKGARCH =
(${TUNE_PKGARCH_tune-ppc405e}).</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Execution =
of event handler 'check_sanity_eventhandler' =
failed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">ERROR: Command execution failed: Exited with =
1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: There were 4 ERROR messages shown, =
returning a non-zero exit code.</font></div></div><div><br></div><div>Is =
this some how related to expanding the variable EXTRA_OECONF_FPU in =
gcc-cross-initial.inc (I'm working on a commit that is before Khem's =
recent rework on gcc-4.7)</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">EXTRA_OECONF =3D =
"--with-newlib \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>--without-headers =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--disable-shared \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--disable-threads \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--disable-multilib \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--disable-__cxa_atexit \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--enable-languages=3Dc \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ${OPTSPACE} =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--program-prefix=3D${TARGET_PREFIX} \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--with-sysroot=3D${STAGING_DIR_TARGET} \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>--with-build-sysroot=3D${GCCCROSS_BUILDSYSROOT} =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>${EXTRA_OECONF_INITIAL} \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>${@base_contains('DISTRO_FEATURES', 'ld-is-gold', =
'--with-ld=3D${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}ld.bfd', '', =
d)} \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>${EXTRA_OECONF_FPU}"</font></div></div><div><br></div><div><br></di=
v><div><br></div><div>Best regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></body></html>=

--Apple-Mail=_15E526FE-9CFD-4790-B578-854516873D7E--
