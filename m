Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DAC2C433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 15:30:54 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.19069.1668699050164834510
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 07:30:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i7xmtK/6;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id s8so3360381lfc.8
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 07:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0Q52EaxUEc+8ROhZJ19ORtcatDF2emUghsXCf25reYU=;
        b=i7xmtK/6oqBJrEQMMXNIZE5vNFB0mHaPnRftWCxRou5IJFg0t395t2wBdCfDMDA+OE
         IQ++pf1Aa7Qi30KtDW483jPneiNBJvrWSwLDzE8u+VJubbm5mwFndjpjejq9CcC5c0Zb
         BDR+hQxIijIiQDMtuNi8YC3gwU2Alivli1sevtg9GGaCYUA9pHE7rqRCybgDxdBJT2a3
         hphsT0DyoJ+swDTAsn5gEuYVGKIr+sEbFUozLfiFacVMwSlNWm4nLMP5dNlUmtVsPCIH
         d1jwqaoGfNIxP0qfNuFF/QGxOffZkTXReCJSITuGnQ8jTX4TmkxVyJTMr1I0ggFAMsUc
         4n8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Q52EaxUEc+8ROhZJ19ORtcatDF2emUghsXCf25reYU=;
        b=vpduOFG64IoY643Z03gYmnQvLh4hQGCMZRUGA4Qafdpppdlm7y4NRzNSKw8WcHkkIN
         yq+//jMNEW3kxqyWsYkWM1UAY+5NA8F+7bd65/TOjYe1XAoNFFoajYwFRJnqcDHHXUrg
         k+C3Srh+RG5Gd46nXVmm2oS7NdwThh0QI++h1XoSYMfPi5Moa0L0fSP+0Hyul7t+tIx4
         oo+jOwuTnRePDwBubAu4upwMM4S+CRrBnfFwJVV5kv+N10whkX+0kc+m58WQxc0CbUnt
         lMldWh9IdFSxaWlwbBJ2sB7d9ENuATZIeenALySoCsM/FIBQR1byb2xhWIBVuFmImRiA
         QZxQ==
X-Gm-Message-State: ANoB5plkXn6yDFFjAGwGPcZjsb5uYOm1JmWZeMD6oOtoSJYrDlPfZg33
	tEIAptG0PQ4nCMtShr0f2mBhXgxnuC/I2n/6J0s=
X-Google-Smtp-Source: AA0mqf5KnKATGmR2euLi8EA/h3Rdb1Hg2j+LE6mk3LD8eH03onXeGElHNFLij/D3WIWz/7WrSjd2+3fdx9bInb3SuNY=
X-Received: by 2002:a05:6512:746:b0:4a2:4f74:f47c with SMTP id
 c6-20020a056512074600b004a24f74f47cmr1023087lfs.367.1668699048155; Thu, 17
 Nov 2022 07:30:48 -0800 (PST)
MIME-Version: 1.0
References: <CAKO9uzrV9XpnQnQ4irHwfr9OQehjJ=dXndVo8cijyGLy3_yViw@mail.gmail.com>
In-Reply-To: <CAKO9uzrV9XpnQnQ4irHwfr9OQehjJ=dXndVo8cijyGLy3_yViw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Nov 2022 16:30:36 +0100
Message-ID: <CANNYZj9ARdLLUs2LEzFYp5i-Mr88bOtX=YQ+1gvWJp0tGuGTjg@mail.gmail.com>
Subject: Re: [yocto] Image dependent variables/files in included recipes
To: Maik Vermeulen <maik.vermeulen@lightyear.one>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000009dc605edac461a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 15:30:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58587

--000000000000009dc605edac461a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You have to define an additional distribution I'm afraid. It can share
almost everything with the existing distro, but set PREFERRED_PROVIDER
differently.

Alex

On Thu, 17 Nov 2022 at 16:22, Maik Vermeulen <maik.vermeulen@lightyear.one>
wrote:

