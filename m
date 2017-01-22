Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5658E00595; Sat, 21 Jan 2017 19:53:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1DD0E0043F
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 19:52:58 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id i68so10709878uad.1
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 19:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/GyLrzLzGYnEongbbECuD9bA8HorEoRw70G5OVolv7w=;
	b=TYCCWrVfloaKvBUfdiMcDICTjZhyvK9xn9e8cX+dxcZh7f8POjmWwDquV5kzXhzgbT
	lZPTw8Rd73rftRi/kb3Ql8CkAIqbutVv8082b0fe595HKuus5mKwpRsuJPz81JxX2EgV
	ztgHh7EDA9KuONutMAafi+AgFJ1cCH/g+WAhWf1TybEMCDqjVBKN2qNi9+wZ+zc9b+6L
	6h1fEog0GChVyAv6CU3KwGPWYPig6aMpOoA9M8JQqw6LKMJcDm9oW81I9ERCdSs8xjqC
	63WYD8OfixSMrLbmcooocWgDLsSIQiXXtpo9j0PqoJqdFFRKPPlQdCkZeMxNu9zknjMT
	2JjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/GyLrzLzGYnEongbbECuD9bA8HorEoRw70G5OVolv7w=;
	b=INnnlZuxlNHW4dOEDvAQnmP4iOxW24f9DLRFXEInrfmFqrlgLz5O6w1cNuQT5JS+3/
	1icJ2H/4tYlIuwWGGoeJ9vTVaMWrp9LfASHuYMoOYL79PJ4APn7dunF9keRlqpCGzEoY
	Eo0kgfW3NwOtuTt8/8Q2B/l+dgJFipuH+hsQsUkxe3hMH0R9rBNUlLQr/u3kws931uT1
	TrBi4NhmIMKzNuCilUKnsFH8ZRN3uVZCGDm2mqMlQL5xzJ4xsiTY4fWN5tlCifWuxHM8
	OzWNlaVTFsri9hiINN5Epmg1UIV6BKECqfzw9mq+EuXIL2cGrfqzCAfcPk5p6icS9Ki6
	27vg==
X-Gm-Message-State: AIkVDXKf6MhTho0VywIdvk5/5+r3jzwBZsV9TFqKAmpTMdfZcK/ThSrd0KM1bZmkAc8Ht4gl9uPpB23CnN4oJQ==
X-Received: by 10.176.6.130 with SMTP id g2mr9780881uag.91.1485057177385; Sat,
	21 Jan 2017 19:52:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Sat, 21 Jan 2017 19:52:27 -0800 (PST)
In-Reply-To: <CAK18fxHEOoRgtBk_vPYwtR+u338M5kdvUPPEyW=Hg4bNTSdhfA@mail.gmail.com>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
	<CAK18fxHEOoRgtBk_vPYwtR+u338M5kdvUPPEyW=Hg4bNTSdhfA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 21 Jan 2017 19:52:27 -0800
