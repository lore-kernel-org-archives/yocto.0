Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44B63E00B30; Wed, 25 Apr 2018 01:24:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f170.google.com (mail-ot0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E03C1E00AF9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:24:23 -0700 (PDT)
Received: by mail-ot0-f170.google.com with SMTP id h8-v6so24387799otj.7
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=XLkGySg+ahlnMOT3Py4Bq6e4crk1ky7EPgAKz1NIBoE=;
	b=AbnRemrY2bk0WsePkFv4BLco1VQ0kypQdW6GSZ+refugeCUSQ5ZOzdpKDGzi2PUvjh
	6Vk4gbEC38r5JQKS/lq2DnwvTGhBun4ZkxHwxE2gouVYTpJ/FmBz6O21rFTHmMWKgjFP
	7M7n77mvDiIWJPnMqP2v0Mdlt/rrvA2mKOQaq1BDsXl6/zpUOTEiaTM5P9I31MieixS5
	EaIdOJoUdR8jTk7wCwOR60lOU6ogRyR/VdJhWTlGJbxUcJhuxHNr5udwJRUfTA5nq81z
	rTq2vmYSqaloWYS3+XyDGRixZOdu+NMXrA3xyxckQZC+7JNKVpcopbuUFBLu2ai0YKs8
	MLBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=XLkGySg+ahlnMOT3Py4Bq6e4crk1ky7EPgAKz1NIBoE=;
	b=EEuKKDiRoA/aIUISXPNWVoALsV7JBVxUZX9jDmI7A5vSNSVh+DCg/eixPJrvJY61AT
	JV1Jc13OcS4TUe2hUs5I68PCfX9hcZOZ5cxpmzmDQYigbYBqd3+zfod6bz8mu5MytECd
	77MQnekXf/I6iO107yLF8b63BKjc6lRHzJvLq9xm0BwNGQRsoG0c3oJgzi7D4hStDTNX
	0lD5BYZC7+vHjIP3v9vVPuQfSju93dcrTZ5rdg0ycW/XPw6nckANMSuy7fPQWhv59cdY
	/YPKR7AetHF3aWug8WECGfMmIAkp5vVJLO8YDmaLQyaBFNkqfOWjzN1c0iyTQL6D785E
	IURw==
X-Gm-Message-State: ALQs6tA3rmM33XbvAiI3GmD27/vnM+HFPNiUW/E1sflbcijYxg2W9tuR
	JW576iCFRiiajUQ6Nx1m5M3FuKn5Jis=
X-Google-Smtp-Source: AIpwx49BHXHJ+zlVKaLhMeGflqAWjzA84RHCRyOwwGqzjsWqow8WDtmtikDcoZDKdxnIW4BAK+cCWg==
X-Received: by 2002:a9d:2cd9:: with SMTP id
	e25-v6mr5480830otd.88.1524644662804; 
	Wed, 25 Apr 2018 01:24:22 -0700 (PDT)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com.
	[209.85.218.42]) by smtp.gmail.com with ESMTPSA id
	t80-v6sm10008655ota.40.2018.04.25.01.24.21
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Apr 2018 01:24:22 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id 11-v6so4584430ois.8
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:24:21 -0700 (PDT)
X-Received: by 2002:aca:ed15:: with SMTP id
	l21-v6mr17300506oih.39.1524644661478; 
	Wed, 25 Apr 2018 01:24:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.163.134 with HTTP; Wed, 25 Apr 2018 01:24:20 -0700 (PDT)
From: Mirza Krak <mirza@mkrak.org>
Date: Wed, 25 Apr 2018 10:24:20 +0200
X-Gmail-Original-Message-ID: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
Message-ID: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: gcc not found
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
X-List-Received-Date: Wed, 25 Apr 2018 08:24:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi.

I have come across a somewhat strange error that I can not explain to
my self, why it is occurring and hopefully someone on the list can
provide some insight.

