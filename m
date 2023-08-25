Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9E6C88CB2
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 01:53:22 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.4723.1692928397821477528
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 18:53:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=DXUEmnWl;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5924093a9b2so5639667b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 18:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692928397; x=1693533197;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QNdOeXH7u83oju+uVRdgy9rAUpX32kwqMjVcqIhWNk8=;
        b=DXUEmnWl7jY3z9sL5tTNtZNnmtfP7YABUjugNPbrSG2Usb3Dv1dnRC1o5OHnyTER25
         xar3INI9zWgD/B6gvkii/onJJwtYNl3Pk2ZIn3AdPBhaJZJk9c0A0uDlVPVT0GJWGYt/
         g+1bDiAQz2Fb1ZcL0wl3wrV464wA5pBdUEakL5lc7IL1UtdIN4mvbgnRVXNnmOQ9j8Ae
         Uu4V7GY2dwFf8Lem08TJ4fAZl4cUibIIBAJ6tlllJIOSbTrdVS76+8QR9mBTmEdQUOYF
         CF3gM79fmjMvchV7Vz6YAovtSamqTgQT6mbb8IHS//606IaJgNPCkx3LBw4ji68vZWQ3
         Oslw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692928397; x=1693533197;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QNdOeXH7u83oju+uVRdgy9rAUpX32kwqMjVcqIhWNk8=;
        b=AmEax5E3Csd1EKTEt8oxX84WFGviJaa/CUVm/htlSxalJWZdUlBlVZ8at5YsXZ28Pb
         P9XRqJtIVCyk6VSAfYw2A3UjzS3JgoURbaHJ4q1CXft+sxQP+sXktmLs2rIpbobVSOAS
         1sCYmpCR43CxuN2GsInERyKMkX5mcIMscIAxljKIW6sFXN3Arfmdpbg5I4rQdzKEGXwg
         aYBVtPwRBgK5WVQlc1ykFlIyeV5K7k5pHhJmCAuC7HJSj7txJhUHdEvXnC9peWyYbZqU
         rPrhQ38VDOVaU70XWTErBXsusFKB6WxFFkwNt2oMf0wO5dmfXaRItZ5eICyzdP8w82rV
         XQqQ==
X-Gm-Message-State: AOJu0YwCr9joUvv6GF02TPhnSx3wFiMTE9v2oV0DN4kiBx/iru2iB+WM
	uMAzz/OfmPginLIn0vQWthEuYouT6eyo/PRGy16c3D7cdDU=
X-Google-Smtp-Source: AGHT+IFbkhYP0CKmDBvxbvd2T9P/lWzNB+XzNdIzQx6pno9Ixlptl2bu4cD0qfSx+MZX9AMf0/UW8CUSiyjfu6QMx5E=
X-Received: by 2002:a0d:c4c4:0:b0:57a:f72:ebf8 with SMTP id
 g187-20020a0dc4c4000000b0057a0f72ebf8mr17925457ywd.28.1692928396997; Thu, 24
 Aug 2023 18:53:16 -0700 (PDT)
MIME-Version: 1.0
References: <177E7CCD9A7052D8.23833@lists.yoctoproject.org>
In-Reply-To: <177E7CCD9A7052D8.23833@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 24 Aug 2023 18:53:05 -0700
Message-ID: <CANx9H-Au3cJC=rTBurCfc4NSgLd-JkgJrAK78VFdsysRL_Df_Q@mail.gmail.com>
Subject: Re: [yocto] [layerindex-web][PATCH 1/2] build(deps): bump pillow from
 9.2.0 to 9.3.0
To: ticotimo@gmail.com
Cc: yocto@lists.yoctoproject.org, Tim Orling <tim.orling@konsulko.com>
Content-Type: multipart/alternative; boundary="000000000000bbba080603b59b3f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 01:53:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60887

--000000000000bbba080603b59b3f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Staging on top of 9.2.0 bump by Chee Yang Lee
https://patchwork.yoctoproject.org/project/yocto/patch/20230112060706.27009=
68-1-chee.yang.lee@intel.com/

On Thu, Aug 24, 2023 at 6:42=E2=80=AFPM Tim Orling via lists.yoctoproject.o=
rg
<ticotimo=3Dgmail.com@lists.yoctoproject.org> wrote:

