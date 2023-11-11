Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E14C4332F
	for <webhook@archiver.kernel.org>; Sat, 11 Nov 2023 00:05:19 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.42758.1699661116071395276
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 16:05:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20230601.gappssmtp.com header.s=20230601 header.b=hqKF1qdV;
 spf=pass (domain: mistywest.com, ip: 209.85.214.182, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1ccbb7f79cdso21792725ad.3
        for <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 16:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20230601.gappssmtp.com; s=20230601; t=1699661115; x=1700265915; darn=lists.yoctoproject.org;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sKhEPv8Wch4gpmU2zYd/pVldg8HK6dlO5mx+Ua3mG/o=;
        b=hqKF1qdVPtp+r0JO25DKFigeXRjez8nftJ7Iewpo3lG1TitFRMCIau6mSYmY/jvoNW
         gev3g095nJdbzrj0L8gUvbAmMcjKYkLN/JEzjPoNXCDSRiNIwy3krJaF71kEvGpXm+EL
         vngsk/qZaage1/itKexpwP89m2xNo3Wa7Cj6JbQnON+HIXGLtNMu2WHtuJW+753kW8ci
         JX/qfJF32uUw22+QOZoRFJiZAvubUl+RbHZIEgxQvL1QrylTkoJbNIKCAVRVY+Kh9LMp
         643XS4C1rzZkgvNqG2x+V//UfGTYhM08CvHzpMuxmzHOJ/GE/WMuDPoX9OpTYdPTJFGR
         SfAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699661115; x=1700265915;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sKhEPv8Wch4gpmU2zYd/pVldg8HK6dlO5mx+Ua3mG/o=;
        b=vndgY4HT4oXGs8q1XlPFLiGAU2gvwL/SB8EzoM5KbDRMMMqzE0aJXRi0x07p1qGoPh
         fb42mQd3nlKlitsY6PWQjk+AQrEsgTKMl0M10JbetDnceq0bZu+tFcf1A14STLSVuADG
         P/yjzQaKVPcDdymgQhDqxHgM3jJxo+VEzOQrcFUsh8Vo1dKI2K6iuwM86K7CrwbfXbkb
         UGDPQkZAeY2fWJZLJOHAU/pDbaQcau9EVsK7TjsX2BWQkteGMJFMLGuB5zsYwILrW++F
         wc32JWjurEN9M5jSGUCMH3RJpG0VwPIlpp7xH04giqcRFSure6oTrZ1SSCTbTd0chXK+
         qCcQ==
X-Gm-Message-State: AOJu0YxSsNR9m9Mdo2cMxe3WArafbWIHUDiGPZfnkwrAN+l9FS9eQscw
	swObV3PDmrvlsfM3d8tq7D3Nyg==
X-Google-Smtp-Source: AGHT+IFY3JK4w4qz52Md0vmGX4gPjf/Qch478EjoMfchek0bzTXnVD8/tn9SF500+HADDEEbhZpKAw==
X-Received: by 2002:a17:902:8e89:b0:1ce:8ed:2378 with SMTP id bg9-20020a1709028e8900b001ce08ed2378mr851293plb.1.1699661115321;
        Fri, 10 Nov 2023 16:05:15 -0800 (PST)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id b5-20020a170902b60500b001cc2dc61c99sm214818pls.22.2023.11.10.16.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 16:05:14 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------WU770gOlM3u4nz2t2j4oCVT4"
Message-ID: <7916f975-2ca4-4be7-992f-50c10a1a78c9@mistywest.com>
Date: Fri, 10 Nov 2023 16:05:16 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] bitbake error about files/directories installed but not
 shipped
Content-Language: en-US
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <4145e228-b61f-42ac-ac13-5150e3b6cbe7@mistywest.com>
 <CA+chaQfeH8Pop=JOqDr9hZ-6ZpX9veuWmgty4QJXDyioMowV1A@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CA+chaQfeH8Pop=JOqDr9hZ-6ZpX9veuWmgty4QJXDyioMowV1A@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Nov 2023 00:05:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61656

This is a multi-part message in MIME format.
--------------WU770gOlM3u4nz2t2j4oCVT4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Martin,

> I would guess that libdir in your build is set to /usr/lib 
> while omx-user-module created /usr/lib64.
>
> Check with bitbake-getvar and the files in ${D}, possibly need to pass 
> libdir value to whatever build system omx-user-module uses (hard to 
> guess without seeing the whole recipe or sources).

For bitbake-getvar, I get "command not found", how can I invoke it properly?

The recipe can be found here:

https://drive.google.com/drive/folders/1wXtMENRj6TKfyo9gISX-p0dUpPBE2Up-?usp=sharing

>
> On Fri, Nov 10, 2023 at 10:19 PM Mistyron <ron.eggler@mistywest.com> 
> wrote:
>
>     Hi,
>
>     I'm struggling with a Yocto build for my board, I get an error like:
>     ```
>     ERROR: omx-user-module-1.1.0-r0 do_package: QA Issue:
>     omx-user-module: Files/directories were installed but not shipped
>     in any package:
>       /usr/lib64
>     Please set FILES such that these items are packaged. Alternatively
>     if they are unneeded, avoid installing them or delete them within
>     do_install.
>     omx-user-module: 1 installed and not shipped files.
>     [installed-vs-shipped]
>     ERROR: omx-user-module-1.1.0-r0 do_package: Fatal QA errors found,
>     failing task.
>     ERROR: Logfile of failure stored in:
>     /home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/omx-user-module/1.1.0-r0/temp/log.do_package.1434925
>     ERROR: Task
>     (/home/yocto/rzv_vlp_v3.0.0/build/../poky/meta/recipes-multimedia/gstreamer/omx-user-module.bb:do_package)
>     failed with exit code '1'
>     ```
>     The recipe `omx-user-module.bb <http://omx-user-module.bb>` is
>     needed by my image (in image.bbappend) and the omx-user-module.bb
>     <http://omx-user-module.bb> contains:
>
>     FILES:${PN} += " \
>         ${libdir}/*.so \
>     "
>
>     FILES:${PN}-dev = " \
>         ${includedir} \
>         ${libdir}/*.la \
>     "
>
>
>     can anyone help me further with this?
>
>     Thanks,
>
>     Ron
>
>     -- 
>     *ron
>     *
>
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#61653):
>     https://lists.yoctoproject.org/g/yocto/message/61653
>     Mute This Topic: https://lists.yoctoproject.org/mt/102515765/3617156
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [martin.jansa@gmail.com]
>     -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
ron
--------------WU770gOlM3u4nz2t2j4oCVT4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Martin,</p>
    <blockquote type="cite"
