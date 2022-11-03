Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3409AC433FE
	for <webhook@archiver.kernel.org>; Thu,  3 Nov 2022 21:45:06 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.4391.1667511902190249400
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Nov 2022 14:45:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com header.s=20210112 header.b=OkxiELJX;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.52, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f52.google.com with SMTP id y14so8783153ejd.9
        for <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 14:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VF5doPzZQrjtR7JcKFvFhQ9SjKjhe2/Y9EQ8ZNHmUrw=;
        b=OkxiELJXMRa8n7dkYVAi8ClJcIUTYIaED51LvrpbZK1yDIRyu876rSPdBM17bVengE
         IYuV6GUsJ4Kgd7F550DgLSS3PKaDj0PZ6flQ9MMeEE15ueqlCXgumuzldMk9UhkE276P
         B8F1+BTNptZFoWOxNpTKtOknuc2jVVpW9H8mCzVRkryzbkWgsGQWieiTcXgZ9tiOlz8+
         ojeHB4lepvhwqA9IVrLwn33g9id1o6bk6jRF3BCulwjxNhSa2UTs0yM3Y8hIPUoyFTRQ
         LDKFiB4cznlwtVhpkWpVQ6qF2zO8fY0OToWEJrwIy/TXaGppwAp8kZNEnqv7sqF05bLC
         FbJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VF5doPzZQrjtR7JcKFvFhQ9SjKjhe2/Y9EQ8ZNHmUrw=;
        b=MoXX2H0KPl70L6TA++FyoBG5eT3/byq9sHMu4KQvOLczZd93LLIbf308sBA+8fRsPv
         rfyQT1NTm1XmrT7QwQJupgOnOOeHU+N+mdAb1g+bwgqrKj/wHXKHygHmekh4d+Wyhtoh
         YSByHnlqVabcsoVI9WmcpWhNI/1WAc042vkaGA8ZdWluydT8VAwZ4Nq47NFoMD9xXU12
         L2h38QdVlsHA73r4DGa5+U6icossS535H2XMdd0oZmLEvWWsyRQdHj+tx32ZlVc5jgdQ
         tIKprPzohEq/4GAVaBhWW7ZIEupyGrQgOiPztwE8UYMjVdzyTtBYD6iHgmExpZSr7UOf
         BIzQ==
X-Gm-Message-State: ACrzQf3mK/UMCk9zB54WtCJK1FChMtUgWRmJYDfwnioCQ0mz6lcv30fl
	Q7wIU87mBNYseMIiFapuDMzWcim1wedKzL0rTgT6jw==
X-Google-Smtp-Source: AMsMyM4PC3MIcNud+vDnMNCb4L0HeAOMRT1bKwIO4nht+mJ0t+CFQ6Q/VvnwxvBAwPAbNG25+erCAu8I8MdHzgyPb7A=
X-Received: by 2002:a17:907:75f1:b0:78a:f935:647d with SMTP id
 jz17-20020a17090775f100b0078af935647dmr30803562ejc.587.1667511900464; Thu, 03
 Nov 2022 14:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt6Nwqze1r8o=EfzMNEeXz67C3VdE4QToWFE4ksoyNwR9=Xnw@mail.gmail.com>
 <22885.1667511608881895438@lists.yoctoproject.org>
In-Reply-To: <22885.1667511608881895438@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 3 Nov 2022 22:44:34 +0100
Message-ID: <CAEt6Nwqt--ytadpG+JnRoG5ATLAL+bnsi=ObKQke_MUpz=_Q-w@mail.gmail.com>
Subject: Re: Private: Re: [yocto] Private: Re: [yocto] Scope of the build
 parameters #systemd
To: Martin Leduc <martin.leduc@luminator.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007c7cb305ec97dece"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 21:45:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58480

--0000000000007c7cb305ec97dece
Content-Type: text/plain; charset="UTF-8"

Again re-adding list....

On Thu, Nov 3, 2022 at 10:40 PM martin.leduc via lists.yoctoproject.org
<martin.leduc=luminator.com@lists.yoctoproject.org> wrote:

> Per example, in poky/meta... I found the core-image-minimal.bb (bitbake
> core-image-minimal), pulling on the core-image.bbclass, pulling on
> images.bbclass by using the inherit keyword.
> Then, I will have a big IMAGE_INSTALL variable content to build and their
> dependencies from local.conf + all the other image/bbclass recipes joined
> by the inherit keyword is that correct?.
>

I encourage you to look at and understand the evaluation for yourself by
issuing "bitbake-getvar -r core-image-minimal IMAGE_INSTALL"

Greetz,
Josef

--0000000000007c7cb305ec97dece
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Again re-adding list....</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 3, 20=
22 at 10:40 PM martin.leduc via <a href=3D"http://lists.yoctoproject.org">l=
ists.yoctoproject.org</a> &lt;martin.leduc=3D<a href=3D"mailto:luminator.co=
m@lists.yoctoproject.org">luminator.com@lists.yoctoproject.org</a>&gt; wrot=
e:</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Per example, in p=
oky/meta... I found the <a href=3D"http://core-image-minimal.bb" target=3D"=
_blank">core-image-minimal.bb</a> (bitbake core-image-minimal), pulling on =
the core-image.bbclass, pulling on images.bbclass by using the inherit keyw=
ord.<br>Then, I will have a big IMAGE_INSTALL variable content to build and=
 their dependencies from local.conf + all the other image/bbclass recipes j=
oined by the inherit keyword is that correct?.<br></blockquote><div><br></d=
iv><div>I encourage you to look at and understand the evaluation for yourse=
lf by issuing &quot;bitbake-getvar -r core-image-minimal IMAGE_INSTALL&quot=
;</div><div><br></div><div>Greetz,</div><div>Josef=C2=A0</div></div></div>

--0000000000007c7cb305ec97dece--

