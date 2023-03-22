Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 687F7C6FD1C
	for <webhook@archiver.kernel.org>; Wed, 22 Mar 2023 11:38:23 +0000 (UTC)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web10.40408.1679485096325383333
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 04:38:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bUaOJDWg;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id f23so6760683vsv.13
        for <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 04:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679485095;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oPxpiy8iaKxQVLOaKzZx+1G27iJkbRtStOcDuedUoRM=;
        b=bUaOJDWgmdtR1FNuh1EhSeEyJSiH1TWx+Nm9v7OA6Yu4upKd0SfYVP6BpTPYCXP2kw
         KSZBiO6rknUddf3qr7HuJP2pn0DfVlTJuZ5plW8q5Pppt3efDkd3WUEPS4MrXw0THDYN
         KtEvb1uaoPtS6a9P9KR/utVr3GN7qJbKd3xKh0vjLHciS9Lyvg1y3vofwPm032fHMuPb
         zr6HEnMzQ+blks0C8Ml4c1q/1P9IwPpX9dCPvWf40kddoNNVBRM7IOY/nf77ek6SAzDu
         5hoVgWwva0sZr+2V0j8GdXLG1RFDHmISDN9SlkGISLTbfljJUbWJ1yDx3Kki9YasSC4Z
         OaeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679485095;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oPxpiy8iaKxQVLOaKzZx+1G27iJkbRtStOcDuedUoRM=;
        b=TBBbz6IhR12NcTqIvCo1NNgBEMnWLxe0NPA3xMInplNs3IVoPiX1MMO3TLpCeatzWz
         FE1S/Amw+9qyBLlALfa10INGfWkINAkGQ9WKjuEehUQBkIFrw024twkPKFB0Vj1FNOjw
         Ck/FfCokFiyytMbCDzMTnuQnzYz0ZeynqOaD9Mc+rWPoabW1IQu1WOLf3RbqSby1sUst
         /CF927fpkR2Lz+65lI0CmMwbnxFzqlluOVCkZuttPoLQ4ABjjyUZsQoc+vcuGym/uCUZ
         wqNI4UeGf0Hodex0EfVE3HK1YlErVzUMBY44XYPiqlv5xMhni+sYXGuiRwYIsLDSi5uD
         NrnQ==
X-Gm-Message-State: AO0yUKVquk+3Zlrf98JBfI2IdJQRyaSl9om1XzDwOkr0H5SCJBq+KdxM
	4JV3Xn0RWQ8sAVLGOiM20KLfmpSgrrwxFyH7axg=
X-Google-Smtp-Source: AK7set/0YyTJ1Tc+bEmUB6CGojoPhrtu+/o9Kw0rbRF9FtfsHKDBVtm9yywdF+JXHPlVk6f+gsiaxICm4HZuHYmolB8=
X-Received: by 2002:a67:cc1b:0:b0:425:d52d:f5cb with SMTP id
 q27-20020a67cc1b000000b00425d52df5cbmr3662519vsl.1.1679485095274; Wed, 22 Mar
 2023 04:38:15 -0700 (PDT)
MIME-Version: 1.0
References: <lbFU.1679431430587284779.BLFD@lists.yoctoproject.org>
In-Reply-To: <lbFU.1679431430587284779.BLFD@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 22 Mar 2023 11:38:04 +0000
Message-ID: <CANPvuRn68=A=5_i3YSQtm5j4zFh=1NN0ynA_A1hZ9ooUOJQa2g@mail.gmail.com>
Subject: Re: [yocto] [meta-openembedded] Enabling "libcamerasrc" as a source
 for gst-launch-1.0
To: sebastianpetersen84@yahoo.dk
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000082738305f77b9802"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 11:38:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59491

--00000000000082738305f77b9802
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

The gstreamer plugin is packed in different package so you need to install
them

IMAGE_INSTALL +=3D "libcamera-gst"

Jose


punctuation via lists.yoctoproject.org <sebastianpetersen84=3D
yahoo.dk@lists.yoctoproject.org> escreveu no dia ter=C3=A7a, 21/03/2023 =C3=
=A0(s)
20:43:

> Dear community,
>
> I am trying to build an image for a raspberry pi, that includes libcamera
> and gstreamer, such that I can set the streaming source:
>
> gst-launch-1.0 libcamerasrc device=3D/dev/video0 ! video/x-raw,width=3D64=
0,height=3D480 ! autovideosink
>
> However, gst-launch is unable to find libcamerasrc.
>
> How do I configure my build to do this?
>
> I include libcamera using IMAGE_INSTALL and enable the libcamera gst
> PACKAGECONFIG.
>
> Best regards
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59486):
> https://lists.yoctoproject.org/g/yocto/message/59486
> Mute This Topic: https://lists.yoctoproject.org/mt/97764612/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000082738305f77b9802
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>The gstreamer plugin is packed in different=C2=
=A0package so you need to install them<br><br>IMAGE_INSTALL +=3D &quot;libc=
amera-gst&quot;<br><br>Jose<br><br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">punctuation via <a href=3D"http://lists.=
yoctoproject.org">lists.yoctoproject.org</a> &lt;sebastianpetersen84=3D<a h=
ref=3D"mailto:yahoo.dk@lists.yoctoproject.org">yahoo.dk@lists.yoctoproject.=
org</a>&gt; escreveu no dia ter=C3=A7a, 21/03/2023 =C3=A0(s) 20:43:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Dear community,<br><br>=
I am trying to build an image for a raspberry pi, that includes libcamera a=
nd gstreamer, such that I can set the streaming source:<br>
<pre><code>gst-launch-1.0 libcamerasrc device=3D/dev/video0 ! video/x-raw,w=
idth=3D640,height=3D480 ! autovideosink</code></pre>
<p>However, gst-launch is unable to find libcamerasrc. </p>
<p>How do I configure my build to do this?</p>
<p>I include libcamera using IMAGE_INSTALL and enable the libcamera gst PAC=
KAGECONFIG.<br><br>Best regards</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59486): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59486" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59486</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97764612/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/97764612/5052612</a><br>
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
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div>

--00000000000082738305f77b9802--

