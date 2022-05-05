Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E124C433F5
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 05:55:14 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web12.7637.1651730109188276508
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 22:55:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dDstDZGy;
 spf=pass (domain: gmail.com, ip: 209.85.208.44,
 mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id ba17so3991250edb.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 22:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f2wOmSiXEYciuS26x6lZoM1Rnpee+SgSx37hC/ysqc4=;
        b=dDstDZGypgL82KLQKTtjSqplqGYms0diOtFrWnVjoYoUJSUGrcZuDUVF4vuo9EtRYq
         BUcUqMFBy6C/o0oaEx2VJrrzXfZOfbWVz29o0vlYQry9viEB5CNFuAJP/UxK8FapMRvp
         y7ZAqDr1UiVRYGaAVDarsqhIzm0UudOE/8aqqsQBVuaSndRxadVW9oW+UMcFA/S//QB/
         1RpIT66yy2ZdMXJkjeCQWvYAiDmncTCtPpPXc+AS6qy10t1j591w/G7pvrouvAsEVAT6
         QjQhKEL3Ptl0orq+89D2BS9Yy5HSzzaGZXEC6tt8bzl7f2ArtuumhkKas+vmEReeFTQp
         F/rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f2wOmSiXEYciuS26x6lZoM1Rnpee+SgSx37hC/ysqc4=;
        b=ZCkac+YLii2egEiy4n8/PBVQAkdl4C9jIZPE9W8/+59000ZJvFj05d4J999/lT9HG1
         9fBDLV3wRFe75wI3SyUTOo4BHvJHEi2FG8z6bIiEauNiSfINFvX+MtcqGrnwr0woo4r9
         pfS85rx0NaCYdqDf2FIRhoAjTElhahxRBr0l3dtrF8JrMjoqHOkWSNBbSOQl86t/99uk
         mjnTj+HhM//FMg+IfVI3kFz5apwG+xagc6DztXsIJVqQEI+TL6/i2rtx8vUZQXZZSTrN
         4a2eDTqCBW+zGj7Zhn+/wbJ89WJ0fkpUjkw0484Wf5YIEoEXSQP3p0xE7kapSdVMj2UO
         AhCQ==
X-Gm-Message-State: AOAM531R22cHerWsOEl0TnDVsb/AtY0PBcCV0wUJ+0zjZ/43+UHNTQ0o
	IVBBKgpjNlSdb25wJv1qbSc5HbsDp5qtk8dPVLM=
X-Google-Smtp-Source: 
 ABdhPJzNkJYbRWFMtAwWkOvk0X6gMPZqK1fCdnCg9ofl+sJaqs5FYYGm+YQTlHOpHbIwXmLriLAmYRPOy7fpvHddMNE=
X-Received: by 2002:a05:6402:27c9:b0:427:ba7f:6288 with SMTP id
 c9-20020a05640227c900b00427ba7f6288mr21783125ede.416.1651730107502; Wed, 04
 May 2022 22:55:07 -0700 (PDT)
MIME-Version: 1.0
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
In-Reply-To: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 5 May 2022 07:54:55 +0200
Message-ID: 
 <CAGAf8LwAdtJAyoBTtX40s4iyCcuuA4xrYw9VRTU9VYNk0Yh+hQ@mail.gmail.com>
Subject: Re: [yocto] OE Linux & board-support-package
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 05:55:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56997

Hello J,

Please, could you be more specific?

Thank you,
Zee
_______


On Thu, May 5, 2022 at 5:42 AM jchludzinski via lists.yoctoproject.org
<jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>
> OE Linux uses device tree files (*.dts and *.dtsi files), so is there
> any need for a board-support-package?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56996): https://lists.yoctoproject.org/g/yocto/message/56996
> Mute This Topic: https://lists.yoctoproject.org/mt/90904726/3618681
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavljevic@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

