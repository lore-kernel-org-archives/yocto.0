Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B749C46CD8
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 11:51:05 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.21704.1703245861168263432
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 03:51:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BmsGnBVv;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ccae380df2so3059521fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 03:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703245859; x=1703850659; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u654D+aok7cv4nLuVhj9bhnDOj46JLAStWXz4uLyGFg=;
        b=BmsGnBVvm0asVWSoqlTmjDDnTyOMYAv+OrS+WE8KV7LQiehL2TVIK/OR4fhdZvZNQt
         pWmASrNmUPi6rDCA9WL7ThKmBJcAwa6TusVXqt7JieZDAAZX7cGm/puf4V5c/ixYqsh8
         vTDx+dGRZYDHHJ+tf2MYDczAYA++kOjk/CsuBrWyjTJS0kS1pvhQ5Sx4HmJA79Bv7xuS
         DI5ozsE89PEVeYCzyvy3zhZoQhHNMgsuE3UGj71LQia+0dEnFGvD2ahfbVeyGrbDiqHF
         rGsWo1F+MqLy/qLIZjZFtxaG5jWEAJix8HBUeMQpB9G3i9yl7BkDcyzmV3g0GfMTcz42
         TJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703245859; x=1703850659;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u654D+aok7cv4nLuVhj9bhnDOj46JLAStWXz4uLyGFg=;
        b=HkVAUN+YY25mzmbJqVn1VjsgwhcchNYet7Rn5IDNQHOr6DDKbc+ChzaPimIt+eu9Ti
         JFJhR4VQ2awsFJiGBiRd5u76AluhFvsQzm5i7WyxED1vqgWtA50stC2FcLOm4nLBNaVa
         FjqnfHrKY+te+5w8OA3vAMdqjAWDfZOWaJNQ9y9knveVywmV58UAUWEgFJeyEjVt6hbt
         /mftRXBpLUHdEbsrYmcsRLNjOp8+ERmyWzDO7KRV+w51ENokd2pW59HVi5fWlTRN0j9K
         3haFf4tnADs7HHRdXMJqmx3fa16mFYVbdA1ldKCKvssnwgKFAdPSt6SmXwp/VIztAQX1
         E63A==
X-Gm-Message-State: AOJu0YzqtYmHegJHPIs2TqyjC1OBuab4hVUxqjXkruFI9MylDNwbSbSe
	mdIfoluLDR3UDVr6psb0ZufwA4HsJRJox4q54zXIaHoyQfk=
X-Google-Smtp-Source: AGHT+IGkYvgmcaiRV4MUbI17aQJitp7oTTaJDNA+F8G+2o//dg1ALhhmKyyQSOWWiUuYvvdC87ed0uncPEZhlYgRXbw=
X-Received: by 2002:ac2:4890:0:b0:50e:5ac7:2f83 with SMTP id
 x16-20020ac24890000000b0050e5ac72f83mr578424lfc.55.1703245859081; Fri, 22 Dec
 2023 03:50:59 -0800 (PST)
MIME-Version: 1.0
References: <20231222114826.812055-1-michael.opdenacker@bootlin.com>
In-Reply-To: <20231222114826.812055-1-michael.opdenacker@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 22 Dec 2023 12:50:47 +0100
Message-ID: <CANNYZj9PfSrA38fVt0kCj42uW5CJH=DH=35duRyjJft0xvMegA@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add
 "package-management" to images
To: yocto@lists.yoctoproject.org, michael.opdenacker@bootlin.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 11:51:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62021

Wait, why?

Alex

On Fri, 22 Dec 2023 at 12:48, Michael Opdenacker via
lists.yoctoproject.org
<michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>
> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>
> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>
> ---
> Note: could not test this change!
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
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62020): https://lists.yoctoproject.org/g/yocto/message/62020
> Mute This Topic: https://lists.yoctoproject.org/mt/103317023/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

