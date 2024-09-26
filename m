Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4489ACCF9E9
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 09:00:45 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.38146.1727341242794728623
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Sep 2024 02:00:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ax9AeSff;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f75b13c2a8so8033491fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 02:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727341241; x=1727946041; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ls+swRnoOX5H9s80S9T5l4Di8LEdQTKRS6aHejx3lvs=;
        b=Ax9AeSffyDGMOHpEaY7JDmfmXNaFr5xKwtmLSArXMOj4XeIvJMFMGOhKL7felAmShe
         sQF0NJBRH8QdzikqoWsOXd6V5mgJdscWUJoFfTBgrRLIKxw2c8nnRf4lKx5oUJJakeXs
         o50Y88KCOF9/lOb07h9hkgAzD7tv5YiLdT04rd8+A83AeHTHekEHozl2Uz5aec/s6hgp
         8p9bPNhLiayNq7O0uBszk+juNakC6+K1B5lC56g79yNekqUSmeZ/W+y5K81XzMtBxZ6V
         aQ6zt/UQ76TMxT30Wlv9lAdosDgcRHJaE00alPRnkrwFa1HDi08TYyxb5ZjMbIuiVoug
         RuCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727341241; x=1727946041;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ls+swRnoOX5H9s80S9T5l4Di8LEdQTKRS6aHejx3lvs=;
        b=PQOQ8zB7h7Chx67gjqs+fgMR+penXlmxfCIy/DPnVewUKM3NdhZ1VS1x9pQ6OstZge
         TxylBkIyW5CRPfj2ieP7/IopHBvyY7S2PF0g7AG1oD6siP/AqUhaJZp4XZH6dVtSLYx2
         eaLlCnpQRV3XEWVmjcHokHQCfDnBc6xmdfOWUULzJUHQEDFSSCkSZI/3nrt7McJjvvND
         K5MYoFEYuWxN8Cc9JYFiNdlrv+ZRyIgZhRYgpuj39jEl++LyVieYcU47DRfABBDlL7lu
         WXU+9nSFussRr5Yuat5v9MEPlpF/UYFRCYNGGIr4sSGiWb3om3dooxD0M8yAU5SErCJ3
         UE0Q==
X-Gm-Message-State: AOJu0YzOk2+69L68vWi1vIcZLs3k184dv11B/ubUOKKuGiwZNkEDvDOY
	yJ2++6TfGSMMc4SXl/5Ch3RtfeatHjHkBhRnVJsjAP4jvfKvfzaXlPuwH7uWswtL7ZjZ8uUKo8O
	wHE/XxjuQUlgVyaZgI8QneQDTr9MHnw==
X-Google-Smtp-Source: AGHT+IGjgueI95I/FsyL1eUjraUBgq6q7C+5VuLaPYwXaX1t02+bOeObieDUtTD0RLioaYaKs3t09QLVNNHkT2/aMOo=
X-Received: by 2002:a2e:a546:0:b0:2f7:5bcd:ab52 with SMTP id
 38308e7fff4ca-2f91604034emr33427121fa.25.1727341240022; Thu, 26 Sep 2024
 02:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <XBmI.1727327966958373700.7wSP@lists.yoctoproject.org>
In-Reply-To: <XBmI.1727327966958373700.7wSP@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 26 Sep 2024 11:00:28 +0200
Message-ID: <CANNYZj_7xJKS7U4dwq9t3pNT62nEaohJc722Fj1otx=j8Kme-g@mail.gmail.com>
Subject: Re: [yocto] Screen recording on wayland display server #yocto
To: yocto@lists.yoctoproject.org, poornesh.g@mindteck.com
Content-Type: multipart/alternative; boundary="000000000000047f5a062301f971"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 09:00:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63892

--000000000000047f5a062301f971
Content-Type: text/plain; charset="UTF-8"

This is really not a yocto question. You need to ask it in the support
forum for your Wayland compositor.

Alex

On Thu 26. Sep 2024 at 7.19, Poornesh G ( India - Bangalore ) via
lists.yoctoproject.org <poornesh.g=mindteck.com@lists.yoctoproject.org>
wrote:

> Hi Everyone,
>
> We have a medical device with LCD & HDMI interface running with yocto
> (kirkstone). I have Qt application running  on wayland display server from
> yocto.
> Now I have a requirement of recording the entire Qt screen , as of now due
> to security features of wayland I could not able to able to capture screen
> using Qt . Please anyone help me with alternatives/suggestions to achieve
> this.
> Even I have included  ffmpeg, gstreamer  as well.
>
> Thanks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63889):
> https://lists.yoctoproject.org/g/yocto/message/63889
> Mute This Topic: https://lists.yoctoproject.org/mt/108662798/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000047f5a062301f971
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">This is really not a yocto question. You need to ask it i=
n the support forum for your Wayland compositor.</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu 26. Sep 2024 at 7.19, Poornesh G (=
 India - Bangalore ) via <a href=3D"http://lists.yoctoproject.org">lists.yo=
ctoproject.org</a> &lt;poornesh.g=3D<a href=3D"mailto:mindteck.com@lists.yo=
ctoproject.org">mindteck.com@lists.yoctoproject.org</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:=
rgb(204,204,204)"><div>Hi Everyone,</div>
<div>=C2=A0</div>
<div>We have a medical device with LCD &amp; HDMI interface running with yo=
cto (kirkstone). I have Qt application running=C2=A0 on wayland display ser=
ver from yocto.=C2=A0<br>Now I have a requirement of recording the entire Q=
t screen , as of now due to security features of wayland I could not able t=
o able to capture screen using Qt . Please anyone help me with alternatives=
/suggestions to achieve this.</div>
<div>Even I have included=C2=A0 ffmpeg, gstreamer=C2=A0 as well.</div>
<div>=C2=A0</div>
<div>Thanks</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63889): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63889" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63889</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108662798/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108662798/1686489</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000047f5a062301f971--