Message-ID: <CAMKF1so6nv8sAm-ZkOTG8uVkZg9oatg4ptCU8HPB0rYAitPU=g@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][morty][PATCH 1/6] linux-raspberrypi: Drop v4.1
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
X-List-Received-Date: Sun, 22 Jan 2017 03:53:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 20, 2017 at 9:40 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Jan 19, 2017 at 11:50 AM, Andrei Gherzan <andrei@gherzan.ro> wrot=
e:
>> From: Paul Barker <paul@paulbarker.me.uk>
>>
>> The linux-raspberrypi 4.1 recipe has been broken for a while, probably s=
ince
>> 09b76a43f6f6852406de385a45f472c52b6a8571. It should now be safe to drop =
this
>> version.
>>
>> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
>> ---
>>  .../0001-dts-add-overlay-for-pitft22.patch         | 110 --------------=
-------
>>  ...ove-unused-sm_cache_map_vector-definition.patch |  31 ------
>>  .../linux-raspberrypi-4.1/0003-fix-gcc6.patch      |  78 --------------=
-
>>  recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  12 ---
>>  4 files changed, 231 deletions(-)
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-=
add-overlay-for-pitft22.patch
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs=
-Remove-unused-sm_cache_map_vector-definition.patch
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-=
gcc6.patch
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-ove=
rlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dt=
s-add-overlay-for-pitft22.patch
>> deleted file mode 100644
>> index e6e0a84..0000000
>> --- a/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-fo=
r-pitft22.patch
>> +++ /dev/null
>> @@ -1,110 +0,0 @@
>> -From a28bd410022b32a64e208f04b45add6326990332 Mon Sep 17 00:00:00 2001
>> -From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D <petter@technux.se>
>> -Date: Fri, 8 Jan 2016 09:02:44 +0100
>> -Subject: [PATCH] dts: add overlay for pitft22
>> -MIME-Version: 1.0
>> -Content-Type: text/plain; charset=3DUTF-8
>> -Content-Transfer-Encoding: 8bit
>> -
>> -Upstream-Status: Pending
>> -
>> -Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
>> -https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
>> -
>> -Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
>> ----
>> - arch/arm/boot/dts/overlays/Makefile            |  1 +
>> - arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 ++++++++++++++++++=
++++++++
>> - 2 files changed, 70 insertions(+)
>> - create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
>> -
>> -diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/ov=
erlays/Makefile
>> -index 1a60e9c..a2535a2 100644
>> ---- a/arch/arm/boot/dts/overlays/Makefile
>> -+++ b/arch/arm/boot/dts/overlays/Makefile
>> -@@ -37,6 +37,7 @@ dtb-$(RPI_DT_OVERLAYS) +=3D mmc-overlay.dtb
>> - dtb-$(RPI_DT_OVERLAYS) +=3D mz61581-overlay.dtb
>> - dtb-$(RPI_DT_OVERLAYS) +=3D piscreen-overlay.dtb
>> - dtb-$(RPI_DT_OVERLAYS) +=3D piscreen2r-overlay.dtb
>> -+dtb-$(RPI_DT_OVERLAYS) +=3D pitft22-overlay.dtb
>> - dtb-$(RPI_DT_OVERLAYS) +=3D pitft28-capacitive-overlay.dtb
>> - dtb-$(RPI_DT_OVERLAYS) +=3D pitft28-resistive-overlay.dtb
>> - dtb-$(RPI_DT_OVERLAYS) +=3D pps-gpio-overlay.dtb
>> -diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts b/arch/arm/=
boot/dts/overlays/pitft22-overlay.dts
>> -new file mode 100755
>> -index 0000000..894ba22
>> ---- /dev/null
>> -+++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
>> -@@ -0,0 +1,69 @@
>> -+/*
>> -+ * Device Tree overlay for pitft by Adafruit
>> -+ *
>> -+ */
>> -+
>> -+/dts-v1/;
>> -+/plugin/;
>> -+
>> -+/ {
>> -+        compatible =3D "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
>> -+
>> -+        fragment@0 {
>> -+                target =3D <&spi0>;
>> -+                __overlay__ {
>> -+                        status =3D "okay";
>> -+
>> -+                        spidev@0{
>> -+                                status =3D "disabled";
>> -+                        };
>> -+
>> -+                        spidev@1{
>> -+                                status =3D "disabled";
>> -+                        };
>> -+                };
>> -+        };
>> -+
>> -+        fragment@1 {
>> -+                target =3D <&gpio>;
>> -+                __overlay__ {
>> -+                        pitft_pins: pitft_pins {
>> -+                                brcm,pins =3D <25>;
>> -+                                brcm,function =3D <1>; /* out */
>> -+                                brcm,pull =3D <0>; /* none */
>> -+                        };
>> -+                };
>> -+        };
>> -+
>> -+        fragment@2 {
>> -+                target =3D <&spi0>;
>> -+                __overlay__ {
>> -+                        /* needed to avoid dtc warning */
>> -+                        #address-cells =3D <1>;
>> -+                        #size-cells =3D <0>;
>> -+
>> -+                        pitft: pitft@0{
>> -+                                compatible =3D "ilitek,ili9340";
>> -+                                reg =3D <0>;
>> -+                                pinctrl-names =3D "default";
>> -+                                pinctrl-0 =3D <&pitft_pins>;
>> -+
>> -+                                spi-max-frequency =3D <32000000>;
>> -+                                rotate =3D <90>;
>> -+                                fps =3D <25>;
>> -+                                bgr;
>> -+                                buswidth =3D <8>;
>> -+                                dc-gpios =3D <&gpio 25 0>;
>> -+                                debug =3D <0>;
>> -+                        };
>> -+
>> -+                };
>> -+        };
>> -+
>> -+        __overrides__ {
>> -+                speed =3D   <&pitft>,"spi-max-frequency:0";
>> -+                rotate =3D  <&pitft>,"rotate:0";
>> -+                fps =3D     <&pitft>,"fps:0";
>> -+                debug =3D   <&pitft>,"debug:0";
>> -+        };
>> -+};
>> ---
>> -1.9.1
>> -
>> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove=
-unused-sm_cache_map_vector-definition.patch b/recipes-kernel/linux/linux-r=
aspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
>> deleted file mode 100644
>> index 8d4a900..0000000
>> --- a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused=
-sm_cache_map_vector-definition.patch
>> +++ /dev/null
>> @@ -1,31 +0,0 @@
>> -The code using it also ifdef'ed with 0, anyyd gcc 6
>> -complains
>> -
>> -error: 'sm_cache_map_vector' defined but not used
>> -
>> -The code using it also ifdef'ed out
>> -
>> -Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528=
]
>> -
>> -Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ----
>> - drivers/char/broadcom/vc_sm/vmcs_sm.c | 2 ++
>> - 1 file changed, 2 insertions(+)
>> -
>> ---- a/drivers/char/broadcom/vc_sm/vmcs_sm.c
>> -+++ b/drivers/char/broadcom/vc_sm/vmcs_sm.c
>> -@@ -197,12 +197,14 @@ struct SM_STATE_T {
>> - static struct SM_STATE_T *sm_state;
>> - static int sm_inited;
>> -
>> -+#if 0
>> - static const char *const sm_cache_map_vector[] =3D {
>> -       "(null)",
>> -       "host",
>> -       "videocore",
>> -       "host+videocore",
>> - };
>> -+#endif
>> -
>> - /* ---- Private Function Prototypes ----------------------------------=
---- */
>> -
>> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.pa=
tch b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
>> deleted file mode 100644
>> index 61ec2fb..0000000
>> --- a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
>> +++ /dev/null
>> @@ -1,78 +0,0 @@
>> -Fix compile with GCC6
>> -
>> -Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528=
]
>> -
>> -Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> -
>> -Index: source/include/linux/compiler-gcc6.h
>> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> ---- /dev/null
>> -+++ source/include/linux/compiler-gcc6.h
>> -@@ -0,0 +1,67 @@
>> -+#ifndef __LINUX_COMPILER_H
>> -+#error "Please don't include <linux/compiler-gcc5.h> directly, include=
 <linux/compiler.h> instead."