> Hi,
>
> Depending on the image that's being built, e.g. development vs.
> production, we would like to be able to include different user
> passwords and firewall settings.
>
> We know this can be achieved by just having two different recipes that do
> the same thing, but with different variables or included files. However, =
we
> were wondering if there is a neater way?
>
> We saw this post:
> https://www.yoctoproject.org/pipermail/yocto/2018-June/041378.html
> which seems to do what we want, because one recipe can install
> recipe-development, and the other can install recipe-production, while th=
e
> recipe itself can then implement what needs to happen for either.
> However, other recipes included in the images can also depend on recipe,
> and they shouldn't depend on one specifically. They should accept that
> either recipe-development or recipe-production is included. Currently we
> see that both the generic recipe and the specific recipe used by the imag=
e
> are built and overwrite each other.
>
> What would be a neat way to achieve two variants of a recipe, and having
> different contents and settings in them?
> Or, can we solve that other included recipes depend on one of the
> variants, instead of on the generic one.
>
> Kind regards,
>
> Maik Vermeulen
>
> Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one=
/>
> +31 6 16 82 73 79 <+31616827379>
>
> [image:
> https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotl=
ightroles&utm_medium=3Demail#vacancies]
> <https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspot=
lightroles&utm_medium=3Demail#vacancies>
>
>
>
>
> Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
> www.lightyear.one <https://lightyear.one/>
> <https://www.linkedin.com/company/lightyear.one/>
>
> This email may contain information which is privileged and/or
> confidential. If you received this e-mail in error, please notify us
> immediately by e-mail and delete the email without copying or disclosing
> its contents to any other person. Lightyear is a trade name of Atlas
> Technologies B.V. and is registered at the Dutch Chamber of Commerce unde=
r
> number 67264298.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58586):
> https://lists.yoctoproject.org/g/yocto/message/58586
> Mute This Topic: https://lists.yoctoproject.org/mt/95091628/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000009dc605edac461a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You have to define an additional distribution I&#39;m=
 afraid. It can share almost everything with the existing distro, but set P=
REFERRED_PROVIDER differently.<br></div><div><br></div><div>Alex<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, 17 Nov 2022 at 16:22, Maik Vermeulen &lt;maik.vermeulen@lightyear.on=
e&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hi,<div><br></div><div>Depending on the image that&#39;s bein=
g built, e.g. development vs. production, we would like to be able to inclu=
de different user passwords=C2=A0and firewall settings.</div><div><br></div=
><div>We know this can be achieved=C2=A0by just having two different recipe=
s that do the same=C2=A0thing, but with different variables or included fil=
es. However, we were wondering if there is a neater way?</div><div><br></di=
v><div>We saw this post:</div><div><a href=3D"https://www.yoctoproject.org/=
pipermail/yocto/2018-June/041378.html" target=3D"_blank">https://www.yoctop=
roject.org/pipermail/yocto/2018-June/041378.html</a></div><div>which seems =
to do what we want, because one recipe can install recipe-development, and =
the other can install recipe-production, while the recipe itself can then i=
mplement what needs to happen for either.</div><div>However, other recipes =
included in the images can also depend on recipe, and they=C2=A0shouldn&#39=
;t depend on one specifically. They should accept that either=C2=A0recipe-d=
evelopment or recipe-production is included. Currently we see that both the=
 generic recipe and the specific recipe used by the image are built and ove=
rwrite each other.</div><div><br></div><div>What would be a neat way to ach=
ieve two variants of a recipe, and having different contents and settings i=
n them?</div><div>Or, can we solve that other included recipes depend on on=
e of the variants, instead of on the generic one.</div><div><div><br></div>=
<div>Kind regards,<br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr">=
<br><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,san=
s-serif;font-size:16px">Maik Vermeulen</span></div><br><div><span style=3D"=
color:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px">=
Embedded Software Engineer=E2=80=82=E2=80=94=E2=80=82<a href=3D"https://www=
.lightyear.one/" rel=3D"noopener noreferrer" style=3D"color:rgb(51,206,224)=
" target=3D"_blank">Lightyear</a></span></div><div><span style=3D"color:rgb=
(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px"><a href=
=3D"tel:+31616827379" rel=3D"noopener" style=3D"color:rgb(29,29,27)" target=
=3D"_blank">+31 6 16 82 73 79</a></span></div></div></div></div></div></div=
></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58586): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58586" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58586</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95091628/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95091628/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000009dc605edac461a--

