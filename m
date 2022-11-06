Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654C7C4332F
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 15:44:02 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web10.17541.1667749439369221191
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 07:43:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=N/NJivQV;
 spf=pass (domain: mistywest.com, ip: 209.85.215.170, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pg1-f170.google.com with SMTP id f63so8419975pgc.2
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 07:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cwQpj26LUKXCEikQ7DP2NknL3shUagL4Q33YUU0KBUs=;
        b=N/NJivQVfz/LA9mkU82iisxq/TMNtMZnZEfytPR26RnVlzwXpNUAQFhHhmZwlc39Uf
         I6Zx+hNl6JxipF1kf44q91mP7eHJ2Oe+1Ls6n8dzyx/LwxRP1KeMgy3xx09z3k7By21g
         s2MKVrVx/AdJqgNyR2+oR9N5PDdT2FjHYnfKfA4D1VwOrrPFXNyHr+cAL3utLcmGMnDQ
         Y6DsQyzXz8i3/S4NoK71LtIHw+T361yt2Tby3zJPWkXwW2vMQ6+bTfxw/4UqfFJFtM+2
         jK5hvF3/c1ZMlKQq0i8tglHwKe/ogXU9i42A3WUyGyXOCYAOmFmMZgBFpUNyVUpo/lHX
         t9Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cwQpj26LUKXCEikQ7DP2NknL3shUagL4Q33YUU0KBUs=;
        b=4TCwaTLs9fQei1LW5OEKAWr8PNTSZFYnt1KCMmUXCoO2ULgQQ8frh7K1dZftBadoXk
         QdHXujHosje4whshYpUmQREi6DFEs1hrhv3xw1GABNPAcc+Aap87Ec8sxzhrAtc6pYu9
         XF6lfYRqjLT6d66GKcjwRcDYr1Dw8nYm6kZh/b3/KXzzbS8cFaUZw2a5q62MGbjg29nT
         vHBCmkAMRPYe7ytG1zgeme3RsUEAf4fnEZ0b0AX1PTD6pM7slkB3sf0aNSlisL5NT83L
         I3L88BmPtSDE6JXJ+aSiE0yc+XccVCakpiLIIChQkhGIAYDOkdW5adyMxJoenzGHpMnF
         v6CA==
X-Gm-Message-State: ACrzQf2RZvh96TX0xVEh26RP2djk1QTrR8jrRe4SaP+NT5cyrnaHBmk8
	CpfkWcIOeb8nJjaoLIkNt7HPrg==
X-Google-Smtp-Source: AMsMyM6O6lmpgy0EtxyQmGEv6JiRT+F0Q4mI39GlZ5KFzMQymJt+nm8IqqVtmXpvE6VQsuNpPT9DuQ==
X-Received: by 2002:a05:6a00:429a:b0:56b:a4f8:8f2d with SMTP id bx26-20020a056a00429a00b0056ba4f88f2dmr45608277pfb.24.1667749438432;
        Sun, 06 Nov 2022 07:43:58 -0800 (PST)
Received: from [192.168.1.223] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id v10-20020a1709028d8a00b001806445887asm628819plo.223.2022.11.06.07.43.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 07:43:58 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------6oUZgdkRJlDQLxX0g1JvuUSN"
Message-ID: <66eddfe9-cb05-ffbb-f93e-851b4a850580@mistywest.com>
Date: Sun, 6 Nov 2022 07:43:56 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <CANNYZj-szasy1+wcY3J0G_B2hwNxupSHs4dnj98q4w3H8CcV0Q@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CANNYZj-szasy1+wcY3J0G_B2hwNxupSHs4dnj98q4w3H8CcV0Q@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 15:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58496

This is a multi-part message in MIME format.
--------------6oUZgdkRJlDQLxX0g1JvuUSN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/6/22 01:14, Alexander Kanavin wrote:
> It may help if you show the complete logs for configure and compile , 
> otherwise there is not enough information in your message to diagnose 
> the issue.


Okay, yes, sorry about that, the compile output for bitbake 
sample-image-cp-lwb5plus looks like:

...

4.0.10-r0/laird-backport-10.4.0.10/net/bluetooth/bluetooth.o
|   MODPOST 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-module-lwb5p-backports-laird/10.
4.0.10-r0/laird-backport-10.4.0.10/Module.symvers
| ERROR: modpost: "crypto_ecdh_encode_key" 
[/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-
module-lwb5p-backports-laird/10.4.0.10-r0/laird-backport-10.4.0.10/net/bluetooth/bluetooth.ko] 
undefined!
| ERROR: modpost: "crypto_ecdh_key_len" 
[/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-mod
ule-lwb5p-backports-laird/10.4.0.10-r0/laird-backport-10.4.0.10/net/bluetooth/bluetooth.ko] 
undefined!
| make[6]: *** 
[/home/yocto/rzv_vlp_v3.0.0/build/tmp/work-shared/smarc-rzv2l/kernel-source/scripts/Makefile.modpost:
124: 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-module-lwb5p-backports-laird/10.4.0.10-
r0/laird-backport-10.4.0.10/Module.symvers] Error 1
| make[6]: *** Deleting file 
'/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-module-lwb5p-b
ackports-laird/10.4.0.10-r0/laird-backport-10.4.0.10/Module.symvers'
| make[5]: *** 
[/home/yocto/rzv_vlp_v3.0.0/build/tmp/work-shared/smarc-rzv2l/kernel-source/Makefile:1726: 
modules] E
rror 2
| make[4]: *** [Makefile:185: __sub-make] Error 2
| make[3]: *** [Makefile.build:13: modules] Error 2
| make[2]: *** [Makefile.real:91: modules] Error 2
| make[1]: *** [Makefile:43: modules] Error 2
| make: *** [Makefile:30: default] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of 
'/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-module-lwb5p-backport
s-laird/10.4.0.10-r0/temp/run.do_compile.235046' failed with exit code 1
ERROR: Task 
(/home/yocto/rzv_vlp_v3.0.0/build/../meta-mylayer/meta-laird-cp-pre-3.4/recipes-bsp/backports-laird/k
ernel-module-lwb5p-backports-laird.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3878 tasks of which 3876 didn't need to 
be rerun and 2 failed.

Summary: 2 tasks failed:
  /home/yocto/rzv_vlp_v3.0.0/build/../meta-mylayer/meta-laird-cp-pre-3.4/recipes-packages/lrd-networkmanager/lrd-
networkmanager-sterling.bb:do_compile
  /home/yocto/rzv_vlp_v3.0.0/build/../meta-mylayer/meta-laird-cp-pre-3.4/recipes-bsp/backports-laird/kernel-modul
e-lwb5p-backports-laird.bb:do_compile
Summary: There were 4 WARNING messages shown.
Summary: There were 4 ERROR messages shown, returning a non-zero exit code.

Where my 
meta-mylayer/meta-laird-cp-pre-3.4/recipes-packages/images/sample-image-cp-lwb5plus.bb 
looks like:

DESCRIPTION = "Sterling LWB5+ SDIO/UART M.2 (diversity antenna) sample 
image"
LICENSE = "MIT"

inherit core-image

export IMAGE_BASENAME = "${PN}"

DEPENDS += "\
         readline \
         pkgconfig \
         "

IMAGE_FEATURES += "\
         ssh-server-dropbear \
         splash \
         "

IMAGE_FEATURES_remove = "\
         tools-profile \
         tools-debug \
         tools-testapps \
         "

IMAGE_INSTALL += "\
         iproute2 \
         rng-tools \
         ca-certificates \
         tzdata \
         alsa-utils \
         htop \
         ethtool \
         iperf3 \
         tcpdump \
         iw \
         kernel-module-lwb5p-backports-laird \
         lwb5plus-sdio-div-firmware \
         sterling-supplicant-lwb \
         lrd-networkmanager-sterling \
         "

>
> Alex
>
> On Sun 6. Nov 2022 at 8.45, Mistyron <ron.eggler@mistywest.com> wrote:
>
>     Hi,
>
>     I'm working with dunfell and want to compile and install the
>     drivers for
>     the Laird LWB5+ module (available from
>     https://github.com/LairdCP/meta-laird-cp).
>     I have included the path to the layer in meta-laird-cp-pre-3.4 in my
>     `bblayers.conf` and since I need the networkmanager and with
>     information
>     from their support team (don't trust the README apparently), I've
>     added
>     `lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in
>     `sample-image-cp-lwb5plus.bb
>     <http://sample-image-cp-lwb5plus.bb>`. When I invoke `$ bitbake
>     sample-image-cp-lwb5plus`, I keep getting:
>
>          |
>     /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904:
>
>     undefined reference to `rl_echo_signal_char'
>
>     even though I've added `readline` to the `DEPENDS` list. Why is
>     this? I
>     expected the `rl_echo_signal_char` dependency to be resolved, any
>     hints?
>
>
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#58492):
>     https://lists.yoctoproject.org/g/yocto/message/58492
>     Mute This Topic: https://lists.yoctoproject.org/mt/94840876/1686489
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [alex.kanavin@gmail.com]
>     -=-=-=-=-=-=-=-=-=-=-=-
>
--------------6oUZgdkRJlDQLxX0g1JvuUSN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 11/6/22 01:14, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANNYZj-szasy1+wcY3J0G_B2hwNxupSHs4dnj98q4w3H8CcV0Q@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="auto">It may help if you show the complete logs for
        configure and compile , otherwise there is not enough
        information in your message to diagnose the issue.</div>
    </blockquote>
    <p><br>
    </p>
    <p>Okay, yes, sorry about that, the compile output for bitbake
      sample-image-cp-lwb5plus looks like:</p>
    <p>...</p>
    <p>4.0.10-r0/laird-backport-10.4.0.10/net/bluetooth/bluetooth.o
      <br>
      |   MODPOST
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-module-lwb5p-backports-laird/10.<br>
      4.0.10-r0/laird-backport-10.4.0.10/Module.symvers
      <br>
      | ERROR: modpost: "crypto_ecdh_encode_key"
[/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-<br>
module-lwb5p-backports-laird/10.4.0.10-r0/laird-backport-10.4.0.10/net/bluetooth/bluetooth.ko]
      undefined!
      <br>
      | ERROR: modpost: "crypto_ecdh_key_len"
[/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-mod<br>
ule-lwb5p-backports-laird/10.4.0.10-r0/laird-backport-10.4.0.10/net/bluetooth/bluetooth.ko]
      undefined!
      <br>
      | make[6]: ***
[/home/yocto/rzv_vlp_v3.0.0/build/tmp/work-shared/smarc-rzv2l/kernel-source/scripts/Makefile.modpost:<br>
      124:
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-module-lwb5p-backports-laird/10.4.0.10-<br>
      r0/laird-backport-10.4.0.10/Module.symvers] Error 1
      <br>
      | make[6]: *** Deleting file
'/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-module-lwb5p-b<br>
ackports-laird/10.4.0.10-r0/laird-backport-10.4.0.10/Module.symvers'
      <br>
      | make[5]: ***
[/home/yocto/rzv_vlp_v3.0.0/build/tmp/work-shared/smarc-rzv2l/kernel-source/<a class="moz-txt-link-freetext" href="Makefile:1726">Makefile:1726</a>:
      modules] E<br>
      rror 2
      <br>
      | make[4]: *** [<a class="moz-txt-link-freetext" href="Makefile:185">Makefile:185</a>: __sub-make] Error 2
      <br>
      | make[3]: *** [<a class="moz-txt-link-freetext" href="Makefile.build:13">Makefile.build:13</a>: modules] Error 2
      <br>
      | make[2]: *** [<a class="moz-txt-link-freetext" href="Makefile.real:91">Makefile.real:91</a>: modules] Error 2
      <br>
      | make[1]: *** [<a class="moz-txt-link-freetext" href="Makefile:43">Makefile:43</a>: modules] Error 2
      <br>
      | make: *** [<a class="moz-txt-link-freetext" href="Makefile:30">Makefile:30</a>: default] Error 2
      <br>
      | ERROR: oe_runmake failed
      <br>
      | WARNING: exit code 1 from a shell command.
      <br>
      | ERROR: Execution of
'/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/kernel-module-lwb5p-backport<br>
      s-laird/10.4.0.10-r0/temp/run.do_compile.235046' failed with exit
      code 1
      <br>
      ERROR: Task
(/home/yocto/rzv_vlp_v3.0.0/build/../meta-mylayer/meta-laird-cp-pre-3.4/recipes-bsp/backports-laird/k<br>
      <a class="moz-txt-link-freetext" href="ernel-module-lwb5p-backports-laird.bb:do_compile">ernel-module-lwb5p-backports-laird.bb:do_compile</a>) failed with exit
      code '1'
      <br>
      NOTE: Tasks Summary: Attempted 3878 tasks of which 3876 didn't
      need to be rerun and 2 failed.
      <br>
      <br>
      Summary: 2 tasks failed:
      <br>
 /home/yocto/rzv_vlp_v3.0.0/build/../meta-mylayer/meta-laird-cp-pre-3.4/recipes-packages/lrd-networkmanager/lrd-<br>
      <a class="moz-txt-link-freetext" href="networkmanager-sterling.bb:do_compile">networkmanager-sterling.bb:do_compile</a>
      <br>
 /home/yocto/rzv_vlp_v3.0.0/build/../meta-mylayer/meta-laird-cp-pre-3.4/recipes-bsp/backports-laird/kernel-modul<br>
      <a class="moz-txt-link-freetext" href="e-lwb5p-backports-laird.bb:do_compile">e-lwb5p-backports-laird.bb:do_compile</a>
      <br>
      Summary: There were 4 WARNING messages shown.
      <br>
      Summary: There were 4 ERROR messages shown, returning a non-zero
      exit code.<br>
      <br>
      Where my meta-mylayer/meta-laird-cp-pre-3.4/recipes-packages/images/sample-image-cp-lwb5plus.bb
      looks like:</p>
    <p>DESCRIPTION = "Sterling LWB5+ SDIO/UART M.2 (diversity antenna)
      sample image"<br>
      LICENSE = "MIT"<br>
      <br>
      inherit core-image<br>
      <br>
      export IMAGE_BASENAME = "${PN}"<br>
      <br>
      DEPENDS += "\<br>
              readline \<br>
              pkgconfig \<br>
              "<br>
      <br>
      IMAGE_FEATURES += "\<br>
              ssh-server-dropbear \<br>
              splash \<br>
              "<br>
      <br>
      IMAGE_FEATURES_remove = "\<br>
              tools-profile \<br>
              tools-debug \<br>
              tools-testapps \<br>
              "<br>
      <br>
      IMAGE_INSTALL += "\<br>
              iproute2 \<br>
              rng-tools \<br>
              ca-certificates \<br>
              tzdata \<br>
              alsa-utils \<br>
              htop \<br>
              ethtool \<br>
              iperf3 \<br>
              tcpdump \<br>
              iw \<br>
              kernel-module-lwb5p-backports-laird \<br>
              lwb5plus-sdio-div-firmware \<br>
              sterling-supplicant-lwb \<br>
              lrd-networkmanager-sterling \<br>
              "<br>
      <br>
    </p>
    <blockquote type="cite"
cite="mid:CANNYZj-szasy1+wcY3J0G_B2hwNxupSHs4dnj98q4w3H8CcV0Q@mail.gmail.com">
      <div dir="auto"><br>
      </div>
      <div dir="auto">Alex</div>
      <div><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Sun 6. Nov 2022 at 8.45,
            Mistyron &lt;<a href="mailto:ron.eggler@mistywest.com"
              moz-do-not-send="true" class="moz-txt-link-freetext">ron.eggler@mistywest.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">Hi,<br>
            <br>
            I'm working with dunfell and want to compile and install the
            drivers for <br>
            the Laird LWB5+ module (available from <br>
            <a href="https://github.com/LairdCP/meta-laird-cp"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://github.com/LairdCP/meta-laird-cp</a>).<br>
            I have included the path to the layer in
            meta-laird-cp-pre-3.4 in my <br>
            `bblayers.conf` and since I need the networkmanager and with
            information <br>
            from their support team (don't trust the README apparently),
            I've added <br>
            `lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in
            <br>
            `<a href="http://sample-image-cp-lwb5plus.bb"
              rel="noreferrer" target="_blank" moz-do-not-send="true">sample-image-cp-lwb5plus.bb</a>`.
            When I invoke `$ bitbake <br>
            sample-image-cp-lwb5plus`, I keep getting:<br>
            <br>
                 | <br>
/usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/<a class="moz-txt-link-freetext" href="common.c:904">common.c:904</a>:
            <br>
            undefined reference to `rl_echo_signal_char'<br>
            <br>
            even though I've added `readline` to the `DEPENDS` list. Why
            is this? I <br>
            expected the `rl_echo_signal_char` dependency to be
            resolved, any hints?<br>
            <br>
            <br>
            -=-=-=-=-=-=-=-=-=-=-=-<br>
            Links: You receive all messages sent to this group.<br>
            View/Reply Online (#58492): <a
              href="https://lists.yoctoproject.org/g/yocto/message/58492"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/message/58492</a><br>
            Mute This Topic: <a
              href="https://lists.yoctoproject.org/mt/94840876/1686489"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/mt/94840876/1686489</a><br>
            Group Owner: <a
              href="mailto:yocto%2Bowner@lists.yoctoproject.org"
              target="_blank" moz-do-not-send="true">yocto+owner@lists.yoctoproject.org</a><br>
            Unsubscribe: <a
              href="https://lists.yoctoproject.org/g/yocto/unsub"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/unsub</a>
            [<a href="mailto:alex.kanavin@gmail.com" target="_blank"
              moz-do-not-send="true" class="moz-txt-link-freetext">alex.kanavin@gmail.com</a>]<br>
            -=-=-=-=-=-=-=-=-=-=-=-<br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------6oUZgdkRJlDQLxX0g1JvuUSN--

