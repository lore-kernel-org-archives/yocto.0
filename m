Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F03ADEB64D8
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 05:48:42 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.5053.1686721714324372327
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 22:48:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=GcKT4GM6;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-30e3caa6aa7so6260586f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 22:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686721713; x=1689313713;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rN5TafFdifMWKTIUyONXIqCaggV/J834g14SJ5gOAqE=;
        b=GcKT4GM61mBx8PS6vSWHhQjuD97Hx2dB8cN51Y61TzFvivdNggjcZoN10SJmHI3r5b
         CCkqMQyYXs0C+3LvE+US9gUN22/tdZvWyqCW4cXO1z0mbE1kRF36O7zt3n1nG47Rt1z9
         +RglYu8f3Xw4m4cxJ07S6K7ExvxogZ2zuce0lSf1o597uhbBYR4CpjCYrNmr2PD9lu0I
         GWmbFNHu6obXmeKDtlLUzUszlGxqt3wH3ikdaMyMqdf0g6V7YbcTYCJ6wUmKRF00O8T4
         x4SI+hRJa5amtgvmajna2YP/S8+oX/kY3wQ7jt7xenqiszG2GYpB2UglbQvNSJK0rD9g
         1Jug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686721713; x=1689313713;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rN5TafFdifMWKTIUyONXIqCaggV/J834g14SJ5gOAqE=;
        b=lZcDigL8TXxONt177p820MdwBAsgamln9rzXX52mICqRGKBtsFjNywOn182R1f8GS7
         c0IaoKqk7T7RcxOzwXIP1ggE+dwQYZSaWHoJ4uiBXdTlmK/8xQCRghFPOiwIOVRQdion
         Qgzo2ICc8Sbe+/UTFlCMydqwlQrjgstaMJdMjI03kSu89ZSspuY0/LTuVuY9nSQznCC/
         gZroQsWZeUe4mqWpavFNXY5+yTY4pPfMPgAF3l/8QS5KA2GipStT7EueJt0Hw1Vi/4Cm
         8rFHmy3dEqij6yfBKMglMYRsNxQ6gO2bgwcnakQt9LdmBblw5C2Zj7R4Sn09uIcnECQv
         Xe5g==
X-Gm-Message-State: AC+VfDyB6buTm/sNtapvFaoBCXuwTqDVaGLoxvSi2TTArYcWgkQaQ7Ih
	sMFVAHLeMBBhb1i73FPH51YXzUGkIkaVHuoTBFs=
X-Google-Smtp-Source: ACHHUZ7i1kzP5YZ8UdVYJpFBtWWk76TNVi23RXyD29KKVMHGKbmbtv5agKRN/iEP/jaS59B/82EbcoyeCilfqfJFSMo=
X-Received: by 2002:adf:ea02:0:b0:30f:c801:aa73 with SMTP id
 q2-20020adfea02000000b0030fc801aa73mr4710086wrm.20.1686721712306; Tue, 13 Jun
 2023 22:48:32 -0700 (PDT)
MIME-Version: 1.0
References: <hGgt.1686719577548533695.bGn9@lists.yoctoproject.org>
In-Reply-To: <hGgt.1686719577548533695.bGn9@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 14 Jun 2023 07:48:19 +0200
Message-ID: <CA+chaQc8Y2G27dq+6aV+bGmqWG060TFG4sxv0iQbTy9VE8J_=g@mail.gmail.com>
Subject: Re: [yocto] Can't access https://www.yoctoproject.org/connectivity.html
 in China mainland.
To: mwen@ambarella.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007f41d505fe10809f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 05:48:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60284

--0000000000007f41d505fe10809f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The error message says what you should do:
CONNECTIVITY_CHECK_URIS =3D "https://www.example.com/"
in local.conf (or any other URL which is accessible in China mainland).

On Wed, Jun 14, 2023 at 7:12=E2=80=AFAM <mwen@ambarella.com> wrote:

