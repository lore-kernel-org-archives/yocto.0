Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FD9CF58D0
	for <webhook@archiver.kernel.org>; Fri, 20 Sep 2024 05:40:27 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
 by mx.groups.io with SMTP id smtpd.web11.11443.1726810821178059813
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Sep 2024 22:40:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iHkVJ2nB;
 spf=pass (domain: gmail.com, ip: 209.85.161.43, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5e1baf0f764so557022eaf.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Sep 2024 22:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726810820; x=1727415620; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qohodypu1f6I0iqxTFIuvVln1vIu83uOyJodCD52Bvw=;
        b=iHkVJ2nBeTpwWaufggawe5oLitlZ72WKqUk3urcNBl1KjHrYehTPVlfjF5ZBI/L8I1
         z3yT2AcZINQAzRqQ6EuP9kFczf7wzjIv0gJ+DOkKJU66JIzjqSNzJGpQk/ABMDY+zZHL
         Daa/rFk8VkTOAdtQRaSJJ6GMo0o1DZRZfYjY6DsmRdUwd8VlerwdfrzTlNxmJwGjxjj3
         ilPzUCI2btJCtQEjMKUe7YAmV/jTkDOmmhNuqUzhu1Gk50BENYoLW34nC8GMKAXq/1PN
         sD+HlrANZIWWs2rXK7p6qHzU2Tf1W+d3Zi7+up3hu2vpOhw6KsLu9cjKhMPgKJlINn0/
         2Z0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726810820; x=1727415620;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qohodypu1f6I0iqxTFIuvVln1vIu83uOyJodCD52Bvw=;
        b=bHMbdRVAi5ng/XUNenhV90q4TvrQR8LhK1qpopvz+hVsTqFHjP2J/NZAdyg7EiNTkO
         wEbvnn9Fw1XeRDJL9DOe3/ilspM3G2sblU5EgkEUOSND6zUyWjps3U2wfhYevnwcDDik
         8aLBA+F5zccoAI4nWU8YXxd2iNhNWvdyxJmLoF29Wjh5N49yZ6U7OontfFcn30ougNnT
         Svv+crKGjrPlX459q0r5V8HO8W2xoDUcENvxgKsoshrZ6CXysE4XwcCQyhY1mY6cAfgh
         pyqhyPUz2+yWReJApeEKOvtz978Fyudi6q7W1OTatSk3Oz6idEX+tz5oU48mJ+0pgtIJ
         VlBw==
X-Gm-Message-State: AOJu0Yzc6LYUMB2eNVTGN5dGnHuI+4UAUNVRqdIbnuvfXHTsB673I0nt
	hvZDKQ2LENwH3JvxYOueSSRNqC+psffe0b2BWWCuz58Vaw2dP+anLQ5zyeFsN101N46z2Sl5Pad
	nHXPPYFTdaiDxoy3EKKsttBSKumB1yA==
X-Google-Smtp-Source: AGHT+IHG5lMBleY6rSyMOKRjfuMmDaHyX5sVsHegDW2rr679Y9vRRgtpRq3Nzp19jq7wLR//mv3DYkhvgHmV60z2RAs=
X-Received: by 2002:a05:6820:229e:b0:5da:a26b:ce79 with SMTP id
 006d021491bc7-5e58ba2afcdmr1316323eaf.3.1726810820083; Thu, 19 Sep 2024
 22:40:20 -0700 (PDT)
MIME-Version: 1.0
References: <EKvd.1726810649653198891.VFZo@lists.yoctoproject.org>
In-Reply-To: <EKvd.1726810649653198891.VFZo@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Sep 2024 22:40:09 -0700
Message-ID: <CAMKF1sp080KnfUpP9zWVNyh2Jm6HQ-uh=U+HcLCGTFQqzO5_aw@mail.gmail.com>
Subject: Re: [yocto] Missing opencv files in toolchain #yocto
To: yocto@lists.yoctoproject.org, poornesh.g@mindteck.com
Content-Type: multipart/alternative; boundary="0000000000008689ca06228679fe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 05:40:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63870

--0000000000008689ca06228679fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 19, 2024 at 10:37=E2=80=AFPM Poornesh G ( India - Bangalore ) v=
ia
lists.yoctoproject.org <poornesh.g=3Dmindteck.com@lists.yoctoproject.org>
wrote:

> Greetings !
>
> I have added *opencv* into my yocto build using *"IMAGE_INSTALL:append =
=3D
> " opencv"* and could successfully able to build my target image.
> But after building toolchain using *"bitbake meta-toolchain-qt5" *I not
> getting opencv related files in toolchian.
>
> Please help me with the procedure to include* opencv into my toolchain*.
>


You have to build image based sdk so whichever image you are building
generate the sdk for it by running

Bitbake -cpopulate_sdk your-image will do it and that will include whatever
you have in image install


>
> Thanks
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63869):
> https://lists.yoctoproject.org/g/yocto/message/63869
> Mute This Topic: https://lists.yoctoproject.org/mt/108553848/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000008689ca06228679fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Sep 19, 2024 at 10:37=E2=80=AFPM Poornesh G ( India=
 - Bangalore ) via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;poornesh.g=3D<a href=3D"mailto:mindteck.com@lists.yoctopro=
ject.org">mindteck.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-=
width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(20=
4,204,204)"><div>Greetings !</div>
<div>=C2=A0</div>
<div>I have added <strong>opencv</strong> into my yocto build using <strong=
>&quot;IMAGE_INSTALL:append =3D &quot; opencv&quot;</strong> and could succ=
essfully able to build my target image.</div>
<div>But after building toolchain using <strong>&quot;bitbake meta-toolchai=
n-qt5&quot; </strong>I not getting opencv related files in toolchian.</div>
<div>=C2=A0</div>
<div>Please help me with the procedure to include<strong> opencv into my to=
olchain</strong>.</div></blockquote><div dir=3D"auto"><br></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">You have to build image based sdk so whi=
chever image you are building generate the sdk for it by running=C2=A0</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Bitbake -cpopulate_sdk your-=
image will do it and that will include whatever you have in image install</=
div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padd=
ing-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"auto"></div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>Thanks=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63869): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63869" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63869</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108553848/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108553848/1997914</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000008689ca06228679fe--

