Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 237C3C41535
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 14:13:56 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.23990.1703254435464391470
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 06:13:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=amu/vG5J;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-50e6bcca684so470818e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 06:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703254434; x=1703859234; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2kPXlHNmA4ylzL/xd2NlSqO95O51dMOPAz8DD5ig5Fc=;
        b=amu/vG5Jd3HrwNMLz1VLjGBn+piztCKDJop/cA5uZbzluhXDhT0UzbQ/UzHJBhxeHt
         6TGqQ+U/rXBbMB8mmW1WZkZ0xltRSBq+ySqn+cu68qGW/ZieHz6KCKJ56vBpWTjKP4YA
         zQNxN8vFZgOebBL79PhtNPyht6pLGvtHcyowyT3sJ5++hRTa49d5oU49iVOPew69h5Pa
         1EuZCeWELgsd3fjrdEWtN3PLg+MdvnJRhfjnCMjGiaBda9/gZdfjDNIGHwWHDozHsH7g
         eP/P+bWfYABqZfwchPa8YcpEZXbt3wa2CN3tmwnm/8lcypA74AReTf6hYNe5tKe0V/xJ
         UXSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703254434; x=1703859234;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2kPXlHNmA4ylzL/xd2NlSqO95O51dMOPAz8DD5ig5Fc=;
        b=vwEWDjJMt6jvvMSSOt8ay7C08CgWbQg+eWHWU6z+wOgCTk3kW8EONlsZCHp0JwsZ4x
         fACCNWEf/7kF0IQTf045iIZosX5GdqRsoD7ekpQWI9iAfVs7Sk2kZ+417bKfYVkJudzp
         Ywq3B4eDwD5Ucbrq52baawhUSA1YBmbHwaeLt1LHpV793SQJKUhf1AWVS14ERnBj6VAr
         7VvhTte65jyg6sjFwVpS2TrMhVxLvN1lbg4/Tnv/nntYQtWlxtqCAWXZUiEFD/wucRBj
         zoHjWbGSd2cDDJpmik/HzSFeaKsda2zHHsmiMYKLuRi0VIzvUcNfsOVNwqaCnKb508dj
         WoOg==
X-Gm-Message-State: AOJu0YzlrshLHDGerUnckeD2v8HK30lEhugHm7gE1p2Pv0jtsm50HO8S
	FEb5JMQ52My6RIzkL05FnCZw/TFLAPvpBQjloR1BgHb5KS0=
X-Google-Smtp-Source: AGHT+IHkZPgZWq7cqGuzdC+6X46WBc3N5PRYr5d550mOIp/GOamgGy1H1K6gBH0VwMi2ZEvD2qVLGHHB45cJ8vnfrfg=
X-Received: by 2002:ac2:5dd1:0:b0:50e:621b:ce78 with SMTP id
 x17-20020ac25dd1000000b0050e621bce78mr408895lfq.102.1703254433292; Fri, 22
 Dec 2023 06:13:53 -0800 (PST)
MIME-Version: 1.0
References: <20231222131907.816564-1-michael.opdenacker@bootlin.com>
In-Reply-To: <20231222131907.816564-1-michael.opdenacker@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 22 Dec 2023 15:13:42 +0100
Message-ID: <CANNYZj-iEw6aV1Ki6BOu-xRVxKSmFvGS-thU_13NS99b8Tt_gA@mail.gmail.com>
Subject: Re: [PATCH yocto-autobuilder-helper v2] config.json: add
 "package-management" to images
To: michael.opdenacker@bootlin.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 14:13:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62026

Thanks for explaining - I would instead make a 'poky-binary-distro'
distro configuration in meta-poky, and collect all needed settings in
there.

Placing this in config.json significantly changes how all of the
images on autobuilder are assembled and tested, particularly there is
no testing of images without package management anymore.

I would in general want to avoid adding any further 'global tweaks'
that override oe-core or poky defaults.

Alex

On Fri, 22 Dec 2023 at 14:19, <michael.opdenacker@bootlin.com> wrote:
>
> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>
> For the binary distro effort, we want to implement a test that generates a feed
> of packages, typically from the tip of a release branch (or master), and then
> try to use this feed to update an image generated for the latest tag (release
> or milestone) on this branch.
>
> This patch makes it possible to use the images produced for releases
> at https://downloads.yoctoproject.org/releases/yocto/, as they currently
> don't have package management enabled.
>
> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> CC: Alexander Kanavin <alex.kanavin@gmail.com>
>
> ---
> Note: could not test this change!
>
> Changes in V2:
> - Add context to the commit message
> ---
>  config.json | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/config.json b/config.json
> index d504d07..bd0135e 100644
> --- a/config.json
> +++ b/config.json
> @@ -74,7 +74,8 @@
>              "BB_LOG_HOST_STAT_ON_FAILURE = '1'",
>              "BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'",
>              "SDK_TOOLCHAIN_LANGS += 'rust'",
> -            "BB_SERVER_TIMEOUT = '60'"
> +            "BB_SERVER_TIMEOUT = '60'",
> +            "EXTRA_IMAGE_FEATURES += 'package-management'",
>          ]
>      },
>      "templates" : {
> --
> 2.34.1
>

