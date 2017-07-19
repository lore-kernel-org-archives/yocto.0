Return-Path: <jngigiw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD612E00BFF; Wed, 19 Jul 2017 06:13:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jngigiw[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6224EE00B76
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 06:13:41 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id y129so107035pgy.4
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 06:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=/riiVWSwt/N6xWhfJg3pSnckhjZp19umPSc9gUfrEGg=;
	b=c79RpnGE/1wOi766u0lTZJxM5QT4f5V7Vo2BDJZ2bi3IQTATXKCscVyXtrXF0ygGxk
	ZmHnPwL1g14zW8H5nba7kDYouvT+NrAzIhIW449aPFqg3QJEJirVJTZwjh9BppTFY9j3
	R9YROSfXhZS7YpssQvP1xmDwx0hYNAUPnkCr+6r4cZC+Cgm003S/nGfO9dnuFI2hpoAY
	4h8kbQi6jv+OMnD3FLFybl6Oq2wxJ+m4AazOQAqW0lECFFZ/PBZI2Ela/KFmGL9nKMWf
	JTtAItyvAi8IpcChIYXPpktomTKusf9OfLaeVT+lO6OvSo0QC21+dsvCCKUTjIcsnV9X
	6yPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=/riiVWSwt/N6xWhfJg3pSnckhjZp19umPSc9gUfrEGg=;
	b=J89ED9Fg4OuHSazgZFCo0JxD9dSs+9N74IOKBZSeA6OQ27ztT+EQANuBF4ivX+D2QM
	LLadOOg8+jA5IJYmDqm5K/A4Pm/5KGyZbS2uf7ptGERNfA0NlIKik3bkszMXWSqEgRVy
	rg/OfLK3NgC8WU5mD1Zkw7+PtXkVl5qmp2c7pjy0foDKEN69TZPEazs81DD1nW2Nf3L6
	kjRtfnAcvfgjmvYLzDnc5Oqqyoa3HgrnbP779zly6Hh6/FKWSp7LeGScqPhrUuOd6zJT
	G+zWFkRJ6AlYSry9gsvjDX2m6PypOeOlIaDJwZmnoeE+FcfO1DknpYmsViUlTPUup/y2
	K5Sg==
X-Gm-Message-State: AIVw112+FJb569fD5llX11kBTIky2hwpTb0asXtrRAQ4iIsErGZou5+Q
	j4/XQn5vjYb4ng5qNdYf1gZEWthjnZXNN/w=
X-Received: by 10.99.126.86 with SMTP id o22mr624172pgn.383.1500470020341;
	Wed, 19 Jul 2017 06:13:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.150.200 with HTTP; Wed, 19 Jul 2017 06:13:39 -0700 (PDT)
In-Reply-To: <CABaDK3V7Rdt4ahQ7kBHVHr8=T3Lct8a7kWTLV6yjn9Mu+5nu5w@mail.gmail.com>
References: <CABaDK3V7Rdt4ahQ7kBHVHr8=T3Lct8a7kWTLV6yjn9Mu+5nu5w@mail.gmail.com>
From: Joseph Ngigi <jngigiw@gmail.com>
Date: Wed, 19 Jul 2017 16:13:39 +0300
Message-ID: <CABaDK3WAqG4MOa9vbJd8Sg9TGNM_JkBrDYgtpmY59wKYSJuSCA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: do_compile errors.
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
X-List-Received-Date: Wed, 19 Jul 2017 13:13:42 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b63448f026d0554ab6659"

--94eb2c1b63448f026d0554ab6659
Content-Type: text/plain; charset="UTF-8"

Here's my console output:

ngigijoe@ngigijoe-HP-2000-Notebook-PC:~/src/git/pyro/poky/cubieboard2$
bitbake core-image-sato
Loading cache: 100%
|#################################################################################################################################|
Time: 0:00:00
Loaded 2168 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal-4.8"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "cubieboard2"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.1"
TUNE_FEATURES     = "arm armv7ve vfp neon vfpv4 callconvention-hard
cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky         = "pyro:6bd890d9e011014cf323e61267f8b256949d44aa"
meta-sunxi        = "pyro:0056643fcf2c496a0f2cf005fb67d626ab0e2c10"
meta-oe
meta-gnome        = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"

Initialising tasks: 100%
|############################################################################################################################|
Time: 0:00:19
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: gperf-native-3.0.4-r0 do_compile: oe_runmake failed
ERROR: gperf-native-3.0.4-r0 do_compile: Function failed: do_compile (log
file is located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.7266)
ERROR: Logfile of failure stored in:
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.7266
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8
| ERROR: oe_runmake failed
| cd lib; make all
| make[1]: Entering directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
| cd src; make all
| make[1]: Entering directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
| g++
-isystem/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/include
-O2 -pipe -D_GLIBCXX_USE_CXX11_ABI=0
-L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
-L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
-Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
-Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
-Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
-Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
-Wl,-O1 -o gperf version.o positions.o options.o keyword.o keyword-list.o
input.o bool-array.o hash-table.o search.o output.o main.o ../lib/libgp.a
-lm
| g++: error: version.o: No such file or directory
| g++: error: positions.o: No such file or directory
| g++: error: options.o: No such file or directory
| g++: error: keyword.o: No such file or directory
| g++: error: keyword-list.o: No such file or directory
| g++: error: input.o: No such file or directory
| g++: error: bool-array.o: No such file or directory
| g++: error: hash-table.o: No such file or directory
| g++: error: output.o: No such file or directory
| g++: error: main.o: No such file or directory
| g++: error: ../lib/libgp.a: No such file or directory
| Makefile:74: recipe for target 'gperf' failed
| make[1]: *** [gperf] Error 1
| make[1]: Leaving directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
| Makefile:33: recipe for target 'all' failed
| make: *** [all] Error 2
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.7266)
ERROR: Task
(virtual:native:/home/ngigijoe/src/git/pyro/poky/meta/recipes-extended/gperf/gperf_3.0.4.bb:do_compile)
failed with exit code '1'

