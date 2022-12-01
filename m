Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48B3BC43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 07:47:20 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.37321.1669880832228342809
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 23:47:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fZ/fLD1a;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id z4so1330497wrr.3
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 23:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8xn8R/XcRqUgHmbMbNVXT3hUmnxfgTEa5vXx/UYIF8M=;
        b=fZ/fLD1aDxYZCnr6PzmNmLaY5bLQW09vmlDBIiyyPOT5zAGVSg7N9oHy+A25hipEe8
         G5lZbNRQd9t77hE2ka++NfvyIhLHas6DleSmieNxStsGRRW0JSdEcZoNFVBXWEVVnw6X
         bCe09cZuNbNF8YDPoPhezOMQ7rmb4gscX7QLkeq1n03NHGX9qk905uarjrPPiNgT3xWr
         QkFY5DVdGCD4slxcp6CH9xDXz0868sl3NcWPsCUqzGSFEXSCVsUC4qWynwMuLZtm7zdI
         ejcrTlZINyNfjF5oDrDCMiIfR/NVcUZ2Lh3Ndh/AYL3Z0BHXrCOsjTVrmhw9jYysxVb/
         T5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8xn8R/XcRqUgHmbMbNVXT3hUmnxfgTEa5vXx/UYIF8M=;
        b=xl7iu0sWzY6Xq3mN06Iz51cMA80i3Z9IneeNRZ1OA5t42pDuOCZC/4GMf8P5EBlLUu
         JA8aTfa0ZSXChH6Z1syPGkv3ytXz7eGWdTHOa4ghTs/qyGkVZlNJjWhlTZVdzzabtuK6
         5TmtvLFEEP098hyvG4u7Pdtdw4I8oFyGozVMSSHBbbZl3jjR92G5SnS0TKqnc+mNSN5m
         32zcFsz2vflVQZUgIAuNwScg7ifzZ8LS3Xj20Sp4WT+mE+P1zWgQzAKfPG+3KmObTfXu
         D+q5XjAUpb3PdSNYGH0Je05ZerfJ5A3tRdT3LzzFSOu4/A15vXUuCSDRfvAM0OtwwTbX
         HEfg==
X-Gm-Message-State: ANoB5plDzKsYfXS3OLLm5ik8YiD1bXmzSgsahrQzOEey/nHwbMfUDbsz
	EqpJyTMWTJjqaD0ch97AzE0Z5xZbZiQYfJsj6nA=
X-Google-Smtp-Source: AA0mqf4XiVe+b+ZJpBZ0u8dPanP0TNwzrNwAtkOOH2cnLDNjyp3g6Pm0b3ZExQ8J103764V6k8cPc27hjqgtHy5deS0=
X-Received: by 2002:a5d:430e:0:b0:241:bfb6:c6da with SMTP id
 h14-20020a5d430e000000b00241bfb6c6damr29057187wrq.204.1669880830482; Wed, 30
 Nov 2022 23:47:10 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <CAPxNcnfmGrJU9X5xBy034Ndz-zS4cgzwxWaVmmv4Dq4WCYFyjA@mail.gmail.com>
In-Reply-To: <CAPxNcnfmGrJU9X5xBy034Ndz-zS4cgzwxWaVmmv4Dq4WCYFyjA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Dec 2022 08:46:58 +0100
Message-ID: <CA+chaQcphLsdya8v9SD=+XAb2bNWQ1bWxCdCRWOVpjwyiZePQg@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Zoran <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b7dc8905eebf6d3a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 07:47:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58691

--000000000000b7dc8905eebf6d3a
Content-Type: text/plain; charset="UTF-8"

Agreed with Rudolf.

If the layer maintainer didn't bother to do at least do one build with new
release and adjust LAYERSERIES_COMPAT, then I don't consider that layer
well maintained (it could be someone else who uses the layer, tests it with
new release and sends PR to adjust LAYERSERIES_COMPAT).

Recently I've also seen this:
LAYERSERIES_COMPAT_phytec = "${LAYERSERIES_COMPAT_core}"

