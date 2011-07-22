Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de [212.227.17.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC3374C80120
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2011 07:32:53 -0500 (CDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mrbap4) with ESMTP (Nemesis)
	id 0LbacF-1R8o8w25dr-00lEv6; Fri, 22 Jul 2011 14:32:42 +0200
Date: Fri, 22 Jul 2011 14:32:40 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110722123240.GA25142@localhost.localdomain>
References: <20110722083745.GA13064@localhost.localdomain>
	<1311325191.2344.101.camel@rex>
	<20110722093722.GA8668@localhost.localdomain>
	<1311328132.2344.106.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1311328132.2344.106.camel@rex>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:xcEHH5qZiA0mylz6k17fnBc27cGuAWVdbK2h02toqXY
	o9knOv8PJyBFlfpgEEFYcbVqo1ZEYRohNAkVQ4gHJLM1PR1Se5
	CPeD1dG/JpD3wfcuvNeOHqYPIWibWiPzCRpN1PefBkXmKRNWXQ
	gUK/GhyGhB8f6Gim+q02Y8pJAiCHgYbAgC7CC/LxD3Epe6Gald
	JJO6p93MvPnBnc2vpm1YmJQJDz5hv+n6i50wJS+xuk=
Cc: yocto@yoctoproject.org
Subject: Re: Bitbaking python fails
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
X-List-Received-Date: Fri, 22 Jul 2011 12:32:55 -0000
X-Groupsio-MsgNum: 2056
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline

--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> > > > My target machine is atom-pc and my build host is Fedora 13 in a
> > > > VirtualBox machine.
> > > 
> > > I've not seen this before. You could run
> > > "file /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libgdbm.so.3.0.0" and check that its of the correct architecture since the invalid instruction is a weird error to see. I'm not 100% sure its that file its complaining about the instruction from though.
> > 
> > this is the output of the file command:
> > libgdbm.so.3.0.0: ELF 32-bit LSB shared object, Intel 80386, version 1
> > (SYSV), dynamically linked, not stripped
> 
> Sounds correct...
> 
> > > Does it do this every build, erroring in the same way? I know we did see
> > > some emulation corruption type issues with virtualbox in the past
> > > although they've not been reported for a while. It might be worth
> > > starting a new build of "bitbake python" and see if the error is
> > > reproducible too...
> > 
> > It happens reproducible when i do a "bitbake python".
> 
> Is this on a fresh clean build directory?

I did a fresh build in a new clean directory now and it fails too. The
error log (attached) is a bit different though.

What i did:

- source poky-init-build-env build python
- edit conf/local.conf to set
  BB_NUMBER_THREADS = "2"
  PARALLEL_MAKE = "-j 2"
  MACHINE ??= "atom-pc"
- source poky-init-build-env build python, again (not sure if this is needed)
- bitbake python

> You could also try "bitbake -c cleansstate python gdbm" on your existing
> build directory and retry "bitbake python" to see if its reproducible
> that way.
hmmh, the cleansstate task does neither exist for python nor for gdbm.

ERROR: Task do_cleansstate does not exist for target python

regards,

Andre

--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="log.do_compile.21265"
Content-Transfer-Encoding: quoted-printable

NOTE: make HOSTPGEN=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/i686=
-linux/usr/bin/pgen HOSTPYTHON=3D/home/ahaupt/yocto-git/build-python/tmp/sy=
sroots/i686-linux/usr/bin/python STAGING_LIBDIR=3D/home/ahaupt/yocto-git/bu=
ild-python/tmp/sysroots/atom-pc/usr/lib STAGING_INCDIR=3D/home/ahaupt/yocto=
-git/build-python/tmp/sysroots/atom-pc/usr/include BUILD_SYS=3Di686-linux H=
OST_SYS=3Di586-poky-linux OPT=3D -fexpensive-optimizations -fomit-frame-poi=
nter -frename-registers -O2 -ggdb -feliminate-unused-debug-types libpython2=
.6.so
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/acceler.o Parser/=
acceler.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/grammar1.o Parser=
/grammar1.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/listnode.o Parser=
/listnode.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/node.o Parser/nod=
e.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/parser.o Parser/p=
arser.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/parsetok.o Parser=
/parsetok.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/bitset.o Parser/b=
itset.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/metagrammar.o Par=
ser/metagrammar.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/firstsets.o Parse=
r/firstsets.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/grammar.o Parser/=
grammar.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/pgen.o Parser/pge=
n.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/myreadline.o Pars=
er/myreadline.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/tokenizer.o Parse=
r/tokenizer.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/abstract.o Objec=
ts/abstract.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/boolobject.o Obj=
ects/boolobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/bufferobject.o O=
bjects/bufferobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/bytes_methods.o =
Objects/bytes_methods.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/bytearrayobject.=
o Objects/bytearrayobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/cellobject.o Obj=
ects/cellobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/classobject.o Ob=
jects/classobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/cobject.o Object=
s/cobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/codeobject.o Obj=
ects/codeobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/complexobject.o =
Objects/complexobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/descrobject.o Ob=
jects/descrobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/enumobject.o Obj=
ects/enumobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/exceptions.o Obj=
ects/exceptions.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/genobject.o Obje=
cts/genobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/fileobject.o Obj=
ects/fileobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/floatobject.o Ob=
jects/floatobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/frameobject.o Ob=
jects/frameobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/funcobject.o Obj=
ects/funcobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/intobject.o Obje=
cts/intobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/iterobject.o Obj=
ects/iterobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/listobject.o Obj=
ects/listobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/longobject.o Obj=
ects/longobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/dictobject.o Obj=
ects/dictobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/methodobject.o O=
bjects/methodobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/moduleobject.o O=
bjects/moduleobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/object.o Objects=
/object.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/obmalloc.o Objec=
ts/obmalloc.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/rangeobject.o Ob=
jects/rangeobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/setobject.o Obje=
cts/setobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/sliceobject.o Ob=
jects/sliceobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/stringobject.o O=
bjects/stringobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/structseq.o Obje=
cts/structseq.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/tupleobject.o Ob=
jects/tupleobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/typeobject.o Obj=
ects/typeobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/weakrefobject.o =
Objects/weakrefobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/unicodeobject.o =
Objects/unicodeobject.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Objects/unicodectype.o O=
bjects/unicodectype.c
Objects/unicodectype.c: In function '_PyUnicodeUCS2_ToLowercase':
Objects/unicodectype.c:779:12: warning: incompatible implicit declaration o=
f built-in function 'towlower'
Objects/unicodectype.c: In function '_PyUnicodeUCS2_ToUppercase':
Objects/unicodectype.c:784:12: warning: incompatible implicit declaration o=
f built-in function 'towupper'
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/_warnings.o Pytho=
n/_warnings.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/Python-ast.o Pyth=
on/Python-ast.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/asdl.o Python/asd=
l.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/ast.o Python/ast.=
c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/bltinmodule.o Pyt=
hon/bltinmodule.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/ceval.o Python/ce=
val.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/mysnprintf.o Pyth=
on/mysnprintf.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/tokenizer_pgen.o =
Parser/tokenizer_pgen.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/printgrammar.o Pa=
rser/printgrammar.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Parser/pgenmain.o Parser=
/pgenmain.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 =
-ggdb -feliminate-unused-debug-types -Wl,-O1  -Wl,--as-needed  Parser/accel=
er.o Parser/grammar1.o Parser/listnode.o Parser/node.o Parser/parser.o Pars=
er/parsetok.o Parser/bitset.o Parser/metagrammar.o Parser/firstsets.o Parse=
r/grammar.o Parser/pgen.o Objects/obmalloc.o Python/mysnprintf.o Parser/tok=
enizer_pgen.o Parser/printgrammar.o Parser/pgenmain.o -lpthread -ldl  -lpth=
read -lutil -o Parser/pgen
/home/ahaupt/yocto-git/build-python/tmp/sysroots/i686-linux/usr/bin/pgen ./=
Grammar/Grammar ./Include/graminit.h ./Python/graminit.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/compile.o Python/=
compile.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/codecs.o Python/c=
odecs.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/errors.o Python/e=
rrors.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/frozen.o Python/f=
rozen.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/frozenmain.o Pyth=
on/frozenmain.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/future.o Python/f=
uture.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/getargs.o Python/=
getargs.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/getcompiler.o Pyt=
hon/getcompiler.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/getcopyright.o Py=
thon/getcopyright.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/getmtime.o Python=
/getmtime.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -DPLATFORM=3D'"linux2"' -o =
Python/getplatform.o ./Python/getplatform.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/getversion.o Pyth=
on/getversion.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/graminit.o Python=
/graminit.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/import.o Python/i=
mport.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -I. -o Python/importdl.o ./=
Python/importdl.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/marshal.o Python/=
marshal.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/modsupport.o Pyth=
on/modsupport.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/mystrtoul.o Pytho=
n/mystrtoul.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/peephole.o Python=
/peephole.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/pyarena.o Python/=
pyarena.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/pyfpe.o Python/py=
fpe.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/pymath.o Python/p=
ymath.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/pystate.o Python/=
pystate.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/pythonrun.o Pytho=
n/pythonrun.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/structmember.o Py=
thon/structmember.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/symtable.o Python=
/symtable.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/sysmodule.o Pytho=
n/sysmodule.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/traceback.o Pytho=
n/traceback.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/getopt.o Python/g=
etopt.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/pystrcmp.o Python=
/pystrcmp.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/pystrtod.o Python=
/pystrtod.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/formatter_unicode=
.o Python/formatter_unicode.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/formatter_string.=
o Python/formatter_string.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/dynload_shlib.o P=
ython/dynload_shlib.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Python/thread.o Python/t=
hread.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Modules/config.o Modules=
/config.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -DPYTHONPATH=3D'":plat-linu=
x2:lib-tk:lib-old"' \
		-DPREFIX=3D'"/usr"' \
		-DEXEC_PREFIX=3D'"/usr"' \
		-DVERSION=3D'"2.6"' \
		-DVPATH=3D'""' \
		-o Modules/getpath.o ./Modules/getpath.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Modules/main.o Modules/m=
ain.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Modules/gcmodule.o Modul=
es/gcmodule.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/threadmodule.c -=
o Modules/threadmodule.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/signalmodule.c -=
o Modules/signalmodule.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/posixmodule.c -o=
 Modules/posixmodule.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/errnomodule.c -o=
 Modules/errnomodule.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/pwdmodule.c -o M=
odules/pwdmodule.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/_sre.c -o Module=
s/_sre.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/_codecsmodule.c =
-o Modules/_codecsmodule.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/zipimport.c -o M=
odules/zipimport.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/symtablemodule.c=
 -o Modules/symtablemodule.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2=
 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-fram=
e-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. =
-IInclude -I./Include  -fPIC -DPy_BUILD_CORE  -c ./Modules/xxsubtype.c -o M=
odules/xxsubtype.o
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -DSVNVERSION=3D"\"`LC_ALL=
=3DC svnversion .`\"" -o Modules/getbuildinfo.o ./Modules/getbuildinfo.c
if test libpython2.6.so.1.0 !=3D libpython2.6.so; then \
		ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -m=
fpmath=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/a=
tom-pc -shared -Wl,-O1  -Wl,--as-needed -Wl,-hlibpython2.6.so.1.0 -o libpyt=
hon2.6.so.1.0 Modules/getbuildinfo.o Parser/acceler.o Parser/grammar1.o Par=
ser/listnode.o Parser/node.o Parser/parser.o Parser/parsetok.o Parser/bitse=
t.o Parser/metagrammar.o Parser/firstsets.o Parser/grammar.o Parser/pgen.o =
Parser/myreadline.o Parser/tokenizer.o Objects/abstract.o Objects/boolobjec=
t.o Objects/bufferobject.o Objects/bytes_methods.o Objects/bytearrayobject.=
o Objects/cellobject.o Objects/classobject.o Objects/cobject.o Objects/code=
object.o Objects/complexobject.o Objects/descrobject.o Objects/enumobject.o=
 Objects/exceptions.o Objects/genobject.o Objects/fileobject.o Objects/floa=
tobject.o Objects/frameobject.o Objects/funcobject.o Objects/intobject.o Ob=
jects/iterobject.o Objects/listobject.o Objects/longobject.o Objects/dictob=
ject.o Objects/methodobject.o Objects/moduleobject.o Objects/object.o Objec=
ts/obmalloc.o Objects/rangeobject.o Objects/setobject.o Objects/sliceobject=
.o Objects/stringobject.o Objects/structseq.o Objects/tupleobject.o Objects=
/typeobject.o Objects/weakrefobject.o Objects/unicodeobject.o Objects/unico=
dectype.o Python/_warnings.o Python/Python-ast.o Python/asdl.o Python/ast.o=
 Python/bltinmodule.o Python/ceval.o Python/compile.o Python/codecs.o Pytho=
n/errors.o Python/frozen.o Python/frozenmain.o Python/future.o Python/getar=
gs.o Python/getcompiler.o Python/getcopyright.o Python/getmtime.o Python/ge=
tplatform.o Python/getversion.o Python/graminit.o Python/import.o Python/im=
portdl.o Python/marshal.o Python/modsupport.o Python/mystrtoul.o Python/mys=
nprintf.o Python/peephole.o Python/pyarena.o Python/pyfpe.o Python/pymath.o=
 Python/pystate.o Python/pythonrun.o Python/structmember.o Python/symtable.=
o Python/sysmodule.o Python/traceback.o Python/getopt.o Python/pystrcmp.o P=
ython/pystrtod.o Python/formatter_unicode.o Python/formatter_string.o Pytho=
n/dynload_shlib.o   Python/thread.o Modules/config.o Modules/getpath.o Modu=
les/main.o Modules/gcmodule.o  Modules/threadmodule.o  Modules/signalmodule=
.o  Modules/posixmodule.o  Modules/errnomodule.o  Modules/pwdmodule.o  Modu=
les/_sre.o  Modules/_codecsmodule.o  Modules/zipimport.o  Modules/symtablem=
odule.o  Modules/xxsubtype.o   -lpthread -ldl  -lpthread -lutil  -lm ; \
		ln -f libpython2.6.so.1.0 libpython2.6.so; \
	else \
		ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -m=
fpmath=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/a=
tom-pc -shared -Wl,-O1  -Wl,--as-needed -o libpython2.6.so Modules/getbuild=
info.o Parser/acceler.o Parser/grammar1.o Parser/listnode.o Parser/node.o P=
arser/parser.o Parser/parsetok.o Parser/bitset.o Parser/metagrammar.o Parse=
r/firstsets.o Parser/grammar.o Parser/pgen.o Parser/myreadline.o Parser/tok=
enizer.o Objects/abstract.o Objects/boolobject.o Objects/bufferobject.o Obj=
ects/bytes_methods.o Objects/bytearrayobject.o Objects/cellobject.o Objects=
/classobject.o Objects/cobject.o Objects/codeobject.o Objects/complexobject=
.o Objects/descrobject.o Objects/enumobject.o Objects/exceptions.o Objects/=
genobject.o Objects/fileobject.o Objects/floatobject.o Objects/frameobject.=
o Objects/funcobject.o Objects/intobject.o Objects/iterobject.o Objects/lis=
tobject.o Objects/longobject.o Objects/dictobject.o Objects/methodobject.o =
Objects/moduleobject.o Objects/object.o Objects/obmalloc.o Objects/rangeobj=
ect.o Objects/setobject.o Objects/sliceobject.o Objects/stringobject.o Obje=
cts/structseq.o Objects/tupleobject.o Objects/typeobject.o Objects/weakrefo=
bject.o Objects/unicodeobject.o Objects/unicodectype.o Python/_warnings.o P=
ython/Python-ast.o Python/asdl.o Python/ast.o Python/bltinmodule.o Python/c=
eval.o Python/compile.o Python/codecs.o Python/errors.o Python/frozen.o Pyt=
hon/frozenmain.o Python/future.o Python/getargs.o Python/getcompiler.o Pyth=
on/getcopyright.o Python/getmtime.o Python/getplatform.o Python/getversion.=
o Python/graminit.o Python/import.o Python/importdl.o Python/marshal.o Pyth=
on/modsupport.o Python/mystrtoul.o Python/mysnprintf.o Python/peephole.o Py=
thon/pyarena.o Python/pyfpe.o Python/pymath.o Python/pystate.o Python/pytho=
nrun.o Python/structmember.o Python/symtable.o Python/sysmodule.o Python/tr=
aceback.o Python/getopt.o Python/pystrcmp.o Python/pystrtod.o Python/format=
ter_unicode.o Python/formatter_string.o Python/dynload_shlib.o   Python/thr=
ead.o Modules/config.o Modules/getpath.o Modules/main.o Modules/gcmodule.o =
 Modules/threadmodule.o  Modules/signalmodule.o  Modules/posixmodule.o  Mod=
ules/errnomodule.o  Modules/pwdmodule.o  Modules/_sre.o  Modules/_codecsmod=
ule.o  Modules/zipimport.o  Modules/symtablemodule.o  Modules/xxsubtype.o  =
 -lpthread -ldl  -lpthread -lutil  -lm ; \
	fi
oe_libinstall: cd /home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-l=
inux/python-2.6.6-nk1.2/Python-2.6.6
oe_libinstall: install -d /home/ahaupt/yocto-git/build-python/tmp/sysroots/=
atom-pc/usr/lib/
oe_libinstall: install -m 0755 libpython2.6.so /home/ahaupt/yocto-git/build=
-python/tmp/sysroots/atom-pc/usr/lib/
oe_libinstall: install -m 0755 libpython2.6.so.1.0 /home/ahaupt/yocto-git/b=
uild-python/tmp/sysroots/atom-pc/usr/lib/
oe_libinstall: ln -sf libpython2.6.so.1.0 /home/ahaupt/yocto-git/build-pyth=
on/tmp/sysroots/atom-pc/usr/lib/libpython2.6.so
oe_libinstall: cd /home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-l=
inux/python-2.6.6-nk1.2/Python-2.6.6
NOTE: make HOSTPGEN=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/i686=
-linux/usr/bin/pgen HOSTPYTHON=3D/home/ahaupt/yocto-git/build-python/tmp/sy=
sroots/i686-linux/usr/bin/python STAGING_LIBDIR=3D/home/ahaupt/yocto-git/bu=
ild-python/tmp/sysroots/atom-pc/usr/lib STAGING_INCDIR=3D/home/ahaupt/yocto=
-git/build-python/tmp/sysroots/atom-pc/usr/include BUILD_SYS=3Di686-linux H=
OST_SYS=3Di586-poky-linux OPT=3D -fexpensive-optimizations -fomit-frame-poi=
nter -frename-registers -O2 -ggdb -feliminate-unused-debug-types
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -c  -fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fexpensive-optimizations -fomit-f=
rame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -=
I. -IInclude -I./Include  -fPIC -DPy_BUILD_CORE -o Modules/python.o ./Modul=
es/python.c
rm -f libpython2.6.a
i586-poky-linux-ar cr libpython2.6.a Modules/getbuildinfo.o
i586-poky-linux-ar cr libpython2.6.a Parser/acceler.o Parser/grammar1.o Par=
ser/listnode.o Parser/node.o Parser/parser.o Parser/parsetok.o Parser/bitse=
t.o Parser/metagrammar.o Parser/firstsets.o Parser/grammar.o Parser/pgen.o =
Parser/myreadline.o Parser/tokenizer.o
i586-poky-linux-ar cr libpython2.6.a Objects/abstract.o Objects/boolobject.=
o Objects/bufferobject.o Objects/bytes_methods.o Objects/bytearrayobject.o =
Objects/cellobject.o Objects/classobject.o Objects/cobject.o Objects/codeob=
ject.o Objects/complexobject.o Objects/descrobject.o Objects/enumobject.o O=
bjects/exceptions.o Objects/genobject.o Objects/fileobject.o Objects/floato=
bject.o Objects/frameobject.o Objects/funcobject.o Objects/intobject.o Obje=
cts/iterobject.o Objects/listobject.o Objects/longobject.o Objects/dictobje=
ct.o Objects/methodobject.o Objects/moduleobject.o Objects/object.o Objects=
/obmalloc.o Objects/rangeobject.o Objects/setobject.o Objects/sliceobject.o=
 Objects/stringobject.o Objects/structseq.o Objects/tupleobject.o Objects/t=
ypeobject.o Objects/weakrefobject.o Objects/unicodeobject.o Objects/unicode=
ctype.o
i586-poky-linux-ar cr libpython2.6.a Python/_warnings.o Python/Python-ast.o=
 Python/asdl.o Python/ast.o Python/bltinmodule.o Python/ceval.o Python/comp=
ile.o Python/codecs.o Python/errors.o Python/frozen.o Python/frozenmain.o P=
ython/future.o Python/getargs.o Python/getcompiler.o Python/getcopyright.o =
Python/getmtime.o Python/getplatform.o Python/getversion.o Python/graminit.=
o Python/import.o Python/importdl.o Python/marshal.o Python/modsupport.o Py=
thon/mystrtoul.o Python/mysnprintf.o Python/peephole.o Python/pyarena.o Pyt=
hon/pyfpe.o Python/pymath.o Python/pystate.o Python/pythonrun.o Python/stru=
ctmember.o Python/symtable.o Python/sysmodule.o Python/traceback.o Python/g=
etopt.o Python/pystrcmp.o Python/pystrtod.o Python/formatter_unicode.o Pyth=
on/formatter_string.o Python/dynload_shlib.o   Python/thread.o
i586-poky-linux-ar cr libpython2.6.a Modules/config.o Modules/getpath.o Mod=
ules/main.o Modules/gcmodule.o=20
i586-poky-linux-ar cr libpython2.6.a Modules/threadmodule.o  Modules/signal=
module.o  Modules/posixmodule.o  Modules/errnomodule.o  Modules/pwdmodule.o=
  Modules/_sre.o  Modules/_codecsmodule.o  Modules/zipimport.o  Modules/sym=
tablemodule.o  Modules/xxsubtype.o
i586-poky-linux-ranlib libpython2.6.a
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc -Wl,-O1  -Wl,--as-needed -Xlinker -export-dynamic -o python \
			Modules/python.o \
			-L. -lpython2.6 -lpthread -ldl  -lpthread -lutil   -lm =20
Looking in readline for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/=
atom-pc/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libr=
eadline.so
Looking in ncursesw for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/=
atom-pc/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libn=
cursesw.so
Looking in crypt for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libc=
rypt.so
Looking in ssl for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-=
pc/usr/lib', '/usr/local/ssl/lib', '/usr/contrib/ssl/lib/']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libs=
sl.so
Looking in sqlite3 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/a=
tom-pc/usr/include/../lib64', '/home/ahaupt/yocto-git/build-python/tmp/sysr=
oots/atom-pc/usr/include/../lib', '/home/ahaupt/yocto-git/build-python/tmp/=
sysroots/atom-pc/usr/include/../../lib64', '/home/ahaupt/yocto-git/build-py=
thon/tmp/sysroots/atom-pc/usr/include/../../lib', '/home/ahaupt/yocto-git/b=
uild-python/tmp/sysroots/atom-pc/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/include/=
../lib/libsqlite3.so
Looking in gdbm for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom=
-pc/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libg=
dbm.so
Looking in gdbm_compat for ['/home/ahaupt/yocto-git/build-python/tmp/sysroo=
ts/atom-pc/usr/lib']
Looking in gdbm for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom=
-pc/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libg=
dbm.so
Looking in nsl for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-=
pc/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libn=
sl.so
Looking in panelw for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/at=
om-pc/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libp=
anelw.so
Looking in z for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc=
/usr/lib']
Found /home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc/usr/lib/libz=
.so
Looking in bz2 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-=
pc/usr/lib']
Looking in tk8.5 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tcl8.5 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/at=
om-pc/usr/lib']
Looking in tk85 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom=
-pc/usr/lib']
Looking in tcl85 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tk8.4 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tcl8.4 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/at=
om-pc/usr/lib']
Looking in tk84 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom=
-pc/usr/lib']
Looking in tcl84 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tk8.3 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tcl8.3 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/at=
om-pc/usr/lib']
Looking in tk83 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom=
-pc/usr/lib']
Looking in tcl83 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tk8.2 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tcl8.2 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/at=
om-pc/usr/lib']
Looking in tk82 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom=
-pc/usr/lib']
Looking in tcl82 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tk8.1 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tcl8.1 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/at=
om-pc/usr/lib']
Looking in tk81 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom=
-pc/usr/lib']
Looking in tcl81 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_struct.c: In function 'init_struct':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_struct.c:2096:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_struct.c:2170:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_weakref.c: In function 'init_weakref':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_weakref.c:99:9: warning: dereferencing type-pun=
ned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_weakref.c:102:9: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_weakref.c:105:9: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_weakref.c:108:9: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/arraymodule.c: In function 'array_richcompare':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/arraymodule.c:574:9: warning: dereferencing type=
-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/arraymodule.c:578:9: warning: dereferencing type=
-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/arraymodule.c: In function 'initarray':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/arraymodule.c:2243:5: warning: dereferencing typ=
e-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/arraymodule.c:2245:5: warning: dereferencing typ=
e-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/timemodule.c: In function 'inittime':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/timemodule.c:848:5: warning: dereferencing type-=
punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/datetimemodule.c: In function 'initdatetime':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/datetimemodule.c:4835:5: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/datetimemodule.c:4838:5: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/datetimemodule.c:4842:5: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/datetimemodule.c:4845:5: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/datetimemodule.c:4848:5: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/timemodule.c: In function 'inittime':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/timemodule.c:848:5: warning: dereferencing type-=
punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/itertoolsmodule.c: In function 'inititertools':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/itertoolsmodule.c:3601:5: warning: dereferencing=
 type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_randommodule.c: In function 'init_random':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_randommodule.c:578:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c: In function 'deque_richcom=
pare':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c:794:13: warning: dereferenc=
ing type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c:796:13: warning: dereferenc=
ing type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c:800:13: warning: dereferenc=
ing type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c:802:13: warning: dereferenc=
ing type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c:849:9: warning: dereferenci=
ng type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c:851:9: warning: dereferenci=
ng type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c: In function 'init_collecti=
ons':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c:1492:5: warning: dereferenc=
ing type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_collectionsmodule.c:1498:5: warning: dereferenc=
ing type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/operator.c: In function 'initoperator':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/operator.c:771:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/operator.c:776:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/operator.c:781:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_fileio.c: In function 'init_fileio':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_fileio.c:965:5: warning: dereferencing type-pun=
ned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c: In function 'bytesio_get_closed':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c:148:9: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c:150:9: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c: In function 'return_true':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c:157:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c: In function 'bytesio_isatty':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c:192:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c: In function 'init_bytesio':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_bytesio.c:761:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_testcapimodule.c: In function 'init_testcapi':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_testcapimodule.c:1120:5: warning: dereferencing=
 type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_testcapimodule.c:1122:5: warning: dereferencing=
 type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_testcapimodule.c:1123:5: warning: dereferencing=
 type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_hotshot.c: In function 'init_hotshot':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_hotshot.c:1612:5: warning: dereferencing type-p=
unned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_hotshot.c:1613:5: warning: dereferencing type-p=
unned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_hotshot.c:1620:9: warning: dereferencing type-p=
unned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_hotshot.c:1623:9: warning: dereferencing type-p=
unned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_lsprof.c: In function 'init_lsprof':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_lsprof.c:884:5: warning: dereferencing type-pun=
ned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_lsprof.c:885:5: warning: dereferencing type-pun=
ned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/unicodedata.c: In function 'initunicodedata':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/unicodedata.c:1194:5: warning: dereferencing typ=
e-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/unicodedata.c:1202:5: warning: dereferencing typ=
e-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/spwdmodule.c: In function 'initspwd':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/spwdmodule.c:180:5: warning: dereferencing type-=
punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/selectmodule.c: In function 'pyepoll_get_closed'=
:
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/selectmodule.c:814:9: warning: dereferencing typ=
e-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/selectmodule.c:816:9: warning: dereferencing typ=
e-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/selectmodule.c: In function 'initselect':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/selectmodule.c:1750:9: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/selectmodule.c:1777:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/selectmodule.c:1781:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/parsermodule.c: In function 'initparser':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/parsermodule.c:3352:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/parsermodule.c:3373:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/parsermodule.c:3375:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cStringIO.c: In function 'IO_isatty':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cStringIO.c:150:5: warning: dereferencing type-p=
unned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cStringIO.c: In function 'initcStringIO':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cStringIO.c:760:3: warning: dereferencing type-p=
unned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cStringIO.c:761:3: warning: dereferencing type-p=
unned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cPickle.c: In function 'initcPickle':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cPickle.c:5857:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cPickle.c:5858:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cPickle.c:5859:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cPickle.c: In function 'Unpickler_noload':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/cPickle.c:202:8: warning: assuming signed overfl=
ow does not occur when assuming that (X - c) > X is always false
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_csv.c: In function 'init_csv':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_csv.c:1602:5: warning: dereferencing type-punne=
d pointer will break strict-aliasing rules
In file included from /home/ahaupt/yocto-git/build-python/tmp/work/core2-po=
ky-linux/python-2.6.6-nk1.2/Python-2.6.6/Modules/socketmodule.c:354:0:
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/getaddrinfo.c: In function 'fake_getaddrinfo':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/getaddrinfo.c:423:32: warning: dereferencing typ=
e-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/socketmodule.c: In function 'init_socket':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/socketmodule.c:4394:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/socketmodule.c:4426:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/socketmodule.c:4430:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_ssl.c: In function 'init_ssl':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_ssl.c:1629:5: warning: dereferencing type-punne=
d pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_hashopenssl.c: In function 'init_hashlib':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_hashopenssl.c:499:5: warning: dereferencing typ=
e-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/connection.c: In function 'pysqlite_conn=
ection_init':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/connection.c:84:5: warning: dereferencin=
g type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/connection.c: In function 'pysqlite_conn=
ection_exit':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/connection.c:1401:5: warning: dereferenc=
ing type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/module.c: In function 'init_sqlite3':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/module.c:322:5: warning: dereferencing t=
ype-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/module.c:324:5: warning: dereferencing t=
ype-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/module.c:326:5: warning: dereferencing t=
ype-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/module.c:328:5: warning: dereferencing t=
ype-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/module.c:330:5: warning: dereferencing t=
ype-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/module.c:332:5: warning: dereferencing t=
ype-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/module.c:399:5: warning: dereferencing t=
ype-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/prepare_protocol.c: In function 'pysqlit=
e_prepare_protocol_setup_types':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_sqlite/prepare_protocol.c:81:5: warning: derefe=
rencing type-punned pointer will break strict-aliasing rules
i586-poky-linux-gcc: unrecognized option '-R/home/ahaupt/yocto-git/build-py=
thon/tmp/sysroots/atom-pc/usr/lib'
Looking in tk8.0 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
Looking in tcl8.0 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/at=
om-pc/usr/lib']
Looking in tk80 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom=
-pc/usr/lib']
Looking in tcl80 for ['/home/ahaupt/yocto-git/build-python/tmp/sysroots/ato=
m-pc/usr/lib']
*** WARNING: renaming "gdbm" since importing it failed: libgdbm.so.3: canno=
t open shared object file: No such file or directory
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/resource.c: In function 'initresource':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/resource.c:248:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCursesWindow_is_=
wintouched':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:298:1: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:298:1: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCursesWindow_Is_=
LineTouched':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1216:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1219:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCurses_can_chang=
e_color':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1678:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1678:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCurses_has_color=
s':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1679:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1679:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCurses_has_ic':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1680:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1680:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCurses_has_il':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1681:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1681:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCurses_isendwin'=
:
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1682:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1682:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCurses_has_key':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1859:17: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1862:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCurses_Is_Term_R=
esized':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:2094:17: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:2097:17: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'init_curses':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:2730:13: warning: dereferencing =
type-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c: In function 'PyCurses_getsyx':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1769:17: warning: 'x' may be use=
d uninitialized in this function
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_cursesmodule.c:1769:19: warning: 'y' may be use=
d uninitialized in this function
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_curses_panel.c: In function 'PyCursesPanel_pane=
l_hidden':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_curses_panel.c:168:1: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_curses_panel.c:168:1: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_curses_panel.c: In function 'init_curses_panel'=
:
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/_curses_panel.c:463:5: warning: dereferencing ty=
pe-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/zlibmodule.c: In function 'initzlib':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/zlibmodule.c:1016:5: warning: dereferencing type=
-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/zlibmodule.c:1017:5: warning: dereferencing type=
-punned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/pyexpat.c: In function 'initpyexpat':
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/pyexpat.c:1906:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.6.6-=
nk1.2/Python-2.6.6/Modules/pyexpat.c:1925:5: warning: dereferencing type-pu=
nned pointer will break strict-aliasing rules
/bin/sh: line 1: 22439 Illegal instruction     (core dumped) LD_LIBRARY_PAT=
H=3D/home/ahaupt/yocto-git/build-python/tmp/work/core2-poky-linux/python-2.=
6.6-nk1.2/Python-2.6.6:/home/ahaupt/yocto-git/build-python/tmp/sysroots/i68=
6-linux/usr/bin/../lib/pseudo/lib:/home/ahaupt/yocto-git/build-python/tmp/s=
ysroots/i686-linux/usr/bin/../lib/pseudo/lib64 CC=3D'ccache i586-poky-linux=
-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse --sysroot=
=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-pc' LDSHARED=3D'cc=
ache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpma=
th=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build-python/tmp/sysroots/atom-=
pc -shared' LDFLAGS=3D'-Wl,-O1  -Wl,--as-needed' OPT=3D'-fexpensive-optimiz=
ations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused=
-debug-types' /home/ahaupt/yocto-git/build-python/tmp/sysroots/i686-linux/u=
sr/bin/python -E ./setup.py -q build
make: *** [sharedmods] Error 132
FATAL: oe_runmake failed
ERROR: Function 'do_compile' failed (see /home/ahaupt/yocto-git/build-pytho=
n/tmp/work/core2-poky-linux/python-2.6.6-nk1.2/temp/log.do_compile.21265 fo=
r further information)

--FCuugMFkClbJLl1L--
