Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EDD9C46467
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 14:55:16 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.105528.1673362508596074447
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 06:55:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OBBQuv+M;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id bf43so18845889lfb.6
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 06:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jaHlrXEwZeCv7bYdJaNHA7hicN0m7NuHhgFMLpcnBck=;
        b=OBBQuv+MF1x/v9N6f1O+JYNkRo9TUafM4nSEj1a93nJiz8Za5A3u5OyuLxsy6iBlnY
         aAvKQTRIQ4sEppzaovDdDCjs8WRR1Q9UuAnl7Izu0KfpzKK7iA0EbTD1ev1RkeYihjF+
         EgMl5r/kgYAEe8ruaBiCQGj653VC7OTINA00Y10G1udI9Rw/AtEuCrDOe+p40HHfReAx
         IrdcXOzFD5ysIDJORlJAy0zY3htw/M9BjaMxJFZRKR1n6AXe87WzUMV/eBXoMXNrKxJO
         vuuqlRSgvbYg1UU0ymd5OCRgSfWWuiEmGQg2IreB+cPypt/icN346ADlAktqR1G3gfcG
         qp0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jaHlrXEwZeCv7bYdJaNHA7hicN0m7NuHhgFMLpcnBck=;
        b=PV/ls3DHz4ea4dPGsqX6rpW4ALI4/zk5wrfbFlwjAaBnSTZ1Hk7vz3vnIP87BllZJ7
         sP9NrpUuQivTmf6SX6MoCUniwz4nHkJyp4+rlN3hGLKBUDBLVwHGviBZpd9LMUf8Tzax
         Dx6rD0+WbpZvKeOFUeTUHq1p/abdjMeoWTmNrFB+h8VDNV1dbIWtfc0IEijANQzJ6gNd
         VrUjR1Aui5QgoEoPv+8XTIfaCXEn+foQY7SWZNk4bkIEoEtU0r/8xxs3EsDSFmKcQaer
         xgIJpEF47F4gvJW2kw8n41uLsGUK/BZ8sOsBAVoHtD1x6GlZ+urdHML/zcZvzwv+CV4D
         OcYg==
X-Gm-Message-State: AFqh2kozNKGjYzRTC7ZuXrlj3tw+j30u/Gw5BXJvOXwJBV4OCaORztI5
	KYja6kBzBE5l6/tvhGxUpPpkq6DXh/JL6IdSoak=
X-Google-Smtp-Source: AMrXdXv5J/6FO4rWyCg4usEla2XZ9cUCB/H+v/OGhzZBtRuZ8lT6/ow5lIPy7RTJrrKWrCF2Q14OzPnr54kDV9KGe5I=
X-Received: by 2002:ac2:568e:0:b0:4cb:4404:1bc3 with SMTP id
 14-20020ac2568e000000b004cb44041bc3mr1056734lfr.263.1673362506716; Tue, 10
 Jan 2023 06:55:06 -0800 (PST)
MIME-Version: 1.0
References: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
 <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com>
 <Y7xboMQghF3h1WVT@mail.local> <CANNYZj9tCki_0s_popFbTmfN57zBZgvL7_RowkYMpog9UBWJUA@mail.gmail.com>
 <Y7xoGKdX4ytgVxDp@mail.local>
In-Reply-To: <Y7xoGKdX4ytgVxDp@mail.local>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 10 Jan 2023 15:54:55 +0100
Message-ID: <CANNYZj_o1q4txLxo9EchoDcGcDntmSvo8bHy0=Tw1LkX426HGw@mail.gmail.com>
Subject: Re: [yocto] Git repo setup for Yocto upstream contribution
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Yoann Congal <yoann.congal@smile.fr>, 
	Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 14:55:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58956

On Mon, 9 Jan 2023 at 20:16, Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> Just try to apply your patch on a bitbake repository, it will reproduce.

I tried. This happens only if a 3-way merge is enabled: for existing
files git will strip the leading directory as needed, but for newly
introduced files it will place them where the patch specifies.

Otherwise, the patch is fully rejected (by default) or fully correctly
accepted (with -p2).

Alex

