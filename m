Return-Path: <t.f.g.geelen@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9CB5C021A9
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 20:32:24 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.3571.1739824338936710663
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 12:32:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N4eu7CuC;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: t.f.g.geelen@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2fbffe0254fso8783296a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 12:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739824338; x=1740429138; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jyskgjfz758osymzsVnHFXCbWStL6vooyHV/NYp2dmM=;
        b=N4eu7CuCxnTdPQadK0jPzzRg16enKyfLOXippeIaM7dQMgFqLKQZgEVHDdG+ghQCSo
         DJuBHsk0zopr+ag26Gh230Yh3hAhn9RmpObXmyW8nSybBf1oPT+PsujBudnrY2SENTxX
         5b/0+ujyeYoyILFjGoSfDKFxBxxbT3ckBNbhRKMrGNtdXv0oaxE3mW8k+xTv/gCnoOqC
         idhNY1cDKYTDCH3tF8OGXk67SplHU0gmdMPogsXasMxsHw0Uf4cI+NR+ep4/TM2TdSdG
         p+OijxoE2OB4GyPNPPr93HjnzVChFzUaeGORlAOLWUYV1doexTGxpKSP3yw+8r82Ksd2
         Ejhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739824338; x=1740429138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jyskgjfz758osymzsVnHFXCbWStL6vooyHV/NYp2dmM=;
        b=Q3V0Si39A+xWwLFmnvlVlN91G+brrOj5zhNzVWb0Pt7hZeN/dp9WnQkoQZVXUTiT88
         l2BcQLm2yNkhPupDKSagGBde96GytzROx5ERpRMPD4vUFTsmTX8I0DMnJ7jJ65b3wYMd
         nyVO8ystdqNMYmRN3J1Mla1BcaGLh7pswaEj/O9AF1DblyZaIR0569GpzdYHWVrE4zUa
         EVs8rAJDOI+SgZqW6iVy5O77m+hU2ioU2ofAYt9N5bheXokcUjCLbW1RMpXxDz+ExW2X
         7sBihBMRgL68cNsUtDqBKqNETUtkX7ekrwaHchdmcXVcNWSiFPNpWh5hCLHKp9DqmeOG
         N1fQ==
X-Gm-Message-State: AOJu0YxOQa+3Jj88Lbw2IoeWPvKV3Cbdj+4x06OKAYs8KXLI6A945+oZ
	u+DbhO8v+x/Z96BXOrPu4CLlSvlDg7RJLzENO9h1lh+KZ8Zub5upp6n/8G/uzCn+7eaA/8eH1wa
	Z5GWHxETmpCvNqkRZd05zPB8/v+A=
X-Gm-Gg: ASbGncv+WoMatZvYPSYUgQmWiD0HPNjDJ7n0DizOZ79nlP+95blA6uHaTlKwb0hhKXY
	lGrlO7/LafgSXmEPchaSH7myTTpaxj3Mj8iy+YZYFyj3XsNVjVLFBjNbZR87ZRAIsLKI40mk=
X-Google-Smtp-Source: AGHT+IHgfC3G2JKpDwOOlDAv0UxMHkbKOfOnjud4sO51dJUHgvpq47GJxIbAahiQaSyyBeAzx2HyoQYszlAVSGl2+mo=
X-Received: by 2002:a17:90b:1e0e:b0:2ee:8427:4b02 with SMTP id
 98e67ed59e1d1-2fc41049fbfmr16689209a91.28.1739824338257; Mon, 17 Feb 2025
 12:32:18 -0800 (PST)
MIME-Version: 1.0
References: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
 <CANNYZj9iQBOQwkhyNqgfQ-xNrRoQs3JapDSChQ4cYs3D0i5eng@mail.gmail.com>
 <CAJo0Az6=A899H8fH+dGKHyYmPY_QGLTveJnDOgnUV1J1L5_x-A@mail.gmail.com> <CANNYZj-omc9=D2ZPVSzeV0Yt8oHzF5jogOL05R92aZG=b2xbDw@mail.gmail.com>
In-Reply-To: <CANNYZj-omc9=D2ZPVSzeV0Yt8oHzF5jogOL05R92aZG=b2xbDw@mail.gmail.com>
From: Tom Geelen <t.f.g.geelen@gmail.com>
Date: Mon, 17 Feb 2025 21:32:06 +0100
X-Gm-Features: AWEUYZmtZs3l7vmuxKsV94Apurx_sSQl2W631oo6npfTTmwp1oIPLyyLO2QcAUk
Message-ID: <CAJo0Az4T9BY7x2m8cUNun=Zv5wrySVSZ3FK3whL+n0UZsgBxvQ@mail.gmail.com>
Subject: Re: [auh] Question setting up AUH locally
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 20:32:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64826

Right, tried that for one of the failing recipes (python3-zwave-me-ws):

UPSTREAM_CHECK_URI=3D"https://pypi.org/simple/zwave-me-ws"
UPSTREAM_CHECK_REGEX=3D"zwave-me-ws-(?P<pver>(\d+[\.\-_]*)+).(tar\.gz|tgz|z=
ip|tar\.bz2)"

Then the problem is clear: UPSTREAM_CHECK_REGEX takes PN as the first
argument, but since these are python recipes and the default there is
to use a '_' as a separator these are fixed in all the Python recipes
via adjusting 'PYPI_PACKAGE' to ensure that there is adherence to both
Yocto with '-' separator and Python with '_' separator. If I adjust
the UPSTREAM_CHECK_REGEX to:

