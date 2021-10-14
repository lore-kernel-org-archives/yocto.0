Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95832C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 16:24:37 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web12.436.1634228677054606718
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 09:24:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hQ2TpCKx;
 spf=pass (domain: gmail.com, ip: 209.85.222.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id u5so12341790uao.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 09:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TlGAwnBNof0pjaSOlTfgjDJuhMaGEOpaVsdMsNbT5NQ=;
        b=hQ2TpCKxIACrjWvA6fQ1fApgg/JUDSwrH2QwKaL+Ds5SP0y0EUILVUTTMh0hJLc8tL
         T2I0HVoO2TxCa6g2O/RmlhcTJoMzJ1rW5aEjox/lkJfX1HFlOXz9uj5uQieRlUht3f5s
         jSAeu9FvjhT1utwwFxTBLTITOb1VcxJNGEhcHESv3XH4kwyUUALzlAXxushPDRE1EwmR
         JrNbkoSLSBGQ6zViUfeOhO1aqTFhzdmJPUzH+32jb8RxBBpyj7n1eKQLU/OhxeoJeXrs
         uhaNrnwt5WjhedEsDRg77TKvhAg91f/iGlA1Og3vdlW6sgAuDcuw/HOgjk/6fjAmhc1A
         CoNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TlGAwnBNof0pjaSOlTfgjDJuhMaGEOpaVsdMsNbT5NQ=;
        b=ndDDUKqHCCbvIyywIYpIaffEMf7Pzk5HWMo3oJCVhmPXufVe12lIsA1bnruokMUgfH
         PidLOYsUQwDfk2vA5cKQjyA0BYizZ7EiXLnfU+D/hWUtaaCkP/CoMDh4IaRWJirGpFjq
         YyVSHeTT35uPlfSUE4i5pZEkmmvz15J1Ivp0tSkV/wpLN8piTHsXwMvQP6eZnbAdL0dF
         SdEVdrbP+VB6A84UAnot5MoWwETduc5UU6/OR15ly743eTpTbeyxrE02ngy1gpcFR5Hi
         WiDttdMnP8/R6h5mMz9cI4zBpAIWHcYjzCB4KZrWaLjkYbjcChbo1YBGUHqB0ea3FA3B
         EtHQ==
X-Gm-Message-State: AOAM530kdoSdIToeoxHmCZw9Fv41+nSLvvZWBJ4yOOqdPfmxT5kicxwp
	KkOGiOZD2hjqLHjG65zKBHDdUr0UWDJvXVmnUEs=
X-Google-Smtp-Source: 
 ABdhPJxLlxVsr8eohzVhRGaglcyjz4MEle9PRdkF/tnCUblTuLELAF8/Ccecha9rSQvdwjQxLaz14b0FY0u2aQg5mgM=
X-Received: by 2002:a67:df18:: with SMTP id s24mr7746171vsk.40.1634228676223;
 Thu, 14 Oct 2021 09:24:36 -0700 (PDT)
MIME-Version: 1.0
References: <20211013161839.90894-1-alex.kanavin@gmail.com>
 <a49f6d2eb665891e315e57b822e00672102dd36f.camel@linuxfoundation.org>
In-Reply-To: 
 <a49f6d2eb665891e315e57b822e00672102dd36f.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Oct 2021 18:24:24 +0200
Message-ID: 
 <CANNYZj8eL7nFAHW=1mfAyEkL16mf710v2sG9LZAw2wjrfdKJ_A@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts/collect-results:
 publish everything in tmp/log/oeqa/
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ba674f05ce528329"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 16:24:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55075

--000000000000ba674f05ce528329
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 Oct 2021 at 18:08, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Since that build directory contains symlinks, we may need something like
> cp -L
> here? I didn't test but I think we might run into an issue?
>

That's right, -L is needed.

Alex

--000000000000ba674f05ce528329
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, 14 Oct 2021 at 18:08, Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Since =
that build directory contains symlinks, we may need something like cp -L<br=
>
here? I didn&#39;t test but I think we might run into an issue?<br></blockq=
uote><div><br></div><div>That&#39;s right, -L is needed.</div><div><br></di=
v><div>Alex<br></div></div></div>

--000000000000ba674f05ce528329--

