Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.119.1619198344022511737
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 10:19:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eNDeGsuQ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jpewhacker@gmail.com)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 48E5E38C0534
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 17:19:03 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id g4-20020a9d6b040000b029029debbbb3ecso12948333otp.7
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 10:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=UyZkPfxm20dMy8F8je9YsteRlcAoUicc9AMJs+vbtgk=;
        b=eNDeGsuQesFhGNALyP1ERyRbshBRRWjhsTwb6Ygrzgr3a0jmDfde3vXI7FIxUMwX3C
         ixKMjxSCpoEfJHmQvjKPWA+7OEDhfUPvaEJ+lPUIJzQDYWDNsSZ2K8Bq6zLttCIK8YD+
         6Z6zbT/Ye1HZcGJ8146n3eu3hPmuuTDvsU8hX/agif2l26OlvkwFcvBYyM7RThIRQEte
         ms/9vDMjAwAQF+e/pj89CCbTd+3CvGEU2/yk/1dtYNnctWP2HaeJpnE04QFveN08+DDM
         eW1rTDBwabtiN4J7196o4wvHaKCoOWWD+qIP76Q9apRYBByDdqSc6v4rjP9B6ZwTu1XW
         Ualw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=UyZkPfxm20dMy8F8je9YsteRlcAoUicc9AMJs+vbtgk=;
        b=ONLvmOnSZlbm4M3oPSUYpkXCbXzT6RT43qEe9ihl/qX7zE+1tvkPlyotGUU5FZoyIq
         jn/VFT+wFF6Fuw6xkg444hVDZl+ZgEsRfOkosjT4rh433CJszJtBBqORIM+I9Vm9T2ft
         EjHQFCzPpKSfayPjo6X+5CL267Yc0bCNKuhBK+odwQUjVt8kPoxj/+PmxLYKVVGHOT/Z
         30kEZ0gyRLK1k6SK1arsRUHUs4ci7Ct4+flISR35Ej6vNj2ROoGK0F1Sq6IeQEqYciIf
         BlztGQhfZEXNWl/512X2IsX6CQXDJiC6k9BR8+b3r0vmVjfA7KJcogNkn50ng+PSJ9Aa
         Sx5Q==
X-Gm-Message-State: AOAM532vzMQvIakLQQENJICgveTjhyeJS73yI6TtVye28jF/aq+T11aU
	wCvr7cATzjQAUQltzvjwM14=
X-Google-Smtp-Source: ABdhPJwPGyh7rSj2gfT2cMvJkrHptfdd1pQemhnGdBqQR2vQG+YO7Hnod1hGKxMGcXZ+EHwehBF7hA==
X-Received: by 2002:a9d:5a10:: with SMTP id v16mr4241966oth.187.1619198342429;
        Fri, 23 Apr 2021 10:19:02 -0700 (PDT)
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id h59sm1564814otb.29.2021.04.23.10.19.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 10:19:02 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH v3 0/7] OP-TEE support for ARM and rk3399
To: Yann Dirson <yann.dirson@blade-group.com>, yocto@yoctoproject.org
Cc: twoerner@gmail.com, Yann Dirson <yann@blade-group.com>
References: <20210423165826.2229787-1-yann@blade-group.com>
Message-ID: <4253bde9-d621-6477-6797-25ba4bdb2e23@gmail.com>
Date: Fri, 23 Apr 2021 12:19:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210423165826.2229787-1-yann@blade-group.com>
Content-Type: multipart/alternative;
 boundary="------------1ED84078B7E3FBD4D6908502"
Content-Language: en-US

--------------1ED84078B7E3FBD4D6908502
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 4/23/21 11:58 AM, Yann Dirson wrote:
> From: Yann Dirson <yann@blade-group.com>
>
> Changes from v2:
>   - turn the DISTRO_FEATURE idea into separate RFC patches so as to allow
>     merging of basic support
>   - remove optee-os patch that proved unnecessary
>
> Changes from v1:
>   - fix last-minute typo in TFA_SPD setting, which led to optee not being started
>   - use PACKAGECONFIG[optee] to simplify recipes as suggested on meta-arm ml
>
> Yann Dirson (7):
>    trusted-firmware-a: include optee support when requested by
>      DISTRO_FEATURE
>    u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
>    optee-os: enable rk3399 support, including serial console support
>    RFC optee: new "optee" DISTRO_FEATURE to enable optee-os integration
>    RFC: optee: only enable the recipes when "optee" is included in
>      DISTRO_FEATURES
>    WIP nanopi-m4: declare OP-TEE presence in devicetree
>    WIP kernel config feature for OP-TEE activation

