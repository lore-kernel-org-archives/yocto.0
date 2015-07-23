Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D3BFE00861; Wed, 22 Jul 2015 17:23:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42E1DE00474
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 17:23:17 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A10A1F811DC; Wed, 22 Jul 2015 18:23:16 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2B617F811DA;
	Wed, 22 Jul 2015 18:23:16 -0600 (MDT)
Message-ID: <55B033F6.0@mlbassoc.com>
Date: Wed, 22 Jul 2015 18:23:18 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <858020079.672977.1437603410191.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <858020079.672977.1437603410191.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 00:23:21 -0000
X-Groupsio-MsgNum: 25628
Content-Type: multipart/mixed; boundary="------------070503050708070103090104"

--------------070503050708070103090104
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-22 16:16, Edward Vidal wrote:
> Hi
> Still having errors with bitbake core-image-sato

You must have added something to your image - core-image-sato does
not include libepoxy by default.

> This occurs at
> | checking for X11... yes
> | checking for EGL... no
> | configure: error: Package requirements (egl) were not met:
> ERROR: Task 4856 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'
>
> I tried adding /conf/machine/raspberrypi2.conf which I found on the internet.
>
> +PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
> +PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
>
> This caused several more errors.

Which you failed [again] to list :-(

> Any and all help is appreciated.

To get libepoxy to build:
   % bitbake userland -c cleansstate

Then apply this patch which fixes a problem with libepoxy using
the wrong python3

After that, I got it to build for RaspberryPi-2

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------070503050708070103090104
Content-Type: text/x-patch;
 name="0001-libepoxy-Use-native-python3.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-libepoxy-Use-native-python3.patch"

From 17d22ee69a1568d1aaeaee26823ce6adbdf3062a Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 22 Jul 2015 18:20:30 -0600
Subject: [PATCH] libepoxy: Use native python3

This recipe needs python3.  This patch arranges to use the bitbake-built
version, not the host version (which may be missing or not work...)

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/recipes-graphics/libepoxy/libepoxy_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-graphics/libepoxy/libepoxy_git.bb b/meta/recipes-graphics/libepoxy/libepoxy_git.bb
index 9816257..0330a7b 100644
--- a/meta/recipes-graphics/libepoxy/libepoxy_git.bb
+++ b/meta/recipes-graphics/libepoxy/libepoxy_git.bb
@@ -16,7 +16,7 @@ PV = "1.2+git${SRCPV}"
 
 S = "${WORKDIR}/git"
 
-inherit autotools pkgconfig
+inherit autotools pkgconfig python3native
 
 DEPENDS = "util-macros virtual/egl"
 
-- 
1.9.1


--------------070503050708070103090104--
