Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.13150.1595513475153538362
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 07:11:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=B7auRnn/;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mtownsend1973@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 673B6E01E6A; Thu, 23 Jul 2020 07:11:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AA1CE01E5C
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2020 07:11:13 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id e15so3111254vsc.7
        for <yocto@yoctoproject.org>; Thu, 23 Jul 2020 07:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/8CdWFmDWgTXAPw+gzbOWb52fSEYw5OrZfoZkfXDL+0=;
        b=B7auRnn/HSH4fg1UNgS2HJJkUPjUzPSdP3zxTINZcW6OkcgfCDcIahlGoHIp2/Ucti
         dPloi9Obskt2zjEtSWzCVb/WuWkTsKbICleYVwslI3SvRb5CeP3Pithgw2ZFRwjnSs8i
         V/YElO2wrxAXcsIgPcfyN5BJrZ6yZAvUI/OUpqSnlpnkXcrqbQnVLGOpR1dOfLeHTOa8
         XC1SFu1R/SttqX2kXICmZB/MUXkNmRZTTt03QGh94oSpnii82OcjuzC6F5F23gIYgonb
         eCQcgzy+u0ryu9e9vYOl9T3OYIVs+bAa3RDPOyqRzW4FB2PxY6R2Wqe2sdTgf3cblwBv
         jWHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/8CdWFmDWgTXAPw+gzbOWb52fSEYw5OrZfoZkfXDL+0=;
        b=S8jVlAcdHdxUYd+daMaifjBEOz9wl0nOj0aDvEs8QZj0V7300U2VMZSVcJ6tyeKufZ
         KPogwg93/q9+OrCN2K6AQrPuK/IC7EfJrYuZvCG71Ro+VViVddiEHSatXcq4TZz7ffXN
         eNd6tHoMOc3OHGvxatu7TvSDWVR9sUy/NzttUCsvyNHVs/xqoRaKdte68eu8NNJS9iex
         3J0Db4+S7Ux4FNCbmNH4bnbRMaBLBBYXQLrUO4PF/AmrCubKs2UPXa28Z9phheblf7ry
         v8V5IHehc6NLFg3rlUiqiYd2HPrl/Jhzs0GFdzH28Gur47gFYXU7DFK8VFZLLmw89jTI
         gg8Q==
X-Gm-Message-State: AOAM531jAqU7pf9/Q65IYQz4+M/cJvVmUhtKLMqDQIYaR7s5/WddNxfO
	CHieMHygmNc3cNE/IaQU+4b/HfQNRRvkScmvcPyaYMeK
X-Google-Smtp-Source: ABdhPJxegFFUnwWaB8uj2TFsihVDCcXQ+RDQDhPt2+qfqMPpZkExHhPDfbaLgsI7G/eq2uaZkLmLqe8CsjS9fuZXoak=
X-Received: by 2002:a67:80d3:: with SMTP id b202mr4071859vsd.129.1595513472486;
 Thu, 23 Jul 2020 07:11:12 -0700 (PDT)
MIME-Version: 1.0
From: "Martin Townsend" <mtownsend1973@gmail.com>
Date: Thu, 23 Jul 2020 15:11:01 +0100
Message-ID: <CABatt_ymLbE5pbPE9kxL6W6ytgTK-Kozd7Dk98q3qM--vMySuQ@mail.gmail.com>
Subject: Strange package QA errors
To: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I've just upgraded to the dunfell release and now get Package QA
errors like the following

ERROR: dbus-1.12.16-r0 do_package_qa: QA Issue: /usr/bin/dbus-daemon
contained in package dbus requires
libsystemd.so.0(LIBSYSTEMD_209)(64bit), but no providers found in
RDEPENDS_dbus? [file-rdeps]
ERROR: dbus-1.12.16-r0 do_package_qa: QA Issue: /usr/bin/dbus-daemon
contained in package dbus requires libsystemd.so.0()(64bit), but no
providers found in RDEPENDS_dbus? [file-rdeps]
ERROR: dbus-1.12.16-r0 do_package_qa: QA Issue:
/usr/lib/libdbus-1.so.3.19.11 contained in package dbus-lib requires
libsystemd.so.0()(64bit), but no providers found in RDEPENDS_dbus-lib?
[file-rdeps]
ERROR: dbus-1.12.16-r0 do_package_qa: QA Issue:
/usr/lib/libdbus-1.so.3.19.11 contained in package dbus-lib requires
libsystemd.so.0(LIBSYSTEMD_209)(64bit), but no providers found in
RDEPENDS_dbus-lib? [file-rdeps]
ERROR: dbus-1.12.16-r0 do_package_qa: QA run found fatal errors.
Please consider fixing them.
ERROR: Logfile of failure stored in:
/ws/rufilla/octopus/octave-linux/build/tmp/work/aarch64-fsl-linux/dbus/1.12.16-r0/temp/log.do_package_qa.31770
ERROR: Task (/ws/rufilla/octopus/octave-linux/build/../sources/poky/meta/recipes-core/dbus/dbus_1.12.16.bb:do_package_qa)
failed with exit code '1'
ERROR: modemmanager-1.12.12-r0 do_package_qa: QA Issue:
/usr/sbin/ModemManager contained in package modemmanager requires
libsystemd.so.0(LIBSYSTEMD_209)(64bit), but no providers found in
RDEPENDS_modemmanager? [file-rdeps]
ERROR: modemmanager-1.12.12-r0 do_package_qa: QA Issue:
/usr/sbin/ModemManager contained in package modemmanager requires
libsystemd.so.0()(64bit), but no providers found in
RDEPENDS_modemmanager? [file-rdeps]
ERROR: modemmanager-1.12.12-r0 do_package_qa: QA run found fatal
errors. Please consider fixing them.
ERROR: Logfile of failure stored in:
/ws/rufilla/octopus/octave-linux/build/tmp/work/aarch64-fsl-linux/modemmanager/1.12.12-r0/temp/log.do_package_qa.31773
ERROR: Task (/ws/rufilla/octopus/octave-linux/build/../sources/meta-octopus/recipes-connectivity/modemanager/modemmanager_1.12.12.bb:do_package_qa)
failed with exit code '1'

