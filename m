Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64935E00832
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 01:06:36 -0800 (PST)
Received: by mail-ea0-f175.google.com with SMTP id z10so2768710ead.34
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 01:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Kj2/3F5bDTSuD12eid0rzOaI+jl50g853uBpVLRHRBU=;
	b=nfrzbLh8ip5N6BVMRU8hDstlpM/LejLQqNQqqvC6B6kysgeevYtk7/xbF8To14j4bz
	cXq0lMuF/vV7+W1b74x7FzcDPATFjfUM8HG1cCZUactc8qJ31/El3nP46tAh1gU9E2OE
	5aiJw3Hd2m24OwkJ8GUpcpL1Ht657rD/4CW50WolJNR7FIzNYEXoXBdEZofvBONAb4bx
	820T7Wh0FPC+VsxRRgHzNBVOIZL973j22WIohu3MUv37TcSmBK5R3VhnDTFIQIPFZL7a
	L8WhIMZgbFBKV7oreW+hvDdxIalPbXl2E1veHphknj5Q63Z8KV1SvoGEA4h04MK2bhzX
	/J5Q==
X-Received: by 10.14.95.194 with SMTP id p42mr36494eef.115.1389517594868;
	Sun, 12 Jan 2014 01:06:34 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id m48sm11353756eef.6.2014.01.12.01.06.33
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 12 Jan 2014 01:06:33 -0800 (PST)
Date: Sun, 12 Jan 2014 10:06:50 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Nick D'Ademo <nickdademo@gmail.com>
Message-ID: <20140112090650.GD16995@jama>
References: <CANR6C55cECHUBYRek7cKTm1us6A5GS0x-aDyjjD3Sbo5Tjr22A@mail.gmail.com>
	<CANR6C555G0WvPv7hg4AaOmcPR5-Ba1Su8ZpVzN1x8TmiOkuw5g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANR6C555G0WvPv7hg4AaOmcPR5-Ba1Su8ZpVzN1x8TmiOkuw5g@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: autogen-native recipe compilation error (since upgrade to 5.18.2)
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
X-List-Received-Date: Sun, 12 Jan 2014 09:06:37 -0000
X-Groupsio-MsgNum: 17750
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="iVCmgExH7+hIHJ1A"
Content-Disposition: inline

--iVCmgExH7+hIHJ1A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 12, 2014 at 05:14:28PM +1100, Nick D'Ademo wrote:
> Forwarded to Yocto List

It belongs to oe-core ML and it's already there:
http://lists.openembedded.org/pipermail/openembedded-core/2014-January/0881=
14.html

