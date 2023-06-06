Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11B0FC7EE24
	for <webhook@archiver.kernel.org>; Tue,  6 Jun 2023 18:09:57 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.3939.1686074993557431518
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jun 2023 11:09:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=RVfmNzIY;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4f63ea7bfb6so360697e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 06 Jun 2023 11:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686074992; x=1688666992;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xP/NCP6Zd6ilWcWCB7W+gG1taemLu4lp03grvs+Cvpo=;
        b=RVfmNzIYIguVIoBr7bAsVL5WVM262ZGMJbD22BOeTf7HdjoxFDUu/eM34EL/3fHro6
         WZnoDqcIDfCWtJSoQmC1cJswNf+nivZX2HYqfA0StayjwIJqMykikp/3zQDa6XMCZGuS
         9v/8MCwm/UWONv/KZs8cw6VntspnKaLarMqxdurYcz6Gpn11u+rAeS/QpezDcGQoIJYv
         SKFTPssD79/ZHTMo3hiGWE6lMAg5dBXbJmq/DOjID7wpWobwxpSb4XiDQnf/E26dNo8S
         Asf05WyaKXdCYsdZqiCCjKGn5MUDxCbrW3PIsob3bNd6WIp1tkqyDjwe/6Wya30nLGwH
         1FTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686074992; x=1688666992;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xP/NCP6Zd6ilWcWCB7W+gG1taemLu4lp03grvs+Cvpo=;
        b=il42IDyF+hMFW4UtFx1LIeIX6YDRnGH81ja0RyvPI0HIHRsWcNfX45ICfkmiv2a5Sq
         9Az4fF9t0gBdAm/dMX2/Ig0NukpIKIWZT5xTHiO//Q7ln+DAfU0UcZdEqkKJcK7frxwX
         7PB2tN1dYYfK73SqS3jBj1oQi68R8C0y+3QRZcTQb+nFX6/3TytjydQMcqWVTNhAjfvI
         AcBGqMjLs1UOLwK7RvWbfw5VkH1KvUGiiXjB0b1h1eAkOAivxgt0Go+jSMgF9BaSP/Ny
         BI4wCakOXXKuFs+UgmY8VbRb2FburbZCpv+mhvHz4lvwNSIqtdDCotsvOF8io00N9hbE
         XlvA==
X-Gm-Message-State: AC+VfDzHYNwnCCOyctyD6O6q/LxOTaT611w+N/tOsLj0XqbkpSjT31PS
	Ho8vFDtWr351v5dBA9gB2RlO9iEb4bqqWp/ot88=
X-Google-Smtp-Source: ACHHUZ5jbbKP8U6bddj6JUbWfOOjk/Urcdno3baCotm7MVL/2NTk7WTPDtLqIz5V9zbTnQWmKlrmOT3DTXeFTlwsINA=
X-Received: by 2002:ac2:43d8:0:b0:4f5:1ca1:30ce with SMTP id
 u24-20020ac243d8000000b004f51ca130cemr1194506lfl.47.1686074991537; Tue, 06
 Jun 2023 11:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <CANx9H-DsS9GObR2+KAuM2pnecvsfpaUVQ2sc3h2Qzb9MWtDeYw@mail.gmail.com>
 <CANNYZj9JUKG4dfYPrg6DZuGduCnwmwLMXx8+C32wFvMKvK5Zvw@mail.gmail.com> <20230605-musty-chamber-0dd3ae@meerkat>
In-Reply-To: <20230605-musty-chamber-0dd3ae@meerkat>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 Jun 2023 20:09:40 +0200
Message-ID: <CANNYZj_dOyNUZTkpzZ26xHDyR7eHqPZNRAd_XfdnToFypD59xg@mail.gmail.com>
Subject: Re: [auto-upgrade-helper] Should AUH send patches in-line instead of
 as attachments?
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Tim Orling <ticotimo@gmail.com>, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ef730305fd79ec62"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Jun 2023 18:09:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60191

--000000000000ef730305fd79ec62
Content-Type: text/plain; charset="UTF-8"

On Mon 5. Jun 2023 at 23.46, Konstantin Ryabitsev <
konstantin@linuxfoundation.org> wrote:

> On Sat, Jun 03, 2023 at 03:25:59PM +0200, Alexander Kanavin wrote:
> > AUH attaches not just the patch (if it was possible to produce), but
> > also buildhistory and build failure logs (if something failed). It
> > also provides a bit of explanation/context/apply-resend instructions
> > in the email text. We can certainly consider options, I'm just not
> > sure how to arrange all that if patches are sent directly as emails.
>
> It's actually pretty straightforward. Instead of attaching the patch to the
> message, place it under the scissors line "-- >8 --".
>
> E.g. if we take this message:
>
>
> https://lore.kernel.org/openembedded-core/010101887b289125-ddc413a5-24e2-4458-a329-e719e936d0e6-000000@us-west-2.amazonses.com/
>
> Make the body of the message as follows:
>
>         ... (skipped) ...
>         Please review the attached files for further information and
> build/update failures.
>         Any problem please file a bug at
> https://bugzilla.yoctoproject.org/enter_bug.cgi?product=Automated%20Update%20Handler
>
>         Regards,
>         The Upgrade Helper
>
>         -- >8 --
>         From e302d4d1d5eb9f8377ddcfac58e46b0d787f1e88 Mon Sep 17 00:00:00
> 2001
>         From: Upgrade Helper <auh@yoctoproject.org>
>         Date: Fri, 2 Jun 2023 05:09:50 +0000
>         Subject: [PATCH] at-spi2-core: upgrade 2.48.0 -> 2.48.3
>
>         ---
>          .../atk/{at-spi2-core_2.48.0.bb => at-spi2-core_2.48.3.bb}
> | 2 +-
>          1 file changed, 1 insertion(+), 1 deletion(-)
>          rename meta/recipes-support/atk/{at-spi2-core_2.48.0.bb =>
> at-spi2-core_2.48.3.bb} (95%)
>
>         diff --git a/meta/recipes-support/atk/at-spi2-core_2.48.0.bb
> b/meta/recipes-support/atk/at-spi2-core_2.48.3.bb
>         ... (skipped) ...
>
> This should make it possible for someone to use this patch directly without
> having to first save the attachment.
>
> Here's more info about the scissors line:
>
> https://git-scm.com/docs/git-mailinfo#Documentation/git-mailinfo.txt---scissors
>
> Hope this helps.


