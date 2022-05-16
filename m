Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AFC5C433EF
	for <webhook@archiver.kernel.org>; Mon, 16 May 2022 09:29:58 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web09.26890.1652693392080500102
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 02:29:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Ov/wm4Ed;
 spf=pass (domain: linaro.org, ip: 209.85.208.54,
 mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ed1-f54.google.com with SMTP id p26so1253143eds.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 02:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fjYLuGLKOpg2WMezeOhkVbEfv/+tf9+fjYeUKhMHp6k=;
        b=Ov/wm4Ed7GnPc7di5FdOyUmncnWfAScRBA3B5QlLroxoUoqNee0gvwwpRTzmkkvpTA
         rl1kpAtMP6qcAe/VTSMkV4dEor9grD/gMST9MaXXr+nUZ9D/zyndneHuZOQCGDRL3e+D
         7vsxgtNklEUI6siV0A/ZfI+a1MbIVNR8/Taw/BvvZgbbutono6w1pX4hLdX82/RfxemO
         y3xxSLRwTRnyqh8rJ5AvYZVbvCLJuZWQbp9N+JwGAB5fsdNtl9dW35DK22UzBA0dbDjZ
         cQQf1Dl8wb9cEIqET4x9WrkYmGNS02jKqpq6gDaVPGAOW+Q7JErTG0uDYDTARuUfwVua
         y9AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fjYLuGLKOpg2WMezeOhkVbEfv/+tf9+fjYeUKhMHp6k=;
        b=Quivn5sg6X09qIEXD9eCh31ezP+OdfcyNVvHojajOQit7K7GPrb0LRBPprqzx4lKWW
         VDi5pvAPrriSZUNFUxlZwlXOJxZOGVWufuZOIuxj367pgzyDnnp4Q8nVEi48UzuyfmJ0
         4J99zykGLaomEJOQHmXwz13eETaqQ0k1cLfYKVKvmFWjviR8z5C1Q/bdDVcxNSPGU4OX
         XYirkLT5fur7DxFCkL9edmSqm3bCnKBExMguz2eAUw31yEl/UvZSch/gwvHyBaKmUiEe
         dxVtpmwXuTFCm7I3jRD2jhxLlgm9n3nYPeck/00R7fz8xyQDB9Ev2+aZkSwaHD1pZ6d0
         0rAw==
X-Gm-Message-State: AOAM532T7zKe8qFuIKzfDvmij7dyjJsyqR/eahhHSriqy3ZyQMp+Y5Wf
	tnn78f9at72O1k/HJnB9F/PHAKsukzm5vdYjhlI5+g==
X-Google-Smtp-Source: 
 ABdhPJyiVav3fB6w8UpOV7F/5z/pfPxkMpVEfGnefqfDfYmNnWyNYckax3Gf1k0Q2Pel208F9G0jjIeWFzwiuopAmMo=
X-Received: by 2002:aa7:d88f:0:b0:42a:adb3:be01 with SMTP id
 u15-20020aa7d88f000000b0042aadb3be01mr5788675edq.219.1652693390552; Mon, 16
 May 2022 02:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <6e94469d-a40-91a6-3b4b-841d61f1a3f9@crashcourse.ca>
In-Reply-To: <6e94469d-a40-91a6-3b4b-841d61f1a3f9@crashcourse.ca>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 16 May 2022 11:29:39 +0200
Message-ID: 
 <CAP71WjxSUY+hjszAhKP_g_ae12ZF5pXrZ8mSN3UsKkUH4-P4Gw@mail.gmail.com>
Subject: Re: [yocto] a waitlist for YP summit 2022.05?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007780d605df1daa48"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 May 2022 09:29:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57105

--0000000000007780d605df1daa48
Content-Type: text/plain; charset="UTF-8"

hey Robert,


On Mon, May 16, 2022 at 11:27 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   given that i freed up my schedule for the upcoming week, i zipped
> over to register for this week's yp virtual summit, but was told i was
> being placed on a wait list. a wait list for a virtual summit? is
> there a limit being put on registrations due to technical limitations
> or something? seems odd.
>

It is odd. And it was not expected. We are aware of the issue, and have
reached out to LF Events team and asked for help.


>
> rday
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57104):
> https://lists.yoctoproject.org/g/yocto/message/57104
> Mute This Topic: https://lists.yoctoproject.org/mt/91136063/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nicolas.dechesne@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000007780d605df1daa48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">hey Robert,<div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 16,=
 2022 at 11:27 AM Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse=
.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><br>
=C2=A0 given that i freed up my schedule for the upcoming week, i zipped<br=
>
over to register for this week&#39;s yp virtual summit, but was told i was<=
br>
being placed on a wait list. a wait list for a virtual summit? is<br>
there a limit being put on registrations due to technical limitations<br>
or something? seems odd.<br></blockquote><div><br></div><div>It is odd. And=
 it was not expected. We are aware of the issue, and have reached out to LF=
 Events team and asked for help.=C2=A0</div><div>=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
<br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57104): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57104" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57104</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91136063/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/91136063/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000007780d605df1daa48--