which is also bad as it completely disables the check (seen in
https://git.phytec.de/meta-phytec/tree/conf/layer.conf#n14).

On Thu, Dec 1, 2022 at 7:06 AM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

>
>
> On Wed, Nov 30, 2022, 20:27 Zoran <zoran.stojsavljevic@gmail.com> wrote:
>
>> Hello to Yocto community,
>>
>> As I am much more passive yocto wise these few years ( working on
>> Android build systems and around, this is also a nightmare, I should
>> say ;-) ), I have one Yocto question which I never really understood.
>>
>> I will ask it by example. I have one layer for the CAN tools and apps
>> which I have created 4 years ago:
>> https://github.com/ZoranStojsavljevic/meta-socketcan
>>
>> In there, in conf/layer.conf:
>>
>> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/conf/layer.conf
>>
>> I have the following line (layers' compatibility):
>> LAYERSERIES_COMPAT_meta-socketcan = "sumo thud warrior zeus dunfell
>> gatesgarth hardknott honister kirkstone"
>>
>> I do not understand why we need to explicitly name releases for such
>> simple generic layers?!
>>
>
> To me this indicates that the maintainer of the layer has tested the
> compatibility of his layer with all of these releases of the Yocto Project.
>
> A maintainer of a layer should make a deliberate decision of adding a
> release or dropping one from the compatibility list. It should be an
> attestation that the layer's compatibility with the releases in the list is
> actually maintained and tested.
>
> There have been changes to the syntax to conditional variables. Your layer
> might well be compatible with all of the releases and it's great if you
> tested it. But it's not a given.
>
>>
>> Instead, for a virtual example:
>> LAYERSERIES_COMPAT_meta-socketcan = "${AUTOLAYER x}"
>>
>> So all the layers might be included (or for at least lets say x = 4
>> latest releases, where x = 0 would be include all)? I do understand
>> that complex layers could NOT have such a definition (because of the
>> dependencies), but for the generic layers (as such presented), this
>> would be beneficial.
>>
>
> I never cared for ${AUTOREV}, which is similar, in the first place for the
> very reason that it creates inconsistent behavior. This would do the same
> thing. What would the last 4 releases even mean? What is the reference and
> where is it obtained from?
>
>>
>> Thank you for the answers,
>> Zee
>
> _______
>>
>
> Best,
> :rjs
>
>>
>>
>>
>>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58690):
> https://lists.yoctoproject.org/g/yocto/message/58690
> Mute This Topic: https://lists.yoctoproject.org/mt/95375670/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000b7dc8905eebf6d3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Agreed with Rudolf.<div><br></div><div>If the layer mainta=
iner didn&#39;t bother to do at least do one build with new release and adj=
ust=C2=A0LAYERSERIES_COMPAT, then I don&#39;t consider that layer well main=
tained (it could be someone else who uses the layer, tests it with new rele=
ase and sends PR to adjust LAYERSERIES_COMPAT).</div><div><br></div><div>Re=
cently I&#39;ve also seen this:</div><div>LAYERSERIES_COMPAT_phytec =3D &qu=
ot;${LAYERSERIES_COMPAT_core}&quot;<br></div><div><br></div><div>which is a=
lso bad as it completely disables the check (seen in <a href=3D"https://git=
.phytec.de/meta-phytec/tree/conf/layer.conf#n14">https://git.phytec.de/meta=
-phytec/tree/conf/layer.conf#n14</a>).</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 1, 2022 at 7:06 AM =
Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com">rudolf.stre=
if@ibeeto.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 30, 2022, 20:27 Zoran &lt;<a =
href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojs=
avljevic@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hello to Yocto community,<br>
<br>
As I am much more passive yocto wise these few years ( working on<br>
Android build systems and around, this is also a nightmare, I should<br>
say ;-) ), I have one Yocto question which I never really understood.<br>
<br>
I will ask it by example. I have one layer for the CAN tools and apps<br>
which I have created 4 years ago:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/meta-socketcan" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">https://github.com/ZoranStojsavljevic=
/meta-socketcan</a><br>
<br>
In there, in conf/layer.conf:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master=
/conf/layer.conf" rel=3D"noreferrer noreferrer" target=3D"_blank">https://g=
ithub.com/ZoranStojsavljevic/meta-socketcan/blob/master/conf/layer.conf</a>=
<br>
<br>
I have the following line (layers&#39; compatibility):<br>
LAYERSERIES_COMPAT_meta-socketcan =3D &quot;sumo thud warrior zeus dunfell<=
br>
gatesgarth hardknott honister kirkstone&quot;<br>
<br>
I do not understand why we need to explicitly name releases for such<br>
simple generic layers?!<br></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">To me this indicates that the maintainer of the laye=
r has tested the compatibility of his layer with all of these releases of t=
he Yocto Project.</div><div dir=3D"auto"><br></div><div dir=3D"auto">A main=
tainer of a layer should make a deliberate decision of adding a release or =
dropping one from the compatibility list. It should be an attestation that =
the layer&#39;s compatibility with the releases in the list is actually mai=
ntained and tested.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Ther=
e have been changes to the syntax to conditional variables. Your layer migh=
t well be compatible with all of the releases and it&#39;s great if you tes=
ted it. But it&#39;s not a given.</div><div dir=3D"auto"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Instead, for a virtual example:<br>
LAYERSERIES_COMPAT_meta-socketcan =3D &quot;${AUTOLAYER x}&quot;<br>
<br>
So all the layers might be included (or for at least lets say x =3D 4<br>
latest releases, where x =3D 0 would be include all)? I do understand<br>
that complex layers could NOT have such a definition (because of the<br>
dependencies), but for the generic layers (as such presented), this<br>
would be beneficial.<br></blockquote></div></div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">I never cared for ${AUTOREV}, which is similar, in the =
first place for the very reason that it creates inconsistent behavior. This=
 would do the same thing. What would the last 4 releases even mean? What is=
 the reference and where is it obtained from?</div><div dir=3D"auto"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Thank you for the answers,<br>
Zee</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
_______<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Best,</div><div dir=3D"auto">:rjs</div><div dir=3D"auto"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
<br>
</blockquote></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58690): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58690" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58690</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95375670/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95375670/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b7dc8905eebf6d3a--

