Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D818C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 03:42:28 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web10.25779.1702438944308933364
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Dec 2023 19:42:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YXu97N63;
 spf=pass (domain: gmail.com, ip: 209.85.128.180, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5de93b677f4so45579577b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 19:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702438943; x=1703043743; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TOy2sfw8HtiDTZzER+WqKGKMYU/IUbBZsEgbilESeVQ=;
        b=YXu97N63KXwJe151VVYnbbDsl5l0AV2rah9AwgdSwPtvU43+XTR95xfr0YrtqtaKSP
         ALyStkNn1YTI/+dHprXbY8fBTV4N7lmOBotExZOxOrXhp7lUymvee0o/ANBBxu6x1Z76
         LHjDK5kR1d4Ev+wD3T3ty1GVpOH4Uvs4nms/fHpQuB1GImnxtKOgq+eMm+41GUChHP/k
         oGCqRxyYWBs9KqygHoPoIg2baBrU2L+MWJk36Xnl7ylNyEYdTVqf8MJyKOgJ70e6ZNqO
         CEBRWNWBGH2BMwDpeIS5HmImBYlGLYv2Zh0Oy8aItd/jPap5CGg1ARec26h9HrmJWkLl
         igig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702438943; x=1703043743;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TOy2sfw8HtiDTZzER+WqKGKMYU/IUbBZsEgbilESeVQ=;
        b=BcdIUDzUokLG1XGEeDlzfVbPrteLdBtEvWMXfrxm+weN0JJimJFq1YoWZi7pgz4W4d
         SfgKpwjIVWNOwrOHkinaOUX9dF/ah7I6UigahKXAU+llRzsmYyCWZS58CnnH0awboaqS
         a1uDTAB3HsJjxkCUG5VvDm6PfTlpSO9y6kry2I0rsfCXz8E+/cj2dymo49MOZ+f5QVNr
         mPhBTDYrXQBmh7BYy/Mfs6qaSk58lzmkEl6vSfXlx2FdEUCOwKDb3fJxHJCA3gWeQvcy
         3moWID0tFTMPWtRa55lsJbjV48NGRN1sv97rw01p2Caj+nzGfuLI4sYJRiZEsGtp+vNB
         4/qQ==
X-Gm-Message-State: AOJu0YwK9IRKwbBJZDQ7TypgsZG5lKH+U1rNmiJMeOnwj5t9Uu/6T2Uq
	FyzlF8ggWJ5paMW/PQn7Hwa/aQLUaeaUhYFxxYs=
X-Google-Smtp-Source: AGHT+IG2nT+AodiaSlutM1KtQS4bxIZ4fcK9EpYeEvlIHXdafAOM1Z40BTKR4WMJT9hbsYkzbVjMR6Tssa1aPC6z750=
X-Received: by 2002:a0d:d608:0:b0:5d7:1940:7d6d with SMTP id
 y8-20020a0dd608000000b005d719407d6dmr6072032ywd.68.1702438943431; Tue, 12 Dec
 2023 19:42:23 -0800 (PST)
MIME-Version: 1.0
References: <065ce852-27e3-4df2-b53c-d3a5ceb207ff@mistywest.com>
In-Reply-To: <065ce852-27e3-4df2-b53c-d3a5ceb207ff@mistywest.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 12 Dec 2023 19:42:10 -0800
Message-ID: <CANx9H-CwuY7=QXMA4reAKpZ00DzsOJxuCYXqDDpi+w9Lr_Tvnw@mail.gmail.com>
Subject: Re: [yocto] unable to resolve libtss2 dependency
To: ron.eggler@mistywest.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000079a4fc060c5bf48c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 03:42:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61872

--00000000000079a4fc060c5bf48c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 12, 2023 at 5:32=E2=80=AFPM Mistyron <ron.eggler@mistywest.com>=
 wrote:

> Hi,
>
> I need to add the meta-iotedge layer to my project:
> https://github.com/Azure/meta-iotedge/tree/dunfell as I need the
> aziot-edged package.
>
> Upon adding the layer and resolving its dependency on meta-rust, it needs=
:
> libtss2
> libtss2-mu
> libtss2-tcti-device


https://git.yoctoproject.org/meta-security/tree/meta-tpm/recipes-tpm2/tpm2-=
tss/tpm2-tss_2.3.2.bb?h=3Ddunfell


> And I'm not sure how I can resolve these dependencies.  I can't seem to
> find the sources for it but only packages for all different
> distributions. Can someone help me out, here?
>
> --
> mistyron
>
>
> --
> Mistyron
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61871):
> https://lists.yoctoproject.org/g/yocto/message/61871
> Mute This Topic: https://lists.yoctoproject.org/mt/103142467/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000079a4fc060c5bf48c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Dec 12, 2023 at 5:32=E2=80=AFPM Mistyron &lt;<a hre=
f=3D"mailto:ron.eggler@mistywest.com">ron.eggler@mistywest.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-=
left-color:rgb(204,204,204)">Hi,<br>
<br>
I need to add the meta-iotedge layer to my project: <br>
<a href=3D"https://github.com/Azure/meta-iotedge/tree/dunfell" rel=3D"noref=
errer" target=3D"_blank">https://github.com/Azure/meta-iotedge/tree/dunfell=
</a> as I need the <br>
aziot-edged package.<br>
<br>
Upon adding the layer and resolving its dependency on meta-rust, it needs:<=
br>
libtss2<br>
libtss2-mu<br>
libtss2-tcti-device</blockquote><div dir=3D"auto"><br></div><div dir=3D"aut=
o"><div><a href=3D"https://git.yoctoproject.org/meta-security/tree/meta-tpm=
/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb?h=3Ddunfell">https://git.yoctoproj=
ect.org/meta-security/tree/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb=
?h=3Ddunfell</a></div><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padd=
ing-left:1ex;border-left-color:rgb(204,204,204)" dir=3D"auto"><br>
And I&#39;m not sure how I can resolve these dependencies.=C2=A0 I can&#39;=
t seem to <br>
find the sources for it but only packages for all different <br>
distributions. Can someone help me out, here?<br>
<br>
-- <br>
mistyron<br>
<br>
<br>
-- <br>
Mistyron<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61871): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61871" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61871</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103142467/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/103142467/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000079a4fc060c5bf48c--