> From: "dependabot[bot]" <49699333+dependabot[bot]@users.noreply.github.co=
m
> >
>
> Bumps [pillow](https://github.com/python-pillow/Pillow) from 9.2.0 to
> 9.3.0.
> - [Release notes](https://github.com/python-pillow/Pillow/releases)
> - [Changelog](
> https://github.com/python-pillow/Pillow/blob/main/CHANGES.rst)
> - [Commits](https://github.com/python-pillow/Pillow/compare/9.2.0...9.3.0=
)
>
> ---
> updated-dependencies:
> - dependency-name: pillow
>   dependency-type: direct:production
> ...
>
> Signed-off-by: dependabot[bot] <support@github.com>
> Signed-off-by: Tim Orling <tim.orling@konsulko.com>
> ---
>  requirements.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/requirements.txt b/requirements.txt
> index 1f4975e..85f6520 100644
> --- a/requirements.txt
> +++ b/requirements.txt
> @@ -19,7 +19,7 @@ gitdb=3D=3D4.0.9
>  GitPython=3D=3D3.1.30
>  kombu=3D=3D5.2.3
>  mysqlclient=3D=3D2.1.0
> -Pillow=3D=3D9.2.0
> +Pillow=3D=3D9.3.0
>  pytz=3D=3D2021.3
>  six=3D=3D1.16.0
>  smmap=3D=3D5.0.0
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60884):
> https://lists.yoctoproject.org/g/yocto/message/60884
> Mute This Topic: https://lists.yoctoproject.org/mt/100948414/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000bbba080603b59b3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Staging on top of 9.2.0 bump by Chee Yang Lee<div><a href=
=3D"https://patchwork.yoctoproject.org/project/yocto/patch/20230112060706.2=
700968-1-chee.yang.lee@intel.com/">https://patchwork.yoctoproject.org/proje=
ct/yocto/patch/20230112060706.2700968-1-chee.yang.lee@intel.com/</a><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Aug 24, 2023 at 6:42=E2=80=AFPM Tim Orling via <a href=3D"http:/=
/lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ticotimo=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">From: &quot;dependabot[bot]&quot; &lt;49699333+dependabot[bot]@<a href=3D=
"http://users.noreply.github.com" rel=3D"noreferrer" target=3D"_blank">user=
s.noreply.github.com</a>&gt;<br>
<br>
Bumps [pillow](<a href=3D"https://github.com/python-pillow/Pillow" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/python-pillow/Pillow</a>) f=
rom 9.2.0 to 9.3.0.<br>
- [Release notes](<a href=3D"https://github.com/python-pillow/Pillow/releas=
es" rel=3D"noreferrer" target=3D"_blank">https://github.com/python-pillow/P=
illow/releases</a>)<br>
- [Changelog](<a href=3D"https://github.com/python-pillow/Pillow/blob/main/=
CHANGES.rst" rel=3D"noreferrer" target=3D"_blank">https://github.com/python=
-pillow/Pillow/blob/main/CHANGES.rst</a>)<br>
- [Commits](<a href=3D"https://github.com/python-pillow/Pillow/compare/9.2.=
0...9.3.0" rel=3D"noreferrer" target=3D"_blank">https://github.com/python-p=
illow/Pillow/compare/9.2.0...9.3.0</a>)<br>
<br>
---<br>
updated-dependencies:<br>
- dependency-name: pillow<br>
=C2=A0 dependency-type: direct:production<br>
...<br>
<br>
Signed-off-by: dependabot[bot] &lt;<a href=3D"mailto:support@github.com" ta=
rget=3D"_blank">support@github.com</a>&gt;<br>
Signed-off-by: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" ta=
rget=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
---<br>
=C2=A0requirements.txt | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/requirements.txt b/requirements.txt<br>
index 1f4975e..85f6520 100644<br>
--- a/requirements.txt<br>
+++ b/requirements.txt<br>
@@ -19,7 +19,7 @@ gitdb=3D=3D4.0.9<br>
=C2=A0GitPython=3D=3D3.1.30<br>
=C2=A0kombu=3D=3D5.2.3<br>
=C2=A0mysqlclient=3D=3D2.1.0<br>
-Pillow=3D=3D9.2.0<br>
+Pillow=3D=3D9.3.0<br>
=C2=A0pytz=3D=3D2021.3<br>
=C2=A0six=3D=3D1.16.0<br>
=C2=A0smmap=3D=3D5.0.0<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60884): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60884" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60884</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100948414/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/100948414/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000bbba080603b59b3f--

