Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.7101.1617802056023591027
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 06:27:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=T9OaEUAV;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jpewhacker@gmail.com)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 49FD738C0556
	for <yocto@yoctoproject.org>; Wed,  7 Apr 2021 13:27:35 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id 68-20020a9d0f4a0000b02901b663e6258dso17964113ott.13
        for <yocto@yoctoproject.org>; Wed, 07 Apr 2021 06:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=OcXHU5UBJ944IaOQjNXoE/3QBs3cs35ADeuTFtMYyus=;
        b=T9OaEUAVphMuxsN0yT/KMMKGbnL8yfEuAdVuyItpNkiOXaZ5L3xAwi9RYgNCr1NGAJ
         9uLTG4omRpPwqFonutA7TNCHC0Ic57p/ocz9RK0aZbc6wx6hQmD0DC+nx38NtVBfmF4Y
         TCYaNaOoDiPP7UPDMmj3Fk8iiq4u5Uq46wNuu2vcUrkCt5+oBherDrCoAcxCc1XhxzqZ
         bjoNZzVH5oSzwK8VCDtdtHypHOF4ajPW53hXbzyqsf8dcIcyazPJw5hWhjV/SW9pul7Z
         XRjoF4WGCIT818rmFJHBnwoyjl6smx+YtePk9AfNOn0RvVPv2I+ZnwvZI2hlZqeLkpEB
         Z2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=OcXHU5UBJ944IaOQjNXoE/3QBs3cs35ADeuTFtMYyus=;
        b=hIrXkV8yOX4OWDq/OjHA2u7fYpxg+HA1saoQ0NxAen6c4FCbTauqDvOKSkjiJM6JwR
         nJEz0/AJrHbIcZpzOK1WIPYu7NdmUl854vvXhv9MQGISIaov0VOXs6DFTUgq2qrIOwvC
         O9YekC0wXCTF/uvAT9SWD9R3puRFlAhK4tTj/lwyAVCnwA2MyBFpQdIu385iekJGZFhp
         x2wCaUilk3mmdz9eimSn3gue/S/clQWM8LFWBJIlJLeQlQPoTZmbGVb210YFSZHelt4E
         kfNtEzGBBOz1vV9jjjRGNk8+LBv0I4FJNMfOiI99UskE/6WaR3NJYIiY+v+ZgTpuYqSL
         xd3Q==
X-Gm-Message-State: AOAM533yN4DeL2bF1Ndm8q/i0FES1Gvaj7NRumXyA0P/H30ojIuCGkyQ
	xSY9HbGWP1NecctykpSQ0Mc=
X-Google-Smtp-Source: ABdhPJwhRxfnm9D285qJ4YSvkk6wWvQbtkajh9Myo8qklUOJARz9PD6KR4MkIl1QDpGDk7xcNACq/w==
X-Received: by 2002:a9d:12cb:: with SMTP id g69mr2923605otg.77.1617802054135;
        Wed, 07 Apr 2021 06:27:34 -0700 (PDT)
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id z25sm5546586otj.68.2021.04.07.06.27.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 06:27:33 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] trusted-firmware-a: use 1500000 baud for serial console
To: Yann Dirson <yann.dirson@blade-group.com>, yocto@yoctoproject.org
Cc: twoerner@gmail.com, Yann Dirson <yann@blade-group.com>
References: <20210406234700.2493404-1-yann@blade-group.com>
Message-ID: <65156564-ec54-8c0e-40db-e42729f6daf3@gmail.com>
Date: Wed, 7 Apr 2021 08:27:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210406234700.2493404-1-yann@blade-group.com>
Content-Type: multipart/alternative;
 boundary="------------AAECE6231C90364DAD909AC2"
Content-Language: en-US

