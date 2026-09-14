Return-Path: <yann.cardaillac@balena.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D215DC88E66
	for <webhook@archiver.kernel.org>; Mon, 14 Sep 2026 12:29:42 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19107.1789388982262311050
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Sep 2026 05:29:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@balena.io header.s=google header.b=i/CsP/wk;
 spf=pass (domain: balena.io, ip: 209.85.208.52, mailfrom: yann.cardaillac@balena.io)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6a9a2f16ed4so3925129a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 14 Sep 2026 05:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789388980; cv=none;
        d=google.com; s=arc-20260327;
        b=gfxlXasq0h2nLP1kdsRmZ0TpV+nBabPe9n04CgYMPMy4g86ujS2H/VG+HrD/laQ1Pk
         /rXmcLbH5D1zF3Me+jSqIW7JMHsxx8Km/3G42hHF+El0AN7yJV938snDie1LHG5n+552
         mEOkHHQi++1Os5xXP7WA7tuNtaoUxB/Wrb1MwQiToD1zkfrg5Axf1A18bTlR9z6TyE+t
         4k71GK/x+M31NslXEBbmX5nWgF9R2CM70e8RDu9jhs3jy3KSvE0rnc3laokQ0govQRTy
         onOkkbblxGNGCKW41/0JsbKax8bvQyEXAMIHhDwsMxw22UjPKfLVaTE8G9QrgA5Gt0hH
         68Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LNEQzfkFwrof4+rsg/rSAarC70f/mjwsDmVdRs+X6lw=;
        fh=0MbjHr5SOm6d/F09resSbWRo7s0aFqh5NjCEYnE+z9Y=;
        b=jtZl7E0SfzdIc32h07AuqQLoaykorf7naAXNTRJfIxE5pGyeVd6TzTIxFXQkrg9X/s
         geWjff9G6lneECVA4UuttlTc2oD7qR6lnjeYBENeluAxgdMl6x4wj7dfpJqWuFrFM4eA
         vnbf3i3Ob6tzjO/uWB9PtIjRDi0AWj1SyoMolVT0fiIZY2AMk2d62pva9ZIL3Yai9T0u
         ZLmdfWQSHYoRJ196dcrslB1qyxDSaRrNyF5f4ZQnfSEyd0opG2RXi87h2drimfXdBLgi
         Axfn55XnlHGCIcZHaXdXQNZw+Z3HC+PkOC/siG38XaEuk9MtBKRY0a3Joz/bHLo11Qp9
         eMuw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=balena.io; s=google; t=1789388980; x=1789993780; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LNEQzfkFwrof4+rsg/rSAarC70f/mjwsDmVdRs+X6lw=;
        b=i/CsP/wk/eqBWNMU7oaq4oIcusM6HExM5Mg2lV4TjYUnM/Zn+MB6pC1Bsr/gaJYf2G
         HTmkIYjyfdnSuzj4o3oUHQgZXUd2hFLunn4dUdriNfRUyIKhHbT4cN8//pMc9W+4Aybz
         RaREZzea+18VqcNeMMpgHAQ12o1sTGePQLdhhzPFw+3QAFVAoZQuvyRA2+rBS0dHJHC5
         497D9RgqJLiOHMu+sun+ZNhRAIlVSRxrneHP7EsG9LCNcdLo0hC5qYi0uQOOiyJYSrQh
         h+TU5R+R4SoYXbn0u5SmUIB2jE6dI9uAh0vP986XC3fUsgeZkx+uFe6zYYqqnoTVtg53
         /JFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789388980; x=1789993780;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=LNEQzfkFwrof4+rsg/rSAarC70f/mjwsDmVdRs+X6lw=;
        b=d9HSBo9oo0C032hnNBPxBdu9enIHEVfBdzCl/o5SPydpDrKQuKNC6LctSi+hp93fCN
         FmIcUIpKZbFCjfdsKr2MvMZF9Ulx0Kj6ypZIt9E56Uv5emG9RRRyTN7fRojIUqXcRogQ
         dxyWvNFt6RMVisF707T7PtPaDW24VkFsBhfdtvw5T7iq76z2lnpCcXp+RnWiROs+pVcn
         3RUV1gj6yu/oKNItNT387v2DO/3P2s3WwDOkCKWanHKnV2OnGmCSjG7KoAukdGg0j8Kw
         jQYxpR/ZCjvxcFKcuiVVz1lTHJ3Z4KlS/aB1pfNCUGdu4KXBpcQzYMHFsP0bB3zz17fk
         vtFw==