In general, it seems like a lot of these changes should be in the 
upstream recipes, not the meta-rockchip bbappends.

Also, the things that do belong in this layer need proper variable 
overrides to keep the layer (mostly) Yocto project compliant.

>
>   conf/machine/include/rk3399.inc               |  2 +
>   .../trusted-firmware-a_%.bbappend             | 14 +++++
>   recipes-bsp/u-boot/u-boot%.bbappend           |  9 ++++
>   .../0001-nanopi-declare-optee-presence.patch  | 30 +++++++++++
>   recipes-kernel/linux/files/bsp/tee.cfg        |  2 +
>   recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
>   ...399-enable-serial-console-by-default.patch | 52 +++++++++++++++++++
>   recipes-security/optee/optee%.bbappend        |  4 ++
>   recipes-security/optee/optee-os_%.bbappend    |  8 +++
>   9 files changed, 122 insertions(+)
>   create mode 100644 recipes-kernel/linux/files/0001-nanopi-declare-optee-presence.patch
>   create mode 100644 recipes-kernel/linux/files/bsp/tee.cfg
>   create mode 100644 recipes-security/optee/files/0001-rk3399-enable-serial-console-by-default.patch
>   create mode 100644 recipes-security/optee/optee%.bbappend
>   create mode 100644 recipes-security/optee/optee-os_%.bbappend
>
>
> 
>

--------------1ED84078B7E3FBD4D6908502
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/23/21 11:58 AM, Yann Dirson wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20210423165826.2229787-1-yann@blade-group.com">
      <pre class="moz-quote-pre" wrap="">From: Yann Dirson <a class="moz-txt-link-rfc2396E" href="mailto:yann@blade-group.com">&lt;yann@blade-group.com&gt;</a>

Changes from v2:
 - turn the DISTRO_FEATURE idea into separate RFC patches so as to allow
   merging of basic support
 - remove optee-os patch that proved unnecessary

Changes from v1:
 - fix last-minute typo in TFA_SPD setting, which led to optee not being started
 - use PACKAGECONFIG[optee] to simplify recipes as suggested on meta-arm ml

Yann Dirson (7):
  trusted-firmware-a: include optee support when requested by
    DISTRO_FEATURE
  u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
  optee-os: enable rk3399 support, including serial console support
  RFC optee: new "optee" DISTRO_FEATURE to enable optee-os integration
  RFC: optee: only enable the recipes when "optee" is included in
    DISTRO_FEATURES
  WIP nanopi-m4: declare OP-TEE presence in devicetree
  WIP kernel config feature for OP-TEE activation</pre>
    </blockquote>
    <p>In general, it seems like a lot of these changes should be in the
      upstream recipes, not the meta-rockchip bbappends.<br>
    </p>
    <p>Also, the things that do belong in this layer need proper
      variable overrides to keep the layer (mostly) Yocto project
      compliant.<br>
    </p>
    <blockquote type="cite"
      cite="mid:20210423165826.2229787-1-yann@blade-group.com">
      <pre class="moz-quote-pre" wrap="">

 conf/machine/include/rk3399.inc               |  2 +
 .../trusted-firmware-a_%.bbappend             | 14 +++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  9 ++++
 .../0001-nanopi-declare-optee-presence.patch  | 30 +++++++++++
 recipes-kernel/linux/files/bsp/tee.cfg        |  2 +
 recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
 ...399-enable-serial-console-by-default.patch | 52 +++++++++++++++++++
 recipes-security/optee/optee%.bbappend        |  4 ++
 recipes-security/optee/optee-os_%.bbappend    |  8 +++
 9 files changed, 122 insertions(+)
 create mode 100644 recipes-kernel/linux/files/0001-nanopi-declare-optee-presence.patch
 create mode 100644 recipes-kernel/linux/files/bsp/tee.cfg
 create mode 100644 recipes-security/optee/files/0001-rk3399-enable-serial-console-by-default.patch
 create mode 100644 recipes-security/optee/optee%.bbappend
 create mode 100644 recipes-security/optee/optee-os_%.bbappend

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------1ED84078B7E3FBD4D6908502--