--------------AAECE6231C90364DAD909AC2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 4/6/21 6:47 PM, Yann Dirson wrote:
> From: Yann Dirson <yann@blade-group.com>
>
> TF-A runs between two u-boot stages which both uses 1500000 baud, it
> just makes no sense to use the same UART at a different rate.
>
> Here is a sample session with the successive stages, with TF-A artificially
> separated for emphasis:
>
>   [20210406-175438.135934] U-Boot TPL 2021.01 (Jan 11 2021 - 18:11:43)
>   [20210406-175438.135956] Channel 0: DDR3, 933MHz
>   [20210406-175438.236974] BW=32 Col=10 Bk=8 CS0 Row=15 CS=1 Die BW=16 Size=1024MB
>   [20210406-175438.237000] Channel 1: DDR3, 933MHz
>   [20210406-175438.237004] BW=32 Col=10 Bk=8 CS0 Row=15 CS=1 Die BW=16 Size=1024MB
>   [20210406-175438.237008] 256B stride
>   [20210406-175438.237012] Trying to boot from BOOTROM
>   [20210406-175438.237015] Returning to boot ROM...
>   [20210406-175438.237018]
>   [20210406-175438.573394] U-Boot SPL 2021.01 (Jan 11 2021 - 18:11:43 +0000)
>   [20210406-175438.573431] Trying to boot from MMC1
>
>   [20210406-175438.589254] NOTICE:  BL31: v2.3():v2.3-dirty
>   [20210406-175440.534055] NOTICE:  BL31: Built : 15:56:43, Apr 20 2020
>
>   [20210406-175441.393423] U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)
>   [20210406-175441.393429]
>   [20210406-175441.393433] SoC: Rockchip rk3399

Very good. TF-A should work "out of the box" in meta-rockchip, so I 
think changing it's baudrate to 1500000 makes sense at this point (at 
least until u-boot can pass the DTB)

>
> Signed-off-by: Yann Dirson <yann@blade-group.com>
> ---
>   .../files/serial-console-baudrate.patch       | 35 +++++++++++++++++++
>   .../trusted-firmware-a_%.bbappend             |  5 +++
>   2 files changed, 40 insertions(+)
>   create mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
>
> diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> new file mode 100644
> index 0000000..10b5a2b
> --- /dev/null
> +++ b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> @@ -0,0 +1,35 @@
> +From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
> +From: Yann Dirson <yann@blade-group.com>
> +Date: Tue, 6 Apr 2021 17:28:45 +0200
> +Subject: [PATCH] Set serial console baudrate back to 1500000.
> +
> +TF-A runs between two u-boot stages which both uses 1500000 baud, it
> +just makes no sense to use the same UART at a different rate.
> +
> +This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8fbce62.
> +Main reason for that change stated in https://developer.trustedfirmware.org/T762
> +is ChromeOS compatibility.
> +
> +Looks like this patch may become unnecessary in the future, when
> +u-boot and TF-A get to communicate this value.

Please add Upstream-Status:


