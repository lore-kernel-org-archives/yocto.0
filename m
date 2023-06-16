Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB67EB64DA
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 16:53:39 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.3857.1686934417742007405
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jun 2023 09:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=UiEU2wKS;
 spf=pass (domain: baylibre.com, ip: 209.85.222.176, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7622a74e1cfso90286985a.0
        for <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 09:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686934416; x=1689526416;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B8c4kKWWO4NcF+If4h/J4WnxYDPmk3BBd44dLUQGN1U=;
        b=UiEU2wKSnwCq3BWMEEF40XzmSP9aopYykRn00Dda+QD4+sNd73qkDZF+NiNYAk/4H+
         bto0nR8YW1VMbVhDtNQE8B/bFSkMo3dwFHaQOayuiAhuka4vZM7VyDFsx2Zs/R36/xYI
         hdHdkvJkdekOEBTRomFFR7thUbGi3m1oEFYK0fhLbB4bFTWMmoCrK5rErPoIRG076fVT
         lnnj7CRscR/WiwesKD7jhKlzNsT9qET7poenvz9mPEtYCdSqxbxRtwyUUzApB2NN35e0
         95eTqK5PDhM+1TrAjgDqJKF15CANbtQdb6P7ChmuY8ygxsWHbzpHQr4mT9F79J42HyQ+
         9LFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686934416; x=1689526416;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B8c4kKWWO4NcF+If4h/J4WnxYDPmk3BBd44dLUQGN1U=;
        b=jhf4nOxFHxK7UhR5lJRiWqWVNiYdj2/16yqF7uQCQb4H4cKcxsizBHjASw4NycIo56
         4dpzIANV1ma5dRBW6ZQTrtJHL7JF3PXbpq65Nw6xPsUI3utjbZztwrcwFa43q4Pxrrcf
         YuxLreHsXFAbSmugYPil3dACsTilf482aeUvow9dpnTMOVq3JNh7kesShKU3PgCV993t
         jEiT/jwS2+ImJEkQlI09iruB5J6gEeqFGYvdtrgEbJzSkAqtgbCTWJS+g/lFtXBkIove
         XtE5TUCGBrZ776EVzJwmtTi2EyRCRMTr5vzalLGHcIaXLmV4h9DnrW0ya5rGUxOySm8E
         A3tg==
X-Gm-Message-State: AC+VfDwEXstXYEN+jvr48ObWn0R9SC6hvIfVxYqHeyZ9Byo6S0oW0M/k
	tlOl1p+93XlyOUQuHkzROajwxg==
X-Google-Smtp-Source: ACHHUZ68jKizJnF1B4I9ckyKvlcXxGHgonT+NOjQdRglgkEzmCpvigeASAdF4uxSJ/VqGVDr0wEyyQ==
X-Received: by 2002:a05:620a:8d83:b0:75b:23a1:3640 with SMTP id rc3-20020a05620a8d8300b0075b23a13640mr2017597qkn.1.1686934416184;
        Fri, 16 Jun 2023 09:53:36 -0700 (PDT)
Received: from ?IPV6:2001:1970:5b1f:ab00:d875:6297:4e81:e577? ([2001:1970:5b1f:ab00:d875:6297:4e81:e577])
        by smtp.gmail.com with ESMTPSA id i15-20020a05620a074f00b0075ed10554a5sm4612215qki.11.2023.06.16.09.53.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 09:53:35 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------6FKXdkttUqFEnCrickRykgfU"
Message-ID: <81a1c87d-fdd2-0c77-60ab-d6c0b167c767@baylibre.com>
Date: Fri, 16 Jun 2023 12:53:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [yocto] Facing issue with new repo build in yocto
Content-Language: en-US
To: Prashant Badsheshi <prashantsbemail@gmail.com>,
 yocto@lists.yoctoproject.org
References: <CAD5wtF1ob3hZJG_YXqi26R+_F-S7LM1Vb2GvDNagBcfChDOEnA@mail.gmail.com>
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <CAD5wtF1ob3hZJG_YXqi26R+_F-S7LM1Vb2GvDNagBcfChDOEnA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 16:53:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60329

This is a multi-part message in MIME format.
--------------6FKXdkttUqFEnCrickRykgfU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2023-06-16 02:43, Prashant Badsheshi wrote:
>
>
> Added a new repo/recipe called “displayport”, please find the bb file 
> pasted below.
>
> Did a “devtool modify displayport”. Got the displayport folder in my 
> local workspace/sources/.
>
> Added the required meson.build, source and header filles.
>
> Able to build it using command “bitbake displayport”.
>
> But it is not building when I do a full build using “bitabke 
> obmc-phospor-image”.
>
> It seems like it is not picking up the displayport repo/recipe when I 
> do full build.
>
> Can you help here to understand what is the problem?
>
Have you added IMAGE_INSTALL:append = " displayport" to your 
conf/local.conf file?
>
> Thanks,
>
> Prashant
>
> /meta-hpe/meta-ilo/recipes-hpe/displayport$ ls
>
> displayport_git.bb <http://displayport_git.bb>
>
> meta-hpe/meta-ilo/recipes-hpe/displayport$ cat displayport_git.bb 
> <http://displayport_git.bb>
>
> # Package summary
>
> SUMMARY = "Display Port VAS"
>
> LICENSE = "CLOSED"
>
> BRANCH = "${BRANCH_DISPLAYPORT}"
>
> SRCREV = "${SRCREV_DISPLAYPORT}"
>
> SRC_URI = 
> "git://git@github.hpe.com/Cornerstone/displayport.git;protocol=ssh;branch=${BRANCH} 
> <http://git@github.hpe.com/Cornerstone/displayport.git;protocol=ssh;branch=${BRANCH}>"
>
> SYSTEMD_SERVICE_${PN} += "com.hpe.bmc.dp.service"
>
> DEPENDS += " libmemmap libutils libfyi systemd svcsilo"
>
> RDEPENDS_${PN} = "systemd libutils libfyi libmemmap svcsilo"
>
> S= "${WORKDIR}/git"
>
> PV = "1.0+git"
>
> #inherit ilo-meson systemd
>
> inherit meson systemd
>
> MESON_BUILDTYPE_hpe-dbg = "debug"
>
> ws/work/myopenbmc_jemu64_6apr$ git diff
>
> diff --git a/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc 
> b/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc
>
> index 42f695ae32..f017bfd326 100644
>
> --- a/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc
>
> +++ b/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc
>
> @@ -46,6 +46,7 @@ SRCREV_VIRTUAL_MEDIA = "${AUTOREV}"
>
> SRCREV_GXP_FRU_DEVICE = "${AUTOREV}"
>
> SRCREV_GXP_DBUS_SENSORS = "${AUTOREV}"
>
> SRCREV_RESTSERVER = "${AUTOREV}"
>
> +SRCREV_DISPLAYPORT = "${AUTOREV}"
>
> #List down the branches of various recipes here
>
> BRANCH_GXP2_BOOTBLOCK = "main"
>
> @@ -92,3 +93,4 @@ BRANCH_VIRTUAL_MEDIA          = "main"
>
> BRANCH_GXP_FRU_DEVICE = "main"
>
> BRANCH_GXP_DBUS_SENSORS = "main"
>
> BRANCH_RESTSERVER = "main"
>
> +BRANCH_DISPLAYPORT = "main"
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60326):https://lists.yoctoproject.org/g/yocto/message/60326
> Mute This Topic:https://lists.yoctoproject.org/mt/99574226/7611679
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [tgamblin@baylibre.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------6FKXdkttUqFEnCrickRykgfU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2023-06-16 02:43, Prashant Badsheshi
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAD5wtF1ob3hZJG_YXqi26R+_F-S7LM1Vb2GvDNagBcfChDOEnA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr"><br>
        <div><br>
        </div>
        <div>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Added
            a new repo/recipe called “displayport”, please find
            the bb file pasted below.</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Did
            a “devtool modify displayport”. Got the displayport
            folder in my local workspace/sources/.</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Added
            the required meson.build, source and header filles.</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Able
            to build it using command “bitbake displayport”.</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">But
            it is not building when I do a full build using “bitabke
            obmc-phospor-image”. </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">It
            seems like it is not picking up the displayport
            repo/recipe when I do full build.</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Can
            you help here to understand what is the problem?</p>
        </div>
      </div>
    </blockquote>
    Have you added IMAGE_INSTALL:append = " displayport" to your
    conf/local.conf file?<br>
    <blockquote type="cite"
cite="mid:CAD5wtF1ob3hZJG_YXqi26R+_F-S7LM1Vb2GvDNagBcfChDOEnA@mail.gmail.com">
      <div dir="ltr">
        <div>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Thanks,</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Prashant</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">/meta-hpe/meta-ilo/recipes-hpe/displayport$
            ls</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><a
              href="http://displayport_git.bb" moz-do-not-send="true">displayport_git.bb</a></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">meta-hpe/meta-ilo/recipes-hpe/displayport$
            cat
            <a href="http://displayport_git.bb" moz-do-not-send="true">displayport_git.bb</a></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">#
              Package summary</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">SUMMARY
              = "Display Port VAS"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">LICENSE
              = "CLOSED"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">BRANCH
              = "${BRANCH_DISPLAYPORT}"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">SRCREV
              = "${SRCREV_DISPLAYPORT}"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">SRC_URI
              =
              "git://<a
href="http://git@github.hpe.com/Cornerstone/displayport.git;protocol=ssh;branch=${BRANCH}"
                moz-do-not-send="true">git@github.hpe.com/Cornerstone/displayport.git;protocol=ssh;branch=${BRANCH}</a>"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">SYSTEMD_SERVICE_${PN}
              += "com.hpe.bmc.dp.service"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">DEPENDS
              += " libmemmap libutils libfyi systemd svcsilo"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">RDEPENDS_${PN}
              = "systemd libutils libfyi libmemmap svcsilo"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">S=
              "${WORKDIR}/git"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">PV =
              "1.0+git"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">#inherit
              ilo-meson systemd</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">inherit
              meson systemd</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"> </span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">MESON_BUILDTYPE_hpe-dbg
              = "debug"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">ws/work/myopenbmc_jemu64_6apr$
            git diff</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">diff
            --git
            a/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc
            b/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">index
            42f695ae32..f017bfd326 100644</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">---
            a/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">+++
            b/meta-hpe/meta-ilo/conf/distro/include/ilo-src-revs.inc</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">@@
            -46,6 +46,7 @@ SRCREV_VIRTUAL_MEDIA         
            = "${AUTOREV}"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">SRCREV_GXP_FRU_DEVICE        
            = "${AUTOREV}"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">SRCREV_GXP_DBUS_SENSORS      
            = "${AUTOREV}"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">SRCREV_RESTSERVER            
            = "${AUTOREV}"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">+SRCREV_DISPLAYPORT           
              = "${AUTOREV}"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"> </p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">#List
            down the branches of various recipes here</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">BRANCH_GXP2_BOOTBLOCK        
            = "main"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">@@
            -92,3 +93,4 @@
            BRANCH_VIRTUAL_MEDIA          =
            "main"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">BRANCH_GXP_FRU_DEVICE        
            = "main"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">BRANCH_GXP_DBUS_SENSORS      
            = "main"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif">BRANCH_RESTSERVER            
            = "main"</p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow">+BRANCH_DISPLAYPORT           
              = "main"</span></p>
          <p class="MsoNormal"
            style="margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span
              style="background:yellow"><br>
            </span></p>
        </div>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#60326): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/60326">https://lists.yoctoproject.org/g/yocto/message/60326</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/99574226/7611679">https://lists.yoctoproject.org/mt/99574226/7611679</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------6FKXdkttUqFEnCrickRykgfU--