I am currently on "rocko" on all my layers and the recipe that I
having issues with is brcm-patchram-plus[1]. And even though this
recipe is part of meta-rockchip it seems to be modeled after the
hello.bb that is found in poky so I still think that this is a
"generic" problem and not specific to brcm-patchram-plus[1].

The issue I am having is that we get intermediate build errors on
brcm-patchram-plus[1] on our build server. We have a nightly build
that builds without "sstate" and this is where we are seeing the
error. It does not always fail, but every once in while with the log
pasted below.

Doing a "bitbake -c cleansstate brcm-patchram-plus" and rebuilding
solves it, but I would like to prevent it to happening in the first
place.

NOTE: Running task 2923 of 3702
(/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brc=
m-patchram-plus_0.1.bb:do_fetch)
NOTE: recipe netbase-1_5.4-r0: task do_install: Started
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_fetch: Started
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_fetch: Succeeded
NOTE: Running task 2924 of 3702
(/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brc=
m-patchram-plus_0.1.bb:do_prepare_recipe_sysroot)
NOTE: recipe netbase-1_5.4-r0: task do_install: Succeeded
NOTE: Running task 2925 of 3702
(/home/worker/yocto/layers/poky/meta/recipes-core/netbase/netbase_5.4.bb:do=
_populate_sysroot)
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_prepare_recipe_sysroot: Sta=
rted
NOTE: recipe netbase-1_5.4-r0: task do_populate_sysroot: Started
NOTE: recipe netbase-1_5.4-r0: task do_populate_sysroot: Succeeded
NOTE: Running task 2926 of 3702
(/home/worker/yocto/layers/poky/meta/recipes-core/netbase/netbase_5.4.bb:do=
_package)
NOTE: recipe brcm-patchram-plus-0.1-r0: task
do_prepare_recipe_sysroot: Succeeded
NOTE: Running task 2927 of 3702
(/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brc=
m-patchram-plus_0.1.bb:do_unpack)
NOTE: recipe netbase-1_5.4-r0: task do_package: Started
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_unpack: Started
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_unpack: Succeeded
NOTE: Running task 2928 of 3702
(/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brc=
m-patchram-plus_0.1.bb:do_patch)
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_patch: Started
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_patch: Succeeded
NOTE: Running task 2929 of 3702
(/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brc=
m-patchram-plus_0.1.bb:do_configure)
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_configure: Started
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_configure: Succeeded
NOTE: Running task 2930 of 3702
(/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brc=
m-patchram-plus_0.1.bb:do_compile)
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_compile: Started
ERROR: brcm-patchram-plus-0.1-r0 do_compile: Function failed:
do_compile (log file is located at
/home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnuea=
bi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289)
ERROR: Logfile of failure stored in:
/home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnuea=
bi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289
Log data follows:
| DEBUG: Executing shell function do_compile
| /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnu=
eabi/brcm-patchram-plus/0.1-r0/temp/run.do_compile.22289:
100: /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-=
gnueabi/brcm-patchram-plus/0.1-r0/temp/run.do_compile.22289:
arm-custom-linux-gnueabi-gcc: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnuea=
bi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289)
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_compile: Failed
ERROR: Task (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patch=
ram-plus/brcm-patchram-plus_0.1.bb:do_compile)
failed with exit code '1'
NOTE: Running task 2931 of 3702
(/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brc=
m-patchram-plus_0.1.bb:do_populate_lic)
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_populate_lic: Started
NOTE: recipe brcm-patchram-plus-0.1-r0: task do_populate_lic: Succeeded
NOTE: recipe netbase-1_5.4-r0: task do_package: Succeeded
NOTE: recipe groff-native-1.22.3-r0: task do_compile: Succeeded
NOTE: recipe perl-5.24.1-r0: task do_compile: Succeeded
NOTE: Tasks Summary: Attempted 2931 tasks of which 0 didn't need to be
rerun and 1 failed.

[1]. https://github.com/rockchip-linux/meta-rockchip/blob/master/recipes-bs=
p/brcm-patchram-plus/brcm-patchram-plus_0.1.bb

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: http://mkrak.org

