Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B065C05027
	for <webhook@archiver.kernel.org>; Fri,  3 Feb 2023 13:18:40 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
 by mx.groups.io with SMTP id smtpd.web10.9880.1675430315124054444
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 05:18:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ENaiW3Az;
 spf=pass (domain: gmail.com, ip: 209.85.222.45, mailfrom: joel.winarske@gmail.com)
Received: by mail-ua1-f45.google.com with SMTP id g24so948967uap.13
        for <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 05:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=geIfkvmZ9TaYPk+WkjiXd9B9sNUhgxRT7b9Z3Gx67K4=;
        b=ENaiW3AzpIWpDuyCRvUUtZzVvMg4TfqRxFLS8RvNbJbuTbAx9cTd0RBdUkZnhtE1gU
         sfCyrzm1ZBUmV5mdDj4oHWStMhO3LWmbyY+eWd/Y6vy3yy7tVYmt+G26gw9fCUtFEWTR
         1RIJaZDs3FSdTJhROxFovXm9D2xjEyP3kCbV3VDl6gBVYJVgawn5FgztzFyqdH8PfGuc
         0MnbkLNQXtjTR2SivxOl+vl9+bLR6QMfC5s2tb/UMK4qdlxnZsUc9pNSSNXsFNS+UBzK
         P5icSqoMGRQ7IXCT+0xHsi3XfxD9VOBBLqOgWOMURm4YN5EFvB0YomezwfLClZgg6hS+
         TCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=geIfkvmZ9TaYPk+WkjiXd9B9sNUhgxRT7b9Z3Gx67K4=;
        b=PCgcSIuk/rfGVwT5ITFI6of8oKy+lMow4kLYmb8E4k48GsjMliqZRG1OTh+t2RgBj1
         jYbm3/EOpIayTWdNag8jo1lZSOnDPLY45fy171Dol0mNsZ+xzfV7IFab+NgBGSQbccy5
         oDzy+isptO52pO45yw4TuRjvbsn6v/4eIPTL1jfa3zNN5+JDWvf6NewhE9RamzGpd5fq
         1R6xgzNaXIbv2POOHZSUwdRbW7uULIRrvV9yBJD75fKvj1kZ8gwTKun/CCwJ46h7Y2lI
         N1VfpGDn64CpwgFi8zXp/hvHBZlbhbr552M3l7EG5U410PHIoUzJB7R3kRBAWcG7GutU
         mdNw==
X-Gm-Message-State: AO0yUKWXg/ybMeoVf/bS1AqH7zvkkF4Ww6QauhvlPR91eDvukvPuDGbS
	oMMR079mT8ido25sbm+G57NoiyAacRJyyRa0J1fiQsGR
X-Google-Smtp-Source: AK7set8OhDPTmFjz9Rv1W92geL1WsPitstT6ytJ7s0J7X/jk2LhQvtArYLzXPiUfION7ST4HW4S5LnrsKju4m6R5rnw=
X-Received: by 2002:ab0:13ae:0:b0:670:ff15:7f5f with SMTP id
 m43-20020ab013ae000000b00670ff157f5fmr1576724uae.16.1675430314025; Fri, 03
 Feb 2023 05:18:34 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPKaoqM8U0CShdQxRk+a6iYWNqqd-ADuP9_z==x9ZW31_Q@mail.gmail.com>
 <20118.1675408692328976766@lists.yoctoproject.org>
In-Reply-To: <20118.1675408692328976766@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Fri, 3 Feb 2023 05:18:22 -0800
Message-ID: <CABKMkPKFv8X0jRVVBxvURkrjuYGoi3ctuyRaRo+Cg7GTpJFH4g@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Is Preempt-rt still supported in
 master / latest releases?
To: Carles.SoleMendi@de.bosch.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b6a97e05f3cb84a9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 13:18:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59156

--000000000000b6a97e05f3cb84a9
Content-Type: text/plain; charset="UTF-8"

Hi,

You should open issue with the upstream layer referencing this dialog:
https://github.com/agherzan/meta-raspberrypi

Joel

On Thu, Feb 2, 2023, 11:18 PM Carles Sole via lists.yoctoproject.org
<Carles.SoleMendi=de.bosch.com@lists.yoctoproject.org> wrote:

> Hello Joel,
>
> I do get the same, but my understanding is that the RT features are not
> enabled. I would expect to get:
>
>   Linux raspberrypi4-64 5.15.34-v8 #1 SMP PREEMPT *RT* Tue Apr 19
> 19:21:26 UTC 2022 aarch64 aarch64 aarch64 GNU/Linux
>
> When I check the .config file in the work folder CONFIG_PREEMPT=y is set
> but I would expect to see CONFIG_PREEMPT_RT=y instead.
>
> That is what you get for rpi4 32 bit as mentioned by Aleksandr above. Is
> my understanding wrong?
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59154):
> https://lists.yoctoproject.org/g/yocto/message/59154
> Mute This Topic: https://lists.yoctoproject.org/mt/96470693/2167248
> Mute #raspberrypi:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000b6a97e05f3cb84a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">You shou=
ld open issue with the upstream layer referencing this dialog:</div><div di=
r=3D"auto"><a href=3D"https://github.com/agherzan/meta-raspberrypi">https:/=
/github.com/agherzan/meta-raspberrypi</a><br></div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Joel</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 2, 2023, 11:18 PM Carles Sole v=
ia <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt=
;Carles.SoleMendi=3D<a href=3D"mailto:de.bosch.com@lists.yoctoproject.org">=
de.bosch.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Hello Joel,<br><br>I do get the same, but my understanding =
is that the RT features are not enabled. I would expect to get:<br><br>=C2=
=A0 Linux raspberrypi4-64 5.15.34-v8 #1 SMP PREEMPT <strong>RT</strong> Tue=
 Apr 19 19:21:26 UTC 2022 aarch64 aarch64 aarch64 GNU/Linux<br><br>When I c=
heck the .config file in the work folder CONFIG_PREEMPT=3Dy is set but I wo=
uld expect to see CONFIG_PREEMPT_RT=3Dy instead. <br><br>That is what you g=
et for rpi4 32 bit as mentioned by Aleksandr above. Is my understanding wro=
ng?
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59154): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59154" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/59154</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96470693/2167=
248" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/96470693/2167248</a><br>
Mute #raspberrypi:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehas=
htag/raspberrypi" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">joel.winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b6a97e05f3cb84a9--

