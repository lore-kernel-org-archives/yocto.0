Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3A7BE00ED2; Mon, 18 Apr 2016 07:55:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B7F4E00C44
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 07:55:19 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id i2so4766528oib.3
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 07:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=HKkP2hT2P6Hd1KYDLf38WvHSkrwND7Sot3HKku8PGTs=;
	b=FS5muMHC2OqIst1Og1JzrqCr8sR+8WLYxzWc2CIimY6k149xjmMh5+/dhA7hIwOiyV
	P/Wzgn8uyXzTfaeuiyPjy5avAIqJ/fdq7C/2vJs/l4FFoWK6l7UTJlBzwyqRS3jMncUb
	mvTzfbcKdzTu4+p4KBn8Lh2U8P5NyyF0HPRUORthVouIhOizsKK5p36+9QTN+UvN1g4R
	g9dK6EjiytpM3zD4rNIqwHvWOWUhidP63OckbFo8ejHjrVGiBsCaN2OzsW/+iZZePGxT
	y9q5Afw4NgWP/t3+esrEliRt3pem1RWeKDmlubfNkW5+IThUpYkvwJooXpsLdVEvD4uV
	gHPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=HKkP2hT2P6Hd1KYDLf38WvHSkrwND7Sot3HKku8PGTs=;
	b=XhQh2FNMH6YsgISxHXkMgeKdYDRdXZixW3s80bBWzeuUMR+GujgJTZwD6Z0Z8mHTBc
	qm90OKMvksptDWXmTfxBAFr1UJKzXnguAFFk04FL1AqUa6vXLnIpF5IyzBCeSlQ6xaqd
	iXMaIYse5KZLcwPfApeAb4cGIAqbuoXnngR5Q9E+tpIPq4WXXFTmlEagaCJpLT9ku5qT
	iNVj5Dy/pjo9+Lx5RUSLQEBKG6OYeIu6CVh0gw87shMRW3Se9kcQwXqgU1Ew8EgqzZKH
	OMs58SyYHV4eHDhF3Zat0MLFF62NZAvNb+j319hfFilG4znrJ+W1UKyh3m2E23LICket
	F+yQ==
X-Gm-Message-State: AOPr4FWRsA89pUxPVczhZBNgvLJfWpHr+HUo2ddYUJMH10mM88EEXBSqxFlJUqVm4h59vf3NtAuGFvDLRK3EhQ==
MIME-Version: 1.0
X-Received: by 10.157.13.227 with SMTP id 90mr1601977ots.79.1460991319304;
	Mon, 18 Apr 2016 07:55:19 -0700 (PDT)
Received: by 10.202.45.65 with HTTP; Mon, 18 Apr 2016 07:55:19 -0700 (PDT)
Date: Mon, 18 Apr 2016 08:55:19 -0600
Message-ID: <CALRMKQpOwgNW_brGxU4RGd-nSgQbqo3EOrJR-53y2krkjp0Hag@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Poky-Tiny errors building util-linux/2.26.2-r0
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
X-List-Received-Date: Mon, 18 Apr 2016 14:55:21 -0000
Content-Type: text/plain; charset=UTF-8

When I attempt to build using the poky-tiny distribution (or my
distribution still very closely based on it), I keep getting link
errors when building util-linux.  These seem to be related to the
functions provided by wchar.h and locale.h and their associated
library files.

For example:

x86_64-poky-linux-libtool: link: x86_64-poky-linux-gcc -m64
-march=core2 -mtune=core2 -msse3 -mfpmath=sse
--sysroot=/home/ron/yocto_production/build/tmp/sysroot
s/qemux86-64 -fsigned-char -fno-common -Wall -Werror=sequence-point
-Wextra -Wmissing-declarations -Wmissing-parameter-type
-Wmissing-prototypes -Wno-missing-fi
eld-initializers -Wredundant-decls -Wsign-compare -Wtype-limits
-Wuninitialized -Wunused-but-set-parameter -Wunused-but-set-variable
-Wunused-parameter -Wunused
-result -Wunused-variable -Wnested-externs -Wpointer-arith
-Wstrict-prototypes -Wimplicit-function-declaration -O2 -pipe -g
-feliminate-unused-debug-types -Wl,-
O1 -Wl,--hash-style=gnu -Wl,--as-needed -o dmesg sys-utils/dmesg.o
lib/monotonic.o  ./.libs/libcommon.a
sys-utils/dmesg.o: In function `safe_fwrite':
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:628:
undefined reference to `mbrtowc'
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/
sys-utils/dmesg.o: In function `safe_fwrite':
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:628:
undefined reference to `mbrtowc'
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:636:
undefined reference to `iswprint'
./.libs/libcommon.a(libcommon_la-strutils.o): In function `parse_size':
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/lib/strutils.c:109:
undefined reference to `localeconv'
./.libs/libcommon.a(libcommon_la-strutils.o): In function
`size_to_human_string':
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/lib/strutils.c:486:
undefined reference to `localeconv'
collect2: error: ld returned 1 exit status


----

I suspect that I need to modify something to pull these libraries in
when building util-linux for this distribution, but I'm new to Yocto
and unsure where or how to do this.

For what it is worth, I can build poky just fine using the same poky
and layer downloads.

I can attach my bblayers.conf file if needed.  At this point, I have
no custom code or recipes included, but am including more than just
the default poky layers.

Ron Oakes