UPSTREAM_CHECK_REGEX =3D
"${PYPI_PACKAGE}-(?P<pver>(\d+[\.\-_]*)+).(tar\.gz|tgz|zip|tar\.bz2)"

It finds a match perfectly.

Well these were two problems I would never have found without your
help both of you thanks.

One last question: in the upgrade-helper.conf file. What is expected
in the 'layerdir' variable? A relative path? The documentation is a
bit lacking there.

Tom

On Mon, Feb 17, 2025 at 8:42=E2=80=AFPM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> If upstream version check doesn't return sensible values, run 'bitbake
> -e recipename', and look for UPSTREAM_CHECK_URI and
> UPSTREAM_CHECK_REGEX. What do they contain, and does the regex match
> what is available when opening the uri?
>
> Alex
>
> On Mon, 17 Feb 2025 at 20:26, Tom Geelen <t.f.g.geelen@gmail.com> wrote:
> >
> > Well I checked with python3-zwave-me-ws
> > (https://github.com/meta-homeassistant/meta-homeassistant/blob/main/rec=
ipes-devtools/python/python3-zwave-me-ws_0.4.3.bb)
> > with the proposed command and the latest version is empty.
> > Adding the recipe maintainer here does not change anything.
> >
> > NOTE: Starting bitbake server...
> > Loading cache: 100%
> > |######################################################################=
###########################################################################=
###########################################################################=
#############|
> > Time: 0:00:00
> > Loaded 5028 entries from dependency cache.
> > Parsing recipes: 100%
> > |######################################################################=
###########################################################################=
###########################################################################=
###########|
> > Time: 0:00:00
> > Parsing of 2998 .bb files complete (2996 cached, 2 parsed). 5026
> > targets, 295 skipped, 0 masked, 0 errors.
> > --2025-02-17 19:14:49--  https://pypi.org/simple/zwave-me-ws
> > Resolving pypi.org (pypi.org)... 151.101.0.223, 151.101.64.223,
> > 151.101.128.223, ...
> > Connecting to pypi.org (pypi.org)|151.101.0.223|:443... connected.
> > HTTP request sent, awaiting response... 301 Moved Permanently
> > Location: https://pypi.org/simple/zwave-me-ws/ [following]
> > --2025-02-17 19:14:49--  https://pypi.org/simple/zwave-me-ws/
> > Reusing existing connection to pypi.org:443.
> > HTTP request sent, awaiting response... 200 OK
> > Length: 39845 (39K) [text/html]
> > Saving to: =E2=80=98/tmp/wget-index-cpaiwajr/wget-listing-nzx5eu24=E2=
=80=99
> >
> >
> > 2025-02-17 19:14:49 (6.80 MB/s) -
> > =E2=80=98/tmp/wget-index-cpaiwajr/wget-listing-nzx5eu24=E2=80=99 saved =
[39845/39845]
> >
> > INFO: Current version: 0.4.3
> > INFO: Latest version:
> >
> > On the other hand: adding the recipe maintainer here: python3-zigpy
> > (https://github.com/meta-homeassistant/meta-homeassistant/blob/main/rec=
ipes-devtools/python/python3-zigpy_0.74.0.bb)
> > does actually fix the issue for this recipe.
> >
> > Am I missing something else still Alexander?
> >
> > On Mon, Feb 17, 2025 at 7:58=E2=80=AFPM Alexander Kanavin
> > <alex.kanavin@gmail.com> wrote:
> > >
> > > For auh to work, upstream version check needs to function properly an=
d quite often it doesn=E2=80=99t because no one ensured that when writing t=
he recipe. Can you show the recipe and the output of =E2=80=98devtool lates=
t-version recipename=E2=80=99 ?
> > >
> > > Alex
> > >
> > > On Mon 17. Feb 2025 at 19.09, Tom Geelen <t.f.g.geelen@gmail.com> wro=
te:
> > >>
> > >> Hi all,
> > >>
> > >> I am currently trying to set up AUH locally in order to ease the
> > >> maintenance of the layer I'm maintaining (meta-homeassistant).
> > >> I have followed the steps given here
> > >> https://docs.yoctoproject.org/dev-manual/upgrading-recipes.html and
> > >> have configured it to parse all the recipes in my layer (99% python
> > >> based recipes).
> > >>
> > >> Now I have a problem. It correctly parses all recipes, however it
> > >> finds no upgrade candidates. This is strange as I know some are in
> > >> need of an upgrade, and a newer version is available on pypi for
> > >> instance. Moreover I get quite some skips with the following error:
> > >>
> > >> Skip package meta-homeassistant/python3-hass-nabucasa (status =3D
> > >> UNKNOWN_BROKEN, current version =3D 0.87.0, next version =3D 0.80.0)
> > >>
> > >> Where does it get the 'next version' value from as the latest versio=
n
> > >> upstream is 0.92.0.
> > >> I might have misconfigured something. I used the default
> > >> upgrade-helper.conf with the following additions:
> > >>
> > >> layer_mode=3Dyes
> > >> layer_name=3Dmeta-homeassistant
> > >> layer_dir=3DBUILDDIR/../sources/meta-homeassistant
> > >> layer_machines=3Dqemux86-64
> > >>
> > >> Thanks in advance,
> > >>
> > >> Tom

