Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5F0C021A9
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 19:42:14 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.2402.1739821332687899949
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 11:42:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GEV+8/EX;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7c0a1677aebso93002985a.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 11:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739821332; x=1740426132; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/Dzb0eM+PSFi0zMEL9efQSRWKCUBrSGfRGS1wdfkZw=;
        b=GEV+8/EXRVPWhviCNEYaX5Qkdvps6bYQ7Ki2DNczCOvhuQO50LUZ0YDsPc7j8odTsg
         XXTlS8rgpcyLkBBIinhbsiL0L2C7DCugbQYDxQGrUSJJ2qcqx4Lb3Iy/K4i1pXLSMznH
         drfRl8KJvjyuK+aSs47/G2gVCApXTOycG203QqGEA9KM2oeuOnPQ+gvJ122kjdAJj/zR
         Ky0zvLa3Ggq0+WkiG/ohFosMusogjWbFOGbDM8Pmcxc+7lXaSSWLbsdMlHLy5h7RYFRR
         HWAzTcsf6AsTt/if+6/qys+DDAxJOqryBw8EBit+FV4Q3ea2Ne1nhv0eTZMzqXJ62Sg0
         wsPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739821332; x=1740426132;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6/Dzb0eM+PSFi0zMEL9efQSRWKCUBrSGfRGS1wdfkZw=;
        b=s3Q5hwEQ11wRtsaOMvYefDBrKZRPyqPthgHYFJcvueNFfOcVXrs4xcMXZBMiy0TOMv
         s/jDMeYyUo6XqoPYZ+Mx4JXutZGNX7VO9RUiqidkAohCiB9iyf/K1zH9NSn8DeNaFWTX
         +8ee5X2s1IzuXOHhW8XRD889N02PI/ftZlF94xDrzq3bEFD8ynPXz056Qn+OsSpcSXsc
         QlsmR4Dyd+vpHfYVoGoAkV030vRu+JfqVcwM1Z1r3/vut+CG1IN8ZZa+ENzgwWNFwvaS
         X7oBjdCrmYo/dPU4OI7sgIPBxULkaMYbWaOXqiOnLgbqwJ7RvLSQmnH8j+8AuLEPIQSa
         mzgQ==
X-Gm-Message-State: AOJu0YyaTxFKMTM0BkPH8mpdHjGnkyi3mfGdzWn9OBzlLkHhh+gQtr7n
	LleYjM4iyjr1FmDPQ1mcQTxn4xJ5akvoibH0J6LKHS5v1qrXwKJNxMvEQ0ZEpXFH3TAcEhpPCUa
	DJ4RyqzUxZO3YpY94XtZquJryqHY=
X-Gm-Gg: ASbGncugT+AMCWFh92AIvzwdr7hJBCdc6Xult0HTf+V4cUp9c2C2dioYsy/JBN5kZpK
	EOxfzGcqqFGHJwMd0fa/JkxD9DJ6J1mDx47f92P7bgZtx0khD2ffS7gk5FRqMX9sgnL2HDVXBrC
	x01n8jYiP8OahI1zQjNiJd742hLepnonA=
X-Google-Smtp-Source: AGHT+IFwOp6mqzwJ8OOJJkUSeFQ5GEWXkZak+oN5ZvYrRjTCoG4vQDVkm84CUq3xWrnDIOxEjInV1pMqGJS9Tdx0sUU=
X-Received: by 2002:a05:620a:4112:b0:7c0:a8a5:81aa with SMTP id
 af79cd13be357-7c0a8a58420mr247529085a.19.1739821331534; Mon, 17 Feb 2025
 11:42:11 -0800 (PST)
MIME-Version: 1.0
References: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
 <CANNYZj9iQBOQwkhyNqgfQ-xNrRoQs3JapDSChQ4cYs3D0i5eng@mail.gmail.com> <CAJo0Az6=A899H8fH+dGKHyYmPY_QGLTveJnDOgnUV1J1L5_x-A@mail.gmail.com>
In-Reply-To: <CAJo0Az6=A899H8fH+dGKHyYmPY_QGLTveJnDOgnUV1J1L5_x-A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 17 Feb 2025 20:42:00 +0100
X-Gm-Features: AWEUYZlHGAl6EP4MFy8P0Hfvc_LaZltDkWSqHe9TBjZFhEMtIsFdK5dm9PQSUvY
Message-ID: <CANNYZj-omc9=D2ZPVSzeV0Yt8oHzF5jogOL05R92aZG=b2xbDw@mail.gmail.com>
Subject: Re: [auh] Question setting up AUH locally
To: Tom Geelen <t.f.g.geelen@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 19:42:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64825

