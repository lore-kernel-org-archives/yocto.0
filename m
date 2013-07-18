Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAF48E01440
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 07:44:34 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0E93FF81209; Thu, 18 Jul 2013 08:44:33 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E7329F811F6;
	Thu, 18 Jul 2013 08:44:32 -0600 (MDT)
Message-ID: <51E7FF51.60207@mlbassoc.com>
Date: Thu, 18 Jul 2013 08:44:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Board SDK runs differently than bitbake build
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
X-List-Received-Date: Thu, 18 Jul 2013 14:44:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to get a fairly large project to build/run using
OpenEmbedded and running into a number of problems.  The project
is the Automated Maryland backup system, amanda, which is quite
extensive and uses a lot of C+perl code.

The biggest problem I have is that the result when compiled via
bitbake doesn't run properly on my board.  To try and narrow down
the problem, I wanted to build the package directly on my hardware,
removing any cross-build issues that might exist.  I imported the
same source tree as used in my bitbake build, including all patches,
etc, to my board and run 'configure' using the same options minus the
cross-build options (no build/host/target settings).

However, when I run 'make' it fails with an error like this:

libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I../config -I../common-src -I../common-src -I../amandad-src -I../amar-src -
I../xfer-src -I../perl/amglue -I../gnulib -I../ndmp-src -I/usr/lib/perl/5.14.2/CORE -I../device-src -I../server-src -I.
./client-src -I../recover-src -fno-strict-aliasing -D_GNU_SOURCE -pthread -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/i
nclude -DSWIG -g -O2 -fno-strict-aliasing -c Amanda/Xfer.c  -fPIC -DPIC -o .libs/Xfer.o
/bin/sh ../libtool --tag=CC   --mode=link gcc -DSWIG  -g -O2 -fno-strict-aliasing  -avoid-version -shared   -o libXfer.
la -rpath /usr/lib/perl/5.14.2/auto/Amanda/Xfer Xfer.lo  amglue/libamglue.la ../xfer-src/libamxfer.la -lcrypto -lm -Wl,
--export-dynamic -pthread -lgmodule-2.0 -lgobject-2.0 -lgthread-2.0 -lrt -lglib-2.0   -lnsl -lresolv
libtool: link: gcc -shared  -fPIC -DPIC .libs/libXfer.la.lnkscript  -Wl,-rpath -Wl,/home/root/amanda-3.3.3/perl/amglue/
.libs -Wl,-rpath -Wl,/home/root/amanda-3.3.3/xfer-src/.libs -Wl,-rpath -Wl,/home/root/amanda-3.3.3/common-src/.libs -L/
home/root/amanda-3.3.3/xfer-src/.libs -L/home/root/amanda-3.3.3/common-src/.libs amglue/.libs/libamglue.so -L/usr/lib /
home/root/amanda-3.3.3/xfer-src/.libs/libamxfer.so ../xfer-src/.libs/libamxfer.so /home/root/amanda-3.3.3/common-src/.l
ibs/libamanda.so -lcrypto -lm /usr/lib/libgmodule-2.0.so -ldl /usr/lib/libgobject-2.0.so /usr/lib/libffi.so /usr/lib/li
bgthread-2.0.so /usr/lib/libglib-2.0.so -lpthread -lrt -lnsl -lresolv  -O2 -Wl,--export-dynamic -pthread   -pthread -Wl
,-soname -Wl,libXfer.so -o .libs/libXfer.so
libtool: link: rm -f .libs/libXfer.la.lnkscript
/bin/sed: can't read =/usr/lib/libgthread-2.0.la: No such file or directory
libtool: link: `=/usr/lib/libgthread-2.0.la' is not a valid libtool archive

The interesting thing is that library/file *is* present.  If I
simply rerun 'make', this step runs properly and it carries on,
only to fail again with a similar error in some other part of
the build.  Eventually, the build completes after about 20 make/retry
cycles.  When I run 'make install', a new set of errors occurs:

make[5]: Leaving directory `/home/root/amanda-3.3.3/common-src'
  /bin/mkdir -p '/usr/lib'
  /bin/sh ../libtool   --mode=install /usr/bin/install -c   libamanda.la '/usr/lib'
libtool: install: /usr/bin/install -c .libs/libamanda-3.3.3.so /usr/lib/libamanda-3.3.3.so
libtool: install: (cd /usr/lib && { ln -s -f libamanda-3.3.3.so libamanda.so || { rm -f libamanda.so && ln -s libamanda
-3.3.3.so libamanda.so; }; })
libtool: install: /usr/bin/install -c .libs/libamanda.lai /usr/lib/libamanda.la
/usr/bin/install: cannot stat `.libs/libamanda.lai': No such file or directory

Neither of these [class of] errors happen when I build using 'bitbake'.

Both environments are in total sync - I've built the package using
the same build tree where I built my system image + SDK - so I don't
understand why the difference in behaviour.

An even more interesting thing is that I've build amanda on my BeagleBoneBlack
running Angstrom (also OE-core based and only a tiny bit older than the current
Poky/Yocto tree I use).  I still had the build issues as above, but the resulting
code actually runs.  I used the exact same 'configure' setup, same sources, etc.
The differences may be with the tools:
        Poky/Yocto    Angstrom
perl     5.14.3        5.14.2
gcc      4.7.2         4.7.3

I've also tried this on vastly different architectures - ARM & PowerPC - with
the same failures.

Any ideas/help/comments?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