X-Gm-Message-State: AFuF++nOu3E41OryTi41RyTYsDjF/mre8gpZQFjFlFcvfIRjKNA7NXQK
	56wS4OV0WhAjDHtg8xoZcgR0cQJDLnQbE6aKNbBr+1qGbAoxHzZ7IK9ZXKSb8S/J8a6RzaPqGCS
	mrEXaKXM+3rAwizjiWdf1DRuS8XroWLTw5Jac4meBDg==
X-Gm-Gg: AYBFou0vdBcyTs7M9FqnA3Isx+ragkqjQ/RQ/jrAWshd83Oe24vLlXlLwxm2+Hmt1uI
	rj2jSnuzNQlis4JhKlHu7fmR5nbxca2m6g0pENYZ2VblDaXAUOqYx2AtuzuKsIIr/WH7lPK7HMe
	xQZw2ppAisFZzC6k2tJ/G7tjyG+eZC/7MMtooW6QNfWxsnemiM2V87kLHKNXg+rftlECTLqYu6R
	ExKsRULFR2m8bVGC7wcLXtoS/szTPqp5NzE8HkMQSE+rMBPT+23Yrr7KmDwTMxnx8DsOU9czhJV
	nx7M/bz33iHkBlj+27ABMa6JOIp+1yH05gzXHxazWhB/sXC0ZT1OMu+V68VUfpBEvagEIsOicId
	6ttfjpUI7h/kWi7WKV8Y/aBoVmO9ubo/rLsYI1qjyuxdWFoBnEBA2YYpUFB0=
X-Received: by 2002:a05:6402:43cb:b0:6aa:17:3b6b with SMTP id
 4fb4d7f45d1cf-6aa00173db0mr7578a12.0.1789388980067; Mon, 14 Sep 2026 05:29:40
 -0700 (PDT)
MIME-Version: 1.0
References: <CACuRGzBAnGRfu-vRgJg5-ucBWcGfHRnsPH9mJuAubJ17K-E06A@mail.gmail.com>
 <DB9PR10MB5257F54F8DFE8FC4D383926499B12@DB9PR10MB5257.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <DB9PR10MB5257F54F8DFE8FC4D383926499B12@DB9PR10MB5257.EURPRD10.PROD.OUTLOOK.COM>
From: Yann Cardaillac <yann.cardaillac@balena.io>
Date: Mon, 14 Sep 2026 14:29:28 +0200
X-Gm-Features: AcwNN1UmRuhoMsIXPQpK6tEMQsetYub6KS4joto2wKo55wkyko1_r33rISlDnQY
Message-ID: <CACuRGzCQN+Ecxv-2QWgyL5Get6TyTi2MwDLNFiieq0wxFUNUQA@mail.gmail.com>
Subject: Re: [yocto] Multi-vendor Yocto distro: how do you structure layers?
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000085ad4f065b709616"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Sep 2026 12:29:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66721

--00000000000085ad4f065b709616
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Matthias,

Thanks, AFAICT, yes, the talks are all recorded.

Well that's exactly what we try to avoid at Balena, we reuse the vendor BSP
as much as possible.

You can look at balena-raspberrypi
<https://github.com/balena-os/balena-raspberrypi> or balena-compulab-imx9
<https://github.com/balena-os/balena-compulab-imx9> that both reuse the
vendor BSP at different levels as well as our own distro layer meta-balena
<https://github.com/balena-os/meta-balena>.

Re-writing or extracting the vendor BSP into your own layer, is a pragmatic
approach, but it doesn't scale well. Backporting and tracking patches from
the vendor can be costly versus reusing their meta.

