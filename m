Return-Path: <samuli.piippo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF41C4332F
	for <webhook@archiver.kernel.org>; Wed,  8 Nov 2023 13:55:17 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web10.14008.1699451710586847902
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Nov 2023 05:55:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qi5abaMS;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: samuli.piippo@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4a06fb5331bso2533969e0c.0
        for <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 05:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699451709; x=1700056509; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZfNmz5Tj2t6UpHnanh/F/XPt6MmtXmz6SXLVkJgGFFA=;
        b=Qi5abaMSd7OPmwZOvBvo8q6/H+2zQL9NqNOx9+yo6RtC278J17c/YK/wY/MnjQ0QFA
         MzVWHRxXCRD/S72BH061BaTKWUHrKQOtKUJTLgGwif8CKqTWdr6emlazPgvQqzHhG4eB
         I/ZcvlhhTgisKYgg2p+6IIwioitxie7lf7el++k4ezMco4KtncFCah9B+OuaECsFBZmz
         nI3QPRmMaEQEY3GnAb3NcF315o4cxjnN8hA1ZuG+5KiIu3dm6ad37sywCu79TBgOtrBh
         HAIgwzYvPn8xWOyahCNnoccDW8TZLeiYOjZbLMCp33EGBCOMTJpP+5Cj4kRMcXAfoNgP
         kT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699451709; x=1700056509;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZfNmz5Tj2t6UpHnanh/F/XPt6MmtXmz6SXLVkJgGFFA=;
        b=UFEsUPXLL/vkC84UoNrCqmZcRSxf6YvPIs0JtHEKr6biR+3WkXDCoLo8GandL+KDmk
         0CBTdAg3nRbIxwVwCdICae7hqGHELt2UW1lyuCUPqwM+XPjeUfXlP+SNE0jvsD7Hmorz
         bN6gSlaBe+XT67DaNtNwkVwtAe4GqVBGYtKQmM5U3Ap8rJAyzepV1QZlBeYvm1gPG5Us
         y9LWz95rYHeDxiebc+3a5iC8HqoniejMLwQQLcz6Na3WJrtv3+DBTXg+e+xtWvmxLWc3
         9TzoSvMoM2LWIiiLiTkSnUZCNRoUzlNRPLZ8kx7GxsW9T2bRmcVe9lAQyPL6yFZmLBCm
         6fxA==
X-Gm-Message-State: AOJu0YyiSY7McKjL+lluFuhbGrdvc+A2bNFFYv9zDmXdVbvpnkBVLA2J
	RBH8K2VBGAMJ5NuPjY7PTyvpVzTHWkGyrjUMG+c=
X-Google-Smtp-Source: AGHT+IHozIpmaYDn1mddn3gb2fBJ78qSJ2dSjKckBwsZeeEoqin1unmP3kiZlZblOjJyyJTtj2L/P3DZlBBt9HbeX7w=
X-Received: by 2002:a1f:9b4c:0:b0:4ac:462b:7417 with SMTP id
 d73-20020a1f9b4c000000b004ac462b7417mr1810029vke.8.1699451709597; Wed, 08 Nov
 2023 05:55:09 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoWo6-beEPMM0eVkrMzqR+mA0bwPdw6w9dthVhcCk+06DA@mail.gmail.com>
 <CAJdd5Gaf_kGS2r_KJECj5coBwn7qUFncFnvNOVTGWEQf+OUMCA@mail.gmail.com>
In-Reply-To: <CAJdd5Gaf_kGS2r_KJECj5coBwn7qUFncFnvNOVTGWEQf+OUMCA@mail.gmail.com>
From: Samuli Piippo <samuli.piippo@gmail.com>
Date: Wed, 8 Nov 2023 15:54:58 +0200
Message-ID: <CABXoSoUMpgAG+E0bq5tCs2khtKavi12PGOvDEPUM6r3tO89yYg@mail.gmail.com>
Subject: Re: [meta-mingw] patches for meta-openembedded recipes
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000076ab600609a46fe4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 13:55:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61638

--00000000000076ab600609a46fe4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This would be one (upstreamed) patch and append for SYSROOT_DIRS

