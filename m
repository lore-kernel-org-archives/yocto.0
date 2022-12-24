Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FE6C4332F
	for <webhook@archiver.kernel.org>; Sat, 24 Dec 2022 09:17:34 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web11.93356.1671873449541120081
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Dec 2022 01:17:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kdSWKD8x;
 spf=pass (domain: gmail.com, ip: 209.85.210.49, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f49.google.com with SMTP id k7-20020a056830168700b0067832816190so4093538otr.1
        for <yocto@lists.yoctoproject.org>; Sat, 24 Dec 2022 01:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BTPHPvsccj30/Wchx61JFGx3HyInx7W941NVWL/wzhc=;
        b=kdSWKD8x9nKv9A9bVSJM2qi5vfbfvhEJKJsaTvNjNfEmxt4YbJxe5fCV8Wt89prUYI
         yxdgfvQhqKv4dfaYwcZ9n7somcEhC7Ajlwu4f3rw5M/VyLi+ZHHtEA+AF3tJy26Ax2xR
         1FsJAyh1wRdMsaoiuCaXovK96IdjAQyjpCGRjkL6WM5bB7c0PFAVZakhmtjBKS5ThAKS
         5xgc8JzSezNe8Vr49TETgIrZxI8YygahrnutdzrMZRRG09g4dPJiSSvGIm076cGXiyQj
         A833kwZoIqXCFCg4io9b33LKrpCx6M43qoMqnUGBlpI4PTkkmd8WG4TB3adPk2niu9lc
         l7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BTPHPvsccj30/Wchx61JFGx3HyInx7W941NVWL/wzhc=;
        b=M4WM6pzcCKEc8kmPKjvTE/uhAbbMAabrX9djTIYKUDNT+U+IHq0MKJ27qg9cYRZEfy
         v9M4QoHf9XcStlAOEfFOny1fEDQe9RAHm5wQkdTBp2FB6sp5ZcQveD+KLL4iaP78BdH4
         r8KEmcsuqLZ8Qu2+03lSMMl8EAty62FngX5vSXZ9WPP3SSlA8GW0eFqW59xQgtpEKXN4
         jjEUq3naw/hAEd3t9R5kwpok1FhZ2JAlf71erdKmDg1Y0OQe99lsmYVP6+rnCmfmn9EJ
         84DFQwa75ys/uAJBFVHLTTPWckZOnbjLOAfLFNjaOoi9DAqaBCZEmdKs03r5nQLLpS69
         aQng==
X-Gm-Message-State: AFqh2kouAbMzm++y4FvwfkCKkuUuI5WtozEYP+vA/ylIY55sR9FD4EUV
	llssQXcDj/p0GIOUICfkvisMmZ3QJa+c+K/R4uo=
X-Google-Smtp-Source: AMrXdXuSBFFgbMN4v8chM7WEdG4xGM36xdVoWwwifZc3GXp7FMndLDwJ+NFGqVyHkMEDN/gxDfiKOWtgb0o3CmVwveg=
X-Received: by 2002:a9d:5cc5:0:b0:676:92ca:f7f4 with SMTP id
 r5-20020a9d5cc5000000b0067692caf7f4mr619962oti.55.1671873448656; Sat, 24 Dec
 2022 01:17:28 -0800 (PST)
MIME-Version: 1.0
References: <350433e2-a9a5-f7f4-3b7c-ed04700907c2@mistywest.com>
In-Reply-To: <350433e2-a9a5-f7f4-3b7c-ed04700907c2@mistywest.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 24 Dec 2022 01:17:02 -0800
Message-ID: <CAMKF1sqUTzOykipWXr7OGyu5TeEueif57_1z8EBUX-MDEetiSA@mail.gmail.com>
Subject: Re: [yocto] lsusb
To: Mistyron <ron.eggler@mistywest.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Dec 2022 09:17:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58858

On Fri, Dec 23, 2022 at 9:28 PM Mistyron <ron.eggler@mistywest.com> wrote:
>
> Hi,
>
> I want to inlude "lsusb" to investigate the connected usb devices to my system.
> I found that adding
>
> IMAGE_INSTALL_append = " usbutils"
>
> to my configuration should solve the issue. I've added this to my local.conf and invoked a rebuild of my packages but still, after the rebuild, my package.manifest file still does not list lsusb.
>
> How can I get lsusb included in my image?

Try IMAGE_INSTALL_append = " usbutils-python"

>
> --
> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58857): https://lists.yoctoproject.org/g/yocto/message/58857
> Mute This Topic: https://lists.yoctoproject.org/mt/95858084/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