cite="mid:CA+chaQfeH8Pop=JOqDr9hZ-6ZpX9veuWmgty4QJXDyioMowV1A@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">I would guess that libdir in your build is set to
        /usr/lib while omx-user-module created /usr/lib64.
        <div><br>
        </div>
        <div>Check with bitbake-getvar and the files in ${D}, possibly
          need to pass libdir value to whatever build system
          omx-user-module uses (hard to guess without seeing the whole
          recipe or sources).</div>
      </div>
    </blockquote>
    <p>For bitbake-getvar, I get "command not found", how can I invoke
      it properly?</p>
    <p>The recipe can be found here: </p>
    <p><a class="moz-txt-link-freetext" href="https://drive.google.com/drive/folders/1wXtMENRj6TKfyo9gISX-p0dUpPBE2Up-?usp=sharing">https://drive.google.com/drive/folders/1wXtMENRj6TKfyo9gISX-p0dUpPBE2Up-?usp=sharing</a><br>
    </p>
    <blockquote type="cite"
cite="mid:CA+chaQfeH8Pop=JOqDr9hZ-6ZpX9veuWmgty4QJXDyioMowV1A@mail.gmail.com"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, Nov 10, 2023 at
          10:19 PM Mistyron &lt;<a
            href="mailto:ron.eggler@mistywest.com"
            moz-do-not-send="true" class="moz-txt-link-freetext">ron.eggler@mistywest.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote"
style="margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>Hi,<br>
              <br>
              I'm struggling with a Yocto build for my board, I get an
              error like:<br>
              ```<br>
              ERROR: omx-user-module-1.1.0-r0 do_package: QA Issue:
              omx-user-module: Files/directories were installed but not
              shipped in any package:<br>
                /usr/lib64<br>
              Please set FILES such that these items are packaged.
              Alternatively if they are unneeded, avoid installing them
              or delete them within do_install.<br>
              omx-user-module: 1 installed and not shipped files.
              [installed-vs-shipped]<br>
              ERROR: omx-user-module-1.1.0-r0 do_package: Fatal QA
              errors found, failing task.<br>
              ERROR: Logfile of failure stored in:
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/omx-user-module/1.1.0-r0/temp/log.do_package.1434925<br>
              ERROR: Task
(/home/yocto/rzv_vlp_v3.0.0/build/../poky/meta/recipes-multimedia/gstreamer/omx-user-module.bb:do_package)
              failed with exit code '1'<br>
              ```<br>
              The recipe `<a href="http://omx-user-module.bb"
                target="_blank" moz-do-not-send="true">omx-user-module.bb</a>`
              is needed by my image (in image.bbappend) and the <a
                href="http://omx-user-module.bb" target="_blank"
                moz-do-not-send="true">omx-user-module.bb</a> contains:</p>
            <p>FILES:${PN} += " \<br>
                  ${libdir}/*.so \<br>
              "<br>
              <br>
              FILES:${PN}-dev = " \<br>
                  ${includedir} \<br>
                  ${libdir}/*.la \<br>
              "</p>
            <p><br>
            </p>
            <p>can anyone help me further with this?</p>
            <p>Thanks,</p>
            <p>Ron<br>
            </p>
            <div>-- <br>
              <b>ron <br>
              </b></div>
          </div>
          <br>
          -=-=-=-=-=-=-=-=-=-=-=-<br>
          Links: You receive all messages sent to this group.<br>
          View/Reply Online (#61653): <a
            href="https://lists.yoctoproject.org/g/yocto/message/61653"
            rel="noreferrer" target="_blank" moz-do-not-send="true"
            class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/message/61653</a><br>
          Mute This Topic: <a
            href="https://lists.yoctoproject.org/mt/102515765/3617156"
            rel="noreferrer" target="_blank" moz-do-not-send="true"
            class="moz-txt-link-freetext">https://lists.yoctoproject.org/mt/102515765/3617156</a><br>
          Group Owner: <a
            href="mailto:yocto%2Bowner@lists.yoctoproject.org"
            target="_blank" moz-do-not-send="true">yocto+owner@lists.yoctoproject.org</a><br>
          Unsubscribe: <a
            href="https://lists.yoctoproject.org/g/yocto/unsub"
            rel="noreferrer" target="_blank" moz-do-not-send="true"
            class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/unsub</a>
          [<a href="mailto:martin.jansa@gmail.com" target="_blank"
            moz-do-not-send="true" class="moz-txt-link-freetext">martin.jansa@gmail.com</a>]<br>
          -=-=-=-=-=-=-=-=-=-=-=-<br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <div class="moz-signature">-- </div>
    <div class="moz-signature">ron<br>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <title></title>
    </div>
  </body>
</html>

--------------WU770gOlM3u4nz2t2j4oCVT4--

