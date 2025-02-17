Return-Path: <t.f.g.geelen@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84E4EC021AA
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 19:27:04 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.2060.1739820415470580579
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 11:26:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bMkt9V5i;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: t.f.g.geelen@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-220c665ef4cso68831405ad.3
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 11:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739820415; x=1740425215; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q3/xlKpS2cBrObUhhtvS3nEjrUHMXeMUjoqbyD1lRj0=;
        b=bMkt9V5iCMRQJYjjw6tds4Ki9JT/fzYSg5txAwFBfFnNcNOKousa2uVVK7pk8tNpbc
         jkowuqu8YvFqx6oaZihwUqhAJSoe++6GSN/zwB7DMhUB2fD/XOMrPP7cdfql/dMPgkuU
         DsDcXG33afjGfnQuAfj4+gfQzv9oBXW6iJpKty54g6vkox/YgA7wAFa9z0Yj7dyRfE2S
         dPcRrdQkwaGP9wS9SY7GvnZuHxSKT3UbIZqWKdqA8G5MFoTMJlO8twYLrzi8Yo4GB8dP
         fex3yxUJgyyTeXBvtCdQinPWBtDZE8HsNP7usQMyofO/SQ43MNZIEetUJKVwFYFGDiCc
         6KfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739820415; x=1740425215;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3/xlKpS2cBrObUhhtvS3nEjrUHMXeMUjoqbyD1lRj0=;
        b=YAgHzL/raLJ8KxaVpkl8ZXQ6gMLPUBnaQv+fC8CbwMkKrR3fEs57+pOSX3p/1oaswZ
         7F2Y0u1/0fiadZBbSc+TGKH/1a1H05LpuiTYFYRKc/K29L6i70gpmzJbBA66zpoiU6zc
         2atl7DlGdEmmMh3yALuzA9fDxLp8ovCTQmhFMOioypMe+TXD72yi50yV2Mxt+T6brDsI
         DtxCcrm5BFN7A4uUcPMp5ajmHYcwQwbzZsJoHCn6h0Ov2JXnZG/6zn4KkJc19cW2KFnp
         /jwpBnk0QcioFQIDz1hjyGbPvybv3h20Clb/8UnVJIGzvx0x8vN91RkvTpxYLfVuzGWU
         0Akw==
X-Gm-Message-State: AOJu0Ywa9GBEbb3TDrqzaSP0w6UKIuIdRQlkQrLoWdoyTLl7PGpEZ1vF
	sk63/NP27OAbsYaEUq2TIW4uwpLkVSeRS9vR/m7ircob6VI86w5e7TmfusElFqiQfzQfharPmRw
	oRFa2SZ3XHirFInEYnnL8iy4nj58=
X-Gm-Gg: ASbGncvKijvLTz2u3xV43WZjsa6O/hnf2XOMh+JmfDfD7clai+E6p0uE7aFwTBvcgpp
	qxdSSEm0gh4WVBD9ITENociUsGSbsJ8mkrpRfoUCN21gbuUXhB5qgjclOhPex94pfNoAKXuE=
X-Google-Smtp-Source: AGHT+IEopqgibFy96xawcPnqrifscEQ/Q/qgysRFZvAlQyhHluG43GAmfU+HH3k6bj65y23G+1e7tjtyhF10Gs0rtdg=
X-Received: by 2002:a17:902:d4cd:b0:221:2f4:5446 with SMTP id
 d9443c01a7336-22104048145mr179249665ad.25.1739820413231; Mon, 17 Feb 2025
 11:26:53 -0800 (PST)
MIME-Version: 1.0
References: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
 <CANNYZj9iQBOQwkhyNqgfQ-xNrRoQs3JapDSChQ4cYs3D0i5eng@mail.gmail.com>
In-Reply-To: <CANNYZj9iQBOQwkhyNqgfQ-xNrRoQs3JapDSChQ4cYs3D0i5eng@mail.gmail.com>
From: Tom Geelen <t.f.g.geelen@gmail.com>
Date: Mon, 17 Feb 2025 20:26:43 +0100
X-Gm-Features: AWEUYZk89a5raL9F-jvW_ZVs8brEahDsKgx2Bkw1nO4r3JSK1UInZQRXBEfbRio
Message-ID: <CAJo0Az6=A899H8fH+dGKHyYmPY_QGLTveJnDOgnUV1J1L5_x-A@mail.gmail.com>
Subject: Re: [auh] Question setting up AUH locally
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 19:27:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64824

