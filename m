Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63617C77B7A
	for <webhook@archiver.kernel.org>; Thu, 25 May 2023 09:47:28 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.7964.1685008040593931003
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 May 2023 02:47:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=kwgKjwWd;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-4f3b337e842so2117152e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 25 May 2023 02:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685008038; x=1687600038;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f3ewzfKA1nZB+r2maewzEZhQqkrYtwATUA/dTQm7Q/Q=;
        b=kwgKjwWdkNvpUCmU0hnC9qCGXP5GIuUgebz3EStzhGsaIb5RmilDXjBIXMUev/KKvZ
         E/0tgW2a0la7OvgQNGnCGDTltOK2chvlt8p3Ge3YYA2L7kcTucGg5knv/O/uCM7gXvc9
         tyhlLaIikUc2nY+OLLmkPlaz2t76GubXOxc2OIanfijkFRLxF4h8Je0hFx+w5HzN1q/1
         rNUJvNvg0ooLjziaEVzt3JW+d1kNWAmObpGlfeVbUH99uHbRU100weRThf9/f+jr/B3J
         7oDOUCkiek7uQIvq5+e0PQbB80Yc0fb/L7kP8M6fKE4NnGHx7c8A5vKveJFFhl6jfmqO
         m0fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685008038; x=1687600038;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f3ewzfKA1nZB+r2maewzEZhQqkrYtwATUA/dTQm7Q/Q=;
        b=G8StLJUlheNFtybDJDHHRBsQTeO6i1Pz3QAYWI9pJQOtqwgacdRd7bZ07g934uIK68
         xV2IDgoiS1oDmjcl8xW4jHPNoq8kRpGLm5bm60IhY9dU6aB46llm7FeWHBPQgGXOOxsS
         LDRXXofJW1afyHk0KvvvvUgm23b2XTBmMsaSJMmQtMqlgpc0lwBIb9wIqMOk81oPvn7G
         MJltFVKqOp0xWjLe8xjmnlH7wKgorRLB5bVvIMM5/oaZ7oaQbrq1GfaP++t5MPPRxhAQ
         izp06aD+9M19LGzYhQzEgBMsSYlQpFi1yzrCeOLgZTKydDITqOUeuLlK0T/E4GF8Ug8+
         U26A==
X-Gm-Message-State: AC+VfDzdsYEEmgWv2nuTmiXCtmCS9sC2Xcd6IG+gZjj8XL4HPD4rBn05
	ZxBS+/XPqn+Kr7miKB0l+XtStgGzrNA4gSuEUrw=
X-Google-Smtp-Source: ACHHUZ4MzZH6RPZ6mtynLm3J8wC6DnTlqTxDbbBLpA9WX5TSeHer7B2pVrpQMTkeM4WV052p74Pi2TBfmfTsQlCkOMU=
X-Received: by 2002:a2e:864c:0:b0:2af:160d:8897 with SMTP id
 i12-20020a2e864c000000b002af160d8897mr823926ljj.26.1685008038299; Thu, 25 May
 2023 02:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <dc33b8e9-3c27-afc0-7595-9020ba69bbdd@bootlin.com>
 <CAMKF1sq5GkHkumFtS-CgDOPFR5Bydizk2dnMLvmzNECYTy=Q=w@mail.gmail.com>
 <a82a15fb-387f-8ac8-70a5-13c9df329eb6@bootlin.com> <CANx9H-COECkEFztZXmxLF7rNZkkjfuZpBL9y+ZC4_Xvc-tBXhQ@mail.gmail.com>
 <305111e6-2a94-4296-196f-9e16454b4111@bootlin.com>
In-Reply-To: <305111e6-2a94-4296-196f-9e16454b4111@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 May 2023 11:47:06 +0200
Message-ID: <CANNYZj__d6pXfXSLp6K0K76A3k3XmK5wCYEz3Fbo4W0pG4az5g@mail.gmail.com>
Subject: Re: [yocto] psplash: white stripes with custom splash image
To: michael.opdenacker@bootlin.com
Cc: Tim Orling <ticotimo@gmail.com>, Khem Raj <raj.khem@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 May 2023 09:47:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60122

Should these be PACKAGECONFIG entries in psplash recipe?

Alex

On Thu, 25 May 2023 at 11:39, Michael Opdenacker via
lists.yoctoproject.org
<michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>
>
> On 25.05.23 at 06:22, Tim Orling wrote:
> >
> >
> >     Thanks for the tip!
> >     I am using systemd indeed. I've just tried with sysvinit, and the
> >     issue
> >     is the same. Anyway, I'll check the code for this text box.
> >
> >
> > https://git.yoctoproject.org/psplash/tree/configure.ac#n34
> >
> > I think.
>
>
> Yesss!
>
> EXTRA_OECONF += "--disable-startup-msg --enable-img-fullscreen"
> did the trick:
>
>   * "--disable-startup-msg" to disable the upper white box (I didn't see
>     the startup message anyway)
>   * "--enable-img-fullscreen" to avoid the upward shift.
>
> Many thanks!
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60121): https://lists.yoctoproject.org/g/yocto/message/60121
> Mute This Topic: https://lists.yoctoproject.org/mt/99105545/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

