Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DB73C48260
	for <webhook@archiver.kernel.org>; Sat, 10 Feb 2024 15:36:52 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.15926.1707579407987125835
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Feb 2024 07:36:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OHhcD3bn;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-604b23fc6a7so19957397b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 07:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707579407; x=1708184207; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a6vB6q+xhgQgw/fftRqCVpjSwpU8CR1uuG7YOYlHwls=;
        b=OHhcD3bnuvWdpWCBMana5g6DHH/R8oaShQ2pMZSfz0xKD9yvXwncXTF1VvPoC3DoDE
         pW8nNpzfcEpo0Nj8Ng27poxO+F0jkfQBE8/MkgAivE6HsXI9czqduKTCdLtN9WgOiSyY
         8D3Kw5dZbhme3+wgxISXIyo381s8AYfgTV8BRUgJHkcTS7OhNyNIowCGdmXwZvmKNY2z
         Eu2RPvGJmk67kqaRozRQoLS4DqD+i3S9Fr47lq0VVpWe6uiCy4O/Bu4oUNqO8C/o3geN
         ilv4vm0u0zjgVookakB8veh0vgjKzBQi1gakF89POoChfRjtsz232CuVWWmYLbCpU6Yt
         L1vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707579407; x=1708184207;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a6vB6q+xhgQgw/fftRqCVpjSwpU8CR1uuG7YOYlHwls=;
        b=HMG1O4R2jMXAI5GXozsaDsX8IK/NIclWQdOtnIx/UTvlaiZYXf5SvUQuhh6ZzoKFQR
         /cZ/d/XHweooQ+7WYjBpLhb8lG1iGaCHFNlHKcklpcfzn3QKqhhfeIw6VYBg9fVi8WbX
         NlsWRbTD9rm41ibd5Ci8U4+dtar/GDQoNvYpGiD4jzLOEUDFjrb/eaHfddPFfVLEhLvC
         7lxg2XKk/pXSexowAjVPCL6pZoC5XbLvhDM/RnSMZT+iT+0QzmvaPc0s6jk+hNmFiLQ2
         oHebOEiOQTjlnA/JA4HpiUkE/7pG+i6epuu2X+um2Bmw4xSl67lB5ksvgdnOp57/MZFP
         aqJg==
X-Gm-Message-State: AOJu0YzXjbei9mGSJS0ja69lcnxO8yjD8B5O0PKCRX11WQAjXIc19QLs
	UtkLwHjKNX4mcKtJ0TJW4qczfQdljaQ0AQojDyiZgyhOjXqTa3C37F5SJt/Q0n2tOsAZMqDTG7V
	xbtRCI0lD9GHHF7vFXjvtcp/8j89IggKJ
X-Google-Smtp-Source: AGHT+IEumE0Z1GUhQ9HLqkLN/g9ebkNLSa2SUN4tv4xLakPlmdsx90sTo/zYJHQj+uRaR6+W0FmOXLGNnbtarY7ITyA=
X-Received: by 2002:a0d:f4c5:0:b0:604:3f7c:7beb with SMTP id
 d188-20020a0df4c5000000b006043f7c7bebmr639697ywf.34.1707579406958; Sat, 10
 Feb 2024 07:36:46 -0800 (PST)
MIME-Version: 1.0
References: <CABF_=yg1+8ezmbtV8YFDWfvdyK-=-wO2d0OEOgNixZhSFmk6HQ@mail.gmail.com>
In-Reply-To: <CABF_=yg1+8ezmbtV8YFDWfvdyK-=-wO2d0OEOgNixZhSFmk6HQ@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 10 Feb 2024 07:36:35 -0800
Message-ID: <CANx9H-CDOESLWhAbjPDw65Dov5+4KRY8febgibP6Y62bn91f9A@mail.gmail.com>
Subject: Re: [yocto] meta-opendds: git url changed
To: yocto@lists.yoctoproject.org, jan.vermaete@gmail.com
Cc: keith.derrick@lge.com
Content-Type: multipart/alternative; boundary="000000000000fa43d2061108cfdf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 15:36:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62456

--000000000000fa43d2061108cfdf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 10, 2024 at 3:24=E2=80=AFAM Jan Vermaete <jan.vermaete@gmail.co=
m> wrote:

> Hi,
>
> The git repo of meta-opendds changed from
> https://github.com/oci-labs/meta-opendds.git to
> https://github.com/OpenDDS/meta-opendds.
>

Updated. Thank you.


>
> However, the older repo url is still reported in layers.openembedded.org.
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-opendd=
s/
>
> i assume the change is related to this new:
> https://opendds.org/news/2023/03/17/transition-to-unity.html
>
> br
> --
> Jan Vermaete
> =E2=80=9CSuccess is a self-correcting phenomenom.=E2=80=9D -- Gary Hamel
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62455):
> https://lists.yoctoproject.org/g/yocto/message/62455
> Mute This Topic: https://lists.yoctoproject.org/mt/104276034/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000fa43d2061108cfdf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 10, 2024 at 3:24=E2=80=AF=
AM Jan Vermaete &lt;<a href=3D"mailto:jan.vermaete@gmail.com">jan.vermaete@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi,<br>
<br>
The git repo of meta-opendds changed from<br>
<a href=3D"https://github.com/oci-labs/meta-opendds.git" rel=3D"noreferrer"=
 target=3D"_blank">https://github.com/oci-labs/meta-opendds.git</a> to<br>
<a href=3D"https://github.com/OpenDDS/meta-opendds" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/OpenDDS/meta-opendds</a>.<br></blockquote>=
<div><br></div><div>Updated. Thank you.</div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">
<br>
However, the older repo url is still reported in <a href=3D"http://layers.o=
penembedded.org" rel=3D"noreferrer" target=3D"_blank">layers.openembedded.o=
rg</a>.<br>
<a href=3D"http://layers.openembedded.org/layerindex/branch/master/layer/me=
ta-opendds/" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedde=
d.org/layerindex/branch/master/layer/meta-opendds/</a><br>
<br>
i assume the change is related to this new:<br>
<a href=3D"https://opendds.org/news/2023/03/17/transition-to-unity.html" re=
l=3D"noreferrer" target=3D"_blank">https://opendds.org/news/2023/03/17/tran=
sition-to-unity.html</a><br>
<br>
br<br>
-- <br>
Jan Vermaete<br>
=E2=80=9CSuccess is a self-correcting phenomenom.=E2=80=9D -- Gary Hamel<br=
>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62455): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62455" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62455</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104276034/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/104276034/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000fa43d2061108cfdf--

