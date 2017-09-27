Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39CD2E00CD4; Wed, 27 Sep 2017 15:59:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.180 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52E6AE00CA2
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 15:58:59 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id f15so15336440qtf.7
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 15:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=7idnTV501IuMA7g14qug7oZi1X7DetdkuzwLBO2m5IU=;
	b=RMkxtKniNJXwu3auZZrbw4LejmvplFcISrWCPHHb2s9LY8WANFgG4Ekkbiv9xnz1Bh
	UeOPg4EyYSJ/cUk3bQFS62NwN8DQAFRV31RxQ50R5c0DXr4Wtm2K2a8QBbaqHojDd01P
	kwfv4Ut8BY4jvGRQT7mP4veuvlZ4Mqfipx38NBpGWHduoJOW2DGgkEyvNNX4PkmeYm8t
	b+MBr5SG4qK6j6nGCzpIZ9n2on+L0wpFbaz7DYVDZ4vhnsyEBIhsrz2B9iSlJzIf9gnJ
	wACZ+EZlq9LGUgPMQcw6wt+z9xNwxYRoLkk250ItLKycWO+bQgWMPr5HJvTnRfRFbMvf
	olpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=7idnTV501IuMA7g14qug7oZi1X7DetdkuzwLBO2m5IU=;
	b=GLUHoDPueQztccmt4Qs5/EqOel9w7wCx1yOGv5C8CFGS+CScGoxjaD+MsC9is7Uar5
	pqqB5zWwE9meJWd5KWyl2IdMwlpUJ7u10o6931iW863I7GLoYklXkesNMll1ovJVsolW
	27cl24QfR/LECVf04AWnEkmF7syxmcAOxVvItojHDmqO/FNBBFD3vbm4whfOcreNK6jv
	rSehzn0p5d+TOaM8Gmz7l9AxwC0fFqCQHMYbeD5Ti2NXmKv4NxDmUThOtGuG7slRCbfa
	wE+du0nihAuVVta2ErJFD+8p7L8LtUEltChSuFruroaSasfy0e0Xgfb9QgX9OmsjHtvr
	MYtw==
X-Gm-Message-State: AHPjjUhSySf3qKHBC6z6pA+cu65xpY8Cq0g/V5AURjShCSPdXWSGBrlG
	/k448OohLcrvMAg2YjFCq170ZCKz7XI=
X-Google-Smtp-Source: AOwi7QB1caYIw4lD/oFI0GnetAXSztSqEiMXa3g311WUqUIGhgFVFUdGfxQ0ibg2RkLIcSLmQ3PK5g==
X-Received: by 10.200.47.184 with SMTP id l53mr4330124qta.120.1506553139205;
	Wed, 27 Sep 2017 15:58:59 -0700 (PDT)
Received: from 2600-6c64-617f-fb18-c9b6-429e-51fc-2b69.dhcp6.chtrptr.net
	(2600-6c64-617f-fb18-c9b6-429e-51fc-2b69.dhcp6.chtrptr.net.
	[2600:6c64:617f:fb18:c9b6:429e:51fc:2b69])
	by smtp.gmail.com with ESMTPSA id y138sm59678qka.69.2017.09.27.15.58.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Sep 2017 15:58:58 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 27 Sep 2017 18:58:58 -0400
Message-Id: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: advice on recipe for shared lib mDNSResponder
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
X-List-Received-Date: Wed, 27 Sep 2017 22:59:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am fairly new to Yocto, yet have been able to successfully add a =
custom kernel object to my Yocto poky build, no problem.  However, I am =
having some difficulty adding a shared library, namely mDNSResponder.

Right now, my recipe is very simple and does not use autotools.  There =
are just a few tweaks for cross-building which I=E2=80=99ve added to the =
supplied mDNSResponder Makefile for mDNSPosix, in order to target 64-bit =
ARM hardware.  Here is the build error I encounter.  Obviously the =
environment is not being set 100% correctly, because it can not find =
stdio.h.  Is there an easy way to avoid this problem?

- Steve Pavao
Korg R&D

Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
| ERROR: oe_runmake failed
| make os=3DEmbeddedLinuxAarch64 Daemon libdns_sd -C mDNSPosix
| make[1]: warning: jobserver unavailable: using -j1.  Add '+' to parent =
make rule.
| make[1]: Entering directory =
'/data/development/lfs/yocto/poky/build/tmp/work/aarch64-poky-linux/mDNSRe=
sponder/333.10-r0/mDNSPosix'
| aarch64-poky-linux-gcc -I../mDNSCore -I../mDNSShared =
-Iobjects/prod/EmbeddedLinuxAarch64 -fwrapv -W -Wall =
-DPID_FILE=3D\"/var/run/mdnsd.pid\" =
-DMDNS_UDS_SERVERPATH=3D\"/var/run/mdnsd\" -DNOT_HAVE_SA_LEN =
-DUSES_NETLINK -DHAVE_LINUX -DTARGET_OS_LINUX -fno-strict-aliasing -Os =
-DMDNS_DEBUGMSGS=3D0   -c -o =
objects/prod/EmbeddedLinuxAarch64/PosixDaemon.c.o PosixDaemon.c
| PosixDaemon.c:31:19: fatal error: stdio.h: No such file or directory
|  #include <stdio.h>
|                    ^
| compilation terminated.
| Makefile:553: recipe for target =
'objects/prod/EmbeddedLinuxAarch64/PosixDaemon.c.o' failed
| make[1]: *** [objects/prod/EmbeddedLinuxAarch64/PosixDaemon.c.o] Error =
1=

