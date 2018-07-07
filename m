Return-Path: <timm@timmedia.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73E32E00CEA; Sat,  7 Jul 2018 03:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 421 seconds by postgrey-1.32 at yocto-www;
	Sat, 07 Jul 2018 03:09:27 PDT
Received: from mail.timmedia.de (mail.timmedia.de [46.4.107.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BB3FE00A48
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 03:09:27 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.timmedia.de (Postfix) with ESMTP id 0B21C301F16
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 10:02:23 +0000 (UTC)
X-Fuglu-Suspect: c6299435fba1432787337e4ada8fb10e
X-Fuglu-Spamstatus: NO
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: timm@timmedia.de)
	by mail.timmedia.de (Postfix) with ESMTPSA
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 10:02:22 +0000 (UTC)
To: yocto@yoctoproject.org
From: Timm <timm@timmedia.de>
Message-ID: <79b2d102-5cf4-f5ff-1bff-68fe260ffd41@timmedia.de>
Date: Sat, 7 Jul 2018 12:02:22 +0200
MIME-Version: 1.0
Subject: Building gutenprint recipe
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
X-List-Received-Date: Sat, 07 Jul 2018 10:09:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

There was a gutenprint recipe back in OE-Classic:
https://layers.openembedded.org/layerindex/oe-classic/recipe/12076/

But currently there is no gutenprint available for Yocto.

I tried to build my own recipe. But I got stuck at the stage where the
build process wants to call some generated binaries:

    | ./extract-strings `cat xml-stamp | sed -e
's;^;../../../gutenprint-5.2.11/src/xml/;'` > xmli18n-tmp.h.tmp
    | /lib/ld-linux-armhf.so.3: No such file or directory

So, I introduced a "native" recipe, which just compiles the
"extract-strings" for me: 

----------------------------------------------------------------------------------------------------------

SECTION = "libs"
require gutenprint_${PV}.bb
DEPENDS = "gettext-native"
inherit native autotools

EXTRA_OECONG = "\
        --disable-libgutenprintui2 \
            --disable-samples \
        --without-gimp2 \
        --without-doc \
        --disable-nls \
        --disable-nls-macos \
        --without-foomatic \
        --without-foomatic3 \
        --disable-escputil \
        --disable-test \
        --disable-testpattern \
        --without-cups \
               "

do_compile() {
    oe_runmake -C src/xml/ extract-strings
}

-----------------------------------------------------------------------------------------------------------------

The next step is quite unclear for me? How can I tell the build system
not to generate the extract-strings again and use the native instead?

As reference I used the build scripts from openwrt and buildroot. But
I'm not able to translate this build steps to Yocto.

https://github.com/FranciscoBorges/openwrt-printing-packages/blob/master/net/gutenprint/Makefile

https://github.com/buildroot/buildroot/blob/master/package/gutenprint/gutenprint.mk

