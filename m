Return-Path: <arasilinux1086@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2FDAC43334
	for <webhook@archiver.kernel.org>; Tue, 28 Jun 2022 11:51:44 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.53962.1656417097297413567
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 04:51:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Br+cnREn;
 spf=pass (domain: gmail.com, ip: 209.85.208.50,
 mailfrom: arasilinux1086@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id eq6so17162326edb.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 04:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Uke15btFQ5GsKnOox/nhxcgFnCGYlXJG30TSKmqLtrE=;
        b=Br+cnREnQRGV4UkFagtklcQ4T+fAvlO0CmowoLqfptMOiW7BK5rXN1Z9sAdTWd6R8a
         0tWIyg9F+URcwhgVccWVoZl0A7KgLT9LfdqHG2OyZqbDkqTv7g+RII0EltWN4H5y7v3P
         zlv1XwcDBsC9NFkDgluWwb0s5pMk7kcL5+DYZADuwWBkKXw88ZGvWZUsnvhZXwBKLD9/
         4lwJF0EQiUST5cSPo9FOz0OIdjpidAc2ys6EYW3xzI6nvl9xsQfGbdqh8Aqtsz4oxzyM
         Df48z+A8pK0+i1AS1WqpxA0tQ0JnsRoqwWHnYgnMXW3j87veZ1Z7ft++/8ot+54eoux3
         sLcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Uke15btFQ5GsKnOox/nhxcgFnCGYlXJG30TSKmqLtrE=;
        b=PKkZLqA20N1PJRWXhEWk7i/YBgVlJ+lQdsDEMTD5YWdaUatvGb7AQAY7Tq/zl/NwPz
         AZT8W26bHSrHAdU2VdTFZyI6B1Ygo1lMxlDbfDxxunDwZeZX4TA+LhF5J0DkZCnYMLdB
         Ztj/Khh/ZemiWXC9rMgUJsmCeJ3Fh7Oa044R88Uky4Qyv9GiZTz4FSQs/GmT4UgSnqKO
         7FyMPIeIS2vv4bJcZxe1OFvS6VPO+Sgl7Ze4D0lZJFC2VvHiEh4qJ2PfobHZ7v6+uFOi
         LEbn54/z56NaG61kO70/mXWffM6LK7JGHiQqjLvK+2Ype2odJ2jwGXpR4okEb/HaVghm
         IfDw==
X-Gm-Message-State: AJIora/yAGK+IDmWhBqrh5zsNG5A+E686hUyuNIK6sIpSdvKwLomfgQ+
	fEej/h2Wz9IkFAGSYD//UKIL9ReNPIiGNk/ki8fUD6pm
X-Google-Smtp-Source: 
 AGRyM1sD+pi0959TkFpH2foAJGAdhoW1M9P7x457oz6yH23uPpsCosuVg6VkTWAx41UmX9H0DqF/Eovhk2R/hVzW58Q=
X-Received: by 2002:a05:6402:1907:b0:435:c243:a66e with SMTP id
 e7-20020a056402190700b00435c243a66emr22263568edz.44.1656417095317; Tue, 28
 Jun 2022 04:51:35 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM9PR10MB4403B8BF23EC7571D7F2E5C7ACB89@AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM9PR10MB4403B8BF23EC7571D7F2E5C7ACB89@AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM>
From: Senthamilarasi mathiyan <arasilinux1086@gmail.com>
Date: Tue, 28 Jun 2022 17:21:22 +0530
Message-ID: 
 <CAFf=Mr2Sjxi9e1oLBo9Q97hS3R_0KAk1vGx63af4bp6UBQ6BMA@mail.gmail.com>
Subject: yocto support
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000090fec705e280a83d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 11:51:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57401

--00000000000090fec705e280a83d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear All

Good Morning!

In my project, I am trying to create one custom image recipe in my yocto
build system.

 The reason of creating custom image is  -> having few specific
configurations for kernel and some specific driver Makefile changes to
enable coverage.

 I cannot go with .bbappend file, because we are maintaining a
recipes-append folder in our meta-layer which is common for all the
production build image recipes.

 My change is very specific it should not come as part of normal build
images because it will affect the production build.

 My use case:

1. I have one .cfg file for kernel - which has kernel specific
configurations.

2. I have Makefile changes for driver file.

 I should bring the above changes to kernel and  driver Makefile during
build time without using .bbappend file.

 I want to create a custom image recipe with the specific changes.

 For example : custom_image.bb =3D( This recipes should have
core_image_minimal.bb + my specific changes)

 When i build bitbake custom_image.bb,  it should  build  with
core_image_minimal.bb + my specific changes .

Other images recipes also should not affect by this changes.

My humble request. Can anyone please support how to proceed?

Kindly share your suggestions.

 *Regards*

*Senthamilarasi. M*

=E2=80=8B

--00000000000090fec705e280a83d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" =
class=3D"gmail_attr">Dear All</div><div lang=3D"EN-US" link=3D"#0563C1" vli=
nk=3D"#954F72" style=3D"word-wrap:break-word"><div class=3D"m_-987243911854=
524562WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Good Morning!</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">In my project, I am trying to create one custom image=
 recipe in my yocto build system.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0The reason of creating custom image is =C2=A0-&=
gt; having few specific configurations for kernel and some specific driver =
Makefile changes to enable coverage.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0I cannot go with .bbappend file, because we are=
 maintaining a recipes-append folder in our meta-layer which is common for =
all the production build image recipes.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0My change is very specific it should not come a=
s part of normal build images because it will affect the production build.=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0</span><span style=3D"font-family:Arial,=
sans-serif;font-size:10pt">My use case:</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">1. I have one .cfg file for kernel - which has kernel=
 specific configurations.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">2. I have Makefile changes for driver file.<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0I should bring the above changes to kernel and=
=C2=A0 driver Makefile during build time without using .bbappend file.<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0I want to create a custom image recipe with the=
 specific changes.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0For example : <a href=3D"http://custom_image.bb=
" target=3D"_blank" rel=3D"noreferrer">custom_image.bb</a> =3D( This recipe=
s should have <a href=3D"http://core_image_minimal.bb" target=3D"_blank" re=
l=3D"noreferrer">core_image_minimal.bb</a> + my specific changes)<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0When i build bitbake <a href=3D"http://custom_i=
mage.bb" target=3D"_blank" rel=3D"noreferrer">custom_image.bb</a>, =C2=A0it=
 should =C2=A0build =C2=A0with <a href=3D"http://core_image_minimal.bb" tar=
get=3D"_blank" rel=3D"noreferrer">core_image_minimal.bb</a> + my specific c=
hanges .</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Other images recipes also should not affect by this c=
hanges.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">My humble request.<u>=C2=A0</u></span><span style=3D"=
font-family:Arial,sans-serif;font-size:10pt">Can anyone please support how =
to proceed?</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Kindly share your suggestions.<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u>Regards</u></span></p><p class=3D"Mso=
Normal"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-=
serif"><u>Senthamilarasi. M</u></span></p><p class=3D"MsoNormal">
=E2=80=8B<u></u><u></u></p>
</div>
</div>

</div></div>

--00000000000090fec705e280a83d--

