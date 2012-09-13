Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DCF7E011C0
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 11:03:43 -0700 (PDT)
Received: by lagr15 with SMTP id r15so2458655lag.35
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 11:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MIRB4QaeRa27bfNVsjwgBA8chqp+OOnBywpeRo8NBu8=;
	b=Rx4DIocZldc0hF9eGsQs5BJ1Ryso8DTKdw/BOu+qHhQ6BxiX2jEeBdsXyOl0UJ92Fz
	mMAU7rDGdxn/o9fGRtMAdu9PIFUWUuq92X6WgTXITjxCk7iC3dG6A23RBFBYClCXRKOj
	ApO2WuMs9sKKpDZFSCdewdM+pwx3jxWuu8ZqgpcfZaBecsyvwT+vk7lEmWDOIICRY0+O
	k2GGMq8GYRWAozqr+5Idp62YWhXvyELWE1O9XlO3DbtRPsEx+OPy97xPrUgTQMnOtQNP
	xv8vMSXo8N+gisenlEm337J+QMxyCNhxg92n7/4LgMJSabEr3gd4e3QGWQX51R8ddJdW
	lq/g==
MIME-Version: 1.0
Received: by 10.112.39.41 with SMTP id m9mr183372lbk.80.1347559408021; Thu, 13
	Sep 2012 11:03:28 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Thu, 13 Sep 2012 11:03:27 -0700 (PDT)
In-Reply-To: <CAMKF1soXwQXyVo4_p_ufGHAM63qitE67tQ9Fg3pLDCZNk5N+nw@mail.gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
	<CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
	<CAHUNapT5HfC+dbzjmuYiQ4ic4m71=iBaaJtygfrhht+JsqMyHA@mail.gmail.com>
	<CAMKF1sozZMQFS4kSbqGGnzzJ9K0O_3NCyujknFpJUZvZ4jOLBA@mail.gmail.com>
	<00209F5B-F153-4F07-BA14-54FF7D6E5762@gmail.com>
	<CAMKF1soXwQXyVo4_p_ufGHAM63qitE67tQ9Fg3pLDCZNk5N+nw@mail.gmail.com>
Date: Thu, 13 Sep 2012 14:03:27 -0400
Message-ID: <CAHUNapQ9aLCbiEG2eyLzTsBe3k9vaBen4Hfm3E0L85JQJ_j1Kg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, Elvis Dowson <elvis.dowson@gmail.com>, 
	Adrian Alonso <aalonso00@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Sep 2012 18:03:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi guys,

Thanks for all the support so far. Currently I'm still trying to make
some headway with the Xilinx-supplied external toolchain (gcc-4.1.2).

When I saw the original errors I was having configuring libtool-cross
I was concerned about the "-V must be at start" and "unrecognized
option -qversion" problems I was having. Searching online wasn't
helping very much. But then Khem correctly pointed out (indirectly)
that those weren't any problem. libtool-cross's ./configure script was
simply examining the compiler tools to see if those options were okay
or not. The real problem (as Khem pointed out) was with the -m32 and
-mcpu= options.

Looking at an older version of
meta-xilinx/conf/machine/include/tune-microblazeel.inc (which was
committed by Adrian) showed that the -mcpu= option used to be:

    -mcpu=v8.10.a

instead of:

    -mcpu=v8.10a

So with the following patch to
meta-xilinx/conf/machine/include/tune-microblazeel.inc

-------------------------------------------------------------------
diff --git a/conf/machine/include/tune-microblazeel.inc
b/conf/machine/include/tune-microblazeel.inc
index a0cf7b7..1dc1bf3 100644
--- a/conf/machine/include/tune-microblazeel.inc
+++ b/conf/machine/include/tune-microblazeel.inc
@@ -4,13 +4,13 @@ DEFAULTTUNE ?= "microblazeel"
 require conf/machine/include/microblaze/arch-microblaze.inc

 TUNEVALID[microblazeel] = "Enable microblaze endian little optimizations"
-TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "microblazeel",
"-mcpu=v8.10a", "", d)}"
+TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "microblazeel",
"-mcpu=v8.10.a", "", d)}"
 TUNE_PKGARCH = "${@bb.utils.contains("TUNE_FEATURES", "microblazeel",
"microblazeel", "microblazeel", d)}"

-TARGET_FPU = "soft"
+#TARGET_FPU = "soft"

 AVAILTUNES += "microblazeel"
-TUNE_FEATURES_tune-microblazeel = "m32 microblazeel"
+TUNE_FEATURES_tune-microblazeel = "microblazeel"
 PACKAGE_EXTRA_ARCHS_tune-microblazeel = "microblazeel"

 #MACHINEOVERRIDES .= "microblaze"
-------------------------------------------------------------------

and the following patch to
meta-xilinx/conf/machine/include/microblaze/arch-microblaze.inc

-------------------------------------------------------------------
diff --git a/conf/machine/include/microblaze/arch-microblaze.inc
b/conf/machine/include/microblaze/arch-microblaze.inc
index 485defa..f76f30e 100644
--- a/conf/machine/include/microblaze/arch-microblaze.inc
+++ b/conf/machine/include/microblaze/arch-microblaze.inc
@@ -2,16 +2,16 @@
 DEFAULTTUNE ?= "microblaze"

 TUNEVALID[m32] = "Microblaze ELF32 standard ABI"
-TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "m32", "-m32", "", d)}"
-TUNE_ARCH .= "${@bb.utils.contains("TUNE_FEATURES", "m32",
"microblaze", "", d)}"
+#TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "m32", "-m32", "", d)}"
+TUNE_ARCH .= "${@bb.utils.contains("TUNE_FEATURES", "", "microblaze", "", d)}"

 TUNEVALID[fpu-soft] = "Use software FPU."
-TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "fpu-soft",
"-msoft-float", "", d)}"
-TARGET_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "fpu-soft",
"soft", "", d)}"
+#TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "fpu-soft",
"-msoft-float", "", d)}"
+#TARGET_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "fpu-soft",
"soft", "", d)}"

 TUNE_PKGARCH ?= "${TUNE_ARCH}"

 AVAILTUNES += "microblaze"
-TUNE_FEATURES_tune-microblaze ?= "m32 fpu-soft"
+#TUNE_FEATURES_tune-microblaze ?= "m32 fpu-soft"
 PACKAGE_EXTRA_ARCHS_tune-microblaze = "microblaze"
-------------------------------------------------------------------

Basically:
- remove any references to TARGET_FPU/fpu-soft/soft/FPU/...
- remove any references to m32/32/...
- change v8.10a to v8.10.a

I was able to get libtool-cross to configure.

While building libtool-cross, however, I encountered another problem,
something to do with "--hash-style=gnu" not supported. This problem I
was able to fix by adding the following line to my conf/local.conf:

    TARGET_LINK_HASH_STYLE = ""

With this last change I was able to get past libtool-cross which built
just fine.

The build then progresses for quite a while past that but then finally
fails trying to configure libffi:

  error: "libffi has not been ported to microblaze-unknown-linux-gnu."

So now I'm basically digging through the various layers to investigate
making my own really small "distribution". If all I really want to do
is get to a command-line, isn't all I _really_ need just a kernel,
busybox, and a small set of configuration files?

