Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11121CEBF84
	for <webhook@archiver.kernel.org>; Fri, 27 Sep 2024 08:37:53 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web10.64661.1727426262834549647
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Sep 2024 01:37:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FIg2Pd3w;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-84eb2f32097so244974241.2
        for <yocto@lists.yoctoproject.org>; Fri, 27 Sep 2024 01:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727426262; x=1728031062; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TOdSvS7Ls6ZtaishM0+jjUcFnXC0om3WNjQ/yuG/tns=;
        b=FIg2Pd3wJZcEkV6NZZLfJgS4xwlLCt2fnc6t0xyL5xGVkvUub4fhgpUhN7zn1ALNHV
         keocXBYiSZOfDmmzZ92Mzw2zHT2rYzEl3z/28sLA+XQANhcE0cinjCWVUqNwy0pptJGA
         WGiocLd7IxVRt/wy+RQzcvpORUnheATDyTfUOehblb0m1u1fXhHir7MNhgoQYZJ9WrX4
         riesvNV8TC4RDgvt5LkmpJen1Td8MNhTFbkMiAem0T5WuHdoesuZ2+gvAoqnDEMn5L50
         Z62QV/4JfCc6RFnADvvsjwnxfHMsNuo066yF67GbrrDIDG+FB/v+TU/pyzyO/tyGE5KN
         zg+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727426262; x=1728031062;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TOdSvS7Ls6ZtaishM0+jjUcFnXC0om3WNjQ/yuG/tns=;
        b=YJ77Tl5x6Gl1OQfx5Adq2k7xQAkREe1NhI0wj33XRmOJcEaFZqpycOeNV2TaURLCyF
         o3YOl3Ibg4qsAZWKmHejl5RQpQ/HizuY3krIvp+8xouWwERXtvopw+a+yW9tUJ9ETB5z
         +yEFTs+cqli0ipScIkT1OBeNUfyogxuD7fAbIjeDOHPv86hy2xtX2nUDvFoNh3nB4cWq
         BlbtNu96pYiTU59b3zeUS2IRf6737t4QRTltwn09JddugFMtQcFZA0ox+mOY/HP4A889
         IvBoBczbnPqYoBd6E0OEgUsm9tzg24Xq8kOpAqQTrpQO5qHfjJkZn/3+hUFBbhY2848a
         EdYw==
X-Gm-Message-State: AOJu0YzqIJlHWxiI8rNl9D0RaO6cUtQdEqIi2wqgdEleI9GNdQ9WyG8r
	fpZspoRguYlpwbI9UIXBh/+rS1i1TVG70yiBHra4HIhdAIjgRJPvEHExNuwjDrycr/LoWtNZsVQ
	kDgmZG4JbZboxSXtWBAEAqdVxJTqClCYU
X-Google-Smtp-Source: AGHT+IG9sdBmn6pKncup8bDbxLAqPEd9NPFOpFAN9rGfeR7OV8ypY0LuLBmcbEgwTpir8WXRwaSXfqg6kGPugMHM+xU=
X-Received: by 2002:a05:6122:1d4e:b0:500:fa6b:b878 with SMTP id
 71dfb90a1353d-507816b9f3dmr1754690e0c.3.1727426261540; Fri, 27 Sep 2024
 01:37:41 -0700 (PDT)
MIME-Version: 1.0
References: <MU4W.1727424374044272936.iauo@lists.yoctoproject.org>
In-Reply-To: <MU4W.1727424374044272936.iauo@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 27 Sep 2024 09:37:23 +0100
Message-ID: <CANPvuR=FyJ2K7_3VdOvrasBEiyLPh-BD4+c6uYZVsqQA45geLA@mail.gmail.com>
Subject: Re: [yocto] Force Yocto to use sstate-cache
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Content-Type: multipart/alternative; boundary="000000000000b1e9e9062315c435"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Sep 2024 08:37:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63903

--000000000000b1e9e9062315c435
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Aleksandar Nikolic via lists.yoctoproject.org <aleksandar.nikolic010=3D
gmail.com@lists.yoctoproject.org> escreveu (sexta, 27/09/2024 =C3=A0(s) 09:=
06):

> Hello,
>
> is there a way to force Yocto to use sstate-cache during the build and
> fail/print warnings if some recipes try to build from source?
>

There is no specific command for this but you can do something like:

bitbake TARGET --setscene-only
bitbake TARGET --dry-run
less */log/cooker/*/console-latest.log

With the less you can see the missing pieces that need to be executed.

Jose


>
> Aleksandar
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63902):
> https://lists.yoctoproject.org/g/yocto/message/63902
> Mute This Topic: https://lists.yoctoproject.org/mt/108682782/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000b1e9e9062315c435
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">Aleksandar Nikolic via <a href=3D"http://lists.yoc=
toproject.org">lists.yoctoproject.org</a> &lt;aleksandar.nikolic010=3D<a hr=
ef=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject=
.org</a>&gt; escreveu (sexta, 27/09/2024 =C3=A0(s) 09:06):<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div>Hello,</div>
<div>=C2=A0</div>
<div>is there a way to force Yocto to use sstate-cache during the build and=
 fail/print warnings if some recipes try to build from source?</div></block=
quote><div><br></div><div>There is no specific command for this but you can=
 do something like:<br><br>bitbake TARGET --setscene-only <br>bitbake TARGE=
T --dry-run<br>less */log/cooker/*/console-latest.log<br></div><div><br>Wit=
h the less you can see the missing pieces that need to be executed.<br><br>=
Jose<br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div>=C2=A0</div>
<div>Aleksandar</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63902): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63902" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63902</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108682782/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108682782/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000b1e9e9062315c435--