> +
> +---
> + plat/rockchip/rk3399/rk3399_def.h | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk3399/rk3399_def.h
> +index ba83242eb..8d6ecfbe6 100644
> +--- a/plat/rockchip/rk3399/rk3399_def.h
> ++++ b/plat/rockchip/rk3399/rk3399_def.h
> +@@ -17,7 +17,7 @@
> + /**************************************************************************
> +  * UART related constants
> +  **************************************************************************/
> +-#define RK3399_BAUDRATE			115200
> ++#define RK3399_BAUDRATE			1500000
> + #define RK3399_UART_CLOCK		24000000
> +
> + /******************************************************************************
> +--
> +2.30.2
> +
> diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> index 442dee8..1942c17 100644
> --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> @@ -4,3 +4,8 @@ DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
>   
>   COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
>   COMPATIBLE_MACHINE_append_rk3328 = "|rk3328"
> +
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +SRC_URI += "\
> +    file://serial-console-baudrate.patch \
> +"
>
> 
>

--------------AAECE6231C90364DAD909AC2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/6/21 6:47 PM, Yann Dirson wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20210406234700.2493404-1-yann@blade-group.com">
      <pre class="moz-quote-pre" wrap="">From: Yann Dirson <a class="moz-txt-link-rfc2396E" href="mailto:yann@blade-group.com">&lt;yann@blade-group.com&gt;</a>

TF-A runs between two u-boot stages which both uses 1500000 baud, it
just makes no sense to use the same UART at a different rate.

Here is a sample session with the successive stages, with TF-A artificially
separated for emphasis:

 [20210406-175438.135934] U-Boot TPL 2021.01 (Jan 11 2021 - 18:11:43)
 [20210406-175438.135956] Channel 0: DDR3, 933MHz
 [20210406-175438.236974] BW=32 Col=10 Bk=8 CS0 Row=15 CS=1 Die BW=16 Size=1024MB
 [20210406-175438.237000] Channel 1: DDR3, 933MHz
 [20210406-175438.237004] BW=32 Col=10 Bk=8 CS0 Row=15 CS=1 Die BW=16 Size=1024MB
 [20210406-175438.237008] 256B stride
 [20210406-175438.237012] Trying to boot from BOOTROM
 [20210406-175438.237015] Returning to boot ROM...
 [20210406-175438.237018]
 [20210406-175438.573394] U-Boot SPL 2021.01 (Jan 11 2021 - 18:11:43 +0000)
 [20210406-175438.573431] Trying to boot from MMC1

 [20210406-175438.589254] NOTICE:  BL31: v2.3():v2.3-dirty
 [20210406-175440.534055] NOTICE:  BL31: Built : 15:56:43, Apr 20 2020

 [20210406-175441.393423] U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)
 [20210406-175441.393429]
 [20210406-175441.393433] SoC: Rockchip rk3399</pre>
    </blockquote>
    <p>Very good. TF-A should work "out of the box" in meta-rockchip, so
      I think changing it's baudrate to 1500000 makes sense at this
      point (at least until u-boot can pass the DTB)<br>
    </p>
    <blockquote type="cite"
      cite="mid:20210406234700.2493404-1-yann@blade-group.com">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Yann Dirson <a class="moz-txt-link-rfc2396E" href="mailto:yann@blade-group.com">&lt;yann@blade-group.com&gt;</a>
---
 .../files/serial-console-baudrate.patch       | 35 +++++++++++++++++++
 .../trusted-firmware-a_%.bbappend             |  5 +++
 2 files changed, 40 insertions(+)
 create mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch

diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
new file mode 100644
index 0000000..10b5a2b
--- /dev/null
+++ b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
@@ -0,0 +1,35 @@
+From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
+From: Yann Dirson <a class="moz-txt-link-rfc2396E" href="mailto:yann@blade-group.com">&lt;yann@blade-group.com&gt;</a>
+Date: Tue, 6 Apr 2021 17:28:45 +0200
+Subject: [PATCH] Set serial console baudrate back to 1500000.
+
+TF-A runs between two u-boot stages which both uses 1500000 baud, it
+just makes no sense to use the same UART at a different rate.
+
+This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8fbce62.
+Main reason for that change stated in <a class="moz-txt-link-freetext" href="https://developer.trustedfirmware.org/T762">https://developer.trustedfirmware.org/T762</a>
+is ChromeOS compatibility.
+
+Looks like this patch may become unnecessary in the future, when
+u-boot and TF-A get to communicate this value.</pre>
    </blockquote>
    <p>Please add Upstream-Status:<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:20210406234700.2493404-1-yann@blade-group.com">
      <pre class="moz-quote-pre" wrap="">
+
+---
+ plat/rockchip/rk3399/rk3399_def.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk3399/rk3399_def.h
+index ba83242eb..8d6ecfbe6 100644
+--- a/plat/rockchip/rk3399/rk3399_def.h
++++ b/plat/rockchip/rk3399/rk3399_def.h
+@@ -17,7 +17,7 @@
+ /**************************************************************************
+  * UART related constants
+  **************************************************************************/
+-#define RK3399_BAUDRATE			115200
++#define RK3399_BAUDRATE			1500000
+ #define RK3399_UART_CLOCK		24000000
+ 
+ /******************************************************************************
+-- 
+2.30.2
+
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 442dee8..1942c17 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -4,3 +4,8 @@ DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
 
 COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
 COMPATIBLE_MACHINE_append_rk3328 = "|rk3328"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+SRC_URI += "\
+    <a class="moz-txt-link-freetext" href="file://serial-console-baudrate.patch">file://serial-console-baudrate.patch</a> \
+"
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------AAECE6231C90364DAD909AC2--