diff --git a/recipes-devtools/abseil-cpp/abseil-cpp_git.bbappend
b/recipes-devtools/abseil-cpp/abseil-cpp_git.bbappend
new file mode 100644
index 0000000..eedde36
--- /dev/null
+++ b/recipes-devtools/abseil-cpp/abseil-cpp_git.bbappend
@@ -0,0 +1,5 @@
+FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
+
+SRC_URI:append:class-nativesdk:mingw32 =3D "
file://0001-Add-workaround-for-MinGW64-build-failure.patch"
+
+SYSROOT_DIRS:append:class-nativesdk:mingw32 =3D "${bindir}"

I can push this to meta-openembedded for their consideration.

-samuli

On Wed, 8 Nov 2023 at 15:41, Joshua Watt <jpewhacker@gmail.com> wrote:

> Depends on what the fix looks like. Most likely meta-openembedded though
>
> On Wed, Nov 8, 2023, 1:57=E2=80=AFAM Samuli Piippo <samuli.piippo@gmail.c=
om>
> wrote:
>
>> Hi,
>>
>> There is a mingw build problem with abseil-cpp recipe from
>> meta-openembedded layer (master/nanbield). meta-mingw declares dependenc=
y
>> only to oe-core, so the question is that should fixes be pushed to
>> meta-mingw layer or directly to meta-openembedded?
>>
>> -samuli
>>
>

--00000000000076ab600609a46fe4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This would be one (upstreamed) patch and append for S=
YSROOT_DIRS</div><div><br></div><div><span style=3D"font-family:monospace">=
<span style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,2=
55,255)">diff --git a/recipes-devtools/abseil-cpp/abseil-cpp_git.bbappend b=
/recipes-devtools/abseil-cpp/abseil-cpp_git.bbappend</span><span style=3D"c=
olor:rgb(0,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"font-weight:bold;color:rgb(0,0,0);background-colo=
r:rgb(255,255,255)">new file mode 100644</span><span style=3D"color:rgb(0,0=
,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"font-weight:bold;color:rgb(0,0,0);background-colo=
r:rgb(255,255,255)">index 0000000..eedde36</span><span style=3D"color:rgb(0=
,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"font-weight:bold;color:rgb(0,0,0);background-colo=
r:rgb(255,255,255)">--- /dev/null</span><span style=3D"color:rgb(0,0,0);bac=
kground-color:rgb(255,255,255)">
</span><br><span style=3D"font-weight:bold;color:rgb(0,0,0);background-colo=
r:rgb(255,255,255)">+++ b/recipes-devtools/abseil-cpp/abseil-cpp_git.bbappe=
nd</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>
</span><br><span style=3D"color:rgb(24,178,178);background-color:rgb(255,25=
5,255)">@@ -0,0 +1,5 @@</span><span style=3D"color:rgb(0,0,0);background-co=
lor:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(24,178,24);background-color:rgb(255,255=
,255)">+FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot;</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(24,178,24);background-color:rgb(255,255=
,255)">+</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">
</span><br><span style=3D"color:rgb(24,178,24);background-color:rgb(255,255=
,255)">+SRC_URI:append:class-nativesdk:mingw32 =3D &quot; file://0001-Add-w=
orkaround-for-MinGW64-build-failure.patch&quot;</span><span style=3D"color:=
rgb(0,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(24,178,24);background-color:rgb(255,255=
,255)">+</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">
</span><br><span style=3D"color:rgb(24,178,24);background-color:rgb(255,255=
,255)">+SYSROOT_DIRS:append:class-nativesdk:mingw32 =3D &quot;${bindir}&quo=
t;</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">
</span><br></span></div><div>I can push this to meta-openembedded for their=
 consideration.</div><div><br></div><div>-samuli<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 8 Nov 202=
3 at 15:41, Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhac=
ker@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"auto"><div>Depends on what the fix looks like. Mos=
t likely meta-openembedded though<br><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Wed, Nov 8, 2023, 1:57=E2=80=AFAM Samuli =
Piippo &lt;<a href=3D"mailto:samuli.piippo@gmail.com" target=3D"_blank">sam=
uli.piippo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Ther=
e is a mingw build problem with abseil-cpp recipe from meta-openembedded la=
yer (master/nanbield). meta-mingw declares dependency only to oe-core, so t=
he question is that should fixes be pushed to meta-mingw layer or directly =
to meta-openembedded?<br></div><div><br></div><div>-samuli<br></div></div>
</blockquote></div></div></div>
</blockquote></div>

--00000000000076ab600609a46fe4--

