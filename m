Return-Path: <arasilinux1086@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91F4C43334
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 04:24:11 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.7572.1656476647854847258
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 21:24:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mMFZ2Snp;
 spf=pass (domain: gmail.com, ip: 209.85.218.46,
 mailfrom: arasilinux1086@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id fi2so29989971ejb.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 21:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4u5ea6PAGpqsvgLnXwqsUTtPAbON7TWgQrqZEMUdWQ4=;
        b=mMFZ2SnpiWJrNrodJ03Hhu810+YtN2tbPsMAmyOwuk7YZfyFfi18ORD/AwVtFyzuUn
         T6ALB7b0ENvY6qCawW5KNVc73zT1lxHsur2oZFGumnRg9pPbyV0m556BAOffUExoqoZl
         a/0yVp4/9mSqDcZdfMs7lHGZXlGEgPJzxq3wl3kkfbYgv+7k/uQN0eG0WOLMCOC2Whd8
         dRuUOnIt5UheP+BrACqITsYpkAzHjYnYxPiBBW22E8RM+j1EJG9KPa8fhA1n97aH9EIY
         3MGEdMexw/KfodF4zBDFyL9B3buCumeivPhRCZq718kq0d8z1+wOaYgKjGvF96gXEh73
         5+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4u5ea6PAGpqsvgLnXwqsUTtPAbON7TWgQrqZEMUdWQ4=;
        b=MXcb3LZ/oRaTxXWzg4XFblMGH1zWnvJHywnk9wYCFbS6tyEmpsQ7+D8M/vbCcvqnwb
         8N2PPnpLO5u4+HBMa9pMcp10e4W3H87ynL1igohKGLtz7WtWGs7eQ1OI9ZdFCLcBjsK1
         qMNUwCCkOTJJsFpLxwbyKUZ8oLeGqKFXAiejgDI8zAYc9WT3ViWxEIKZdWX9q+8VOCeW
         Kzq6eN0YJ499H1plGoIxuva/FeeYl6J4lGvdGn7iRWfahzyxBKa0xXtU2VnCfbzg6e6U
         SC2jfAMkoESyVJapLfLLGe/NAhrS5B0M2jC3SeqnrC5lP2gaMuGlDAdZsG35suOQfrVk
         14+w==
X-Gm-Message-State: AJIora/BWD0wToSpWt6AjsJA6PK4end4Di40bwdRyHafpy0HmzCxFnQn
	mfHeYEXP2oNZ68sM6JBXSGOcPlextNX/2SHbcSg=
X-Google-Smtp-Source: 
 AGRyM1uIGQCqEUchopJIUAxqVM6M8chI8kZZYCjY2ZCDQux2Z7Vlt7PxdVBe0fHpZWZvqDA348Deszq9X2NtO6S9dkE=
X-Received: by 2002:a17:907:6e89:b0:726:e16a:c851 with SMTP id
 sh9-20020a1709076e8900b00726e16ac851mr1302563ejc.507.1656476646150; Tue, 28
 Jun 2022 21:24:06 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM9PR10MB4403B8BF23EC7571D7F2E5C7ACB89@AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM>
 <CAFf=Mr2Sjxi9e1oLBo9Q97hS3R_0KAk1vGx63af4bp6UBQ6BMA@mail.gmail.com>
 <CANNYZj927L02QUQX51x=EjcTWr2YZ9=5Sb+-zk6r50zfiN_9MA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj927L02QUQX51x=EjcTWr2YZ9=5Sb+-zk6r50zfiN_9MA@mail.gmail.com>
From: Senthamilarasi mathiyan <arasilinux1086@gmail.com>
Date: Wed, 29 Jun 2022 09:53:53 +0530
Message-ID: 
 <CAFf=Mr35PW0TgL+fKj9+vB2WLjXtq8JezwQGSoLEb0jB_vJS4w@mail.gmail.com>
Subject: Re: [yocto] yocto support
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000012957105e28e868f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 04:24:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57413

--00000000000012957105e28e868f
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

This is not my private change,so i cannot create my own layer. Without
creating layer and .bbappend file should implement.

Can anyone please support?

Regards
Senthamilarasi. M


On Tue, 28 Jun, 2022, 6:04 pm Alexander Kanavin, <alex.kanavin@gmail.com>
wrote:

> If the change is private to you, then you can make a simple layer and
> make all the needed modifications there. Is this not possible?
>
> Alex
>
> On Tue, 28 Jun 2022 at 13:51, Senthamilarasi mathiyan
> <arasilinux1086@gmail.com> wrote:
> >
> > Dear All
> >
> > Good Morning!
> >
> > In my project, I am trying to create one custom image recipe in my yocto
> build system.
> >
> >  The reason of creating custom image is  -> having few specific
> configurations for kernel and some specific driver Makefile changes to
> enable coverage.
> >
> >  I cannot go with .bbappend file, because we are maintaining a
> recipes-append folder in our meta-layer which is common for all the
> production build image recipes.
> >
> >  My change is very specific it should not come as part of normal build
> images because it will affect the production build.
> >
> >  My use case:
> >
> > 1. I have one .cfg file for kernel - which has kernel specific
> configurations.
> >
> > 2. I have Makefile changes for driver file.
> >
> >  I should bring the above changes to kernel and  driver Makefile during
> build time without using .bbappend file.
> >
> >  I want to create a custom image recipe with the specific changes.
> >
> >  For example : custom_image.bb =( This recipes should have
> core_image_minimal.bb + my specific changes)
> >
> >  When i build bitbake custom_image.bb,  it should  build  with
> core_image_minimal.bb + my specific changes .
> >
> > Other images recipes also should not affect by this changes.
> >
> > My humble request. Can anyone please support how to proceed?
> >
> > Kindly share your suggestions.
> >
> >  Regards
> >
> > Senthamilarasi. M
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#57401):
> https://lists.yoctoproject.org/g/yocto/message/57401
> > Mute This Topic: https://lists.yoctoproject.org/mt/92041991/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--00000000000012957105e28e868f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi=C2=A0Alexander,=C2=A0<div dir=3D"auto"><br></div>=
<div dir=3D"auto">This is not my private change,so i cannot create my own l=
ayer. Without creating layer and .bbappend file should implement.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Can anyone please support?=C2=A0<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards</div><div dir=3D=
"auto">Senthamilarasi. M</div><br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, 28 Jun, 2022, 6:04 pm Alexander Kanav=
in, &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">If the change is priva=
te to you, then you can make a simple layer and<br>
make all the needed modifications there. Is this not possible?<br>
<br>
Alex<br>
<br>
On Tue, 28 Jun 2022 at 13:51, Senthamilarasi mathiyan<br>
&lt;<a href=3D"mailto:arasilinux1086@gmail.com" target=3D"_blank" rel=3D"no=
referrer">arasilinux1086@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Dear All<br>
&gt;<br>
&gt; Good Morning!<br>
&gt;<br>
&gt; In my project, I am trying to create one custom image recipe in my yoc=
to build system.<br>
&gt;<br>
&gt;=C2=A0 The reason of creating custom image is=C2=A0 -&gt; having few sp=
ecific configurations for kernel and some specific driver Makefile changes =
to enable coverage.<br>
&gt;<br>
&gt;=C2=A0 I cannot go with .bbappend file, because we are maintaining a re=
cipes-append folder in our meta-layer which is common for all the productio=
n build image recipes.<br>
&gt;<br>
&gt;=C2=A0 My change is very specific it should not come as part of normal =
build images because it will affect the production build.<br>
&gt;<br>
&gt;=C2=A0 My use case:<br>
&gt;<br>
&gt; 1. I have one .cfg file for kernel - which has kernel specific configu=
rations.<br>
&gt;<br>
&gt; 2. I have Makefile changes for driver file.<br>
&gt;<br>
&gt;=C2=A0 I should bring the above changes to kernel and=C2=A0 driver Make=
file during build time without using .bbappend file.<br>
&gt;<br>
&gt;=C2=A0 I want to create a custom image recipe with the specific changes=
.<br>
&gt;<br>
&gt;=C2=A0 For example : <a href=3D"http://custom_image.bb" rel=3D"noreferr=
er noreferrer" target=3D"_blank">custom_image.bb</a> =3D( This recipes shou=
ld have <a href=3D"http://core_image_minimal.bb" rel=3D"noreferrer noreferr=
er" target=3D"_blank">core_image_minimal.bb</a> + my specific changes)<br>
&gt;<br>
&gt;=C2=A0 When i build bitbake <a href=3D"http://custom_image.bb" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">custom_image.bb</a>,=C2=A0 it shoul=
d=C2=A0 build=C2=A0 with <a href=3D"http://core_image_minimal.bb" rel=3D"no=
referrer noreferrer" target=3D"_blank">core_image_minimal.bb</a> + my speci=
fic changes .<br>
&gt;<br>
&gt; Other images recipes also should not affect by this changes.<br>
&gt;<br>
&gt; My humble request. Can anyone please support how to proceed?<br>
&gt;<br>
&gt; Kindly share your suggestions.<br>
&gt;<br>
&gt;=C2=A0 Regards<br>
&gt;<br>
&gt; Senthamilarasi. M<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#57401): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/57401" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/57401</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92041991=
/1686489" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/92041991/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"=
_blank" rel=3D"noreferrer">alex.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div></div></div>

--00000000000012957105e28e868f--

