Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B8DCE00DD9; Tue, 19 Nov 2019 05:49:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.33.87.16 listed in list.dnswl.org]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 565D2E00D4F
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 05:49:17 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47HRy40lTNz5tl9;
	Tue, 19 Nov 2019 14:49:15 +0100 (CET)
Date: Tue, 19 Nov 2019 14:49:14 +0100
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: yocto@yoctoproject.org
Message-ID: <20191119134914.kmtaxt36tze4hx45@qschulz>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
Cc: paul.eggleton@linux.intel.com
Subject: [meta-qt4] [BUG] qt4-embedded broken on warrior for qemux86-64
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
X-List-Received-Date: Tue, 19 Nov 2019 13:49:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

Just to let you know that qt4-embedded on qemux86-64 in warrior is
broken with the following message during the do_compile task:

| make[1]: Leaving directory '/tmp/poky/build/workspace/sources/qt4-embedded/tools'
| cd translations/ && make -e -f Makefile
| make[1]: Entering directory '/tmp/poky/build/workspace/sources/qt4-embedded/translations'
| lrelease assistant_cs.ts
| /bin/sh: 1: /tmp/poky/build/tmp/work/i586-poky-linux/qt4-embedded/4.8.7-r0/recipe-sysroot-native/usr/bin/lrelease4: not found
| lrelease assistant_da.ts
| /bin/sh: 1: /tmp/poky/build/tmp/work/i586-poky-linux/qt4-embedded/4.8.7-r0/recipe-sysroot-native/usr/bin/lrelease4: not found
| Makefile:582: recipe for target 'assistant_cs.qm' failed
| make[1]: *** [assistant_cs.qm] Error 127
| make[1]: *** Waiting for unfinished jobs....
| Makefile:585: recipe for target 'assistant_da.qm' failed
| make[1]: *** [assistant_da.qm] Error 127
| lrelease assistant_de.ts
| /bin/sh: 1: /tmp/poky/build/tmp/work/i586-poky-linux/qt4-embedded/4.8.7-r0/recipe-sysroot-native/usr/bin/lrelease4: not found
| Makefile:588: recipe for target 'assistant_de.qm' failed
| make[1]: *** [assistant_de.qm] Error 127
| make[1]: Leaving directory '/tmp/poky/build/workspace/sources/qt4-embedded/translations'
| Makefile:892: recipe for target 'sub-translations-make_default-ordered' failed
| make: *** [sub-translations-make_default-ordered] Error 2

meta-qt4: 144ae1b3892ad38d212c69186e429c874357af4a
poky: d0f73121551dc98f6924cd77952bf9ebf5ef3dd7

Building on Ubuntu 18.04.3. Only those two layers, source
oe-init-buil-denv and change MACHINE to qemux86-64 in conf/local.conf.

I doubt it has any impact but I also have INHERIT += "rm_work" in
conf/local.conf.

usr/bin/lrelease4 is in recipe-sysroot-native for other machines and it
is provided by qt4-native.

There is no qt4-native WORKDIR available in BUILDDIR for qemux86-64
AFAICT.

This is kind of a bug report, I am not working with this machine or
any x86-64 machine.
I was just trying to see if basic different architectures for another
bug (asm volatile, patch sent earlier today) were impacted and would
build with the fix I was working on.

Thanks for maintaining meta-qt4, much appreciated that we still can use
it with warrior.

Best regards,
Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com

