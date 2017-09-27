Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A6C1E00CD4; Wed, 27 Sep 2017 16:17:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.172 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f172.google.com (mail-wr0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64515E00CA2
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 16:17:15 -0700 (PDT)
Received: by mail-wr0-f172.google.com with SMTP id 108so19069468wra.5
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 16:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=pHelWaw4rqzTS/LTZ3M/p3ZNZQYoi0/vQSmu0W4cm+Y=;
	b=JDf2W0zD0eUc4K6H6U2zK6l+JhnWY8KrIpNiPzjZJCeQUXRqaXn3wJpC5J3meBj99Y
	bkvFZrgMLoNCaJkaOxWTvgOodiOtek5cJlYOJsVz4RNDn8sSU+psuaTj4Ydr+47bOhXm
	7dhYx0kbOSiRdafUZXEgUkaqJ1b5IAkT9Q4Xi8BrENY7QgMeiPpG5KwCzWSusim2itJD
	EziNOSctRYtdzF3GWcz7rb+pIvPzW/jL2BAos2mpKsVOP48KSQRjK0/rNGCk8cx/njby
	OBJ5YHRhjaO1z2T+WZ1xWIwi5hOF/P00Ct3nzBc/mauG6lABV5QY0slJ8OQTi4xIDJ23
	Kj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=pHelWaw4rqzTS/LTZ3M/p3ZNZQYoi0/vQSmu0W4cm+Y=;
	b=EWmpVJmoFw3OFB43VNFTIxJg7MPUjCI4sJWEmHOKEXITKY0blxFU6VZY9+4TaRR2uN
	Gylr2AhtN4spUQ62RJgob3DVAQdxtbVMbObVzQaCvyXYfmR+RyR7AhJ9o5uokGsW7Wt6
	E6laxQLQMSiq1Y9F762jUL/ISDxOm/6GSu+vz5FjVOZk7bZS2QMor4TIixATcJA7fyTU
	Bx7D7+bhZwGUdFkSIs5z2oTzYyjZA2Gx9+RshhCJr1EpX/ZmHl8jQuTWeWdlkDtk44Dz
	U3rzpiC4QqvhGsh+c3t8RYZ1b/gfbtvlqUo/l7KkXKTB0KPZvVc0Nxjy4xlnClVHqRs+
	s3xQ==
X-Gm-Message-State: AHPjjUgZMwN70jgxdfNPp4kZMTMniu3QhpZwx/kdopfMFFqrQeri2HvL
	o5nKflxx4oCtwRX9Kg1+XBSq4TGLz+4ySXBqgdA5CQ==
X-Google-Smtp-Source: AOwi7QDjbEh8giFO9nEncEt2oTmvlgBgk7s8ZRlhT4xvDNB+6warorx0VDQHiPvEFuuf8YNRJeKGxumaeS8yNxbSJhI=
X-Received: by 10.223.186.6 with SMTP id o6mr2486761wrg.263.1506554234415;
	Wed, 27 Sep 2017 16:17:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.169.248 with HTTP; Wed, 27 Sep 2017 16:17:13 -0700 (PDT)
In-Reply-To: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
References: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 27 Sep 2017 16:17:13 -0700
Message-ID: <CAJ86T=V6sbzpz4_3dYrjhkxkavWJbs1vAU6x95GjRTdVT5cX+w@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: advice on recipe for shared lib mDNSResponder
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
X-List-Received-Date: Wed, 27 Sep 2017 23:17:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2017 at 3:58 PM, Steve Pavao <stevep@korgrd.com> wrote:
> Hello,
>
> I am fairly new to Yocto, yet have been able to successfully add a custom=
 kernel object to my Yocto poky build, no problem.  However, I am having so=
me difficulty adding a shared library, namely mDNSResponder.
>
> Right now, my recipe is very simple and does not use autotools.  There ar=
e just a few tweaks for cross-building which I=E2=80=99ve added to the supp=
lied mDNSResponder Makefile for mDNSPosix, in order to target 64-bit ARM ha=
rdware.  Here is the build error I encounter.  Obviously the environment is=
 not being set 100% correctly, because it can not find stdio.h.  Is there a=
n easy way to avoid this problem?

You need to ensure that the Makefiles etc for the package you are
building respect the ${CC} environment variable defined by OE. It
includes not only the name of the cross compiler but also important
command line options, e.g. tuning for the correct target CPU and the
correct --sysroot option. From your build log the --sysroot option is
missing, therefore the compiler can not find standard include files
etc.

Unfortunately packages with build with custom Makefiles are so diverse
that there's no single approach to making them work. Sometimes you can
force CC=3D${CC} etc via the make command line to over-ride incorrect
defaults in the Makefile, sometime the Makefile needs to be patched,
etc. Even if the build succeeds it's wise to carefully check the build
log to ensure that all calls to the compiler, linker, etc contain the
flags defined by OE.

Note however that according to the layer index there does already seem
to be at least one recipe for mDNSResponder. It includes a Makefile
patch which looks like it will address your issue (and some others):

  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-middleware/tree/=
recipes-connectivity/mdns/mdns_544.bb?h=3Dmaster

>
> - Steve Pavao
> Korg R&D
>
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4
> | ERROR: oe_runmake failed
> | make os=3DEmbeddedLinuxAarch64 Daemon libdns_sd -C mDNSPosix
> | make[1]: warning: jobserver unavailable: using -j1.  Add '+' to parent =
make rule.
> | make[1]: Entering directory '/data/development/lfs/yocto/poky/build/tmp=
/work/aarch64-poky-linux/mDNSResponder/333.10-r0/mDNSPosix'
> | aarch64-poky-linux-gcc -I../mDNSCore -I../mDNSShared -Iobjects/prod/Emb=
eddedLinuxAarch64 -fwrapv -W -Wall -DPID_FILE=3D\"/var/run/mdnsd.pid\" -DMD=
NS_UDS_SERVERPATH=3D\"/var/run/mdnsd\" -DNOT_HAVE_SA_LEN -DUSES_NETLINK -DH=
AVE_LINUX -DTARGET_OS_LINUX -fno-strict-aliasing -Os -DMDNS_DEBUGMSGS=3D0  =
 -c -o objects/prod/EmbeddedLinuxAarch64/PosixDaemon.c.o PosixDaemon.c
> | PosixDaemon.c:31:19: fatal error: stdio.h: No such file or directory
> |  #include <stdio.h>
> |                    ^
> | compilation terminated.
> | Makefile:553: recipe for target 'objects/prod/EmbeddedLinuxAarch64/Posi=
xDaemon.c.o' failed
> | make[1]: *** [objects/prod/EmbeddedLinuxAarch64/PosixDaemon.c.o] Error =
1
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