Second Keyboard Interrupt, stopping...


Summary: 1 task failed:

virtual:native:/home/ngigijoe/src/git/pyro/poky/meta/recipes-extended/gperf/gperf_3.0.4.bb:
do_compile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
NOTE: Sending SIGTERM to remaining 6 tasks


On Wed, Jul 19, 2017 at 3:58 PM, Joseph Ngigi <jngigiw@gmail.com> wrote:

> I seem to be having a lot of do_compile failure errors, building
> core-image-sato for cubieboard2 using poky pyro. I do not understand
> whether it is a gcc compiler issue or any other problem. Any assistance
> will be highly appreciated.
>
> Below is my logfile.
>
> DEBUG: Executing shell function do_compile
> NOTE: make -j 8
> ERROR: oe_runmake failed
> cd lib; make all
> make[1]: Entering directory '/home/ngigijoe/src/git/pyro/
> poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
> make[1]: Nothing to be done for 'all'.
> make[1]: Leaving directory '/home/ngigijoe/src/git/pyro/
> poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
> cd src; make all
> make[1]: Entering directory '/home/ngigijoe/src/git/pyro/
> poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
> g++  -isystem/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
> work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/include
> -O2 -pipe -D_GLIBCXX_USE_CXX11_ABI=0 -L/home/ngigijoe/src/git/pyro/
> poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-
> r0/recipe-sysroot-native/usr/lib -L/home/ngigijoe/src/git/pyro/
> poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
> -Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/
> cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
> -Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/
> cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
> -Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
> work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
> -Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/
> work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib -Wl,-O1
> -o gperf version.o positions.o options.o keyword.o keyword-list.o input.o
> bool-array.o hash-table.o search.o output.o main.o ../lib/libgp.a -lm
> g++: error: version.o: No such file or directory
> g++: error: positions.o: No such file or directory
> g++: error: options.o: No such file or directory
> g++: error: keyword.o: No such file or directory
> g++: error: keyword-list.o: No such file or directory
> g++: error: input.o: No such file or directory
> g++: error: bool-array.o: No such file or directory
> g++: error: hash-table.o: No such file or directory
> g++: error: output.o: No such file or directory
> g++: error: main.o: No such file or directory
> g++: error: ../lib/libgp.a: No such file or directory
> Makefile:74: recipe for target 'gperf' failed
> make[1]: *** [gperf] Error 1
> make[1]: Leaving directory '/home/ngigijoe/src/git/pyro/
> poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
> Makefile:33: recipe for target 'all' failed
> make: *** [all] Error 2
> ERROR: Function failed: do_compile (log file is located at
> /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_
> 64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.600)
>
> --
> J.W.Ngigi
>
>
>


-- 
J.W.Ngigi

--94eb2c1b63448f026d0554ab6659
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Here&#39;s my console output:<br><br>ngigijoe@ngigijoe-HP-=
2000-Notebook-PC:~/src/git/pyro/poky/cubieboard2$ bitbake core-image-sato<b=
r>Loading cache: 100% |####################################################=
###########################################################################=
##| Time: 0:00:00<br>Loaded 2168 entries from dependency cache.<br>NOTE: Re=
solving any missing task queue dependencies<br><br>Build Configuration:<br>=
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.34.0&quot;=
<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86=
_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;universal-4.8&quot=
;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-pok=
y-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;cubieboard2&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DI=
STRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;2.3.1&quot;<br>TUNE_FEATURES=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv7ve vfp neon vfpv4 callconvention-hard=
 cortexa7&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;hard&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;pyro:6bd890d9e011014cf323e61267f8b256949d44aa&=
