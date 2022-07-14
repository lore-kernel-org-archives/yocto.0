Return-Path: <arasilinux1086@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71300C43334
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 04:43:19 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web12.4089.1657773789728810743
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 21:43:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=V5ujoFef;
 spf=pass (domain: gmail.com, ip: 209.85.218.54,
 mailfrom: arasilinux1086@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id b11so1253108eju.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 21:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gvPiVs/xhYlzgSaDD7W5HSO9YXXAurQ1Ot16ue5bIXw=;
        b=V5ujoFefavotKLmg/jqPb3b+Dh5YJnRfeluHMNDN5PlxPS5tEtG1nOAXScJZmPWOgl
         EXiT0Ma5H2GkRfONzAKHJFpXU/le4Rbc8MmL2I669d8/X5PvMxHcQvc8n2OtkxzmL2AI
         5wwYCeb1PxWP+0S4yht7VO5WkSGgDnzCeqomF/P5hKBqYa8gSDBYmkHRxmQvzTsbGX3s
         mBFFBt/PPtdtciAogERl71nGz2dlicGuBVpEA9Jfua0dP0ifDUIGeCo7HIHtasbxhjaS
         ETyqiK2koxQD66VDicy/KwTln1uIu2WfoCdwdsspGaNzj1ty2rE87pAdUbLt1DcETht9
         +8og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gvPiVs/xhYlzgSaDD7W5HSO9YXXAurQ1Ot16ue5bIXw=;
        b=JpykISepjIDneTrczbiUaLV3OZxcd9+dlVnJixxRRLqtast9+zdk4v7IAiMFY6vhjl
         u4MUxBWUhCOVAuDzPR9XXNxM28s7uN7KFSwWeIt7aa0X7vDWsLgvWBNwi/ZMNkjF9h1h
         ynpNQFGLuD1usoTB5HqNHU2kM1YZbuteWMRd+qCzwDhnqyZtTdnZrDcwUUAmaAjTqZJ5
         m4sPA+59eWjmHFSl5yelLPTYslctl/4+ghV1Skjm5xnlqWVJ7TUGBr7NZc5MpuTkr/bV
         chLMVwUzScMDm0vzZcHN4+zdwB8OVzaP/EO6zeNFT1KTuFk1294MH5EViB4S/i0PUV7D
         vPTw==
X-Gm-Message-State: AJIora+5FQ962hn6uWdc0DksTZSEEF/9aX86lclvKRx7rrp6usTjgPmd
	/SdXjObdLmaBWJrDYzeZorBkqCd4hWiFfFCQaek=
X-Google-Smtp-Source: 
 AGRyM1vvlEO9qW+BFI6/grDf1MIewSN4djx/JuHWu/8OkqYiam5Kl/2JmNgkZ34i0z6p8jOqGAiUtF0jjEfBmK876AI=
X-Received: by 2002:a17:907:a40f:b0:72b:64ee:5b2f with SMTP id
 sg15-20020a170907a40f00b0072b64ee5b2fmr7197142ejc.268.1657773787711; Wed, 13
 Jul 2022 21:43:07 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM9PR10MB4403B8BF23EC7571D7F2E5C7ACB89@AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM>
 <CAFf=Mr2Sjxi9e1oLBo9Q97hS3R_0KAk1vGx63af4bp6UBQ6BMA@mail.gmail.com>
 <YrwISJ1PCeqQzu6I@mail.local>
In-Reply-To: <YrwISJ1PCeqQzu6I@mail.local>
From: Senthamilarasi mathiyan <arasilinux1086@gmail.com>
Date: Thu, 14 Jul 2022 10:12:52 +0530
Message-ID: 
 <CAFf=Mr3Xa_taxkj5Uvrvctdp19LGEMtW7fU=_PDvO7YdVpCUYQ@mail.gmail.com>
Subject: Re: [yocto] yocto support
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bc0cab05e3bc89a0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 04:43:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57530

--000000000000bc0cab05e3bc89a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexandre,

I am not pushing any changes to open source kernel. I want to enable few
driver module in the kernel. That configuration want to have in file/
folder.

My changes.
Kern

On Wed, 29 Jun, 2022, 1:37 pm Alexandre Belloni, <
alexandre.belloni@bootlin.com> wrote:

> On 28/06/2022 17:21:22+0530, Senthamilarasi mathiyan wrote:
> > Dear All
> >
> > Good Morning!
> >
> > In my project, I am trying to create one custom image recipe in my yoct=
o
> > build system.
> >
> >  The reason of creating custom image is  -> having few specific
> > configurations for kernel and some specific driver Makefile changes to
> > enable coverage.
> >
> >  I cannot go with .bbappend file, because we are maintaining a
> > recipes-append folder in our meta-layer which is common for all the
> > production build image recipes.
> >
> >  My change is very specific it should not come as part of normal build
> > images because it will affect the production build.
> >
> >  My use case:
> >
> > 1. I have one .cfg file for kernel - which has kernel specific
> > configurations.
> >
> > 2. I have Makefile changes for driver file.
> >
> >  I should bring the above changes to kernel and  driver Makefile during
> > build time without using .bbappend file.
> >
> >  I want to create a custom image recipe with the specific changes.
> >
> >  For example : custom_image.bb =3D( This recipes should have
> > core_image_minimal.bb + my specific changes)
> >
> >  When i build bitbake custom_image.bb,  it should  build  with
> > core_image_minimal.bb + my specific changes .
> >
> > Other images recipes also should not affect by this changes.
> >
> > My humble request. Can anyone please support how to proceed?
> >
>
> You can't, a recipe can't affect any other recipe. When building
> custom_image.bb, it is too late to introduce any kernel change.
>
> > Kindly share your suggestions.
> >
> >  *Regards*
> >
> > *Senthamilarasi. M*
> >
> > =E2=80=8B
>
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#57401):
> https://lists.yoctoproject.org/g/yocto/message/57401
> > Mute This Topic: https://lists.yoctoproject.org/mt/92041991/3617179
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alexandre.belloni@bootlin.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> Alexandre Belloni, co-owner and COO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>

--000000000000bc0cab05e3bc89a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Alexandre,=C2=A0<div dir=3D"auto"><br=
></div><div dir=3D"auto">I am not pushing any changes to open source kernel=
. I want to enable few driver module in the kernel. That configuration want=
 to have in file/ folder.=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">My changes.=C2=A0</div><div dir=3D"auto">Kern</div></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
29 Jun, 2022, 1:37 pm Alexandre Belloni, &lt;<a href=3D"mailto:alexandre.be=
lloni@bootlin.com" target=3D"_blank">alexandre.belloni@bootlin.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 28/06/=
2022 17:21:22+0530, Senthamilarasi mathiyan wrote:<br>
&gt; Dear All<br>
&gt; <br>
&gt; Good Morning!<br>
&gt; <br>
&gt; In my project, I am trying to create one custom image recipe in my yoc=
to<br>
&gt; build system.<br>
&gt; <br>
&gt;=C2=A0 The reason of creating custom image is=C2=A0 -&gt; having few sp=
ecific<br>
&gt; configurations for kernel and some specific driver Makefile changes to=
<br>
&gt; enable coverage.<br>
&gt; <br>
&gt;=C2=A0 I cannot go with .bbappend file, because we are maintaining a<br=
>
&gt; recipes-append folder in our meta-layer which is common for all the<br=
>
&gt; production build image recipes.<br>
&gt; <br>
&gt;=C2=A0 My change is very specific it should not come as part of normal =
build<br>
&gt; images because it will affect the production build.<br>
&gt; <br>
&gt;=C2=A0 My use case:<br>
&gt; <br>
&gt; 1. I have one .cfg file for kernel - which has kernel specific<br>
&gt; configurations.<br>
&gt; <br>
&gt; 2. I have Makefile changes for driver file.<br>
&gt; <br>
&gt;=C2=A0 I should bring the above changes to kernel and=C2=A0 driver Make=
file during<br>
&gt; build time without using .bbappend file.<br>
&gt; <br>
&gt;=C2=A0 I want to create a custom image recipe with the specific changes=
.<br>
&gt; <br>
&gt;=C2=A0 For example : <a href=3D"http://custom_image.bb" rel=3D"noreferr=
er noreferrer" target=3D"_blank">custom_image.bb</a> =3D( This recipes shou=
ld have<br>
&gt; <a href=3D"http://core_image_minimal.bb" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">core_image_minimal.bb</a> + my specific changes)<br>
&gt; <br>
&gt;=C2=A0 When i build bitbake <a href=3D"http://custom_image.bb" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">custom_image.bb</a>,=C2=A0 it shoul=
d=C2=A0 build=C2=A0 with<br>
&gt; <a href=3D"http://core_image_minimal.bb" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">core_image_minimal.bb</a> + my specific changes .<br>
&gt; <br>
&gt; Other images recipes also should not affect by this changes.<br>
&gt; <br>
&gt; My humble request. Can anyone please support how to proceed?<br>
&gt; <br>
<br>
You can&#39;t, a recipe can&#39;t affect any other recipe. When building<br=
>
<a href=3D"http://custom_image.bb" rel=3D"noreferrer noreferrer" target=3D"=
_blank">custom_image.bb</a>, it is too late to introduce any kernel change.=
<br>
<br>
&gt; Kindly share your suggestions.<br>
&gt; <br>
&gt;=C2=A0 *Regards*<br>
&gt; <br>
&gt; *Senthamilarasi. M*<br>
&gt; <br>
&gt; =E2=80=8B<br>
<br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#57401): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/57401" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/57401</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92041991=
/3617179" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/92041991/3617179</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" r=
el=3D"noreferrer" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:alexandre.belloni@bootlin.com" rel=
=3D"noreferrer" target=3D"_blank">alexandre.belloni@bootlin.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
<br>
<br>
-- <br>
Alexandre Belloni, co-owner and COO, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://bootlin.com</a><br>
</blockquote></div>

--000000000000bc0cab05e3bc89a0--