But to your point, vendor's meta are not made equals, and for some of them
you might as well re-write the entire thing. I believe even a proper layer
system and distro will not save you from a poor vendor.

This approach goes a little further than just the Yocto layer system, we
also try to reuse the vendor bootloader and kernel while maintaining a
similar user experience across different boards and yocto versions.

Also, just so it's very clear, I don't take any credit for this solution as
it was entirely solved by my current colleagues and former Balena
employees. I'd simply like to make this clever and simple solution to this
hard problem more visible, as it's something I wish I had known earlier in
my Yocto experience.

Regards,

Yann

On Tue, Sep 8, 2026 at 3:32=E2=80=AFPM Matthias Klein <matthias.klein@optim=
eas.de>
wrote:

> Hello Yann,
>
> we have exactly the same problem. We have a product with a distribution
> that we integrate into multiple vendor BSPs.
> Through painstaking work, we turn the vendor BSP into a kind of BSP layer
> that we combine with our distro/product layers to create separate Yocto
> builds.
> This makes it easy to make changes to our layers, but maintaining the
> vendor BSP layers is time-consuming. All Yocto builds are updated to the
> latest stable version (currently wrynose) every two years.
>
>    - I'll present that layout at OSS Summit.
>
>
> I'm looking forward to your presentation. Since I won't be there in
> person, will it be recorded?
>
> Best regards,
> Matthias
>
> ------------------------------
> *Von:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> im
> Auftrag von Yann Cardaillac via lists.yoctoproject.org <yann.cardaillac=
=3D
> balena.io@lists.yoctoproject.org>
> *Gesendet:* Dienstag, 08. September 2026 10:39
> *An:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Betreff:* [yocto] Multi-vendor Yocto distro: how do you structure
> layers?
>
> Hello Yocto community,
>
> I've been using Yocto for almost 10 years and keep hitting the same
> problem:
> How do you keep one distro coherent across multiple vendor BSPs and yocto
> versions?
>
> What I've tried personally:
> - stack two vendor BSPs under one distro: conflicts everywhere (Yocto
> version, kernel, systemd, invasive DISTRO layers)
> - fold the distro into each cleaned-up vendor BSP: works while the board
> count stays small, but doesn't scale, because I ended up with multiple
> version of my distro
>
> I now work at balena, where one distro is shared across many
> boards/vendors with a deliberate layer split. I'll present that layout at
> OSS Summit.
>
> I'd like to hear how others approach this. If you're willing to share:
> 1. How you separate distro vs vendor vs board
> 2. What broke when you tried to scale (version skew, DISTRO pollution,
> kernel/BSP coupling, etc.)
> 3. Tradeoffs you accepted on purpose
>
> Reply here or ping me privately. Pointers to public repos are very welcom=
e.
>
> Thanks!
>
> Yann
>

--00000000000085ad4f065b709616
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Matthias,</div><div><br></div><div>Thanks,=C2=
=A0AFAICT, yes, the talks are all recorded.</div><div><br></div><div>Well t=
hat&#39;s exactly what=C2=A0we try to avoid at Balena, we reuse the vendor=
=C2=A0BSP as much as possible.</div><div><br></div><div>You can look at <a =
href=3D"https://github.com/balena-os/balena-raspberrypi">balena-raspberrypi=
</a>=C2=A0or <a href=3D"https://github.com/balena-os/balena-compulab-imx9">=
balena-compulab-imx9</a>=C2=A0that both reuse the vendor BSP at different l=
evels as well as our own distro layer <a href=3D"https://github.com/balena-=
os/meta-balena">meta-balena</a>.</div><div><br></div><div>Re-writing or ext=
racting the vendor BSP into your own layer, is a pragmatic approach, but it=
 doesn&#39;t scale well. Backporting and tracking patches from the=C2=A0ven=
