Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 197A3D2AB11
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 09:52:31 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.15260.1730195542502898557
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 02:52:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cIA6bB8w;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb5740a03bso49721471fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 02:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730195541; x=1730800341; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QkNOjFal23ETh6ph3gcAzKsxNol6obqp2rwveAkVPuE=;
        b=cIA6bB8woifMzRcmBGROG5T3Eu1Ow1C3QjVNjKnd4Fcu4RE4d9AJbbPPIMiQlESuJa
         N/Y/UkiLy4eD4Eikgh6LVsuVG7SI3emmVHC+vclbP1LgCsm4WA4UpSqPx3MwkdNl5fLP
         jwTTuolZ1ZnJMuiQZdnMP4XIRgUi5OauDFLfDiWo7zpnXoL0mURZ7ycp/vHnB35KN1Xk
         422mESKPlqgQfPOc9IRMTBqVHjf8z+noanH8OUiVcksd1IXpjtN6PBIV2+70woEmfVru
         7fhZ3JcYGt+mYKenuYi3OH6F4ZiGuhMGjnbKRkQ4bUID/xiKjIgscD+gpDVttPklr4sX
         7lAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730195541; x=1730800341;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QkNOjFal23ETh6ph3gcAzKsxNol6obqp2rwveAkVPuE=;
        b=c+2tUmNte9cYBPHClLxj+yEJy0y1q+eSqE8yp38dcRxzz8v3mr29nTkpmnSfBdErnJ
         f+UlKBNWjjSTFYlmk1N5gbcMYFGNaxnBXNIlSpnI4ATTkTMm9BMjVQePXus4xmsDVFKT
         2x1XqNykkgqL2v5hN0umXNnd3swZ0wQkDYN4R9/ZKWXUcJVar/VlkGRyzMWM6qcT6VgN
         lj6XIIhPSwfxE3l2JduL0cIojpat2dCKB5HU9GfTGGa34743uwxpQ57EVkziu5ewkAcF
         jFBhhDOm4i8CsfFkGat+ntutT8cfnNfpmaJFv4M4HtxuPo6dkUyZpUQVghWpqUDFc+EW
         hDiA==
X-Gm-Message-State: AOJu0Yx4YSix8WP02OWkYio6bztIbHjYJyXqa3n6Yi/xnYjHCDF17dvS
	x+8lBxrPn+kfVqBLgzqD/6PIqgbjzeq2ERp/cE1RJn48EIWGtDw6+NTVdYE8icCsSCLWqZrjOGX
	GOh3/IijUmFR946+T9oHu4sBBU5RCyx2i
X-Google-Smtp-Source: AGHT+IHcFkR3qmEFnOCykx4VHoHqwNQObvmeZPJmVPYzBsKIlsGdQoDFkR8kmu7OFs3iOZNUMY89d5kcOGDa9emEjXs=
X-Received: by 2002:a2e:d11:0:b0:2fb:5786:251f with SMTP id
 38308e7fff4ca-2fcbe0792b7mr37171061fa.37.1730195540239; Tue, 29 Oct 2024
 02:52:20 -0700 (PDT)
MIME-Version: 1.0
References: <gMqp.1730187393484274835.UElA@lists.yoctoproject.org>
In-Reply-To: <gMqp.1730187393484274835.UElA@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 29 Oct 2024 10:52:08 +0100
Message-ID: <CANNYZj_K51Zm_4EnDUUsDGWZgP8-a4BPffmakMw-ksMEC63gxg@mail.gmail.com>
Subject: Re: [yocto] XFCE integration with Kirkstone (RISCV64)
To: yocto@lists.yoctoproject.org, Ankita.AN@exaleapsemi.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 09:52:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64163

On Tue, 29 Oct 2024 at 08:36, Ankita.AN via lists.yoctoproject.org
<Ankita.AN=exaleapsemi.com@lists.yoctoproject.org> wrote:
> I am new to xfce. I want to integrate xfce desktop with kirkstone. How do I start with it?
>
> Are there any specific link/docs to refer?

You need to start with
https://git.openembedded.org/meta-openembedded/tree/meta-xfce?h=kirkstone

Alex

