Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 325E1C43334
	for <webhook@archiver.kernel.org>; Mon, 25 Jul 2022 18:12:39 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web11.31636.1658772756820335499
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jul 2022 11:12:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FwuqmZlU;
 spf=pass (domain: gmail.com, ip: 209.85.160.169,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id a9so8847846qtw.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jul 2022 11:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1T0Ns35PJF7Nt/EW3mOUpqFjDq2ZEBXKfLKU4FGzcN4=;
        b=FwuqmZlUiN5uPyyHvyLcsXo0KQxcVcdepsM/T8aPIYuuQJLl85+vFqcc06EAA+2MnZ
         0qGfQPcKgsEKih+P6TptNCNxTHPao+NIR5RjEMVucC5I1ZrCJqjgbXPmUFmA1uC0O5bn
         mVeasI6JmAmwWeK30uAYyd4Kdnks6CkO4ZkTGl1eHcdeG6Is7ZXsmbpVbUQdP+wt3ON0
         DGS5cesg5iw/noHuxk2QrT6nkKCa7G1EtRLQ8hLph3oK/Pc7N8Be3+YZnNENKgVDsNC7
         hVn4TtApjZWVn+wESWMB47MUOMGIekV9dB+wZhfTcWsCeXIJH8XGAWA+S0z4lVkPpV/4
         IA2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1T0Ns35PJF7Nt/EW3mOUpqFjDq2ZEBXKfLKU4FGzcN4=;
        b=a9XxKbp07D6Yn94ff7ur9yqmRc3xQCl8Nec5YaAZsHfoOmSchri527AVARXV9nE1Iw
         vcBPZuSpuyhkXQQ7d/xWrOjQtprePKG/SYVwLcBFQViyWTIYq+YyQmZq8nAw7w2PIVK3
         QWm9L59Q67V9BzzVGn2H5n5gHmO4BQuvY74jCrlsXjpfjFGwxCmBWyDFRYnRBABAUaMY
         sys8HSZVZUjbFI9dn+93Y4Z+Ex6wEuvoCtFvk5C14LbnXjWXtxHogURfzWjeSHWWAsaD
         aLjpGxO+bExp0S+7ghzM96tiHVkBPA7wGC3NGp1l9tUnBqqQny8v26DRrFAZwzNzfqUf
         xlRA==
X-Gm-Message-State: AJIora+VVzuatHXF9su7qHWY80Al7pbtJbsErfss/t0SkaUDbhoCKfBP
	UIgVHwVMTqnGiinQZ2+eMe1R/aQjTk5mPQatsjE=
X-Google-Smtp-Source: 
 AGRyM1vPVogNE1+vkLt2mbhQ4oj1ThS9GuDRfAMTfboPKeWTaMxwRPg5kX9aN4Ax2ebJ5BTD5EtF86oOSHvZTptOPnA=
X-Received: by 2002:ac8:5e4f:0:b0:31e:d96f:a4e7 with SMTP id
 i15-20020ac85e4f000000b0031ed96fa4e7mr11370521qtx.634.1658772755786; Mon, 25
 Jul 2022 11:12:35 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR15MB5055F60DA7F873193E3AD877CB909@PH0PR15MB5055.namprd15.prod.outlook.com>
 <CAMKF1srE40FXoPynBsUxtaOjj+BdJHu4SoNQXNMDFmFwjYvt0g@mail.gmail.com>
 <17047D93444A051F.4676@lists.yoctoproject.org>
 <PH0PR15MB50555CCB2A384E1B8D2A668ECB959@PH0PR15MB5055.namprd15.prod.outlook.com>
In-Reply-To: 
 <PH0PR15MB50555CCB2A384E1B8D2A668ECB959@PH0PR15MB5055.namprd15.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jul 2022 14:12:09 -0400
Message-ID: 
 <CAMKF1spj_o6Kw+7RMREvzZCuictydaVkutn0NuCEVJfbo7nRhQ@mail.gmail.com>
Subject: Re: [yocto] Adding and using user in more than one recipe
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Jul 2022 18:12:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57636

On Mon, Jul 25, 2022 at 2:08 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> Hello Khem,
> I've added in the useradd line in my image recipe:
>
> EXTRA_USERS_PARAMS =3D "\
>     useradd -d /home/${SAKURA_USER} -r -s /bin/bash -U ${SAKURA_USER}; \
>     usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \
>     usermod -a -G sudo,dialout,video,input,audio,disk,shutdown,datetime $=
{SAKURA_USER}; \
>     "
>
> But I am still getting errors in the two recipes that I try to use the ne=
w user. How do I tell them that I need to inherit the added user, do I add =
a DEPEND or RDEPEND on the top level image recipe? Is there some other way?
>
> I saw a previous thread somewhere that suggested making a separate recipe=
 to create the user in and then making the recipes that use that user DEPEN=
D on the creation recipe.
>

if you need it in a recipe then perhaps that maybe a good approach.

> Regards,
> Greg
> ________________________________
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on beha=
lf of Greg Wilson-Lindberg <gwilson@sakuraus.com>
> Sent: Saturday, July 23, 2022 8:03 AM
> To: Khem Raj <raj.khem@gmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] Adding and using user in more than one recipe
>
> Hi Khem,
> That's originally what I had, but for some reason I hadn't put in the use=
radd line. I'm assuming that then because this is at the beginning of the i=
mage generation, I can then use the new user in any other recipe. Is there =
anything that I need to do to inherit the new user, or is it just there?
>
> Thanks,
> Greg
>
> > -----Original Message-----
> > From: Khem Raj <raj.khem@gmail.com>
> > Sent: Friday, July 22, 2022 17:38
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] Adding and using user in more than one recipe
> >
> > On Fri, Jul 22, 2022 at 5:23 PM Greg Wilson-Lindberg
> > <gwilson@sakuraus.com> wrote:
> > >
> > > Hello list,
> > >
> > > I=E2=80=99m trying to understand how the extrauser and adduser packag=
es are used
> > and interact in kirkstone.
> > >
> > >
> > >
> > > I need to add a user and I would like to also use this user in anothe=
r recipe.
> > This had been working in our previous builds using version of Yocto up =
to
> > hardnot. We are in the process of updating to kirkstone and the user st=
uff
> > has now broken and I am not making any sense out of the documentation.
> > >
> > >
> > >
> > > How do I create a user in one recipe and then use that user in anothe=
r
> > recipe? Can I even do that, or do I need to create the user in more tha=
n one
> > recipe with a hard coded UID, GID?
> > >
> > >
> >
> > you can do it in image recipe
> >
> > inherit extrausers
> >
> > IMAGE_FEATURES:remove =3D "debug-tweaks"
> >
> > EXTRA_USERS_PARAMS +=3D "\
> >     useradd scribbledeedoo; \
> >     usermod -p '$(openssl passwd -6 diddleDoo5)' scribbledeedoo; \
> >     usermod -a -G adm scribbledeedoo; \
> >     usermod -a -G video scribbledeedoo; \
> >     usermod -a -G audio scribbledeedoo; \
> >     usermod -a -G systemd-journal scribbledeedoo; \ "
> >
> > HTH
> >
> > -Khem
> >
> >
> > >
> > > Regards,
> > >
> > > Greg Wilson-LIndberg
> > >
> > >
> > >
> > >
> > >
> > >

