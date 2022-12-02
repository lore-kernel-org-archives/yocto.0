Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71E5DC4332F
	for <webhook@archiver.kernel.org>; Fri,  2 Dec 2022 18:20:03 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.83521.1670005200707042649
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Dec 2022 10:20:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b+P6VJB5;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id bn5so6295239ljb.2
        for <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 10:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KRyyC/TJDZk1Gtky5PdW6z8Rb1HNaeRrJhwsvRDpnmQ=;
        b=b+P6VJB5pP/CReTR0f8SUmQFOKP4L4MiyHljBhK8kZ+C9wnjiN7ET273cMOQkoiC5R
         HjsoSrBB5Xaf+JgTjNvqe8QYwNg5UdTzW5wBvLGcilHmozbt+83UHFNOW7C8eOPz3SuO
         3vExkhWMoAL0GjWfY92pO1o2/fKgGFh+AYiWR+Bw3j1S7DF2ovo8faRVpllJQswlyFtp
         r5UQ8kFbrjCqR9N/G7Cv669mybHDEp7wXFVA/dfT56DkL2393YVqqRJUONQiBX/zXEQM
         TD2DgDtMgz9VoSl6R2rjUC4UTfMa12TBY6SgL1VOmXaV4IO5DBr3pgxtocz0neeaWjzm
         Xr7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KRyyC/TJDZk1Gtky5PdW6z8Rb1HNaeRrJhwsvRDpnmQ=;
        b=FzaYMNryTVcjfaMb3VPXGrthKRF8PJ5t9a4+Us+th6TM/q74TlN5yjZ8SePAOhbrEA
         z1EgSLwAoRZ9tibeedZvqJjtBqG9nPQlpkeSeked6bpP/wOyYW/67bpsnvL4l7aM2gpC
         Pr6m9zQaaZvxD6T6T2lwLgagDdR+c+kU0lgx0HZu3fhMSjYGNo6g2VayMPlhw0vYMzVV
         nz76QZNqJMG4budI19BvITjNCqVVwyivpL8cKfEOvO1MBygOxndIklRtlxa4V+cY7xKy
         7ImA0Fp5PvHlQQOw/s9QD6eZwbDup2F/UAiz2OoIW+Oucqg+pG5QSfrIIa5l2K8LzYjS
         VS1w==
X-Gm-Message-State: ANoB5pn1YFWPR8VUn8P/OCJO+Tnq24oABVLyRJMt6nm+fRoKXUnWKUFa
	EPRTEuPV3rLwJs5V7qBpwJow9ez1qVh7nXDqa1jgxhaTLEk=
X-Google-Smtp-Source: AA0mqf79AHHn62Cn/bTSLin5HHKTR7TYAmc4vCMpQvlh9e7AISLAB1iy+2ABQLYiw0897GpaRetovv+PjHgrcAsj72g=
X-Received: by 2002:a2e:7818:0:b0:279:bf32:34dd with SMTP id
 t24-20020a2e7818000000b00279bf3234ddmr5432953ljc.31.1670005198744; Fri, 02
 Dec 2022 10:19:58 -0800 (PST)
MIME-Version: 1.0
References: <172D0C629E2E932B.27320@lists.yoctoproject.org>
In-Reply-To: <172D0C629E2E932B.27320@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 2 Dec 2022 19:19:47 +0100
Message-ID: <CANNYZj-v4RD2VLh-+DoTH35Hkd--vHwjeEBi4GvBbGi_UhbYNA@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add x86 (32
 bit) ptest options
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 18:20:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58719

Is this sufficient to have those builders show up in buildbot (so they
can be manually triggered), or should they be also added to
yocto-autobuilder2/config.py somewhere?

Alex

On Fri, 2 Dec 2022 at 19:10, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> This will be particularly useful for testing Y2038 issues,
> as that is the only 32 bit target that can be run at native speed
> on the AB cluster.
>
> Whether a-full should get fast ptests or full ptests can be decided
> after collecting AB execution times for both.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  config.json               | 8 ++++++++
>  scripts/publish-artefacts | 5 +++++
>  2 files changed, 13 insertions(+)
>
> diff --git a/config.json b/config.json
> index 713afe5..4dbfb2b 100644
> --- a/config.json
> +++ b/config.json
> @@ -485,6 +485,14 @@
>              "MACHINE" : "qemux86",
>              "TEMPLATE" : "altcfg-qemu"
>          },
> +        "qemux86-ptest" : {
> +            "MACHINE" : "qemux86",
> +            "TEMPLATE" : "ptest-qemu"
> +        },
> +        "qemux86-ptest-fast" : {
> +            "MACHINE" : "qemux86",
> +            "TEMPLATE" : "ptest-qemu-fast"
> +        },
>          "genericx86" : {
>              "MACHINE" : "genericx86",
>              "TEMPLATE" : "arch-hw",
> diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
> index 506f790..ed08278 100755
> --- a/scripts/publish-artefacts
> +++ b/scripts/publish-artefacts
> @@ -181,6 +181,11 @@ case "$target" in
>          sha256sums $TMPDIR/deploy/images/qemux86
>          cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86/*qemux86* $DEST/machines/qemu/qemux86
>          ;;
> +    "qemux86-ptest")
> +        mkdir -p $DEST/machines/qemu/qemux86
> +        sha256sums $TMPDIR/deploy/images/qemux86
> +        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemux86/*qemux86* $DEST/machines/qemu/qemux86
> +        ;;
>      "genericx86")
>          mkdir -p $DEST/machines/genericx86
>          sha256sums $TMPDIR/deploy/images/genericx86
> --
> 2.38.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58718): https://lists.yoctoproject.org/g/yocto/message/58718
> Mute This Topic: https://lists.yoctoproject.org/mt/95411969/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

