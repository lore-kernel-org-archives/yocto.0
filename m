Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1036AE00AE4; Wed, 21 Mar 2018 08:21:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C56F6E0070F
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:21:38 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id j68-v6so8417167lfg.13
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=oMGh2pb73NVimTgY7hEw/pNnK6eisO0qII9Z7kjWvGc=;
	b=hI2HHc+o2h83L4N665gtD3sFZ7kXwZMW5PU2masUBa69oT2Eb3+RWshNV2R/mKRZvG
	IrIJWKL2vO4b+kqtvlfKb2uGu+Yf5sOhz4jw0+Eb6u5FRcHgh1+SPcyvqqCYj2RBlbzY
	rc2X1Duw/AbTpnS0nGAwIJ1m3QbCwO7+FoWv730d319a2jRefxSv8GCJ6Y5MucrmIPu8
	iFZg72CjDxFUbcLeg81z3QsDZ+6f7faONbqMa0RYi82dhvplvt2JeN5qOQ447c4IBi3Q
	iaZ7VlpcJKKBWqEyU0r+noEIFU2stJousAUnakJPtgJpd+6namp4Jp1c1U+1Zf4zH5Ay
	Qr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oMGh2pb73NVimTgY7hEw/pNnK6eisO0qII9Z7kjWvGc=;
	b=ZvP24rJeOBKFX8s4mUZBKBk/kxOUdUMsPpFxg42Ij67gXvj6DNMJtvmasHqawlpMMl
	msCgOp8a7AqtthKTxWW/EE8NL2hOd3bZDJEn+q7VFsfqJbQvPnEnNGC+RzBEcYADSVBD
	cYBSSojjItX3tF/4hzQD/LNef7VDbKZ6SE3lnnsG0YE8J8PCH3k8PBXNeQpyekRyiH3z
	0CvYPmcP+luom4O1p5vKRbHdvMSUuGIbAplMWTOdNbnrBqAg7CWSHL1K4W/a784C1wJC
	n6JGDdw+UJIsOKLMRv9Ci2/TV+Jh+6HocBkob2U7ngnFo8A52NXHB9DKJ2ZWQjg3GlR0
	Mxdg==
X-Gm-Message-State: AElRT7HI+V47CuUaVeJ/GgFFqwbd+SHDdZ1Vh0jgrgNfvJXRQt1Qsj5W
	LE40K1iWTHOsqRllCCE/Jv5W/IU0Fezq2drp21trwA==
X-Google-Smtp-Source: AG47ELtxgW2zKby4nzidZqCTT+3e08z/0N57jlDVOa4MBHsHG3XNJicMBjjGADP7vUIjnzuYSgeuVAymRKXD0+yNMQA=
X-Received: by 2002:a19:97d0:: with SMTP id
	z199-v6mr13447189lfd.94.1521645692297; 
	Wed, 21 Mar 2018 08:21:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1f0f:0:0:0:0:0 with HTTP; Wed, 21 Mar 2018 08:21:31
	-0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 21 Mar 2018 16:21:31 +0100
Message-ID: <CAOT_U5ZvVd35LTMMBAm332htfFpStzzXkG+6t=Yedtw5i_WTOQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>,
	linux-bluetooth@vger.kernel.org
Subject: Building BlueZ master from git in Yocto
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
X-List-Received-Date: Wed, 21 Mar 2018 15:21:40 -0000
Content-Type: text/plain; charset="UTF-8"

Started this issue a few days ago thinking it was a problem with
the bluez flags. I guess it might still be given it tries to build obex
even when it's been configured that is shouldn't...

The exact issue seems to point it's a Yocto related
or might be both (hence both lists). I have configured
BlueZ to build without any flags.

In terms of BlueZ code this means:

    git clone https://git.kernel.org/pub/scm/bluetooth/bluez.git
    cd bluez
    ./bootstrap
    make

This is built correctly for x86.

Trying to replicate that to Yocto, I've extended the recipe to
not to pass any feature configuration flags:

    $ bitbake bluez5 -e | grep EXTRA_OECONF
    ...
    EXTRA_OECONF=""

Before hand did all the steps so that BlueZ is correctly pulled
from master, and no patches from Yocto are applied to it.

Building it with Yocto results in the mentioned error:

| ../git/src/genbuiltin hostname wiimote autopair policy   a2dp avrcp
network input hog  gap scanparam deviceinfo  battery > src/builtin.h
| ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp irmc pbap
mas mns > obexd/src/builtin.h
| /bin/bash: obexd/src/builtin.h: No such file or directory
| Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
| make: *** [obexd/src/builtin.h] Error 1
| make: *** Waiting for unfinished jobs....
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.


It seems that for some reason in Yocto, make can't redirect into
`obexd/src/builtin.h` while
it does so successfully for native build.

Open for comments/critics on how to diagnose this.... :)

Be Well,
Alan





On Fri, Mar 16, 2018 at 5:13 PM, Luiz Augusto von Dentz
<luiz.dentz@gmail.com> wrote:
>
> Hi Alan,
>
> On Fri, Mar 16, 2018 at 4:50 PM, Alan Martinovic
> <alan.martinovic@senic.com> wrote:
> > Hi,
> > I'm trying to cross compile a BLE BlueZ master.
> > Am having build issues pointing to obex.
> > I'm building it using Yocto but have stripped it down
> > to the essentials:
> >
> > ./configure
> >   --build=x86_64-linux
> >   --host=arm-linux-gnueabi
> >   --target=arm-linux-gnueabi
> >   --prefix=/usr
> >   --exec_prefix=/usr
> >   --bindir=/usr/bin
> >   --sbindir=/usr/sbin
> >   --libexecdir=/usr/libexec
> >   --datadir=/usr/share
> >   --sysconfdir=/etc
> >   --sharedstatedir=/com
> >   --localstatedir=/var
> >   --libdir=/usr/lib
> >   --includedir=/usr/include
> >   --oldincludedir=/usr/include
> >   --infodir=/usr/share/info
> >   --mandir=/usr/share/man
> >   --disable-silent-rules
> >   --disable-dependency-tracking
> >   --with-libtool-sysroot=/home/alan/senic-os/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-senic-linux-gnueabi/bluez5/5.49+gitAUTOINC+969dfae9a7-r0/recipe-sysroot
> >   --enable-test
> >   --enable-datafiles
> >   --enable-library
> >   --enable-a2dp
> >   --enable-avrcp
> >   --disable-cups
> >   --enable-deprecated
> >   --disable-health
> >   --enable-hid
> >   --enable-hog
> >   --disable-midi
> >   --enable-network
> >   --disable-nfc
> >   --disable-obex
> >   --enable-client
> >   --disable-sap
> >   --disable-sixaxis
> >   --enable-systemd
> >   --disable-testing
> >   --disable-threads
> >   --enable-tools
> > make -j 16
> >
> > This results in a build error:
> >
> >  ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp  mas mns >
> > obexd/src/builtin.h
> >  /bin/bash: obexd/src/builtin.h: No such file or directory
> >  Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
> >
> >
> > Given that I don't need it for BLE, what else is required
> > besides "--disable-obex" to bypass this error?
>
> Obviously, it is a bug in the way we handle --disable-obex so we will
> need to fix it.
>
> --
> Luiz Augusto von Dentz

