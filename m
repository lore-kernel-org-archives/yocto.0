Return-Path: <krzk@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7AFFE00CD3; Wed, 20 Sep 2017 00:29:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	RCVD_IN_DNSWL_HI,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75780E00A39
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 00:29:07 -0700 (PDT)
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2BE2C217C2
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 07:29:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BE2C217C2
Authentication-Results: mail.kernel.org;
	dmarc=none (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=krzk@kernel.org
Received: by mail-io0-f173.google.com with SMTP id k101so3299582iod.0
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 00:29:07 -0700 (PDT)
X-Gm-Message-State: AHPjjUjbtyyj4pjFlgtyHw+BnlWwyjUnrdaHbvTvKNuv9ygHUR/UUpfe
	90YOUf4ifxoE5Px2B/XyhGtxbuFH/0h4HVX0yCE=
X-Google-Smtp-Source: AOwi7QAA1TXpz80kDmczpYr/y3H83Hci8MPL6FemiexBRRgK16p88Uxz+S0UwOHSynEzYhPYS8cUbgTj29yAq/9gq8U=
X-Received: by 10.107.20.215 with SMTP id 206mr5452444iou.116.1505892546450;
	Wed, 20 Sep 2017 00:29:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.149.133 with HTTP; Wed, 20 Sep 2017 00:29:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 20 Sep 2017 09:29:06 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc=uS4SQOty1uAgr=hy3oZ4=jWPrLV6Th+vd2Wa0m7s4Q@mail.gmail.com>
Message-ID: <CAJKOXPc=uS4SQOty1uAgr=hy3oZ4=jWPrLV6Th+vd2Wa0m7s4Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: devtool/sdk: multiple issues with sdk-update (and after update)
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
X-List-Received-Date: Wed, 20 Sep 2017 07:29:08 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am using Yocto Poky 2.3 (yocto-2.3-65-gcc48789276e0) and its
extensible SDK. Host is Ubuntu 16.04.3 LTS. I have multiple issues
with sdk-update:


1. $ devtool sdk-update
Fetching origin
fatal: unable to access
'https://foobar.com/~builder/releases/yocto-2.3/toolchain/updates/layers/.git/':
Problem with the SSL CA cert (path? access rights?)
error: Could not fetch origin

Workaround is GIT_SSL_CAINFO="/etc/ssl/certs/ca-certificates.crt"
devtool sdk-update but that is not that convenient.


2. SDK update partially succeeds but not all tasks are apparently executed:

HEAD is now at 8189dd22fed5 init repo
NOTE: Preparing build system... (This may take some time.)
ERROR: Unexecuted tasks found in preparation log:
  NOTE: Running task 1065 of 2619
(/home/krzk/proceq17_sdk/layers/poky/meta/recipes-graphics/freetype/freetype_2.7.1.bb:do_fetch)
  NOTE: Running task 1077 of 2619
(/home/krzk/proceq17_sdk/layers/poky/meta/recipes-multimedia/libpng/libpng_1.6.28.bb:do_fetch)
...
...
...
 NOTE: Running task 2619 of 2619
(/home/krzk/proceq17_sdk/layers/meta-oe/recipes-support/opencv/opencv_3.2.bb:do_packagedata)


It seems that update works... but not entirely.


3. devtool sdk-update sees new commits in layers repository on origin
remote but runs just "git reset --hard" so it does not switch to it.

Fetching origin
From https://foobar.com/~builder/releases/yocto-2.3/toolchain/updates/layers/
   f392bd369685..af2013cdfa56  master     -> origin/master
HEAD is now at f392bd369685 init repo

Running git reset --hard will obviously not switch the HEAD from
f392bd369685 to af2013cdfa56.

My workaround here is to manually reset --hard origin/master and then
re-run the sdk-update.


4. SDK updated this way (with all workarounds above) is different than
fresh install. For example some files in sysroots are missing - the
parts introduced at some point by changes in my software. Here - the
json-c.pc is missing:

$ cd UPDATED_SDK/workspace/sources
$ mkdir lib-eclipse
$ make -G"Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug ../lib
-- Checking for module 'json-c'
--   No package 'json-c' found
$ find UPDATED_SDK/ -name 'json-c.pc'
./tmp/work/cortexa5hf-neon-poky-linux-gnueabi/json-c/0.12-r0/image/usr/lib/pkgconfig/json-c.pc
./tmp/work/cortexa5hf-neon-poky-linux-gnueabi/json-c/0.12-r0/package/usr/lib/pkgconfig/json-c.pc
./tmp/work/cortexa5hf-neon-poky-linux-gnueabi/json-c/0.12-r0/sysroot-destdir/usr/lib/pkgconfig/json-c.pc
./tmp/work/cortexa5hf-neon-poky-linux-gnueabi/json-c/0.12-r0/packages-split/json-c-dev/usr/lib/pkgconfig/json-c.pc
./tmp/work/cortexa5hf-neon-poky-linux-gnueabi/json-c/0.12-r0/build/json-c.pc
./tmp/sysroots-components/cortexa5hf-neon/json-c/usr/lib/pkgconfig/json-c.pc

$ find FRESH_INSTALL/ -name 'json-c.pc'
./tmp/sysroots/col-vf50-proceq/usr/lib/pkgconfig/json-c.pc
./tmp/work/cortexa5hf-neon-poky-linux-gnueabi/json-c/0.12-r0/sysroot-destdir/usr/lib/pkgconfig/json-c.pc
./tmp/sysroots-components/cortexa5hf-neon/json-c/usr/lib/pkgconfig/json-c.pc

The devtool build works okay for both cases.


Any hints on these issues?

Best regards,
Krzysztof

P.S. I could not find discussion list for extensible SDK or devtool so
I hope this is the right place...

