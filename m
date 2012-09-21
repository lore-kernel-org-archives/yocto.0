Return-Path: <daniel_norris@selinc.com>
Received: from duster.selinc.com (duster.selinc.com [74.117.214.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 034E9E0027E
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 10:10:33 -0700 (PDT)
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by duster.selinc.com (8.14.5/8.14.5) with ESMTP id q8LH8OjB015922
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 10:08:24 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 8C5911CD:67B0A092-88257A80:005CAF7D;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3 September 15, 2011
Message-ID: <OF8C5911CD.67B0A092-ON88257A80.005CAF7D-88257A80.005E5805@selinc.com>
From: daniel_norris@selinc.com
Date: Fri, 21 Sep 2012 10:10:29 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 8.5.3FP2|July 02,
	2012) at 09/21/2012 10:10:29 AM,
	Serialize complete at 09/21/2012 10:10:29 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.7.7855, 1.0.431,
	0.0.0000
	definitions=2012-09-21_08:2012-09-21, 2012-09-21,
	1970-01-01 signatures=0
Subject: Yocto ADT Build Errors
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
X-List-Received-Date: Fri, 21 Sep 2012 17:10:34 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 005E580188257A80_="

--=_alternative 005E580188257A80_=
Content-Type: text/plain; charset="US-ASCII"

Hi,

I've been following the ADT User's Guide and I'm having trouble getting 
Eclipse to build the Hello World ANSI C Autotools project. I am using a 
build-system derived toolchain targeting PowerPC. 

I am able to invoke QEMU using NFS, but configuring the project gives me 
this output on the console:

Invoking autogen.sh in build directory: /home/daninorr/workspace/Hello

Command-line environment variables:
         CFLAGS=" -g -O0  --sysroot=/data/add_ntp/sdk" CXXFLAGS=" -g -O0 
--sysroot=/data/add_ntp/sdk" LDFLAGS=" --sysroot=/data/add_ntp/sdk" 
CPPFLAGS=" --sysroot=/data/add_ntp/sdk"

sh /home/daninorr/workspace/Hello/autogen.sh 
--with-libtool-sysroot=/data/add_ntp/sdk --target=powerpc-poky-linux 
--host=powerpc-poky-linux --build=x86_64-linux 
--with-libtool-sysroot=/data/add_ntp/sdk 
configure.ac:21: installing './compile'
configure.ac:20: installing './config.guess'
configure.ac:20: installing './config.sub'
configure.ac:16: installing './install-sh'
configure.ac:16: installing './missing'
src/Makefile.am: installing './depcomp'
configure: loading site script 
/home/daninorr/Projects/poky/meta/site/endian-big
configure: loading site script 
/home/daninorr/Projects/poky/meta/site/powerpc-common
configure: loading site script 
/home/daninorr/Projects/poky/meta/site/common-linux
configure: loading site script 
/home/daninorr/Projects/poky/meta/site/common-glibc
configure: loading site script 
/home/daninorr/Projects/poky/meta/site/powerpc32-linux
configure: loading site script 
/home/daninorr/Projects/poky/meta/site/powerpc-linux
configure: loading site script 
/home/daninorr/Projects/poky/meta/site/common
configure: loading site script 
/data/add_ntp/tmp/sysroots/qemuppc/usr/share/powerpc-poky-linux_config_site.d/ncurses_config
configure: loading site script 
/data/add_ntp/tmp/sysroots/qemuppc/usr/share/powerpc-poky-linux_config_site.d/eglibc_config
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for powerpc-poky-linux-strip... powerpc-poky-linux-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... powerpc-poky-linux-gnu
checking how to print strings... printf
checking for style of include used by make... GNU
checking for powerpc-poky-linux-gcc... powerpc-poky-linux-gcc  -m32 
-mhard-float  -mcpu=603e --sysroot=/data/add_ntp/tmp/sysroots/qemuppc
checking whether the C compiler works... no
configure: error: in `/home/daninorr/workspace/Hello':
configure: error: in `/home/daninorr/workspace/Hello':
configure: error: C compiler cannot create executables
configure: error: C compiler cannot create executables
See `config.log' for more details

Configuration failed with error

The /data/add_ntp/sdk folder is the extracted sysroot .

However, I can build the project from the terminal if I source the 
generated environment-setup-ppc603e-poky-linux file, cd into the workspace 
and run sh autogen.sh $CONFIGURATION_FLAGS; make.

config.log has the following errors:
root=/data/add_ntp/tmp/sysroots/qemuppc -V >&5
powerpc-poky-linux-gcc: error: unrecognized command line option '-V'
powerpc-poky-linux-gcc: fatal error: no input files
configure:3166: powerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=603e 
--sys     root=/data/add_ntp/tmp/sysroots/qemuppc -qversion >&5
powerpc-poky-linux-gcc: error: unrecognized command line option 
'-qversion'
powerpc-poky-linux-gcc: fatal error: no input files
compilation terminated.

Some information about my system:
OS: Ubuntu 12.04 64-bit
Eclipse: 3.7.2
Yocto ADT Plugin: 1.2.0.201206291757
Autotools Plugin:  3.0.1.201202152032

I followed the ADT User's Guide instructions almost verbatim, so I'm not 
sure if I did something wrong or not.

Thanks!
-------------------------------------------------------
Daniel Norris

--=_alternative 005E580188257A80_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hi,</font>
<br>
<br><font size=2 face="sans-serif">I've been following the ADT User's Guide
and I'm having trouble getting Eclipse to build the Hello World ANSI C
Autotools project. I am using a build-system derived toolchain targeting
PowerPC. &nbsp;</font>
<br>
<br><font size=2 face="sans-serif">I am able to invoke QEMU using NFS,
but configuring the project gives me this output on the console:</font>
<br>
<br><font size=2 face="sans-serif">Invoking autogen.sh in build directory:
/home/daninorr/workspace/Hello</font>
<br>
<br><font size=2 face="sans-serif">Command-line environment variables:</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CFLAGS=&quot;
-g -O0 &nbsp;--sysroot=/data/add_ntp/sdk&quot; CXXFLAGS=&quot; -g -O0 &nbsp;--sysroot=/data/add_ntp/sdk&quot;
LDFLAGS=&quot; --sysroot=/data/add_ntp/sdk&quot; CPPFLAGS=&quot; --sysroot=/data/add_ntp/sdk&quot;</font>
<br>
<br><font size=2 face="sans-serif">sh /home/daninorr/workspace/Hello/autogen.sh
--with-libtool-sysroot=/data/add_ntp/sdk --target=powerpc-poky-linux --host=powerpc-poky-linux
--build=x86_64-linux --with-libtool-sysroot=/data/add_ntp/sdk </font>
<br><font size=2 face="sans-serif">configure.ac:21: installing './compile'</font>
<br><font size=2 face="sans-serif">configure.ac:20: installing './config.guess'</font>
<br><font size=2 face="sans-serif">configure.ac:20: installing './config.sub'</font>
<br><font size=2 face="sans-serif">configure.ac:16: installing './install-sh'</font>
<br><font size=2 face="sans-serif">configure.ac:16: installing './missing'</font>
<br><font size=2 face="sans-serif">src/Makefile.am: installing './depcomp'</font>
<br><font size=2 face="sans-serif">configure: loading site script /home/daninorr/Projects/poky/meta/site/endian-big</font>
<br><font size=2 face="sans-serif">configure: loading site script /home/daninorr/Projects/poky/meta/site/powerpc-common</font>
<br><font size=2 face="sans-serif">configure: loading site script /home/daninorr/Projects/poky/meta/site/common-linux</font>
<br><font size=2 face="sans-serif">configure: loading site script /home/daninorr/Projects/poky/meta/site/common-glibc</font>
<br><font size=2 face="sans-serif">configure: loading site script /home/daninorr/Projects/poky/meta/site/powerpc32-linux</font>
<br><font size=2 face="sans-serif">configure: loading site script /home/daninorr/Projects/poky/meta/site/powerpc-linux</font>
<br><font size=2 face="sans-serif">configure: loading site script /home/daninorr/Projects/poky/meta/site/common</font>
<br><font size=2 face="sans-serif">configure: loading site script /data/add_ntp/tmp/sysroots/qemuppc/usr/share/powerpc-poky-linux_config_site.d/ncurses_config</font>
<br><font size=2 face="sans-serif">configure: loading site script /data/add_ntp/tmp/sysroots/qemuppc/usr/share/powerpc-poky-linux_config_site.d/eglibc_config</font>
<br><font size=2 face="sans-serif">checking for a BSD-compatible install...
/usr/bin/install -c</font>
<br><font size=2 face="sans-serif">checking whether build environment is
sane... yes</font>
<br><font size=2 face="sans-serif">checking for powerpc-poky-linux-strip...
powerpc-poky-linux-strip</font>
<br><font size=2 face="sans-serif">checking for a thread-safe mkdir -p...
/bin/mkdir -p</font>
<br><font size=2 face="sans-serif">checking for gawk... gawk</font>
<br><font size=2 face="sans-serif">checking whether make sets $(MAKE)...
yes</font>
<br><font size=2 face="sans-serif">checking build system type... x86_64-pc-linux-gnu</font>
<br><font size=2 face="sans-serif">checking host system type... powerpc-poky-linux-gnu</font>
<br><font size=2 face="sans-serif">checking how to print strings... printf</font>
<br><font size=2 face="sans-serif">checking for style of include used by
make... GNU</font>
<br><font size=2 face="sans-serif">checking for powerpc-poky-linux-gcc...
powerpc-poky-linux-gcc &nbsp;-m32 -mhard-float &nbsp;-mcpu=603e --sysroot=/data/add_ntp/tmp/sysroots/qemuppc</font>
<br><font size=2 face="sans-serif">checking whether the C compiler works...
no</font>
<br><font size=2 face="sans-serif">configure: error: in `/home/daninorr/workspace/Hello':</font>
<br><font size=2 face="sans-serif">configure: error: in `/home/daninorr/workspace/Hello':</font>
<br><font size=2 face="sans-serif">configure: error: C compiler cannot
create executables</font>
<br><font size=2 face="sans-serif">configure: error: C compiler cannot
create executables</font>
<br><font size=2 face="sans-serif">See `config.log' for more details</font>
<br>
<br><font size=2 face="sans-serif">Configuration failed with error</font>
<br>
<br><font size=2 face="sans-serif">The /data/add_ntp/sdk folder is the
extracted sysroot .</font>
<br>
<br><font size=2 face="sans-serif">However, I can build the project from
the terminal if I source the generated environment-setup-ppc603e-poky-linux
file, cd into the workspace and run sh autogen.sh $CONFIGURATION_FLAGS;
make.</font>
<br>
<br><font size=2 face="sans-serif">config.log has the following errors:</font>
<br><font size=2 face="sans-serif">root=/data/add_ntp/tmp/sysroots/qemuppc
-V &gt;&amp;5</font>
<br><font size=2 face="sans-serif">powerpc-poky-linux-gcc: error: unrecognized
command line option '-V'</font>
<br><font size=2 face="sans-serif">powerpc-poky-linux-gcc: fatal error:
no input files</font>
<br><font size=2 face="sans-serif">configure:3166: powerpc-poky-linux-gcc
&nbsp;-m32 -mhard-float &nbsp;-mcpu=603e --sys &nbsp; &nbsp; root=/data/add_ntp/tmp/sysroots/qemuppc
-qversion &gt;&amp;5</font>
<br><font size=2 face="sans-serif">powerpc-poky-linux-gcc: error: unrecognized
command line option '-qversion'</font>
<br><font size=2 face="sans-serif">powerpc-poky-linux-gcc: fatal error:
no input files</font>
<br><font size=2 face="sans-serif">compilation terminated.</font>
<br>
<br><font size=2 face="sans-serif">Some information about my system:</font>
<br><font size=2 face="sans-serif">OS: Ubuntu 12.04 64-bit</font>
<br><font size=2 face="sans-serif">Eclipse: 3.7.2</font>
<br><font size=2 face="sans-serif">Yocto ADT Plugin: 1.2.0.201206291757</font>
<br><font size=2 face="sans-serif">Autotools Plugin: &nbsp;3.0.1.201202152032</font>
<br>
<br><font size=2 face="sans-serif">I followed the ADT User's Guide instructions
almost verbatim, so I'm not sure if I did something wrong or not.</font>
<br>
<br><font size=2 face="sans-serif">Thanks!</font>
<br><font size=2 face="sans-serif">-------------------------------------------------------</font>
<br><font size=2 face="sans-serif">Daniel Norris</font>
<br>

--=_alternative 005E580188257A80_=--
