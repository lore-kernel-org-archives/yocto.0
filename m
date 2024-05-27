Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3F37C25B78
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 17:58:45 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.3423.1716832716488003874
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 May 2024 10:58:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=my8TtePP;
 spf=pass (domain: baylibre.com, ip: 209.85.219.44, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6ab9e011f62so29769676d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 10:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716832715; x=1717437515; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b5H9Fvd6whlcFlN+v9FfD26EAONYr/W1vtWHcn5ZbzQ=;
        b=my8TtePPZ2VGFJoE2MOsiB7W5X3B/2nWsjux4EFLMj/Y/YT1rW9Letz+gbExVKvZhW
         oSXVznUyIIkMdBPN0Wxr2KXuz45EI8G4ZTNUhta8heDsUkhPis3r9I2TN0m8K6HPRo8u
         WqLDp8xLBdXwz3RFZ/NFK84Sm+aUozC3pNKZ7+Tgssl9MQc52m8GW00X2+pH34FQyq0j
         rat+4x/IkVkkUhcsx8ZIo04ETHRoV+HBhwxh3umYp4h6Olay9qyhnJbXJOfSNFzcdBDm
         ikVxGkbBGU2N2f563ec4la4ji2L2Ca+I1dCFBmZR4x10OviLpQo4rUpnFLznT5zcm9O+
         YKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716832715; x=1717437515;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b5H9Fvd6whlcFlN+v9FfD26EAONYr/W1vtWHcn5ZbzQ=;
        b=WzRXFmTe3C0uXINyGRrPiWBPYM0A1X3y0BAHSKadxLoOr1sAW+iFc+QsxKzsJ+fhKS
         q/dCSADx45yP2FlTkFvOeOATQz+KkEVOBLvpLdWZrFPgQwKfiyhTNcCEJShGRVELTusq
         8i+Q09zqCtOIxGHfvRLcMi/yxLypY+XfQEGzlKL5VKCpIXYjIV0O/SQ0EynrK4SrDN0q
         AVS/FafOtX0rFD/1w6Eg9V+0r0xCW0vM6nV//flQWwq1TutDm8NFzI/CeofYxH4Mg2WI
         6jSfQvSm/BSckvJ18SyvlaTasne8584+Q0g+emSKLTEIgN75bQ7IBm9iBiOw+LywVyOE
         LxPg==
X-Gm-Message-State: AOJu0YyYu5bNTCWazyLk/e/zG9HUxnPkFwYjvtbma6EAV+2ZdzdHac2s
	Qfqts2Fui49EjyRu5wnr3AayxBrXRSUWpo4TPU3nD/C8wXrds6pLiS0SA9ABTpSczMayaxI4Oj4
	u
X-Google-Smtp-Source: AGHT+IGp+Go+kwuR7utKnmjO+4q7UQbDCNKaeO5pCci4103O+y5ZXwIKUe82JtzM2XfnSlBfDJhwIg==
X-Received: by 2002:a05:6214:b63:b0:6ad:8167:ac48 with SMTP id 6a1803df08f44-6ad8167ba81mr77870876d6.24.1716832715360;
        Mon, 27 May 2024 10:58:35 -0700 (PDT)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ad7629b9c9sm19562996d6.53.2024.05.27.10.58.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 10:58:35 -0700 (PDT)
Message-ID: <9a54a201-1dea-4f77-a2b6-27f240fba402@baylibre.com>
Date: Mon, 27 May 2024 13:58:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [auto-upgrade-helper][PATCH] upgrade-helper: fix
 testimage check
To: yocto@lists.yoctoproject.org
References: <17D36A09331F4704.7888@lists.yoctoproject.org>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <17D36A09331F4704.7888@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 17:58:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63209

Sent it to the wrong list... will resend.

On 2024-05-27 1:54 p.m., Trevor Gamblin via lists.yoctoproject.org wrote:
> AUH's testimage logic is still checking for BB_ENV_EXTRAWHITE instead of
> BB_ENV_PASSTHROUGH_ADDITIONS, and INHERIT += "testimage" instead of
> IMAGE_CLASSES += "testimage". Update it so that checks for the correct
> variable names.
>
> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> ---
>   modules/testimage.py | 2 +-
>   upgrade-helper.py    | 6 +++---
>   2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/modules/testimage.py b/modules/testimage.py
> index 0fc1adb..fb2e467 100644
> --- a/modules/testimage.py
> +++ b/modules/testimage.py
> @@ -53,7 +53,7 @@ class TestImage():
>           self.logdir = os.path.join(uh_work_dir, "testimage-logs")
>           os.mkdir(self.logdir)
>   
> -        os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
> +        os.environ['BB_ENV_PASSTHROUGH_ADDITIONS'] = os.environ['BB_ENV_PASSTHROUGH_ADDITIONS'] + \
>               " CORE_IMAGE_EXTRA_INSTALL TEST_LOG_DIR TESTIMAGE_UPDATE_VARS"
>   
>       def _get_pkgs_to_install(self, pkgs):
> diff --git a/upgrade-helper.py b/upgrade-helper.py
> index 869dc3f..e307d60 100755
> --- a/upgrade-helper.py
> +++ b/upgrade-helper.py
> @@ -262,7 +262,7 @@ class Updater(object):
>           enabled = False
>   
>           if settings.get("testimage", "no") == "yes":
> -            if 'testimage' in self.base_env['INHERIT']:
> +            if 'testimage' in self.base_env['IMAGE_CLASSES']:
>                   if not "ptest" in self.base_env["DISTRO_FEATURES"]:
>                       E(" testimage requires ptest in DISTRO_FEATURES please add to"\
>                         " conf/local.conf.")
> @@ -271,8 +271,8 @@ class Updater(object):
>                   enabled = True
>               else:
>                   E(" testimage was enabled in upgrade-helper.conf"\
> -                  " but isn't INHERIT in conf/local.conf, if you want"\
> -                  " to enable please set.")
> +                  " but isn't added to IMAGE_CLASSES in conf/local.conf, \
> +                    if you want to enable please set.")
>                   exit(1)
>   
>           return enabled
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63208): https://lists.yoctoproject.org/g/yocto/message/63208
> Mute This Topic: https://lists.yoctoproject.org/mt/106334464/7611679
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [tgamblin@baylibre.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

