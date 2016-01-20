Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA5F7E00BA0; Wed, 20 Jan 2016 00:41:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 523 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Jan 2016 00:41:01 PST
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C12DE0073D
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 00:41:01 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id E0C4068A01C; Wed, 20 Jan 2016 08:32:16 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 28A9968A019;
	Wed, 20 Jan 2016 08:32:16 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id CE3AF6740E11;
	Wed, 20 Jan 2016 09:32:15 +0100 (CET)
To: yocto@yoctoproject.org
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <569F460F.2050500@mlbassoc.com>
Date: Wed, 20 Jan 2016 09:32:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Building with ltdl
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
X-List-Received-Date: Wed, 20 Jan 2016 08:41:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to build a project (graphviz) which wants to use ltdl
which is part of libtool.  However when I try to build, I get
these errors (during configure):

| NOTE: Executing ACLOCAL="aclocal 
--system-acdir=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/aclocal-copy/" 
autoreconf --verbose --install --force --exclude=autopoint -I 
/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/ -I 
/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal 
--system-acdir=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/aclocal-copy/ 
-I /local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/ -I 
/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/ -I 
/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/ -I 
/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/ --force 
-I m4
| autoreconf: configure.ac: tracing
| autoreconf: configure.ac: adding subdirectory libltdl to autoreconf
| autoreconf: Entering directory `libltdl'
| autoreconf: running: libtoolize --copy --force --ltdl
| libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, 'config'.
| libtoolize: copying file 'config/compile'
| libtoolize: copying file 'config/config.guess'
| libtoolize: copying file 'config/config.sub'
| libtoolize: copying file 'config/depcomp'
| libtoolize: copying file 'config/install-sh'
| libtoolize: copying file 'config/missing'
| libtoolize: copying file 'config/ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: You should add the contents of 'm4/libtool.m4' to 'aclocal.m4'.
| libtoolize: copying file 'm4/ltargz.m4'
| libtoolize: You should add the contents of 'm4/ltargz.m4' to 'aclocal.m4'.
| libtoolize: copying file 'm4/ltdl.m4'
| libtoolize: You should add the contents of 'm4/ltdl.m4' to 'aclocal.m4'.
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: You should add the contents of 'm4/ltoptions.m4' to 'aclocal.m4'.
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: You should add the contents of 'm4/ltsugar.m4' to 'aclocal.m4'.
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| libtoolize: You should add the contents of 'm4/lt~obsolete.m4' to 'aclocal.m4'.
| libtoolize: putting libltdl files in LT_CONFIG_LTDL_DIR, '.'.
| libtoolize: copying file './COPYING.LIB'
| libtoolize: creating file './Makefile.am'
| libtoolize: copying file './README'
| libtoolize: creating file './configure.ac'
| libtoolize: creating file './aclocal.m4'
| libtoolize: creating file './Makefile.in'
| libtoolize: copying file './config-h.in'
| libtoolize: creating file './configure'
| libtoolize: copying file './libltdl/lt__alloc.h'
| libtoolize: copying file './libltdl/lt__argz_.h'
| libtoolize: copying file './libltdl/lt__dirent.h'
| libtoolize: copying file './libltdl/lt__glibc.h'
| libtoolize: copying file './libltdl/lt__private.h'
| libtoolize: copying file './libltdl/lt__strl.h'
| libtoolize: copying file './libltdl/lt_dlloader.h'
| libtoolize: copying file './libltdl/lt_error.h'
| libtoolize: copying file './libltdl/lt_system.h'
| libtoolize: copying file './libltdl/slist.h'
| libtoolize: copying file './loaders/dld_link.c'
| libtoolize: copying file './loaders/dlopen.c'
| libtoolize: copying file './loaders/dyld.c'
| libtoolize: copying file './loaders/load_add_on.c'
| libtoolize: copying file './loaders/loadlibrary.c'
| libtoolize: copying file './loaders/preopen.c'
| libtoolize: copying file './loaders/shl_load.c'
| libtoolize: copying file './lt__alloc.c'
| libtoolize: copying file './lt__argz.c'
| libtoolize: copying file './lt__dirent.c'
| libtoolize: copying file './lt__strl.c'
| libtoolize: copying file './lt_dlloader.c'
| libtoolize: copying file './lt_error.c'
| libtoolize: copying file './ltdl.c'
| libtoolize: copying file './ltdl.h'
| libtoolize: copying file './slist.c'
| libtoolize: Remember to add 'LTDL_INIT' to configure.ac.
| autoreconf: running: /local/p0382_2016-01-13/tmp/sysroots/x86_64-linux/usr/bin/autoconf 
--include=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/ 
--include=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/ --force
| autoreconf: running: /local/p0382_2016-01-13/tmp/sysroots/x86_64-linux/usr/bin/autoheader 
--include=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/ 
--include=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/ --force
| autoreconf: running: automake --add-missing --copy --force-missing
| configure.ac:76: error: required file './argz.c' not found
| autoreconf: automake failed with exit status: 1

The original sources has a libltdl directory with argz.c but this
is being overwritten during the autoreconf process.

Any suggestions on how I get this to work?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

