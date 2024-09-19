Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8782DCE8D79
	for <webhook@archiver.kernel.org>; Thu, 19 Sep 2024 10:57:02 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.16619.1726743419579758554
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Sep 2024 03:56:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U4szPHvg;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2d8a7c50607so508508a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Sep 2024 03:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726743419; x=1727348219; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nfuDo+MlgKJwP10A2Ttk+g5iWpfr40G+VDdsEy23tns=;
        b=U4szPHvgo6zEFhelhwVMa5vAzXdNy9ukjGZwGpQx3eCYhveUWIn12HcV4JqARCPoFT
         9Ls/rTGpcCLuPBASkhMhCjlpxAP8NOYbMMk9KZFjCX+stsRAXFtOtuxCnR6nkfhftX6b
         E00XTy/vA3ouRQgcaqlTJdGeg0NGKBN+XGfo0TC334NFnPrHC3pIXWRvFg0lt3Uan9U3
         K87B/tusgFFwqvt/EEPdgC9ASEsYqqsBAg9xIVIkOSRcPOkWEB4ROGxpOQkpkDANtZzI
         YWPEkR1XsBCQpibdyGqpp3uwWek3sWjNyrQqDOpRi/2WnVQXfhUshSCFFeXpfMewrri2
         k+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726743419; x=1727348219;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nfuDo+MlgKJwP10A2Ttk+g5iWpfr40G+VDdsEy23tns=;
        b=nMWvky+X8cv4ihsqHcmcLi8QGOVy+7fPVwoK9JeWDPkaFMJHS7bDGz++c9sos0XEe6
         fVcTA420+INetTTdfytKSGKaog1H1bXglvUe4EDTFpQIGjJh+cxMrcYqfAmEWazvRCLF
         nJb1r2OpdIPBMdJutRE3FQu8plgwi2uKqumTnwmFwqIRQ+tG6jkFivHLRsTdIMo1i3Dg
         AvvMdViG2PgjfMW8WFFQJIxEhWQnaiL33jB6GvwjW09V/2PNyDFCennv2VeklNxZQsAc
         BpYCSk7FippQW862ONTBEuUiBrfZb7TkjMkeH0wG1i3zR8AAJKn33+6TiJ1YLHTSnt0f
         vNFQ==
X-Gm-Message-State: AOJu0Yzizqpz9YNkkorfle84/9iHuOd+x22HU1TspvUvVPaKYmPkFBq0
	egUM7uhLhxtp4z/tfYAk800h3hQcd5ZKeYD5Adz80MmAH//mCzhbZsMYqU+oFp9f0tzDPQ+Z/ds
	BjeOa4VjwcO6kUut8m9mMXjC8byCDqakdIUgq4A==
X-Google-Smtp-Source: AGHT+IHYK4IT4mw4z5K0X2vek4nLiTkuGX7AewLYoxhE54a6c3Bo9C7AvFL8BEolaf46LWaICNWAtMrI5gZV49GmBp8=
X-Received: by 2002:a17:90a:8c8b:b0:2ca:7636:2217 with SMTP id
 98e67ed59e1d1-2db9ffa734amr26976384a91.2.1726743418412; Thu, 19 Sep 2024
 03:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <TY3PR01MB11056856D6A7B493195D65385A0632@TY3PR01MB11056.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11056856D6A7B493195D65385A0632@TY3PR01MB11056.jpnprd01.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 19 Sep 2024 06:56:46 -0400
Message-ID: <CADkTA4PHFT5k8JSOC-4AoosVyNUdnpg1Bo8yAYSq+SZJAMFdxg@mail.gmail.com>
Subject: Re: [yocto] It is failed to build v6.6/standard/nxp-sdk-6.6/nxp-soc
To: yocto@lists.yoctoproject.org, leimaohui@fujitsu.com
Content-Type: multipart/alternative; boundary="00000000000012a634062276c8fc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Sep 2024 10:57:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63866

--00000000000012a634062276c8fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Use the linux-yocto mailing list.

The Wind River team contributes those BSPs and should be able to identify
and help with the issue.

Bruce

On Thu, Sep 19, 2024 at 5:01=E2=80=AFAM leimaohui via lists.yoctoproject.or=
g
<leimaohui=3Dfujitsu.com@lists.yoctoproject.org> wrote:

> Hi,
>
> I tried to build the last v6.6/standard/nxp-sdk-6.6/nxp-soc
> (9e20a24ffe9be528c1b9529763ef053239eca34f), but met error as the followin=
g.
> Should I submit this issue here?
> -----------------
> Error: arch/arm64/boot/dts/freescale/imx8mp-evk.dts:12.1-2 syntax error
> FATAL ERROR: Unable to parse input tree
> make[3]: *** [scripts/Makefile.lib:423:
> arch/arm64/boot/dts/freescale/imx8mp-evk.dtb] Error 1
> make[2]: *** [scripts/Makefile.build:480: arch/arm64/boot/dts/freescale]
> Error 2
> make[2]: *** Waiting for unfinished jobs....
> -----------------
>
>
> Best regards
> Lei
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63865):
> https://lists.yoctoproject.org/g/yocto/message/63865
> Mute This Topic: https://lists.yoctoproject.org/mt/108536308/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--00000000000012a634062276c8fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Use=
 the linux-yocto mailing list.</div><div class=3D"gmail_default" style=3D"f=
ont-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:s=
mall">The Wind River team contributes those BSPs and should be able to iden=
tify and help with the issue.</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:sm=
all">Bruce</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Sep 19, 2024 at 5:01=E2=80=AFAM leimaohui via <a hr=
ef=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;leimaoh=
ui=3D<a href=3D"mailto:fujitsu.com@lists.yoctoproject.org">fujitsu.com@list=
s.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi,<br>
<br>
I tried to build the last v6.6/standard/nxp-sdk-6.6/nxp-soc (9e20a24ffe9be5=
28c1b9529763ef053239eca34f), but met error as the following. Should I submi=
t this issue here?<br>
-----------------<br>
Error: arch/arm64/boot/dts/freescale/imx8mp-evk.dts:12.1-2 syntax error<br>
FATAL ERROR: Unable to parse input tree<br>
make[3]: *** [scripts/Makefile.lib:423: arch/arm64/boot/dts/freescale/imx8m=
p-evk.dtb] Error 1<br>
make[2]: *** [scripts/Makefile.build:480: arch/arm64/boot/dts/freescale] Er=
ror 2<br>
make[2]: *** Waiting for unfinished jobs....<br>
-----------------<br>
<br>
<br>
Best regards<br>
Lei<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63865): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63865" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63865</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108536308/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108536308/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">- =
Thou shalt not follow the NULL pointer, for chaos and madness await thee at=
 its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br><b=
r></div>

--00000000000012a634062276c8fc--