>> -+#endif
>> -+
>> -+#define __used                                __attribute__((__used__)=
)
>> -+#define __must_check                  __attribute__((warn_unused_resul=
t))
>> -+#define __compiler_offsetof(a, b)     __builtin_offsetof(a, b)
>> -+
>> -+/* Mark functions as cold. gcc will assume any path leading to a call
>> -+   to them will be unlikely.  This means a lot of manual unlikely()s
>> -+   are unnecessary now for any paths leading to the usual suspects
>> -+   like BUG(), printk(), panic() etc. [but let's keep them for now for
>> -+   older compilers]
>> -+
>> -+   Early snapshots of gcc 4.3 don't support this and we can't detect t=
his
>> -+   in the preprocessor, but we can live with this because they're unre=
leased.
>> -+   Maketime probing would be overkill here.
>> -+
>> -+   gcc also has a __attribute__((__hot__)) to move hot functions into
>> -+   a special section, but I don't see any sense in this right now in
>> -+   the kernel context */
>> -+#define __cold                        __attribute__((__cold__))
>> -+
>> -+#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __C=
OUNTER__)
>> -+
>> -+#ifndef __CHECKER__
>> -+# define __compiletime_warning(message) __attribute__((warning(message=
)))
>> -+# define __compiletime_error(message) __attribute__((error(message)))
>> -+#endif /* __CHECKER__ */
>> -+
>> -+/*
>> -+ * Mark a position in code as unreachable.  This can be used to
>> -+ * suppress control flow warnings after asm blocks that transfer
>> -+ * control elsewhere.
>> -+ *
>> -+ * Early snapshots of gcc 4.5 don't support this and we can't detect
>> -+ * this in the preprocessor, but we can live with this because they're
>> -+ * unreleased.  Really, we need to have autoconf for the kernel.
>> -+ */
>> -+#define unreachable() __builtin_unreachable()
>> -+
>> -+/* Mark a function definition as prohibited from being cloned. */
>> -+#define __noclone     __attribute__((__noclone__))
>> -+
>> -+/*
>> -+ * Tell the optimizer that something else uses this function or variab=
le.
>> -+ */
>> -+#define __visible __attribute__((externally_visible))
>> -+
>> -+/*
>> -+ * GCC 'asm goto' miscompiles certain code sequences:
>> -+ *
>> -+ *   http://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D58670
>> -+ *
>> -+ * Work it around via a compiler barrier quirk suggested by Jakub Jeli=
nek.
>> -+ *
>> -+ * (asm goto is automatically volatile - the naming reflects this.)
>> -+ */
>> -+#define asm_volatile_goto(x...)       do { asm goto(x); asm (""); } wh=
ile (0)
>> -+
>> -+#ifdef CONFIG_ARCH_USE_BUILTIN_BSWAP
>> -+#define __HAVE_BUILTIN_BSWAP32__
>> -+#define __HAVE_BUILTIN_BSWAP64__
>> -+#define __HAVE_BUILTIN_BSWAP16__
>> -+#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
>> -+
>> -+#define KASAN_ABI_VERSION 4
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-ker=
nel/linux/linux-raspberrypi_4.1.bb
>> deleted file mode 100644
>> index 87c77b8..0000000
>> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
>> +++ /dev/null
>> @@ -1,12 +0,0 @@
>> -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>> -
>> -LINUX_VERSION ?=3D "4.1.21"
>> -
>> -SRCREV =3D "ff45bc0e8917c77461b2901e2743e6339bb70413"
>> -SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3Drpi-4.1.y \
>> -           file://0001-dts-add-overlay-for-pitft22.patch \
>> -           file://0002-vmcs-Remove-unused-sm_cache_map_vector-definitio=
n.patch \
>> -           file://0003-fix-gcc6.patch \
>> -          "
>> -
>> -require linux-raspberrypi.inc
>> --
>> 2.7.4
>>
>
> Merged this entire series for morty.
>
> We have to decide what to do with the versions of kernel that rebase
> often making the recipes fail. To do as follow up patches.

We should remove them from release branches too.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

