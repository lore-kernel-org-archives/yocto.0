Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A1CC19F2B
	for <webhook@archiver.kernel.org>; Thu,  4 Aug 2022 11:20:04 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web08.3541.1659612002698294417
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Aug 2022 04:20:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=A1y5ofP6;
 spf=pass (domain: gmail.com, ip: 209.85.208.169,
 mailfrom: raj.khem@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id h12so21783627ljg.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 04 Aug 2022 04:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/bxsWTXYFxG1hozAUkxh1k+HROEy8t7UxDUJNOu8sFc=;
        b=A1y5ofP6Gsp5CSyTxpBHgWEODA7NjF7YR/+P+ARyCsRENlOBGyL/OCQen5Jp1ii3xB
         RMHVmP/Tdj7WpwtulF2qhH6U/DZZPcVxU0zb5K+PAoACmkoMtrp6IdHmcQ/NtJrxh6X7
         exkKC16nip2akeOM+arc6LeYSR5jzSANZmUz3h3Ur8z7nhlNc2chcBeRL2G2noU1xlGZ
         44zJJyivts/qfSgxxT89MDJr+470mmMWRPZ+f/ppgARosOnfaeo9cy8DYSTqGlpFGDUz
         1L7bLOK+VZEXerpAqljAsHpLFeA7ro+0UEKD6lj6HI4SInLJTwDnSrLULcOoRLlqz/y4
         Hc5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/bxsWTXYFxG1hozAUkxh1k+HROEy8t7UxDUJNOu8sFc=;
        b=mqsnqendCItIu8rnGq9Ymi6MQhn3AwJ/gmj6V4JFhQ4HMrGVOXISycBkMfu0JwG+Wd
         Cp1LgMqsCwWrztbHtfPQtl9VjIOs4rMp6r7q05EXllLOuiu55pkWdPx/rE0/g2MLpxY6
         rCKgC7jZqq0eZR2/lsYR5If3dSRgkucvP46WNs0npwNLMuU+ZNSLJOUwXTz7JgkjJur9
         bxq5Qw3BAngte2YFbEBqwuqmwRVTgiSQTNIksH19sKBF9bi7c0wRsOarPlTDE+EG+sde
         C7gG52GV9j/oPX/gGamL6W3K0fBnpTMBviELbI8bN0viGzQPZUvkE1eQo5XSHgF0QwP8
         2+ng==
X-Gm-Message-State: ACgBeo2d1qvnlRcfyYy7qPwj6pIvx+KZsqYKMVqtRMTz6/1TbhbKaQQs
	B8uwQdzHodlY5uGuPmIKVA70sWge5McNgoCAPww=
X-Google-Smtp-Source: 
 AA6agR5Ad+neXCwZyDYngd8MVm56IcIZMC3CoJA7EtTwVfghZW2sojgAqweBvS5OtdjcY6x+D7okr8oTTxh1F4jpVME=
X-Received: by 2002:a2e:8605:0:b0:25e:5fe4:9e6b with SMTP id
 a5-20020a2e8605000000b0025e5fe49e6bmr473586lji.484.1659612000728; Thu, 04 Aug
 2022 04:20:00 -0700 (PDT)
MIME-Version: 1.0
References: <07e0007095824408bedb92b61019fd9d@vivavis.com>
In-Reply-To: <07e0007095824408bedb92b61019fd9d@vivavis.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 4 Aug 2022 12:19:48 +0100
Message-ID: 
 <CAMKF1sqVSHHmi=NGqmFvbmtjA2fi8PLj5iTodU4+ESyiczPKmA@mail.gmail.com>
Subject: Re: [yocto] libnss-resolve not automatically installed
To: embedded@vivavis.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c4baa105e568877c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Aug 2022 11:20:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57777

--000000000000c4baa105e568877c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 3, 2022 at 6:30 PM VIVAVIS AG via lists.yoctoproject.org
<embedded=3Dvivavis.com@lists.yoctoproject.org> wrote:

> Hi,
>
> I'm currently on branch dunfell and using systemd-resolved.
>
> I want to have glibc's NSS resolver functions using systemd-resolved.
> I've noticed that the plugin libnss-resolve.so.2 was not in my image
> by default.
>
> In systemd_244.5.bb, nss-resolve is in PACKAGECONFIG by default.
> libnss-resolve is build and packaged, but not installed by default.
>
> To install the missing library libnss-resolve.so.2, I've added
>   IMAGE_INSTALL_append =3D " libnss-resolve"
> to my image recipe, but I wonder, if this is the right place or necessary
> at all.
>
> My assumption was that having nss-resolve in PACKAGECONFIG will
> also install the related library, which is obviously not the case.
>

Packageconfigs are about what you would like to build it=E2=80=99s still an=
other
step what you would like to bundle in your image which is what
IMAGE_INSTALL does. At times this is already done because whatever the
packagrconfig is enabling is already part of a output package that=E2=80=99=
s in
your IMAGE_INSTALL dependencies and gets pulled in indirectly but that=E2=
=80=99s
not the case here. Therefore you have to do it in both places


> Furthermore, I had to write an append-file for base-files, such that
> /etc/nsswitch.conf contains the following line
>   hosts: resolve [!UNAVAIL=3Dreturn] files dns myhostname
>
> Possibly, I've overlooked something essential.
> I'd be very happy, if someone can shed some light on this issue.
>
> Best regards,
>
> Carsten Stelling
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57772):
> https://lists.yoctoproject.org/g/yocto/message/57772
> Mute This Topic: https://lists.yoctoproject.org/mt/92797309/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000c4baa105e568877c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Aug 3, 2022 at 6:30 PM VIVAVIS AG via <a href=3D"ht=
tp://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;embedded=3D<a h=
ref=3D"mailto:vivavis.com@lists.yoctoproject.org">vivavis.com@lists.yoctopr=
oject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
I&#39;m currently on branch dunfell and using systemd-resolved.<br>
<br>
I want to have glibc&#39;s NSS resolver functions using systemd-resolved.<b=
r>
I&#39;ve noticed that the plugin libnss-resolve.so.2 was not in my image<br=
>
by default.<br>
<br>
In <a href=3D"http://systemd_244.5.bb" rel=3D"noreferrer" target=3D"_blank"=
>systemd_244.5.bb</a>, nss-resolve is in PACKAGECONFIG by default.<br>
libnss-resolve is build and packaged, but not installed by default.<br>
<br>
To install the missing library libnss-resolve.so.2, I&#39;ve added<br>
=C2=A0 IMAGE_INSTALL_append =3D &quot; libnss-resolve&quot;<br>
to my image recipe, but I wonder, if this is the right place or necessary<b=
r>
at all.<br>
<br>
My assumption was that having nss-resolve in PACKAGECONFIG will<br>
also install the related library, which is obviously not the case.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Packageconfigs a=
re about what you would like to build it=E2=80=99s still another step what =
you would like to bundle in your image which is what IMAGE_INSTALL does. At=
 times this is already done because whatever the packagrconfig is enabling =
is already part of a output package that=E2=80=99s in your IMAGE_INSTALL de=
pendencies and gets pulled in indirectly but that=E2=80=99s not the case he=
re. Therefore you have to do it in both places</div><div dir=3D"auto"><br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><br>
Furthermore, I had to write an append-file for base-files, such that<br>
/etc/nsswitch.conf contains the following line<br>
=C2=A0 hosts: resolve [!UNAVAIL=3Dreturn] files dns myhostname<br>
<br>
Possibly, I&#39;ve overlooked something essential.<br>
I&#39;d be very happy, if someone can shed some light on this issue.<br>
<br>
Best regards,<br>
<br>
Carsten Stelling<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57772): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57772" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57772</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92797309/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92797309/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000c4baa105e568877c--

