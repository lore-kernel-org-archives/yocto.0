Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE7DFC433EF
	for <webhook@archiver.kernel.org>; Tue, 10 May 2022 15:52:11 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.588.1652197921260336811
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 May 2022 08:52:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j3c17Ajn;
 spf=pass (domain: gmail.com, ip: 209.85.208.182,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id y19so21377296ljd.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 10 May 2022 08:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=o8snzY2himBSDavj2GqKKYSZ8LfkScpdAhdsS1lFe6s=;
        b=j3c17Ajn5xC9kEazihrme4nlZjxwGUn2wXGxZ4Vu1AkamXlTrxIzcXSxtDalJerRuR
         +vJwHUa/Y4UDq4hMmTFWtXXFzQlpoFJdbADOuazGRo5g0iX1QLyG0oZHhMTCXBAP1ynU
         U2uUFeq9q2zAb0B83eMOdiDhcGaZpNC4KDvj5rRXmXuhNy1vRvBVE4h4Gx4/VyiThJaU
         dvA/QzLRIxldhb/5bXnZBfhd+YMqVCQrn5A3HI56xM32jWEyBU3MjfspnRJNFgCaDC4I
         MoznJqc8nKlY6rEUPjutH+9dnAgEV2EH2iW23o1ctcjYV42kEBCG0MUYrYWGUMO7//YQ
         gExA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=o8snzY2himBSDavj2GqKKYSZ8LfkScpdAhdsS1lFe6s=;
        b=wcv02YInDk28q+Eu7ekGBgD+XcKk71BlRZrOVLG1Tj544FCbQ6s4EU8xcj/V1rzNHS
         x5SfOUk/8szo8eli6KCEoEVUwxjO5wFAVebi8kXNrTYYmZ+Lm+bCk7tP+c9D24g8HlJr
         4ye/EZgZ3H/uPvZt/RQ4zQur2D31w2wp634RAVgL2GW9ax0zrBf1W+V4+fEBON8JONj7
         ssX9ufBAO4P3qhc6jV9UJmhsfxE5hSrtBEPtEfeQV0JO9qOzfE9pQy9D2k9pJg2odtMV
         Xo+sywmOI6VPSIciikLNXSm9rY521flNcr4NyhMDDTQv4tIEDDm9G+T452lUnzEiTx41
         MB9A==
X-Gm-Message-State: AOAM533XPlsquDrWJDdjavwjS+w5ZlUTrmB1tOErvS39VxIU0Nq3fZRI
	6vL7sntINwrbna9rsO0ZO1KfvitbR+hg1Y8GRuKR2GFGlbs=
X-Google-Smtp-Source: 
 ABdhPJzjx1F6bOzj1kY2Nb2bofzpqKFaudWmesZjY81C7zZnNJjmxMtndD5i7vtYGrpZ6FSHqZN8oFnhkWmVz6tXJg0=
X-Received: by 2002:a2e:8887:0:b0:24f:10d8:4603 with SMTP id
 k7-20020a2e8887000000b0024f10d84603mr14174032lji.191.1652197919193; Tue, 10
 May 2022 08:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <16E921999664975E.11608@lists.yoctoproject.org>
In-Reply-To: <16E921999664975E.11608@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 10 May 2022 17:51:47 +0200
Message-ID: 
 <CANNYZj-iFOi3KSd06u95tuPciA-4fXbHkXe6o5daBFjXsfwMnA@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: test only
 command line images with x32
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 May 2022 15:52:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57049

Ping, please.

Alex

On Mon, 25 Apr 2022 at 13:54, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> There has been a persistent stream of graphical failures on x32,
> and there is doubt about whether x32 is at all used by anyone
> nowadays - let's reduce the scope of x32 QA, and perhaps
> later drop it altogether.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  config.json | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/config.json b/config.json
> index 8893695..b571f25 100644
> --- a/config.json
> +++ b/config.json
> @@ -529,11 +529,11 @@
>                  "baselib = \"${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) or 'INVALID'), True) or 'lib'}\""
>              ],
>              "step1" : {
> -                "BBTARGETS" : "core-image-minimal core-image-sato",
> +                "BBTARGETS" : "core-image-minimal core-image-full-cmdline",
>                  "SANITYTARGETS" : "core-image-minimal:do_testimage"
>              },
>              "step2" : {
> -                "SANITYTARGETS" : "core-image-sato:do_testimage",
> +                "SANITYTARGETS" : "core-image-full-cmdline:do_testimage",
>                  "extravars" : [
>                      "TEST_SUITES:append = ' x32lib'"
>                  ]
> --
> 2.35.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56880): https://lists.yoctoproject.org/g/yocto/message/56880
> Mute This Topic: https://lists.yoctoproject.org/mt/90682700/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