Thanks, that seems reasonable, but is then it still ok to attach additional
build artifacts (logs etc) to the message? Will the tools first discard the
attachments, take the message body, then apply the scissors to get the
patch out?

>
Alex

--000000000000ef730305fd79ec62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>On Mon 5. Jun 2023 at 23.46, Konstantin Ryabitsev &lt;<a href=3D"mailt=
o:konstantin@linuxfoundation.org">konstantin@linuxfoundation.org</a>&gt; wr=
ote:<br></div><div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-st=
yle:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">On Sat, Jun =
03, 2023 at 03:25:59PM +0200, Alexander Kanavin wrote:<br>
&gt; AUH attaches not just the patch (if it was possible to produce), but<b=
r>
&gt; also buildhistory and build failure logs (if something failed). It<br>
&gt; also provides a bit of explanation/context/apply-resend instructions<b=
r>
&gt; in the email text. We can certainly consider options, I&#39;m just not=
<br>
&gt; sure how to arrange all that if patches are sent directly as emails.<b=
r>
<br>
It&#39;s actually pretty straightforward. Instead of attaching the patch to=
 the<br>
message, place it under the scissors line &quot;-- &gt;8 --&quot;.<br>
<br>
E.g. if we take this message:<br>
<br>
<a href=3D"https://lore.kernel.org/openembedded-core/010101887b289125-ddc41=
3a5-24e2-4458-a329-e719e936d0e6-000000@us-west-2.amazonses.com/" rel=3D"nor=
eferrer" target=3D"_blank">https://lore.kernel.org/openembedded-core/010101=
887b289125-ddc413a5-24e2-4458-a329-e719e936d0e6-000000@us-west-2.amazonses.=
com/</a><br>
<br>
Make the body of the message as follows:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ... (skipped) ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Please review the attached files for further in=
formation and build/update failures.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Any problem please file a bug at <a href=3D"htt=
ps://bugzilla.yoctoproject.org/enter_bug.cgi?product=3DAutomated%20Update%2=
0Handler" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoprojec=
t.org/enter_bug.cgi?product=3DAutomated%20Update%20Handler</a><br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Regards,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The Upgrade Helper<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -- &gt;8 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 From e302d4d1d5eb9f8377ddcfac58e46b0d787f1e88 M=
on Sep 17 00:00:00 2001<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 From: Upgrade Helper &lt;<a href=3D"mailto:auh@=
yoctoproject.org" target=3D"_blank">auh@yoctoproject.org</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Date: Fri, 2 Jun 2023 05:09:50 +0000<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Subject: [PATCH] at-spi2-core: upgrade 2.48.0 -=
&gt; 2.48.3<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ---<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.../atk/{<a href=3D"http://at-spi2-core_2=
.48.0.bb" rel=3D"noreferrer" target=3D"_blank">at-spi2-core_2.48.0.bb</a> =
=3D&gt; <a href=3D"http://at-spi2-core_2.48.3.bb" rel=3D"noreferrer" target=
=3D"_blank">at-spi2-core_2.48.3.bb</a>}=C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletio=
n(-)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rename meta/recipes-support/atk/{<a href=
=3D"http://at-spi2-core_2.48.0.bb" rel=3D"noreferrer" target=3D"_blank">at-=
spi2-core_2.48.0.bb</a> =3D&gt; <a href=3D"http://at-spi2-core_2.48.3.bb" r=
el=3D"noreferrer" target=3D"_blank">at-spi2-core_2.48.3.bb</a>} (95%)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 diff --git a/meta/recipes-support/atk/<a href=
=3D"http://at-spi2-core_2.48.0.bb" rel=3D"noreferrer" target=3D"_blank">at-=
spi2-core_2.48.0.bb</a> b/meta/recipes-support/atk/<a href=3D"http://at-spi=
2-core_2.48.3.bb" rel=3D"noreferrer" target=3D"_blank">at-spi2-core_2.48.3.=
bb</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ... (skipped) ...<br>
<br>
This should make it possible for someone to use this patch directly without=
<br>
having to first save the attachment.<br>
<br>
Here&#39;s more info about the scissors line:<br>
<a href=3D"https://git-scm.com/docs/git-mailinfo#Documentation/git-mailinfo=
.txt---scissors" rel=3D"noreferrer" target=3D"_blank">https://git-scm.com/d=
ocs/git-mailinfo#Documentation/git-mailinfo.txt---scissors</a><br>
<br>
Hope this helps.</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">=
Thanks, that seems reasonable, but is then it still ok to attach additional=
 build artifacts (logs etc) to the message? Will the tools first discard th=
e attachments, take the message body, then apply the scissors to get the pa=
tch out?</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;borde=
r-left-color:rgb(204,204,204)" dir=3D"auto"></blockquote></div></div><div><=
br></div><div dir=3D"auto">Alex</div>

--000000000000ef730305fd79ec62--