dor can be costly versus reusing their meta.</div><div><br></div><div>But t=
o your point, vendor&#39;s meta are not made equals, and for some of them y=
ou might as well re-write the entire thing. I believe even a proper layer s=
ystem and distro will not save you from a poor vendor.</div><div><br></div>=
<div>This approach goes a little further than just the Yocto layer system, =
we also try to reuse the vendor bootloader and kernel while maintaining a s=
imilar user experience across different boards and yocto versions.</div><di=
v><br></div><div>Also, just so it&#39;s very clear, I don&#39;t take any cr=
edit for this solution as it was entirely solved by my current colleagues a=
nd former Balena employees. I&#39;d simply like to make this clever and sim=
ple solution to this hard problem more visible, as it&#39;s something I wis=
h I had known earlier in my Yocto experience.</div><div><br></div><div>Rega=
rds,</div><div><br></div><div>Yann</div></div><br><div class=3D"gmail_quote=
 gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 8=
, 2026 at 3:32=E2=80=AFPM Matthias Klein &lt;<a href=3D"mailto:matthias.kle=
in@optimeas.de">matthias.klein@optimeas.de</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg2050586796980175=
398">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Hello Yann,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">
we have exactly the same problem. We have a product with a distribution tha=
t we integrate into multiple vendor BSPs.</div>
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">
Through painstaking work, we turn the vendor BSP into a kind of BSP layer t=
hat we combine with our distro/product layers to create separate Yocto buil=
ds.</div>
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">
This makes it easy to make changes to our layers, but maintaining the vendo=
r BSP layers is time-consuming. All Yocto builds are updated to the latest =
stable version (currently wrynose) every two years.</div>
<ul style=3D"margin-top:0px;margin-bottom:0px">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0);margin-top:0px;marg=
in-bottom:0px;list-style-type:&quot;\0027a2  &quot;">
<div role=3D"presentation" style=3D"direction:ltr">I&#39;ll present that la=
yout at OSS Summit.</div>
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
I&#39;m looking forward to your presentation. Since I won&#39;t be there in=
 person, will it be recorded?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Best regards,</div>
<div style=3D"font-family:Aptos,sans-serif;font-size:12pt;color:rgb(0,0,0)"=
>
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:11pt">Matthias</span>=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<b>Von:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yocto=
project.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; im Auft=
rag von Yann Cardaillac via <a href=3D"http://lists.yoctoproject.org" targe=
t=3D"_blank">lists.yoctoproject.org</a> &lt;yann.cardaillac=3D<a href=3D"ma=
ilto:balena.io@lists.yoctoproject.org" target=3D"_blank">balena.io@lists.yo=
ctoproject.org</a>&gt;<br>
<b>Gesendet:</b> Dienstag, 08. September 2026 10:39<br>
<b>An:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Betreff:</b> [yocto] Multi-vendor Yocto distro: how do you structure lay=
ers? </div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr">Hello Yocto community,</div>
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr">I&#39;ve been using Yocto for almost 10 years =
and keep hitting the same problem:<br>
How do you keep one distro coherent across multiple vendor BSPs and yocto v=
ersions?</div>
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr">What I&#39;ve tried personally:<br>
- stack two vendor BSPs under one distro: conflicts everywhere (Yocto versi=
on, kernel, systemd, invasive DISTRO layers)<br>
- fold the distro into each cleaned-up vendor BSP: works while the board co=
unt stays small, but doesn&#39;t scale, because I ended up with multiple ve=
rsion of my distro</div>
<div style=3D"direction:ltr"><br>
I now work at balena, where one distro is shared across many boards/vendors=
 with a deliberate layer split. I&#39;ll present that layout at OSS Summit.=
</div>
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr">I&#39;d like to hear how others approach this.=
 If you&#39;re willing to share:<br>
1. How you separate distro vs vendor vs board<br>
2. What broke when you tried to scale (version skew, DISTRO pollution, kern=
el/BSP coupling, etc.)<br>
3. Tradeoffs you accepted on purpose</div>
<div style=3D"direction:ltr"><br>
Reply here or ping me privately. Pointers to public repos=C2=A0are very wel=
come.</div>
<div style=3D"direction:ltr"><br>
Thanks!</div>
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr">Yann</div>
</div>

</div></blockquote></div>

--00000000000085ad4f065b709616--