Well I checked with python3-zwave-me-ws
(https://github.com/meta-homeassistant/meta-homeassistant/blob/main/recipes=
-devtools/python/python3-zwave-me-ws_0.4.3.bb)
with the proposed command and the latest version is empty.
Adding the recipe maintainer here does not change anything.

NOTE: Starting bitbake server...
Loading cache: 100%
|##########################################################################=
###########################################################################=
###########################################################################=
#########|
Time: 0:00:00
Loaded 5028 entries from dependency cache.
Parsing recipes: 100%
|##########################################################################=
###########################################################################=
###########################################################################=
#######|
Time: 0:00:00
Parsing of 2998 .bb files complete (2996 cached, 2 parsed). 5026
targets, 295 skipped, 0 masked, 0 errors.
--2025-02-17 19:14:49--  https://pypi.org/simple/zwave-me-ws
Resolving pypi.org (pypi.org)... 151.101.0.223, 151.101.64.223,
151.101.128.223, ...
Connecting to pypi.org (pypi.org)|151.101.0.223|:443... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://pypi.org/simple/zwave-me-ws/ [following]
--2025-02-17 19:14:49--  https://pypi.org/simple/zwave-me-ws/
Reusing existing connection to pypi.org:443.
HTTP request sent, awaiting response... 200 OK
Length: 39845 (39K) [text/html]
Saving to: =E2=80=98/tmp/wget-index-cpaiwajr/wget-listing-nzx5eu24=E2=80=99


2025-02-17 19:14:49 (6.80 MB/s) -
=E2=80=98/tmp/wget-index-cpaiwajr/wget-listing-nzx5eu24=E2=80=99 saved [398=
45/39845]

INFO: Current version: 0.4.3
INFO: Latest version:

On the other hand: adding the recipe maintainer here: python3-zigpy
(https://github.com/meta-homeassistant/meta-homeassistant/blob/main/recipes=
-devtools/python/python3-zigpy_0.74.0.bb)
does actually fix the issue for this recipe.

Am I missing something else still Alexander?

On Mon, Feb 17, 2025 at 7:58=E2=80=AFPM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> For auh to work, upstream version check needs to function properly and qu=
ite often it doesn=E2=80=99t because no one ensured that when writing the r=
ecipe. Can you show the recipe and the output of =E2=80=98devtool latest-ve=
rsion recipename=E2=80=99 ?
>
> Alex
>
> On Mon 17. Feb 2025 at 19.09, Tom Geelen <t.f.g.geelen@gmail.com> wrote:
>>
>> Hi all,
>>
>> I am currently trying to set up AUH locally in order to ease the
>> maintenance of the layer I'm maintaining (meta-homeassistant).
>> I have followed the steps given here
>> https://docs.yoctoproject.org/dev-manual/upgrading-recipes.html and
>> have configured it to parse all the recipes in my layer (99% python
>> based recipes).
>>
>> Now I have a problem. It correctly parses all recipes, however it
>> finds no upgrade candidates. This is strange as I know some are in
>> need of an upgrade, and a newer version is available on pypi for
>> instance. Moreover I get quite some skips with the following error:
>>
>> Skip package meta-homeassistant/python3-hass-nabucasa (status =3D
>> UNKNOWN_BROKEN, current version =3D 0.87.0, next version =3D 0.80.0)
>>
>> Where does it get the 'next version' value from as the latest version
>> upstream is 0.92.0.
>> I might have misconfigured something. I used the default
>> upgrade-helper.conf with the following additions:
>>
>> layer_mode=3Dyes
>> layer_name=3Dmeta-homeassistant
>> layer_dir=3DBUILDDIR/../sources/meta-homeassistant
>> layer_machines=3Dqemux86-64
>>
>> Thanks in advance,
>>
>> Tom

