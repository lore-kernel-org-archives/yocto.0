Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CBCC433EF
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 21:01:11 +0000 (UTC)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web12.2474.1645822871050011319
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 13:01:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=njfeQFx6;
 spf=pass (domain: gmail.com, ip: 209.85.217.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id t22so6814056vsa.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 13:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hMmaCS3z60VNyL1HD9qOEzXYivs/thFpQqEYcLlXW6I=;
        b=njfeQFx6T/R58+l87bxwYImGPKgpYYXKAq9XNsfTWlgr6GJor3IOrJiQMiG7aYtGqe
         oNP/dUXRbp8BJ6mI1S4MbeSdpsFggrzy0E6HbCEDNugNsjM9LgMoZvyXW5xCX1SzxH+0
         CKrwZQcDSgDVNmpR3bPinXohP5kM0d0zW8EMKzbxwLtYZ4fQxmLYXuUk5Jx2skWr/VC1
         np7jRNI197qwp46h9sH+4tpBQR2xIc3rn9dZTdPwPOUmKMWfhd2DtDVCCVPuLaZ5h1ca
         mpv4U92NjBDcOX/YgnMS6MXct1u5BrLtu3trEHjV0GK3IdjM8p2FhkZrk/dUSPst41/i
         e9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hMmaCS3z60VNyL1HD9qOEzXYivs/thFpQqEYcLlXW6I=;
        b=ucVTYA+0f5ORQnPxX/payE7Us9GGbMg7WZFDl/JZsjizB/kwkNajgKJuLULjQrI0En
         Bc3xb8z8Xkh2dQDIItuCuxMnjaFNJJQQ0yvyzkEr1Peud3Q1wzlJ2iJKKoRqnGJgzRTV
         jWRJhAsGcRVudu+DWvsVYNhOd+uKPvg0b5ux3XGwi4lFTtjChC6pduhTfo3aiShgJQtS
         +jlqfDzJ7fUL1nMY4vhiGL9RZp7LmUR7aauultOISWcpQQj1PxpDdoYghahd4aleeO8Z
         yqNeRf73tnwrZkEJHld3T5BZ+SqZxf4zRCFGfQP5lp+U1Kt+WQr0DUZnYNaZnxm8DfMP
         b/Ng==
X-Gm-Message-State: AOAM532kGD8WOWmPsfLPpetxTb0FqNV8juovgpPkFxJyJ7XxAhEkKBSe
	clrglEwU1gtF3hLZpjiuYgEVra3DfjF92nrGckg=
X-Google-Smtp-Source: 
 ABdhPJzZvMNE4pLdxVzzyLgvx2UWmz/LMdFv273a6+OJslpmPFWZSCZNUB2w47knQKPAy1JYdyc3op8n3rAiSZz/vXM=
X-Received: by 2002:a05:6102:cd0:b0:310:4636:78c5 with SMTP id
 g16-20020a0561020cd000b00310463678c5mr4142469vst.45.1645822870229; Fri, 25
 Feb 2022 13:01:10 -0800 (PST)
MIME-Version: 1.0
References: 
 <6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
 <CAOSpxdaG1XDuKni+_=Cwi3cxTrXHA0M7vyrnyVsL5i7p5PhkiA@mail.gmail.com>
 <CAJdd5GbCXeZFURAAs+vn7Z5KqJdiDPXR42aR8PJPcJ-zfEW9AQ@mail.gmail.com>
 <8a471cd9aa5a2aee65a3dc7558e6d54360a4cbfd.camel@linuxfoundation.org>
In-Reply-To: 
 <8a471cd9aa5a2aee65a3dc7558e6d54360a4cbfd.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Feb 2022 22:00:58 +0100
Message-ID: 
 <CANNYZj9GGo5pjfz1R+vpR1TFS==uyj4JmshpcUYg2+Gi23ahNA@mail.gmail.com>
Subject: Re: [yocto] QA change - reduced number of reproducibility builds
 tests?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Joshua Watt <jpewhacker@gmail.com>, Steve Sakoman <steve@sakoman.com>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, "Mittal,
 Anuj" <anuj.mittal@intel.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 21:01:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56288

On Fri, 25 Feb 2022 at 21:55, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Yes, I'll leave the targets available, we'd just run them manually or re-enable
> them but I'd take them off a-full for now.

With this change, what are the remaining differences between a-full and a-quick?

Alex

