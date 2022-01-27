Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25496C433F5
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 14:50:35 +0000 (UTC)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com
 [209.85.221.178])
 by mx.groups.io with SMTP id smtpd.web09.29105.1643295034477305022
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:50:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Kn8ZhXxd;
 spf=pass (domain: gmail.com, ip: 209.85.221.178,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f178.google.com with SMTP id w17so1989744vko.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 06:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pZfKjj1onGSLdJFHO3ZQKxLge0hbraRXQJ/4acwR7WE=;
        b=Kn8ZhXxdJXd5NzaEiKf9ucHLHK4HqYTpkpkMfeauD0lxu6ydANuDwQt55/Z1Le55Tu
         zOIrSaKR9Wmb5jGe0/4lufvUcEug0shzv9HHUa8mcBg7NqVUl9Fjlhn7T6bUpTLtEVQf
         +AWDLKW4m1Ls7Ohm0L4Sje5eWyimonmid6MHBywD5fKPH37v1TOCG0Ymc0FDddtwPEON
         niGIgzccSPKLOy4+oTT3luZjRcxk5E+TK+Z1nWJDWehYMfvsTsM2L9v1MzRdpxXAYpfn
         3s+ib67g8W5RdIAbQbHpxIYye/3BqqscUWVbuWrm2BTvZ+s6w2UpikmvPtYbnyJRvEgl
         hxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pZfKjj1onGSLdJFHO3ZQKxLge0hbraRXQJ/4acwR7WE=;
        b=A7zVy5u+g3z8fxMUBMUh7dqwiDIzeYfk2tzwj6KRG/MZcPtAaxYk/HXjvHyhVLqNH7
         xcGwOpOom94uOYpqgEBHaSbFCfyVnNvehg+rf6ACYtBo/5n0lPai5IQydiu4phRkfaOY
         326IToqObkZCsMcmibgXbROAiZXA2uYn9fC3GfsJfmjAt0NB1lqruxntU8EjQy/2Ku5g
         KEdJXsv3Ap4trMnJ41h5pU0B3E0r0MYEiha0GcYKsXak9b6NpSe6Jrufh4cCCL3jHvHQ
         qGIVtKmlKCPqoHj9FOTnjci7HsdIOfNbKn0wd/aC6ICrfM/jZkVRxGnm3IMJkaKMUBs/
         sBDQ==
X-Gm-Message-State: AOAM533BnPrjRzectahZw7vTEyWqk9NLoMBSXWTyJA/uZO500oLaUPMP
	LLloCNkAHdwMWsF65NsnHyxseybiPvq+rj7sSQU=
X-Google-Smtp-Source: 
 ABdhPJxOVdf0PFGFo4b4aR5kI9T3fu3wB7bvh0P2aOiqKwABor3n1JHUDVuLZOmxisUihX0uAA7oxKlbSwSfuci4Vpk=
X-Received: by 2002:a05:6122:50d:: with SMTP id
 x13mr1470715vko.4.1643295033603;
 Thu, 27 Jan 2022 06:50:33 -0800 (PST)
MIME-Version: 1.0
References: <20220127144323.3121475-1-alex@linutronix.de>
 <AM9PR09MB4642BFA9251FBB72E5B01234A8219@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB4642BFA9251FBB72E5B01234A8219@AM9PR09MB4642.eurprd09.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 27 Jan 2022 15:50:22 +0100
Message-ID: 
 <CANNYZj_AABCRBb6eNMSdkH1y3M3zYdmL4S_kvWLo7cohxu1dRw@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bd3a6d05d69170c5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 14:50:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55997

--000000000000bd3a6d05d69170c5
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Jan 2022 at 15:48, Konrad Weihmann <kweihmann@outlook.com> wrote:

> > +GOVERSION ?= "1.17%"
> > +PREFERRED_PROVIDER_go-native = "go-binary-native"
>
> Just out of curiosity: I thought the agreement was that neither
> PREFERRED_PROVIDER_* nor recipe/provider specific settings should be
> part of a layer.conf
> PREFERRED_PROVIDER_go-native as a hard assignment might be troublesome
> in some setups (mainly depending on what order bblayers.conf actually has)
>

Yes, but this way it 'just works'. I do not think writing complicated
instructions in README for what needs to be in local.conf or distro config
is a better alternative. Suggestions welcome.

Alex

--000000000000bd3a6d05d69170c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, 27 Jan 2022 at 15:48, Konrad Weihmann &lt;<a href=3D"mailto:=
kweihmann@outlook.com">kweihmann@outlook.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">&gt; +GOVERSION ?=3D &quot;1.17=
%&quot;<br>
&gt; +PREFERRED_PROVIDER_go-native =3D &quot;go-binary-native&quot;<br>
<br>
Just out of curiosity: I thought the agreement was that neither <br>
PREFERRED_PROVIDER_* nor recipe/provider specific settings should be <br>
part of a layer.conf<br>
PREFERRED_PROVIDER_go-native as a hard assignment might be troublesome <br>
in some setups (mainly depending on what order bblayers.conf actually has)<=
br></blockquote></div><div class=3D"gmail_quote"><br></div><div class=3D"gm=
ail_quote">Yes, but this way it &#39;just works&#39;. I do not think writin=
g complicated instructions in README for what needs to be in local.conf or =
distro config is a better alternative. Suggestions welcome.</div><div class=
=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Alex<br></div></div>

--000000000000bd3a6d05d69170c5--