If upstream version check doesn't return sensible values, run 'bitbake
-e recipename', and look for UPSTREAM_CHECK_URI and
UPSTREAM_CHECK_REGEX. What do they contain, and does the regex match
what is available when opening the uri?

Alex

On Mon, 17 Feb 2025 at 20:26, Tom Geelen <t.f.g.geelen@gmail.com> wrote:
>
> Well I checked with python3-zwave-me-ws
> (https://github.com/meta-homeassistant/meta-homeassistant/blob/main/recip=
es-devtools/python/python3-zwave-me-ws_0.4.3.bb)
> with the proposed command and the latest version is empty.
> Adding the recipe maintainer here does not change anything.
>
> NOTE: Starting bitbake server...
> Loading cache: 100%
> |########################################################################=
###########################################################################=
###########################################################################=
###########|
> Time: 0:00:00
> Loaded 5028 entries from dependency cache.
> Parsing recipes: 100%
> |########################################################################=
###########################################################################=
###########################################################################=
#########|
> Time: 0:00:00
> Parsing of 2998 .bb files complete (2996 cached, 2 parsed). 5026
> targets, 295 skipped, 0 masked, 0 errors.
> --2025-02-17 19:14:49--  https://pypi.org/simple/zwave-me-ws
> Resolving pypi.org (pypi.org)... 151.101.0.223, 151.101.64.223,
> 151.101.128.223, ...
> Connecting to pypi.org (pypi.org)|151.101.0.223|:443... connected.
> HTTP request sent, awaiting response... 301 Moved Permanently
> Location: https://pypi.org/simple/zwave-me-ws/ [following]
> --2025-02-17 19:14:49--  https://pypi.org/simple/zwave-me-ws/
> Reusing existing connection to pypi.org:443.
> HTTP request sent, awaiting response... 200 OK
> Length: 39845 (39K) [text/html]
> Saving to: =E2=80=98/tmp/wget-index-cpaiwajr/wget-listing-nzx5eu24=E2=80=
=99
>
>
> 2025-02-17 19:14:49 (6.80 MB/s) -
> =E2=80=98/tmp/wget-index-cpaiwajr/wget-listing-nzx5eu24=E2=80=99 saved [3=
9845/39845]
>
> INFO: Current version: 0.4.3
> INFO: Latest version:
>
> On the other hand: adding the recipe maintainer here: python3-zigpy
> (https://github.com/meta-homeassistant/meta-homeassistant/blob/main/recip=
es-devtools/python/python3-zigpy_0.74.0.bb)
> does actually fix the issue for this recipe.
>
> Am I missing something else still Alexander?
>
> On Mon, Feb 17, 2025 at 7:58=E2=80=AFPM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> >
> > For auh to work, upstream version check needs to function properly and =
quite often it doesn=E2=80=99t because no one ensured that when writing the=
 recipe. Can you show the recipe and the output of =E2=80=98devtool latest-=
version recipename=E2=80=99 ?
> >
> > Alex
> >
> > On Mon 17. Feb 2025 at 19.09, Tom Geelen <t.f.g.geelen@gmail.com> wrote=
:
> >>
> >> Hi all,
> >>
> >> I am currently trying to set up AUH locally in order to ease the
> >> maintenance of the layer I'm maintaining (meta-homeassistant).
> >> I have followed the steps given here
> >> https://docs.yoctoproject.org/dev-manual/upgrading-recipes.html and
> >> have configured it to parse all the recipes in my layer (99% python
> >> based recipes).
> >>
> >> Now I have a problem. It correctly parses all recipes, however it
> >> finds no upgrade candidates. This is strange as I know some are in
> >> need of an upgrade, and a newer version is available on pypi for
> >> instance. Moreover I get quite some skips with the following error:
> >>
> >> Skip package meta-homeassistant/python3-hass-nabucasa (status =3D
> >> UNKNOWN_BROKEN, current version =3D 0.87.0, next version =3D 0.80.0)
> >>
> >> Where does it get the 'next version' value from as the latest version
> >> upstream is 0.92.0.
> >> I might have misconfigured something. I used the default
> >> upgrade-helper.conf with the following additions:
> >>
> >> layer_mode=3Dyes
> >> layer_name=3Dmeta-homeassistant
> >> layer_dir=3DBUILDDIR/../sources/meta-homeassistant
> >> layer_machines=3Dqemux86-64
> >>
> >> Thanks in advance,
> >>
> >> Tom

