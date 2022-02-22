Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88048C433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 15:57:04 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web08.14366.1645545423485538761
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:57:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=JsA6j7Wa;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.54,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f54.google.com with SMTP id a23so44142696eju.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 07:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7K9sh9GxhSW8m4n9Xpu5KuRGkHBA8cUpocV+BO7mIeg=;
        b=JsA6j7WaszGNI+q7PdpmFAIqRSEzGCacGgJHbaEkX+rMl+SSaiCaGHAeiao4w4xKCm
         Ar779NihaohZKJx0IQ1nHFE7IXhmkEDqcMJgDnhpswjC5MNFvw/utmxjeMqI9w7dS1b7
         WO44qJNe49dlLxqkROK2pmWvWAl6iX9lO8IhLOpa5W+zF8fbJluW2LYTWoVaA7M0TAoJ
         knOGc//rAjl8HmHWmpigQ8RjF1zBSJMax7rMJAYWVrqE3dVh67SWyYRNNs24ToJmeXgX
         iD2nvjfFvDanPdFCTldjbpYl5SyAKtF6wUWGgcBeJYCpH7jVA8SnqO+0yqpidy3WMbF1
         Yltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7K9sh9GxhSW8m4n9Xpu5KuRGkHBA8cUpocV+BO7mIeg=;
        b=FnSpyIP/qZrHIo8Vy+4pZN2P5p+H0ye/9gIzZMPp22BCrJmbWCrsXyBtt1aKgFtGhk
         k7L/yEoRBuQJ2HYPjdQzrXTVz9p1A6v3GhftmUzQ203VkDB2/i0ps4BX/6V866eIcbWv
         bZKleG/gH/2anwHeCFdwK03kR682shNCX9XIeDsjIV0MhuvBdZthmdL60P5ZXYfEnYlm
         +/8g+BpGaaLYqaeWQgYzH1IXp/G4C4ZCZGSRgvKaLn84+a52yDnvs+t8og6r4nhhPGs1
         XaSrlkSVEp4Yd+9oPEFXXDCZ1JQ0lVXM9mwuge6wpCoU6E+vReLdzH7p4HPKWOysNVq3
         qUag==
X-Gm-Message-State: AOAM532xZWcbFR6kKA8wn+M51aAcS/eJJKlPiNxxn92cWJIuVPHJ6/I8
	O1Rb+Pa6TnPmW/N9WZG9XgKQcGeC0bqW+mssWO/SrQ==
X-Google-Smtp-Source: 
 ABdhPJzeMzhfPBycH5kgQqhjDViGTCSMsr+DJasRUhJi9xLO40A24/SkODA2z4y5Xcg/cIYaGH1JfCHUPNM0w5o7jAs=
X-Received: by 2002:a17:907:3347:b0:6ce:6bc4:d18a with SMTP id
 yr7-20020a170907334700b006ce6bc4d18amr19429390ejb.612.1645545421775; Tue, 22
 Feb 2022 07:57:01 -0800 (PST)
MIME-Version: 1.0
References: <16D624D896D9F446.28081@lists.yoctoproject.org>
In-Reply-To: <16D624D896D9F446.28081@lists.yoctoproject.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 22 Feb 2022 05:56:50 -1000
Message-ID: 
 <CAOSpxda=TY7iPFNe8U1rtxL601hjOYAwi2xFE4P60_taan+61w@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell 0/3] Patch review
To: steve@sakoman.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 15:57:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56247

On Tue, Feb 22, 2022 at 5:20 AM Steve Sakoman via
lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
wrote:
>
> I'm seeing intermittent timeout errors when starting an a-full build:

Not so intermittent now, twice in a row:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/3268

>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/3267
>
> This set of patches from master seems to fix the issue.
>
> The following changes since commit fe26983bb39a6a51eea3c0fe87dbc6a016abd85d:
>
>   config.json: Add other repo defaults to fix check-layer-nightly for meta-aws (2022-01-07 15:32:16 +0000)
>
> are available in the Git repository at:
>
>   git://git.yoctoproject.org/yocto-autobuilder-helper contrib/sakoman
>   http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/log/?h=contrib/sakoman
>
> Richard Purdie (3):
>   scripts/prepare-shared-repos: Use tmpfs for speed
>   prepare-shared-repos: Make it clear when rsync starts in logs
>   shared-repos: Use tar instead of rsync for speed
>
>  scripts/prepare-shared-repos | 5 +++--
>  scripts/send-qa-email        | 6 ++++--
>  scripts/shared-repo-unpack   | 9 ++++++---
>  3 files changed, 13 insertions(+), 7 deletions(-)
>
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56241): https://lists.yoctoproject.org/g/yocto/message/56241
> Mute This Topic: https://lists.yoctoproject.org/mt/89318576/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

