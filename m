Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B231EB64D7
	for <webhook@archiver.kernel.org>; Sun, 18 Jun 2023 13:36:20 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.5765.1687095376597306929
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jun 2023 06:36:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=zgVmw4z6;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.46, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-987accb4349so218875266b.0
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jun 2023 06:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1687095375; x=1689687375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eS0yKIEYuoIy3K5ql1Z+Yr3s3UVNzZiQ3Q1nS5DtzlA=;
        b=zgVmw4z60Jw9GQChluPaiRSOVPcRIUrtTbfVkw3lgkvSn8TtGCf0S8jCh9dUsHenyY
         u1668pHyhAhWHSNmtSSWXO+5hDOtszERqWSh/UHQnMGV/M7s3X9hzL7Xvwwd5feMSdde
         dHBDPcpEYuVncfCuLALC9oEsvskmdgbgpmluSXBiefK7OZIbnUXZA5AyJ1cHgIRZGtWx
         IOLLBsWugk7CtK6OJ9lwr+CLiUB8KadOY4jl27YmZE164qGLPqfx6fsKcBd7Fjdq0vmE
         UETxsY9TqSgHNbA9rGz5oEvhWQNFH6uMfAitOE5ih2yqBjhlYyC1K1b+Upl7d3kebASj
         BR0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687095375; x=1689687375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eS0yKIEYuoIy3K5ql1Z+Yr3s3UVNzZiQ3Q1nS5DtzlA=;
        b=SjO0/QCvFBADby5zgQ4RpzHzCixDx29l65L5O6Oq0cbbiQGhzH/x9ociImyog+lXq2
         CKeV10Ftq79YOmZz0GVyKl3EN0aSZpb+Zun1ckszr2L+COBh/NPeBeZjFZcYBNm72V99
         1/fRf8gScMU9U7P69CZpZGNHXnA+ToxgOyxR2ZoxOqcWWetRWYJyq7tF3t6LaTYfvg2O
         sEvhuIUgu1oNmTyb166pJHMV6YWQxXWVuXuTNtxnHyGpjjNj2eqgdUUAuGvTfbUWDwsQ
         J3faE90R7p17tTUTwfyukGpIsFwwjyYWGF01weBCOT0gsk4itOnmajpScJNsjJEGfV6Q
         JWKA==
X-Gm-Message-State: AC+VfDzbFrd8HyubOOr2Dbo+b1h43H0sxB/cHJyT+YHjNToqN8n/1Q0B
	dakflqRyeY37YGmFjrSERs4YxRF2lppgVmdpNSYEZg==
X-Google-Smtp-Source: ACHHUZ6Xzy1H8iXuafOex66vDC4gU3g9L8GKa0NBF0isZokS360ny7L83BwGMcBkW1T/r+dDqUsHH4rR5zOm3iThTfs=
X-Received: by 2002:a17:907:968c:b0:988:a779:cc6e with SMTP id
 hd12-20020a170907968c00b00988a779cc6emr211696ejc.51.1687095374748; Sun, 18
 Jun 2023 06:36:14 -0700 (PDT)
MIME-Version: 1.0
References: <01010188cc6d541c-bbdb003b-8479-4651-878f-37eeb1e96948-000000@us-west-2.amazonses.com>
In-Reply-To: <01010188cc6d541c-bbdb003b-8479-4651-878f-37eeb1e96948-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sun, 18 Jun 2023 03:36:04 -1000
Message-ID: <CAOSpxdaG-zvqWgsagdsQjWgYjZoJBrcbznjK1VCPyZAF5q9htQ@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.1.26.rc1)
To: Pokybuild User <pokybuild@yoctoproject.org>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>, 
	qa-build-notification@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000083ae0105fe6780db"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Jun 2023 13:36:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60334

--00000000000083ae0105fe6780db
Content-Type: text/plain; charset="UTF-8"

Sigh,  my fat fingers intents to type 3.1.26! I'll build an rc2 so things
are named properly.

Steve

On Sat, Jun 17, 2023, 4:55 PM Pokybuild User <pokybuild@yoctoproject.org>
wrote:

>
> A build flagged for QA (yocto-2.1.26.rc1) was completed on the autobuilder
> and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-2.1.26.rc1
>
>
> Build hash information:
>
> bitbake: e16a9ca7e9286790ac37a067fdc8fde3a35a1c44
> meta-agl: 009153010c138d1a5edd2e30bd3d76c95de636d9
> meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
> meta-aws: 6fea710d1b3c8a5ad93e7811e75d8f4cf5962bb2
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: 488af577a3f21f038c551612bb0af077fa2b743d
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> meta-openembedded: 116bfe8d5e5851e7fc5424f40da8691a19c5b5ee
> meta-virtualization: 521459bf588435e847d981657485bae8d6f003b5
> oecore: 77f6fbfa18b4ad77c3756cfdc45d441a20210781
> poky: bab87089ad998afc980adb45c11ae356bc35a460
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60332):
> https://lists.yoctoproject.org/g/yocto/message/60332
> Mute This Topic: https://lists.yoctoproject.org/mt/99599259/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000083ae0105fe6780db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Sigh,=C2=A0 my fat fingers intents to type 3.1.26! I&#39;=
ll build an rc2 so things are named properly.=C2=A0<div dir=3D"auto"><br></=
div><div dir=3D"auto">Steve</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sat, Jun 17, 2023, 4:55 PM Pokybuild Us=
er &lt;<a href=3D"mailto:pokybuild@yoctoproject.org">pokybuild@yoctoproject=
.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
A build flagged for QA (yocto-2.1.26.rc1) was completed on the autobuilder =
and is available at:<br>
<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://autobuilder.yocto.io/pub/releases/yocto-2.=
1.26.rc1" rel=3D"noreferrer noreferrer" target=3D"_blank">https://autobuild=
er.yocto.io/pub/releases/yocto-2.1.26.rc1</a><br>
<br>
<br>
Build hash information: <br>
<br>
bitbake: e16a9ca7e9286790ac37a067fdc8fde3a35a1c44<br>
meta-agl: 009153010c138d1a5edd2e30bd3d76c95de636d9<br>
meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882<br>
meta-aws: 6fea710d1b3c8a5ad93e7811e75d8f4cf5962bb2<br>
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac<br>
meta-intel: 488af577a3f21f038c551612bb0af077fa2b743d<br>
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7<br>
meta-openembedded: 116bfe8d5e5851e7fc5424f40da8691a19c5b5ee<br>
meta-virtualization: 521459bf588435e847d981657485bae8d6f003b5<br>
oecore: 77f6fbfa18b4ad77c3756cfdc45d441a20210781<br>
poky: bab87089ad998afc980adb45c11ae356bc35a460<br>
<br>
<br>
<br>
This is an automated message from the Yocto Project Autobuilder<br>
Git: git://<a href=3D"http://git.yoctoproject.org/yocto-autobuilder2" rel=
=3D"noreferrer noreferrer" target=3D"_blank">git.yoctoproject.org/yocto-aut=
obuilder2</a><br>
Email: <a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_bla=
nk" rel=3D"noreferrer">richard.purdie@linuxfoundation.org</a><br>
<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60332): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60332" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/60332</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99599259/3620=
601" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/99599259/3620601</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:steve@sakoman.com" target=3D"_blank" =
rel=3D"noreferrer">steve@sakoman.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000083ae0105fe6780db--

