Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22A25C4167B
	for <webhook@archiver.kernel.org>; Mon, 11 Dec 2023 09:36:02 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.4704.1702287352202895617
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Dec 2023 01:35:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=gVTY7YgV;
 spf=pass (domain: snapchat.com, ip: 209.85.218.45, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a1e7971db2aso475181266b.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Dec 2023 01:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1702287350; x=1702892150; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M+RfZLqcFW/znIgqLvLT7VAcIkbyV04rNPGaiLARohQ=;
        b=gVTY7YgVb2dsBY+St5ZCuPyCfCQFDQJPl0ysgFFUR7qFj0bxKWSSq6qbklThlEmvI/
         hk/yBArpFYf88TfL5qrxumC3yQ1hFXqp5YFEe4gsVJgKtoOf37fx3jQic9rGcO1n40fg
         /9XCP8TkGsxKmpF8Sl5MGxhI4F3SoY8l+mydM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702287350; x=1702892150;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M+RfZLqcFW/znIgqLvLT7VAcIkbyV04rNPGaiLARohQ=;
        b=og9ADTc0oZNpJq5pP2wF2XvsNlaVxkHQnOdJK49M153XoMFe+Ypfc6bk9eJBpmnARL
         q38yVKhcNbIv/GQLQsRbTd3Ybaywo55sZ6DdpgwSuXsnnJNPhaxE3H9De8ChbjIL+a3n
         Nt5Pk39662wFVr/JwRDyCq9Jl+totjE4O4+aRw7S+z2C5ybmYMkT3AwO335N9RkIOVdf
         KKG1t5GigaHE71Jj6MI+7vaznZBU2TM2wZnJ4eB3hXb7n/n2pIuIUp8rGJxXqbY6qOp6
         JBR9hH/b9pL2LR8GhovMTsxRDh+IGy7Gz3ymwr9+Yq/ymzbLwILD7W/FifNCIHBkgBRc
         FuHg==
X-Gm-Message-State: AOJu0YwhuIYtbxI5ACksNJ8eBeAxix7DJ4SoM7G0gbcprFkEbtKktCwn
	f7CqWj7AJ8pfzzAv2Ui0fo66EscuZ7BFCtu8JAPls5JSD019BOj5
X-Google-Smtp-Source: AGHT+IG0KeDYTVus0m2G7xRtt7hS35VDWVqRzcfHyzoP1nq5B+Vos42ECu8vYMSFXe3vcVMHRVXIErYbFleuZ/D8GIc=
X-Received: by 2002:a17:906:86:b0:a1f:99e1:8a5e with SMTP id
 6-20020a170906008600b00a1f99e18a5emr803207ejc.14.1702287350305; Mon, 11 Dec
 2023 01:35:50 -0800 (PST)
MIME-Version: 1.0
References: <AM0P122MB013250CF014137C3774EFE10D68AA@AM0P122MB0132.EURP122.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P122MB013250CF014137C3774EFE10D68AA@AM0P122MB0132.EURP122.PROD.OUTLOOK.COM>
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Mon, 11 Dec 2023 10:35:39 +0100
Message-ID: <CAHUKmYYPtOhF3aGaGq+Eji2ZGnNBXsmVoghc+Porxp=P0g8mrg@mail.gmail.com>
Subject: Re: [yocto] Yocto kirkstone and openssl 1.0.2
To: yocto@lists.yoctoproject.org, carlos.bejar-colonia@philips.com
Content-Type: multipart/alternative; boundary="000000000000d2dd92060c38a81d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Dec 2023 09:36:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61853

--000000000000d2dd92060c38a81d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Carlos,
I solved a similar issue by using two versions of OpenSSL in the image. I
copied and renamed one of the two openssl versions to "openssl-backported".
This method requires to modify the recipe of "openssl-backported" so that
this recipe provides only the versioned library (no header files and
unversioned .so file which would conflict with the other OpenSSL version).
However, please keep in mind that some OpenSSL versions are not supported
any more, so you should consider the security implications of keeping those
versions.

Etienne

On Fri, Dec 8, 2023 at 11:29=E2=80=AFPM Carlos via lists.yoctoproject.org
<carlos.bejar-colonia=3Dphilips.com@lists.yoctoproject.org> wrote:

> Hello,
>
>
>
> Currently we are using yocto version dunfell in our project.
>
> we are also using:
>
> -openssl 1.0.2: provided/supported by a third party.
>
> -meta-openssl102-fips
>
>
>
> Now, I would like to upgrade the project to use yocto kirkstone.
>
> I am facing build errors: Python 3.10 no longer supports openssl version =
<
> 1.1.1
>
>
>
> Is there a way to overcome this situation and still use openssl 1.02?
>
>
>
> Regards,
>
> Carlos B.
>
> ------------------------------
> The information contained in this message may be confidential and legally
> protected under applicable law. The message is intended solely for the
> addressee(s). If you are not the intended recipient, you are hereby
> notified that any use, forwarding, dissemination, or reproduction of this
> message is strictly prohibited and may be unlawful. If you are not the
> intended recipient, please contact the sender by return e-mail and destro=
y
> all copies of the original message.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61849):
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_message_61849&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkIC=
C2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DgcMI9z7QZDZk=
h8Ku_GdNfyab2L9dHZlNPDQlP7IWpKuDmfDhPk-ah9PVQDm2KIcK&s=3DfnULGsBMoEeloSLYip=
9I32wp8i-rIYA7Yvg3WbrCUgM&e=3D
> Mute This Topic:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_mt_103064667_7048771&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DgcMI9z7QZDZkh=
8Ku_GdNfyab2L9dHZlNPDQlP7IWpKuDmfDhPk-ah9PVQDm2KIcK&s=3D9EOuGRj_8yd26uNihNf=
qM995zKTyG2dgXcfxhLPwlag&e=3D
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_unsub&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfd=
iw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DgcMI9z7QZDZkh8Ku_GdN=
fyab2L9dHZlNPDQlP7IWpKuDmfDhPk-ah9PVQDm2KIcK&s=3D9oImkLqQY7tQDQESu9RyE6Arxr=
Lv4DYxgB6BpLwEKZY&e=3D
> [ecordonnier@snap.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d2dd92060c38a81d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Carlos,<br>I solved a similar issue by using two versio=
ns of OpenSSL in the image. I copied and renamed one of the two openssl ver=
sions to &quot;openssl-backported&quot;. This method requires to modify the=
 recipe of &quot;openssl-backported&quot; so that this recipe provides only=
 the versioned library (no header files and unversioned .so file which woul=
d conflict with the other OpenSSL version).<br>However, please keep in mind=
 that some OpenSSL versions are not supported any more, so you should consi=
der the security implications of keeping those versions.<br><br>Etienne</di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, Dec 8, 2023 at 11:29=E2=80=AFPM Carlos via <a href=3D"http://lists.yoct=
oproject.org">lists.yoctoproject.org</a> &lt;carlos.bejar-colonia=3D<a href=
=3D"mailto:philips.com@lists.yoctoproject.org">philips.com@lists.yoctoproje=
ct.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div class=3D"msg-5910526135700365589">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-5910526135700365589WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Currently we are using yocto version dunfell in our =
project.<u></u><u></u></p>
<p class=3D"MsoNormal">we are also using:<u></u><u></u></p>
<p class=3D"MsoNormal">-openssl 1.0.2: provided/supported by a third party.=
<u></u><u></u></p>
<p class=3D"MsoNormal">-meta-openssl102-fips<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Now, I would like to upgrade the project to use yoct=
o kirkstone.<u></u><u></u></p>
<p class=3D"MsoNormal">I am facing build errors: Python 3.10 no longer supp=
orts openssl version &lt; 1.1.1<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is there a way to overcome this situation and still =
use openssl 1.02?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Carlos B.<u></u><u></u></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61849): <a href=3D"https://urldefense.proofpoint.com/v2=
/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_61849&amp;d=3DDwI=
FaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMI=
GRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DgcMI9z7QZDZkh8Ku_GdNfyab2L9dHZlNPD=
QlP7IWpKuDmfDhPk-ah9PVQDm2KIcK&amp;s=3DfnULGsBMoEeloSLYip9I32wp8i-rIYA7Yvg3=
WbrCUgM&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.p=
roofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_6=
1849&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp=
;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DgcMI9z7QZDZkh8Ku_G=
dNfyab2L9dHZlNPDQlP7IWpKuDmfDhPk-ah9PVQDm2KIcK&amp;s=3DfnULGsBMoEeloSLYip9I=
32wp8i-rIYA7Yvg3WbrCUgM&amp;e=3D</a> <br>
Mute This Topic: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__lists.yoctoproject.org_mt_103064667_7048771&amp;d=3DDwIFaQ&amp;c=3D=
ncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsR=
ih1DULJTKUkSGa66m67E&amp;m=3DgcMI9z7QZDZkh8Ku_GdNfyab2L9dHZlNPDQlP7IWpKuDmf=
DhPk-ah9PVQDm2KIcK&amp;s=3D9EOuGRj_8yd26uNihNfqM995zKTyG2dgXcfxhLPwlag&amp;=
e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.co=
m/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_mt_103064667_7048771&amp;d=3D=
DwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonV=
uMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DgcMI9z7QZDZkh8Ku_GdNfyab2L9dHZl=
NPDQlP7IWpKuDmfDhPk-ah9PVQDm2KIcK&amp;s=3D9EOuGRj_8yd26uNihNfqM995zKTyG2dgX=
cfxhLPwlag&amp;e=3D</a> <br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTv=
jIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUk=
SGa66m67E&amp;m=3DgcMI9z7QZDZkh8Ku_GdNfyab2L9dHZlNPDQlP7IWpKuDmfDhPk-ah9PVQ=
Dm2KIcK&amp;s=3D9oImkLqQY7tQDQESu9RyE6ArxrLv4DYxgB6BpLwEKZY&amp;e=3D" rel=
=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/url?=
u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3Dn=
cDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRi=
h1DULJTKUkSGa66m67E&amp;m=3DgcMI9z7QZDZkh8Ku_GdNfyab2L9dHZlNPDQlP7IWpKuDmfD=
hPk-ah9PVQDm2KIcK&amp;s=3D9oImkLqQY7tQDQESu9RyE6ArxrLv4DYxgB6BpLwEKZY&amp;e=
=3D</a>=C2=A0 [<a href=3D"mailto:ecordonnier@snap.com" target=3D"_blank">ec=
ordonnier@snap.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div></blockquote></div>

--000000000000d2dd92060c38a81d--

