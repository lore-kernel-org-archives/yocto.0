Return-Path: <koenig@inmach.de>
Received: from moutng.kundenserver.de (moutng.kundenserver.de [212.227.17.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C84FE00747
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 02:53:21 -0700 (PDT)
Received: from farbauti.inmach.dnsalias.com (pd956e4d9.dip0.t-ipconnect.de
	[217.86.228.217])
	by mrelayeu.kundenserver.de (node=mrbap2) with ESMTP (Nemesis)
	id 0Lsf1t-1SBWVl1QV7-011uUz; Fri, 13 Apr 2012 11:53:20 +0200
To: yocto@yoctoproject.org
Date: Fri, 13 Apr 2012 11:53:16 +0200
MIME-Version: 1.0
From: =?iso-8859-15?Q?Johannes_K=F6nig?= <koenig@inmach.de>
Message-ID: <op.wco6222ky8ugr7@farbauti.inmach.dnsalias.com>
User-Agent: Opera Mail/11.62 (Win32)
X-Provags-ID: V02:K0:5BepTD4jEdBefABlSuH+PjEI9uNkpyGbKj10dPCFJSi
	yGo7fCkQroFMp2OLJkDBD9cflPdL+07ik9pyLc/JhnKWYRjbyi
	rX4AEgFWLgDKGmXrpFA7k6kV99CDXpobHMMXEhqUms8r5u+5XA
	rMR6TPtMLjt821/M0wPnXxs5ETO756sNmAGk3H2PN2iRpofuti
	FmuUpC/LZztWlid88FgJ03q8074PmYI+jbNYyXi4k3MSRacgMB
	2vQmL0OzWA72dnJ4nzEOlroUnzPKlNkUnoUwipudN2ejOQlo1s
	cbWfKUM+5zmF8mweFDgJSO02DfVV0KN5TLAdgPDmeXBODf2N8N
	9f0psF2nENU+Iehc0LNEUCkUfB0wSpBnMzGjtaGZdsqYHRbUzP
	S8mNsfVdUyIkJsEXD99YfSU2G+0zw4pXYE=
Subject: bitbake gets confused with ~/user-config.jam
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
X-List-Received-Date: Fri, 13 Apr 2012 09:53:21 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Hi,

It seems that bitbake (or more precisely the boost_1.44.0.bb recipe) get=
s
confused with an user-config.jam file in the users home directory.

When trying to build core-image-sato (or zypper) the build aborts due to=

an error in the zypper package. I use poky-edison-6.0.1.tar.gz.

Relevant part of the do_compile.log:

> build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-=
poky-linux/4.6.3/ld:  =

> skipping incompatible  =

> build/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.so when  =

> searching for -lboost_signals-mt
> build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-=
poky-linux/4.6.3/ld:  =

> skipping incompatible  =

> build/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.a when searchi=
ng  =

> for -lboost_signals-mt
> build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-=
poky-linux/4.6.3/ld:  =

> skipping incompatible  =

> build/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.so when  =

> searching for -lboost_signals-mt
> build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-=
poky-linux/4.6.3/ld:  =

> skipping incompatible  =

> build/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.a when searchi=
ng  =

> for -lboost_signals-mt
> build/tmp/sysroots/x86_64-linux/usr/libexec/core2-poky-linux/gcc/i586-=
poky-linux/4.6.3/ld:  =

> cannot find -lboost_signals-mt
> collect2: ld returned 1 exit status
> make[2]: *** [zypp/libzypp.so.810.1.0] Error 1
> make[2]: Leaving directory  =

> `build/tmp/work/crownbay-poky-linux/libzypp-0.0-git1+15b6c52260bbc52b3=
d8e585e271b67e10cc7c433-r16/git'
> make[1]: *** [zypp/CMakeFiles/zypp.dir/all] Error 2
> make[1]: Leaving directory  =

> `build/tmp/work/crownbay-poky-linux/libzypp-0.0-git1+15b6c52260bbc52b3=
d8e585e271b67e10cc7c433-r16/git'
> make: *** [all] Error 2
> ERROR: oe_runmake failed
> ERROR: Function 'do_compile' failed (see  =

> build/tmp/work/crownbay-poky-linux/libzypp-0.0-git1+15b6c52260bbc52b3d=
8e585e271b67e10cc7c433-r16/temp/log.do_compile.31334  =

> for further information)

After removing the ~/user-config.jam file and recompiling zypper with

     bitbake -c cleanall libzypp boost zypper && bitbake zypper

no more errors are reported.

Content of the ~/user-config.jam file is:

> using gcc ;

(Usually I have more options in my user-config.jam, but I can strip it
down to the single line above to reproduce the error.)


Can this problem be fixed without removeing the user-config.jam?

-- =

Johannes K=F6nig

