Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85E28C76188
	for <webhook@archiver.kernel.org>; Wed,  5 Apr 2023 12:54:38 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.129060.1680699274587175703
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Apr 2023 05:54:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=GtulqpcQ;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id m2so36100868wrh.6
        for <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 05:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680699273; x=1683291273;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K7JLHB+pABVrNVMu0YriOdlmxcVMgs937beLIiH1DvY=;
        b=GtulqpcQeiTlj4VbDlDbaYPELnvaeVLfnjB4wOj+fYukKZwoh/AaCSwaIM5NkHYhvB
         JoCw0XNAdr/YLmIBc5fO4xzGhQFfmWwvBbWrRpk6g07hVakrLkbw9M7Zjc/4yt6LzmnZ
         rHKSlWTUAaoUrz1d8FoDmoS/IgJObqh+Eu2hh35j7U1DFor32+2liFn/HimeXFkRhkd9
         ivPQUwVH5/3g+k6F66MtbU5WCnWGHMrI4yl18ONarDz8Ghf4VPX5hZ+QDccIuvNipaLs
         UXkdpB7KCoqItqw8ojC9diR6Qz2SH9kUnvNLELEuOiHUJ/oTT5+aMsWpqdvtM/pvR24V
         xxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680699273; x=1683291273;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K7JLHB+pABVrNVMu0YriOdlmxcVMgs937beLIiH1DvY=;
        b=O70OGFRf2VUcbWBWxcOXclOPbFBEvPzQMuIiFbsgjH/sB/aHSRKGfk3vtBz2S4sq0h
         m+fEomEGvrKIQebJ8v4RSHpRNV/KpjeDOfIFkP4DMpURJDxlBPmyW3DM7MnjH2yywY9N
         E+O9oESCxLAMmML+tdANxBOPnKqdCgxfZVPBdN8ETnz1pz+FuhYorsM/OaCRAbsmcODZ
         Mzu8gWAxGAMfOaPBNvKnzEMdERZ2lcX8tMJWjjK75AWsT2cDamDYCAdxOOVQBculCzxH
         3uI3mJjVpHIXwhXtV/7YW52ghLu/qa8fqHmo9fd/+5na5uviSw90HoK8cs2Y2FkbHRuQ
         syCQ==
X-Gm-Message-State: AAQBX9edO5Qt82EJIfOCn2rmkwFTMyOTmOZ1qvAywmjuzRQMcpvm3OdA
	Cq+b+A59vN8SZEDe+7t0Y4MFdB+7p9RXaYOb8zM=
X-Google-Smtp-Source: AKy350bnOXCiy4ech1ht2pQTt+KYWbot0RmFG1/o5301L9kE2BTbKJ3LCkjmKikFHEckvRj+bAsGi3eiDk0ABVj/Gnk=
X-Received: by 2002:adf:e30e:0:b0:2e4:cbfe:da50 with SMTP id
 b14-20020adfe30e000000b002e4cbfeda50mr1144822wrj.1.1680699272672; Wed, 05 Apr
 2023 05:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt6Nwrrz=RSWih8tLMkHzaoHC7vfvhFVaeLZq0AP_jt7Xy+2w@mail.gmail.com>
 <30535.1680698968711077938@lists.yoctoproject.org>
In-Reply-To: <30535.1680698968711077938@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 5 Apr 2023 14:54:13 +0200
Message-ID: <CA+chaQeHS5k780TKWJNZAo2G2pS8-5g2n18nBD720_0+ryv4fQ@mail.gmail.com>
Subject: Re: [yocto] How to remove Rust (and other packages) from yocto build #bitbake
To: Jesus.JimenezSanchez@verifone.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001f39d705f8964b07"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 12:54:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59618

--0000000000001f39d705f8964b07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can add SKIP_RECIPE[rust-native]  in your local.conf and bitbake will
tell you all the other parts you need to avoid (e.g. librsvg, ...)

On Wed, Apr 5, 2023 at 2:49=E2=80=AFPM Jesus.JimenezSanchez via
lists.yoctoproject.org <Jesus.JimenezSanchez=3D
verifone.com@lists.yoctoproject.org> wrote:

> Hello,
>
> Thank you for your response.
>
> I guess we'll keep building Rust (slowly).
>
> About the other packages I wanted to remove, does `PACKAGE_EXCLUDE` or
> `IMAGE_INSTALL:remove` not work in this case? Is my only option to dig
> through the recipes and remove them there directly?
>
> Thank you.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59617):
> https://lists.yoctoproject.org/g/yocto/message/59617
> Mute This Topic: https://lists.yoctoproject.org/mt/98079587/3617156
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000001f39d705f8964b07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can add SKIP_RECIPE[rust-native]=C2=A0 in your local.c=
onf and bitbake will tell you all the other parts you need to avoid (e.g. l=
ibrsvg, ...)</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, Apr 5, 2023 at 2:49=E2=80=AFPM Jesus.JimenezSanchez via=
 <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;J=
esus.JimenezSanchez=3D<a href=3D"mailto:verifone.com@lists.yoctoproject.org=
">verifone.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Hello,<br><br>Thank you for your respo=
nse.<br><br>I guess we&#39;ll keep building Rust (slowly).<br><br>About the=
 other packages I wanted to remove, does `PACKAGE_EXCLUDE` or `IMAGE_INSTAL=
L:remove` not work in this case? Is my only option to dig through the recip=
es and remove them there directly?<br><br>Thank you.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59617): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59617" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59617</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98079587/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98079587/3617156</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000001f39d705f8964b07--