> Hi,
>
> Since yesterday, we can't access
> https://www.yoctoproject.org/connectivity.html in China mainland. As a
> result, we can't build Yocto successfully with below Sanity check error.
> It will be appreciated if you have any idea about this. Thanks~~
>
> *ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.*
>
> *    Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).*
>
> *    Following is the list of potential problems / advisories:*
>
>
>
> *    Fetcher failure for URL: 'https://yoctoproject.org/connectivity.html
> <https://yoctoproject.org/connectivity.html>'. URL *
> *https://yoctoproject.org/connectivity.html*
> <https://yoctoproject.org/connectivity.html>* doesn't work.*
>
> *    Please ensure your host's network is configured correctly.*
>
> *    Please ensure CONNECTIVITY_CHECK_URIS is correct and specified URIs
> are available.*
>
> *    If your ISP or network is blocking the above URL,*
>
> *    try with another domain name, for example by setting:*
>
> *    CONNECTIVITY_CHECK_URIS =3D "**https://www.example.com/*
> <https://www.example.com/>*"    You could also set BB_NO_NETWORK =3D "1" =
to
> disable network*
>
> *    access if all required sources are on local disk.*
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60283):
> https://lists.yoctoproject.org/g/yocto/message/60283
> Mute This Topic: https://lists.yoctoproject.org/mt/99522071/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000007f41d505fe10809f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The error message says what you should do:</div><div>=
CONNECTIVITY_CHECK_URIS =3D &quot;<a href=3D"https://www.example.com/">http=
s://www.example.com/</a>&quot;<br></div><div>in local.conf (or any other UR=
L which is accessible in China mainland).</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 14, 2023 at 7:12=E2=80=
=AFAM &lt;<a href=3D"mailto:mwen@ambarella.com">mwen@ambarella.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br><b=
r>Since yesterday, we can&#39;t access=C2=A0<a href=3D"https://www.yoctopro=
ject.org/connectivity.html" target=3D"_blank">https://www.yoctoproject.org/=
connectivity.html</a> in China mainland. As a result, we can&#39;t build Yo=
cto successfully with below Sanity check error.<br>It will be appreciated i=
f you have any idea about this. Thanks~~<br><br>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">ERROR:=C2=A0=
 OE-core&#39;s config sanity checker detected a potential misconfiguration.=
</span></strong></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 Either fix the cause of this error or at your own risk disable the c=
hecker (see sanity.conf).</span></strong></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 Following is the list of potential problems / advisories:</span></st=
rong></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0</span=
></strong></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 Fetcher failure for URL: &#39;<a href=3D"https://yoctoproject.org/co=
nnectivity.html" target=3D"_blank">https://yoctoproject.org/connectivity.ht=
ml</a>&#39;. URL </span></strong><a href=3D"https://yoctoproject.org/connec=
tivity.html" target=3D"_blank"><strong><span style=3D"font-size:10pt;font-f=
amily:&quot;Times New Roman&quot;,serif">https://yoctoproject.org/connectiv=
ity.html</span></strong></a><strong><span style=3D"font-size:10pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)"> doesn&#39;t wor=
k.</span></strong></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 Please ensure your host&#39;s network is configured correctly.</span=
></strong></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 Please ensure CONNECTIVITY_CHECK_URIS is correct and specified URIs =
are available.</span></strong></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 If your ISP or network is blocking the above URL,</span></strong></p=
>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 try with another domain name, for example by setting:</span></strong=
></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 CONNECTIVITY_CHECK_URIS =3D &quot;</span></strong><a href=3D"https:/=
/www.example.com/" target=3D"_blank"><strong><span style=3D"font-size:10pt;=
font-family:&quot;Times New Roman&quot;,serif">https://www.example.com/</sp=
an></strong></a><strong><span style=3D"font-size:10pt;font-family:&quot;Tim=
es New Roman&quot;,serif;color:rgb(0,112,192)">&quot;=C2=A0=C2=A0=C2=A0 You=
 could also set BB_NO_NETWORK =3D &quot;1&quot; to disable network</span></=
strong></p>
<p style=3D"text-indent:11.4pt"><strong><span style=3D"font-size:10pt;font-=
family:&quot;Times New Roman&quot;,serif;color:rgb(0,112,192)">=C2=A0=C2=A0=
=C2=A0 access if all required sources are on local disk.</span></strong></p=
>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60283): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60283" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60283</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99522071/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99522071/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000007f41d505fe10809f--