> ---------- Forwarded message ----------
> From: Nick D'Ademo <nickdademo@gmail.com>
> Date: Sun, Jan 12, 2014 at 3:32 PM
> Subject: autogen-native recipe compilation error (since upgrade to 5.18.2)
> To: poky@yoctoproject.org
> Cc: liezhi.yang@windriver.com, richard.purdie@linuxfoundation.org
>=20
>=20
> Since the recent commit: "autogen-native: upgrade to 5.18.2" (
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtoo=
ls/autogen?id=3D0cfb1e7a9f8349def5da787d3a284ac6d18ca55d
> )
>=20
> Compilation of the autogen-native recipe is broken for me.
>=20
> Anyone have any ideas on this?
> Many thanks in advance.
>=20
> (Target machine is the Intel NUC).
>=20
> *Error message as follows:*
>=20
> ERROR: Function failed: do_compile (log file is located at
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/l=
og.do_compile.16605)
> ERROR: Logfile of failure stored in:
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/l=
og.do_compile.16605
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8
> | /bin/sh config/mk-shdefs config/shdefs
> | config.status: creating shdef-temp
> | make  all-recursive
> | make[1]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build'
> | Making all in compat
> | make[2]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/compat'
> | :
> | make[2]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/compat'
> | Making all in snprintfv
> | make[2]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/snprintfv'
> | for f in filament.c format.c printf.c mem.c stream.c custom.c ; do echo
> "#include \"$f\"" ; done > snv.c
> | ../i686-linux-libtool  --tag=3DCC   --mode=3Dcompile gcc  -std=3Dgnu99
> -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/snprintfv
> -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -c -o snv.lo snv.c
> | i686-linux-libtool: compile:  gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/snprintfv
> -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -c snv.c  -fPIC -DPIC -o .libs/snv.o
> | i686-linux-libtool: compile:  gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/snprintfv
> -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -c snv.c -o snv.o >/dev/null 2>&1
> | ../i686-linux-libtool  --tag=3DCC   --mode=3Dlink gcc  -std=3Dgnu99
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -no-undefined -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o
> libsnprintfv.la  snv.lo  -lm -ldl
> | i686-linux-libtool: link: ar cru .libs/libsnprintfv.a .libs/snv.o
> | i686-linux-libtool: link: ranlib .libs/libsnprintfv.a
> | i686-linux-libtool: link: ( cd ".libs" && rm -f "libsnprintfv.la" && ln
> -s "../libsnprintfv.la" "libsnprintfv.la" )
> | make[2]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/snprintfv'
> | Making all in autoopts
> | make[2]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts'
> | rm -f stdnoreturn.h-t stdnoreturn.h && \
> |     { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
> |       sed -e '/definition of _Noreturn/r
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autoge=
n-5.18.2/config/snippet/_Noreturn.h'
> \
> |               <
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autoge=
n-5.18.2/autoopts/stdnoreturn.in.h;
> \
> |     } > stdnoreturn.h-t && \
> |     mv stdnoreturn.h-t stdnoreturn.h
> | make  all-recursive
> | make[3]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts'
> | Making all in test
> | make[4]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts/test'
> | make[4]: Nothing to be done for `all'.
> | make[4]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts/test'
> | make[4]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts'
> |
> AGexe=3D"/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-=
r0/build/agen5/autogen"
> GDexe=3D"/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-=
r0/build/getdefs/getdefs"
> CLexe=3D"/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-=
r0/build/columns/columns"
> srcdir=3D"/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2=
-r0/autogen-5.18.2/autoopts"
> top_srcdir=3D"/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.=
18.2-r0/autogen-5.18.2"
> builddir=3D"." top_builddir=3D".." POSIX_SHELL=3D"/bin/bash" \
> |         /bin/bash
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autoge=
n-5.18.2/autoopts/mk-tpl-config.sh
> tpl-config-stamp autoopts/options.h autoopts/usage-txt.h genshell.h
> option-xat-attribute.h option-value-type.h ao-strs.h ag-char-map.h
> autoopts.h project.h proto.h parse-duration.c ao-strs.c option-value-type=
=2Ec
> option-xat-attribute.c autoopts.c alias.c    boolean.c   check.c
> configfile.c cook.c enum.c     env.c       file.c      find.c
> genshell.c load.c     makeshell.c nested.c    numeric.c    pgusage.c
> putshell.c reset.c     restore.c   save.c       sort.c stack.c
> streqvcmp.c text_mmap.c time.c       tokenize.c usage.c    version.c
> init.c
> | ../i686-linux-libtool  --tag=3DCC   --mode=3Dcompile gcc  -std=3Dgnu99
> -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/autoopts
> -I..  -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2
> -I../autoopts
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/autoopts
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -DPKGDATADIR=3D'"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/=
autogen"'
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -c -o libopts_la-libopts.lo `test -f 'libopts.c' || echo
> '/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autog=
en-5.18.2/autoopts/'`libopts.c
> | i686-linux-libtool: compile:  gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/autoopts
> -I.. -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2
> -I../autoopts
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/autoopts
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -DPKGDATADIR=3D\"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/=
autogen\"
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -c libopts.c  -fPIC -DPIC -o .libs/libopts_la-libopts.o
> | i686-linux-libtool: compile:  gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/autoopts
> -I.. -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2
> -I../autoopts
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/autoopts
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -DPKGDATADIR=3D\"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/=
autogen\"
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -c libopts.c -o libopts_la-libopts.o >/dev/null 2>&1
> | ../i686-linux-libtool  --tag=3DCC   --mode=3Dlink gcc  -std=3Dgnu99
> -DPKGDATADIR=3D'"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/=
autogen"'
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -version-info 40:1:15
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o
> libopts.la -rpath /home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> libopts_la-libopts.lo ../snprintfv/libsnprintfv.la -lm -ldl
> | i686-linux-libtool: link: gcc  -shared  -fPIC -DPIC
> .libs/libopts_la-libopts.o  -Wl,--whole-archive
> ../snprintfv/.libs/libsnprintfv.a -Wl,--no-whole-archive
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib -lm -ldl  -O2
> -Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1
> -Wl,-soname -Wl,libopts.so.25 -o .libs/libopts.so.25.15.1
> | i686-linux-libtool: link: (cd ".libs" && rm -f "libopts.so.25" && ln -s
> "libopts.so.25.15.1" "libopts.so.25")
> | i686-linux-libtool: link: (cd ".libs" && rm -f "libopts.so" && ln -s
> "libopts.so.25.15.1" "libopts.so")
> | i686-linux-libtool: link: (cd .libs/libopts.lax/libsnprintfv.a && ar x
> "/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts/../snprintfv/.libs/libsnprintfv.a")
> | i686-linux-libtool: link: ar cru .libs/libopts.a  libopts_la-libopts.o
> .libs/libopts.lax/libsnprintfv.a/snv.o
> | i686-linux-libtool: link: ranlib .libs/libopts.a
> | i686-linux-libtool: link: rm -fr .libs/libopts.lax
> | i686-linux-libtool: link: ( cd ".libs" && rm -f "libopts.la" && ln -s "=
=2E./
> libopts.la" "libopts.la" )
> | /bin/bash mk-autoopts-pc pkgconfig/autoopts.pc
> | make[4]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts'
> | make[3]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts'
> | make[2]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts'
> | Making all in agen5
> | make[2]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/agen5'
> | Making all in test
> | make[3]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/agen5/test'
> | make[3]: Nothing to be done for `all'.
> | make[3]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/agen5/test'
> | make[3]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/agen5'
> | exec > ag.c ; \
> |     echo '#undef   PKGDATADIR' ; \
> |     echo '#define  PKGDATADIR
> "/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen"' ; \
> |     mk=3D`set -- make ; command -v $1` ; \
> |     echo 'static char const make_prog[] =3D "'$mk'";' ; \
> |     printf '\n#define  DEFINING 1\n' ; \
> |     printf '#include "%s"\n' autoopts/project.h autogen.h autogen.c
> defParse-fsm.c defLex.c directive.c funcCase.c funcDef.c funcEval.c
> funcFor.c funcIf.c functions.c expExtract.c expFormat.c expGperf.c
> expGuile.c  expMake.c expOutput.c  expPrint.c  expState.c expString.c
> agShell.c ag-text.c    agCgi.c      agDep.c      agInit.c     agUtils.c
> cgi-fsm.c    defDirect.c  defFind.c    defLoad.c    fmemopen.c loadPseudo=
=2Ec
> opts.c       scribble.c   tpLoad.c     tpParse.c tpProcess.c
> | gcc  -std=3Dgnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/agen5
> -I..  -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2
> -I../autoopts
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/auto=
gen-5.18.2/autoopts
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -pthread
> -I/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0
> -I/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pi=
pe
> -c -o autogen-ag.o `test -f 'ag.c' || echo
> '/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autog=
en-5.18.2/agen5/'`ag.c
> | In file included from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/array-handle.h:28:0,
> |                  from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile.h:34,
> |                  from
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autoge=
n-5.18.2/agen5/autogen.h:60,
> |                  from ag.c:7:
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:40:24:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:40:24:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:42:27:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:42:27:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:44:46:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:44:46:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:46:30:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:46:30:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:47:50:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:47:50:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:49:6:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:49:6:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:51:6:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:51:6:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:52:44:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:52:44:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:53:57:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:53:57:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:55:21:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:55:21:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:57:28:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:57:28:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:59:41:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:59:41:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:60:50:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:60:50:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:62:19:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:62:19:
> error: expected ',' or ';' before ')' token
> | In file included from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/root.h:28:0,
> |                  from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/async.h:27,
> |                  from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile.h:37,
> |                  from
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autoge=
n-5.18.2/agen5/autogen.h:60,
> |                  from ag.c:7:
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/throw.h:82:1:
> warning: '__noreturn__' attribute ignored [-Wattributes]
> | In file included from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile.h:89:0,
> |                  from
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autoge=
n-5.18.2/agen5/autogen.h:60,
> |                  from ag.c:7:
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/read.h:63:3:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/read.h:63:3:
> error: expected ',' or ';' before ')' token
> | make[3]: *** [autogen-ag.o] Error 1
> | make[3]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/agen5'
> | make[2]: *** [all-recursive] Error 1
> | make[2]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/agen5'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | WARNING:
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/r=
un.do_compile.16605:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_compile (log file is located at
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/l=
og.do_compile.16605)
> ERROR: Task 6 (/home/nick/poky/meta/recipes-devtools/autogen/
> autogen-native_5.18.2.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6 tasks of which 1 didn't need to be rerun
> and 1 failed.
> No currently running tasks (6 of 9)
>=20
> Summary: 1 task failed:
>   /home/nick/poky/meta/recipes-devtools/autogen/autogen-native_5.18.2.bb,
> do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--iVCmgExH7+hIHJ1A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLSWyoACgkQN1Ujt2V2gBx8PQCgonWlMYpmEo0u9o7Uoq3Of8aF
zFoAn2J3Dm8wr+8CTkW54HHEsPV+FHVY
=LM4e
-----END PGP SIGNATURE-----

--iVCmgExH7+hIHJ1A--
