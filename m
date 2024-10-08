Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FC6ECEF146
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 09:38:50 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.5066.1728380327920462576
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 02:38:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=mMBxaC2d;
 spf=pass (domain: smile.fr, ip: 209.85.221.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-37d372c18acso42463f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 02:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1728380326; x=1728985126; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tp5wak/hDy6c0XeZ3L2dE4HvSQjhNST4HDVZBQlVuPM=;
        b=mMBxaC2d948GuHgu66pP8IOW7i0X/MhQAYxthVg0AETjiG9FpSrbQUO0k2/wfejx0s
         vPL17WO4CUCKWvYEcW/9z9Z0qcQa10Kkk2wMsZEgnBzqLi6mFtZoWYyN9XrjcoiiDsxr
         xXOacenaHKd8bwETRLK/wcLZ//9bpkp1YM1Cc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728380326; x=1728985126;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tp5wak/hDy6c0XeZ3L2dE4HvSQjhNST4HDVZBQlVuPM=;
        b=vQZ7UGTbg1SRnSuyhE1H0dDKkljaTb6OR7L+udPmK3ye8mBwHFb0iJ6covl20tY9My
         mScnbquZ4jpD9Va+WHFykSj+wxutXuYzL4BDKFRxfdHpwF67b+UoHTWIyjkP6vVBeKoO
         aYkO3oTDnh+LEo5NQcsCfj93y1X5HQ/ZnhEmDYZSj6GAm1t8bJTFiF9j+b+Af64QhP+J
         iOHNKI0O+GkF7G+Jugz0MkBHwVUM6SliQz7jSDffc2dsPONbH9jQbv9G5LV44FtvI+zQ
         R0rhXoetVpXPOM0I8yid6CEiOxV+v+bpj4/Rf+CPX5ItnkA9qjw9FnkUzmpN6NfEHvkq
         ZfUg==
X-Gm-Message-State: AOJu0YwoPRDFInKdpA2vUDNDi9dGcSsIK2beZlAYyenXezM+agZ734Gy
	oMQ7s+ETcWJh4KsJavKG63T8r8bPtnxYKGOWW6GhE6CWGGtmR9qKtvZV5kicYUj0mP/FXmDvZFT
	BRwmPbwOlfGjPJSPvfYzkDu6em0qaes08g48FELPvfAdoCxyU7x8=
X-Google-Smtp-Source: AGHT+IG4qbVUNoNzHUj+6y+AboPDp++2Enn3RNw2/ecTbKbQsd78fsbChZfPqE3IS99BcWdZ0yHLfRH/6DzuhFUqimg=
X-Received: by 2002:a5d:5847:0:b0:37c:c5be:1121 with SMTP id
 ffacd0b85a97d-37d0e6bcd3bmr10441245f8f.9.1728380325966; Tue, 08 Oct 2024
 02:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <xhAk.1728376109213832144.otFZ@lists.yoctoproject.org>
In-Reply-To: <xhAk.1728376109213832144.otFZ@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 8 Oct 2024 11:38:20 +0200
Message-ID: <CAMSfU+5HUJE_5OSNdB3WuOBntX-S=Zb_pxgLBfaeSYtVhW7ePQ@mail.gmail.com>
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: yocto@lists.yoctoproject.org, salahaldeen.altous@yahoo.com
Content-Type: multipart/alternative; boundary="0000000000005dd06a0623f3e7c9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 09:38:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63965

--0000000000005dd06a0623f3e7c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 8 oct. 2024 =C3=A0 11:27, salahaldeen.altous@yahoo.com via
lists.yoctoproject.org <salahaldeen.altous=3Dyahoo.com@lists.yoctoproject.o=
rg>
a =C3=A9crit :

> Hi All,
>
> I have the need to update the yocto SDK incrementally without the need to
> rebuild it every time from scratch.
> I have the package management ipk enabled in my configuration.
>
> can I use opkg install after sourcing the SDK script? which requirement I
> need to get it running?
> updating the rootfs on the target is working fine, but updating the SDK i=
s
> not working
>

That sounds like the eSDK :
https://docs.yoctoproject.org/sdk-manual/extensible.html#applying-updates-t=
o-an-installed-extensible-sdk
Have you tried it?


Regards,
> Salahaldeen
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63963):
> https://lists.yoctoproject.org/g/yocto/message/63963
> Mute This Topic: https://lists.yoctoproject.org/mt/108885909/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000005dd06a0623f3e7c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 8 oct. 2024 =C3=A0=C2=A0=
11:27, <a href=3D"mailto:salahaldeen.altous@yahoo.com">salahaldeen.altous@y=
ahoo.com</a> via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;salahaldeen.altous=3D<a href=3D"mailto:yahoo.com@lists.yocto=
project.org">yahoo.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi All,<br><=
br>I have the need to update the yocto SDK incrementally without the need t=
o rebuild it every time from scratch.<br>I have the package management ipk =
enabled in my configuration. <br><br>can I use opkg install after sourcing =
the SDK script? which requirement I need to get it running?<br>updating the=
 rootfs on the target is working fine, but updating the SDK is not working<=
br></div></blockquote><div><br></div><div>That sounds like the eSDK : <a hr=
ef=3D"https://docs.yoctoproject.org/sdk-manual/extensible.html#applying-upd=
ates-to-an-installed-extensible-sdk">https://docs.yoctoproject.org/sdk-manu=
al/extensible.html#applying-updates-to-an-installed-extensible-sdk</a></div=
><div>Have you tried it?<br></div><div><br></div><div><br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div>Regards,<br>Salahaldeen</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63963): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63963" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63963</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108885909/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108885909/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><font face=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"R=
aleway, regular">Smile ECS - Tech expert<br></font></div></div></div></div>

--0000000000005dd06a0623f3e7c9--