quot;<br>meta-sunxi=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;pyr=
o:0056643fcf2c496a0f2cf005fb67d626ab0e2c10&quot;<br>meta-oe=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-gnome=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;pyro:5e82995148a2844c6f483ae5ddd1438d=
87ea9fb7&quot;<br><br>Initialising tasks: 100% |###########################=
###########################################################################=
######################| Time: 0:00:19<br>NOTE: Executing SetScene Tasks<br>=
NOTE: Executing RunQueue Tasks<br>ERROR: gperf-native-3.0.4-r0 do_compile: =
oe_runmake failed<br>ERROR: gperf-native-3.0.4-r0 do_compile: Function fail=
ed: do_compile (log file is located at /home/ngigijoe/src/git/pyro/poky/cub=
ieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.72=
66)<br>ERROR: Logfile of failure stored in: /home/ngigijoe/src/git/pyro/pok=
y/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compi=
le.7266<br>Log data follows:<br>| DEBUG: Executing shell function do_compil=
e<br>| NOTE: make -j 8<br>| ERROR: oe_runmake failed<br>| cd lib; make all<=
br>| make[1]: Entering directory &#39;/home/ngigijoe/src/git/pyro/poky/cubi=
eboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib&#39;<br>| mak=
e[1]: Nothing to be done for &#39;all&#39;.<br>| make[1]: Leaving directory=
 &#39;/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gp=
erf-native/3.0.4-r0/build/lib&#39;<br>| cd src; make all<br>| make[1]: Ente=
ring directory &#39;/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x=
86_64-linux/gperf-native/3.0.4-r0/build/src&#39;<br>| g++=C2=A0 -isystem/ho=
me/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-nativ=
e/3.0.4-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_GLIBCXX_USE_CXX11=
_ABI=3D0 -L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-lin=
ux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib -L/home/ngigijoe/src=
/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/reci=
pe-sysroot-native/lib -Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubi=
eboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/u=
sr/lib -Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/wor=
k/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib -Wl,-rpath,/=
home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-nat=
ive/3.0.4-r0/recipe-sysroot-native/usr/lib -Wl,-rpath,/home/ngigijoe/src/gi=
t/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-=
sysroot-native/lib -Wl,-O1 -o gperf version.o positions.o options.o keyword=
.o keyword-list.o input.o bool-array.o hash-table.o search.o output.o main.=
o ../lib/libgp.a -lm<br>| g++: error: version.o: No such file or directory<=
br>| g++: error: positions.o: No such file or directory<br>| g++: error: op=
tions.o: No such file or directory<br>| g++: error: keyword.o: No such file=
 or directory<br>| g++: error: keyword-list.o: No such file or directory<br=
>| g++: error: input.o: No such file or directory<br>| g++: error: bool-arr=
ay.o: No such file or directory<br>| g++: error: hash-table.o: No such file=
 or directory<br>| g++: error: output.o: No such file or directory<br>| g++=
: error: main.o: No such file or directory<br>| g++: error: ../lib/libgp.a:=
 No such file or directory<br>| Makefile:74: recipe for target &#39;gperf&#=
39; failed<br>| make[1]: *** [gperf] Error 1<br>| make[1]: Leaving director=
y &#39;/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/g=
perf-native/3.0.4-r0/build/src&#39;<br>| Makefile:33: recipe for target &#3=
9;all&#39; failed<br>| make: *** [all] Error 2<br>| WARNING: exit code 1 fr=
om a shell command.<br>| ERROR: Function failed: do_compile (log file is lo=
cated at /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux=
/gperf-native/3.0.4-r0/temp/log.do_compile.7266)<br>ERROR: Task (virtual:na=
tive:/home/ngigijoe/src/git/pyro/poky/meta/recipes-extended/gperf/gperf_3.0=
.4.bb:do_compile) failed with exit code &#39;1&#39;<br><br>Second Keyboard =
Interrupt, stopping...<br><br><br>Summary: 1 task failed:<br>=C2=A0 virtual=
:native:/home/ngigijoe/src/git/pyro/poky/meta/recipes-extended/gperf/gperf_=
3.0.4.bb:do_compile<br>Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<br>NOTE: Sending SIGTERM to remaining 6 tasks<br><b=
r></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, J=
ul 19, 2017 at 3:58 PM, Joseph Ngigi <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:jngigiw@gmail.com" target=3D"_blank">jngigiw@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>I seem to be ha=
ving a lot of do_compile failure errors, building core-image-sato for cubie=
board2 using poky pyro. I do not understand whether it is a gcc compiler is=
sue or any other problem. Any assistance will be highly appreciated.<br><br=
></div>Below is my logfile.<br><br clear=3D"all"><div><div>DEBUG: Executing=
 shell function do_compile<br>NOTE: make -j 8<br>ERROR: oe_runmake failed<b=
