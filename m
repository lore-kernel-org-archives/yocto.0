Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1EC8C433F5
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 12:07:42 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web11.24785.1639483661401188606
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 04:07:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a60iHI9Y;
 spf=pass (domain: gmail.com, ip: 209.85.222.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id l24so34483589uak.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 04:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=34hBzoWiR2QQqJESewe14ulhAeA5uKp3q4xpjqSOx3o=;
        b=a60iHI9YMS8Q0+shSculUJPhm9umyL4cyzY1zFhgwzmLH9g+zueYxw4eaEJL/HCVB8
         CO3AVmIr5+V4dBK4vs0E55mtFe4sv1HDFMveztiS+EmxUvo3o5x5WZvnk76aV342KrA/
         dP7Y50jD1teWjEd4c4FtmDWFFQ/G06QglwECe7NJVm0Tu3UaJkLox20Lq14sfgt5DkFX
         TI59doU4m4BSICaQl5MSq7M90nB4EiD9AMGEozpTZgK7y2CLykCQDLIz5siP3u+pbJpA
         Pz26E4yIxto1z/88+3muiQtHx1/2QGg7loamVc7EID5pWKcWnkZHYipYWu3+AUAhwxHP
         RGzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=34hBzoWiR2QQqJESewe14ulhAeA5uKp3q4xpjqSOx3o=;
        b=CfREj0atOQAkRO9MPfLVja+dh8JUkPuWkhq1gaHGRSagm4qRnGH7aEg99KaTsbRm/n
         9pRS7WXwVk27+c07ApxxyJyGV1bLc8+qhbZjd9RsPvDRPzf3AGXHEggYzSrmF9byLMj2
         4BoLZlLsSfmyMF73JLAkeyfswgu0Bx7YRSeUis6iJtwge2rNesppdk2Vt8VgcHVghm1F
         BA4JidSQSTS6Gw3x1syTpeSdBhAQYkZZT/HSkd45nBkq2VGV1tvn2CD/zMHR03IFFAxH
         7rXAO5Jhb9Z0lrYBdDaKkHhuR2edTPFjIs62Uy8VgaSP93Krf7zccCXcr8wt33pD3sQN
         mFYA==
X-Gm-Message-State: AOAM530kStWZxMq4wYmr6DT3Pwn69LR03h1omvm4sJiLroVXntq5ezEu
	YUdPZEMeIySs8Ju1oq+Fp2sbNqW4MAnCHbbQ57o=
X-Google-Smtp-Source: 
 ABdhPJyj+h/K8nfihBjvsFYxxVbcgAcxVVJoFbVFbp4Tx6z+t5DGI6/oUimrSiEK1hJTb7Cd4FMkoi8VctK0Yb6jLJo=
X-Received: by 2002:a67:efd5:: with SMTP id s21mr4426545vsp.73.1639483660498;
 Tue, 14 Dec 2021 04:07:40 -0800 (PST)
MIME-Version: 1.0
References: <Ej9S.1639483277512579356.RkJN@lists.yoctoproject.org>
In-Reply-To: <Ej9S.1639483277512579356.RkJN@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 14 Dec 2021 13:07:28 +0100
Message-ID: 
 <CANNYZj_KVArjdQiTG-b=E+Q0pzMSnjzPspw6OCmgwR2ao40MPA@mail.gmail.com>
Subject: Re: [yocto] echo and read shell script functions in post install
 script doesn't display messages
To: sanjaycvr35412@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000032fa9105d31a0993"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 12:07:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55583

--00000000000032fa9105d31a0993
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The postinst scriptlets are script fragments and not standalone scripts.
Putting an interpreter to their first line will not work. Also, they are
not running on an interactive console, but by a helper executor, so they
have to be entirely automated.

What is the problem that you would like to solve?

Alex

On Tue, 14 Dec 2021 at 13:01, <sanjaycvr35412@gmail.com> wrote:

> Hi All,
>
>
>
> I am trying to execute a script in *=E2=80=9Cpkg_postinst_ontarget_${PN}=
=E2=80=9D* to
> configure the static IP address of the embedded board. The script execute=
s
> at first boot, but *it doesn=E2=80=99t display echo or read messages. *Th=
ese
> messages are required to improve user experience with the setup process.
>
>
>
> Script is as below:
>
> *pkg_postinst_ontarget_${PN} () {*
>
> *    #!/bin/sh -e*
>
> *    # This will run on first boot*
>
> *    echo "Starting setup script..."*
>
>
>
> *    read -p "Enter the IP address: " ipAddress*
>
> *    read -p "Enter the netmask: " netmask*
>
> *    read -p "Enter network gateway: " gateway*
>
>
>
> *    cat >> /etc/network/interfaces << EOF*
>
>
>
> *iface eth0 inet static*
>
> *    address $ipAddress*
>
> *    netmask $netmask*
>
> *    gateway $gateway*
>
> *EOF*
>
> *}*
>
>
>
> Please help me to fix the problem in displaying *echo* and *read* message=
s
> to improve user experience with the setup process.
>
>
>
> Thanks,
>
> Sanjay Kumar
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55582):
> https://lists.yoctoproject.org/g/yocto/message/55582
> Mute This Topic: https://lists.yoctoproject.org/mt/87719351/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000032fa9105d31a0993
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The postinst scriptlets are script fragments and not =
standalone scripts. Putting an interpreter to their first line will not wor=
k. Also, they are not running on an interactive console, but by a helper ex=
ecutor, so they have to be entirely automated.</div><div><br></div><div>Wha=
t is the problem that you would like to solve?<br></div><div><br></div><div=
>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 14 Dec 2021 at 13:01, &lt;<a href=3D"mailto:sanjayc=
vr35412@gmail.com">sanjaycvr35412@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><p style=3D"margin:0in;color:rgb=
(34,34,34);font-size:11pt;font-family:Calibri,sans-serif">Hi All,</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">I am trying to execute a script in=C2=A0<strong>=E2=80=9Cpkg=
_postinst_ontarget_${PN}=E2=80=9D</strong>=C2=A0to configure the static IP =
address of the embedded board. The script executes at first boot, but=C2=A0=
<strong>it doesn=E2=80=99t display echo or read messages.=C2=A0</strong>The=
se messages are required to improve user experience with the setup process.=
</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">Script is as below:</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">pkg_postinst_ontarget_${PN} () {</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0 =C2=A0#!/bin/sh -e</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 # This will run on first boot</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 echo &quot;Starting setup script...&quot;</span></em>=
</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 read -p &quot;Enter the IP address: &quot; ipAddress<=
/span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 read -p &quot;Enter the netmask: &quot; netmask</span=
></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 read -p &quot;Enter network gateway: &quot; gateway</=
span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 cat &gt;&gt; /etc/network/interfaces &lt;&lt; EOF</sp=
an></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">iface eth0 inet static</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 address $ipAddress</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 netmask $netmask</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">=C2=A0=C2=A0=C2=A0 gateway $gateway</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">EOF</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif"><em><span style=3D"background:yellow none repeat scroll 0% 0=
%">}</span></em></p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">Please help me to fix the problem in displaying=C2=A0<strong=
>echo</strong>=C2=A0and=C2=A0<strong>read</strong>=C2=A0messages to improve=
 user experience with the setup process.</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">Thanks,</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">Sanjay Kumar</p>
<p style=3D"margin:0in;color:rgb(34,34,34);font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55582): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55582" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55582</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87719351/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87719351/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000032fa9105d31a0993--