I've tried adding libsystemd to RDEPENDS but the error message still
appears.  Thinking it was something to do with my systemd appends I
removed it.  The above build errors disappeared but then I get similar
errors for usbutils this time with libudev.  I can't see why the
changes I have made to systemd would cause the errors above as
libsystemd is built and packaged.  I checked and libsystemd.so.0 is in
the recipe-sysroot directory for dbus and modemmanager and objdump
says that LIBSYSTEMD_209 is defined.

Version definitions:
1 0x01 0x0ae55a40 libsystemd.so.0
2 0x00 0x0562c8b9 LIBSYSTEMD_209
3 0x00 0x0562c8c1 LIBSYSTEMD_211
LIBSYSTEMD_209
4 0x00 0x0562c8c3 LIBSYSTEMD_213
LIBSYSTEMD_211
5 0x00 0x0562c8c4 LIBSYSTEMD_214
LIBSYSTEMD_213
6 0x00 0x0562c8c6 LIBSYSTEMD_216
LIBSYSTEMD_214
7 0x00 0x0562c8c7 LIBSYSTEMD_217
LIBSYSTEMD_216
8 0x00 0x0562c8c9 LIBSYSTEMD_219
LIBSYSTEMD_217
9 0x00 0x0562c8d0 LIBSYSTEMD_220
LIBSYSTEMD_219
10 0x00 0x0562c8d1 LIBSYSTEMD_221
LIBSYSTEMD_220
11 0x00 0x0562c8d2 LIBSYSTEMD_222
LIBSYSTEMD_221
12 0x00 0x0562c8d6 LIBSYSTEMD_226
LIBSYSTEMD_222
13 0x00 0x0562c8d7 LIBSYSTEMD_227
LIBSYSTEMD_226
14 0x00 0x0562c8d9 LIBSYSTEMD_229
LIBSYSTEMD_227
15 0x00 0x0562c8e0 LIBSYSTEMD_230
LIBSYSTEMD_229
16 0x00 0x0562c8e1 LIBSYSTEMD_231
LIBSYSTEMD_230
17 0x00 0x0562c8e2 LIBSYSTEMD_232
LIBSYSTEMD_231
18 0x00 0x0562c8e3 LIBSYSTEMD_233
LIBSYSTEMD_232
19 0x00 0x0562c8e4 LIBSYSTEMD_234
LIBSYSTEMD_233
20 0x00 0x0562c8e6 LIBSYSTEMD_236
LIBSYSTEMD_234
21 0x00 0x0562c8e7 LIBSYSTEMD_237
LIBSYSTEMD_236
22 0x00 0x0562c8e8 LIBSYSTEMD_238
LIBSYSTEMD_237
23 0x00 0x0562c8e9 LIBSYSTEMD_239
LIBSYSTEMD_238
24 0x00 0x0562c8f0 LIBSYSTEMD_240
LIBSYSTEMD_239
25 0x00 0x0562c8f1 LIBSYSTEMD_241
LIBSYSTEMD_240
26 0x00 0x0562c8f3 LIBSYSTEMD_243
LIBSYSTEMD_241

Is the file-rdeps check broken on aarch64/dunfell?  I'm building for
an i.MX EVK so I have the meta-freescale layer.

The build configuration looks like this
Build Configuration:
BB_VERSION           = "1.46.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "aarch64-fsl-linux"
MACHINE              = "imx8mnevk"
DISTRO               = "octave-os"
DISTRO_VERSION       = "1.0.0"
TUNE_FEATURES        = "aarch64 cortexa53 crc crypto"
TARGET_FPU           = ""
meta
meta-poky            = "dunfell:c9ecbbc87a1f401ab040fde735a20ff05cb7bcd4"
meta-freescale       = "dunfell:901b192ff8652236607f423386aee496e3ae2730"
meta-oe
meta-networking
meta-python          = "dunfell:cc6fc6b1641ab23089c1e3bba11e0c6394f0867c"

I can send more information if required, or happy to run any commands
to help debug this problem.

I'll use INSANE_SKIP for the moment to get past this but would like to
get to the bottom of this in case there is a real problem.

Many Thanks,
Martin.