r>cd lib; make all<br>make[1]: Entering directory &#39;/home/ngigijoe/src/g=
it/pyro/<wbr>poky/cubieboard2/tmp/work/x86_<wbr>64-linux/gperf-native/3.0.4=
-<wbr>r0/build/lib&#39;<br>make[1]: Nothing to be done for &#39;all&#39;.<b=
r>make[1]: Leaving directory &#39;/home/ngigijoe/src/git/pyro/<wbr>poky/cub=
ieboard2/tmp/work/x86_<wbr>64-linux/gperf-native/3.0.4-<wbr>r0/build/lib&#3=
9;<br>cd src; make all<br>make[1]: Entering directory &#39;/home/ngigijoe/s=
rc/git/pyro/<wbr>poky/cubieboard2/tmp/work/x86_<wbr>64-linux/gperf-native/3=
.0.4-<wbr>r0/build/src&#39;<br>g++=C2=A0 -isystem/home/ngigijoe/src/<wbr>gi=
t/pyro/poky/cubieboard2/tmp/<wbr>work/x86_64-linux/gperf-<wbr>native/3.0.4-=
r0/recipe-<wbr>sysroot-native/usr/include -O2 -pipe -D_GLIBCXX_USE_CXX11_AB=
I=3D0 -L/home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/x86_<wbr=
>64-linux/gperf-native/3.0.4-<wbr>r0/recipe-sysroot-native/usr/<wbr>lib -L/=
home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/x86_<wbr>64-linux=
/gperf-native/3.0.4-<wbr>r0/recipe-sysroot-native/lib -Wl,-rpath-link,/home=
/<wbr>ngigijoe/src/git/pyro/poky/<wbr>cubieboard2/tmp/work/x86_64-<wbr>linu=
x/gperf-native/3.0.4-r0/<wbr>recipe-sysroot-native/usr/lib -Wl,-rpath-link,=
/home/<wbr>ngigijoe/src/git/pyro/poky/<wbr>cubieboard2/tmp/work/x86_64-<wbr=
>linux/gperf-native/3.0.4-r0/<wbr>recipe-sysroot-native/lib -Wl,-rpath,/hom=
e/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/x86_64-linux/gp=
erf-<wbr>native/3.0.4-r0/recipe-<wbr>sysroot-native/usr/lib -Wl,-rpath,/hom=
e/ngigijoe/src/<wbr>git/pyro/poky/cubieboard2/tmp/<wbr>work/x86_64-linux/gp=
erf-<wbr>native/3.0.4-r0/recipe-<wbr>sysroot-native/lib -Wl,-O1 -o gperf ve=
rsion.o positions.o options.o keyword.o keyword-list.o input.o bool-array.o=
 hash-table.o search.o output.o main.o ../lib/libgp.a -lm<br>g++: error: ve=
rsion.o: No such file or directory<br>g++: error: positions.o: No such file=
 or directory<br>g++: error: options.o: No such file or directory<br>g++: e=
rror: keyword.o: No such file or directory<br>g++: error: keyword-list.o: N=
o such file or directory<br>g++: error: input.o: No such file or directory<=
br>g++: error: bool-array.o: No such file or directory<br>g++: error: hash-=
table.o: No such file or directory<br>g++: error: output.o: No such file or=
 directory<br>g++: error: main.o: No such file or directory<br>g++: error: =
../lib/libgp.a: No such file or directory<br>Makefile:74: recipe for target=
 &#39;gperf&#39; failed<br>make[1]: *** [gperf] Error 1<br>make[1]: Leaving=
 directory &#39;/home/ngigijoe/src/git/pyro/<wbr>poky/cubieboard2/tmp/work/=
x86_<wbr>64-linux/gperf-native/3.0.4-<wbr>r0/build/src&#39;<br>Makefile:33:=
 recipe for target &#39;all&#39; failed<br>make: *** [all] Error 2<br>ERROR=
: Function failed: do_compile (log file is located at /home/ngigijoe/src/gi=
t/pyro/<wbr>poky/cubieboard2/tmp/work/x86_<wbr>64-linux/gperf-native/3.0.4-=
<wbr>r0/temp/log.do_compile.600)<span class=3D"HOEnZb"><font color=3D"#8888=
88"><br><br>-- <br><div class=3D"m_6206264962165269254gmail_signature"><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">J.W.Ngigi</div><di=
v dir=3D"ltr"><br><br></div></div></div></div></div></div>
</font></span></div></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr">J.W.Ngigi</div><div dir=3D"ltr"><br><br></di=
v></div></div></div></div></div>
</div>

--94eb2c1b63448f026d0554ab6659--
