Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 824FFD3A667
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 08:54:11 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.10383.1730278447901584639
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 01:54:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FTtKd+YJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fc96f9c41fso7015931fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 01:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730278446; x=1730883246; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PrB0RDhdKHhZ3+1JS/oIzRUnhqcgAvF8dGrOV5Dz2zs=;
        b=FTtKd+YJZdSZtDhqw5EDplX4XTHMwpt+MK/zMpxldXJxs+zttK7EBOpzTQcW5CxnMz
         WhmGkyb6kw5WZeqYBbZ1K9TdcU53phwpOh3aXROO4jKMvKIpk5IgV4gfokf4T1Apm9bw
         vaAGWOJrfqAEKnz2JZulmWkmL3PpsrjLlpFozbavcGH+WfF8HQsgt2BngfD0ApnJX1Ql
         31Lb94sJnG8K1+zhJxUPW/YgF2onYoihEmLsWHGopTbNB6xKj4b/f0wgiTI4p81nLqyQ
         EcdTWgtcxQtlo9SBpoe3mAZRuX6BVJCdbk2naqajFJalxQd0v5xDK4hmuJn/guSi67uW
         XAWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730278446; x=1730883246;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PrB0RDhdKHhZ3+1JS/oIzRUnhqcgAvF8dGrOV5Dz2zs=;
        b=nkFHdwbOliOtSliIiT2G/gOP7NuO2VyAxeLsAhADTuaos58EJEwtqyhfEYDC0nOKnk
         jPBxb29zQ2RjjhL5j3zcvl71o7Akg3f55/ve24i4lgkalvSF+LFeiHD1gA/ym5tD+b3y
         fq8rX4KIkIWWFzJr7fIrM4J1nf8d266f1e8duQGjlddltVXIr4gzcpekNiLuX7yU83tF
         Vns/sxYuHvCKsI6WieiUp58/9/sSJsAKGO69HB5Mh67jDt1WW1QgpVLmYx3rCBgPQ4Ab
         BDmS6UXpGfyQXeHA2mEbNLsMzyTVqbvdGfeZPeol0K73t1PPaT+B2NPuUaxNZwzdsQCN
         z/Ow==
X-Gm-Message-State: AOJu0YzpybHijWWH0tSpgu/QosCGTgQUcOcgpJq+gQ1pzBqZTOMaYps3
	ToAIJB1xJaYG5lE/GhDU/opf8XHfGx7ZKanlGRiI52+d4VwkF8JWkmJFmDTMb26FEOYLpZ0rbOD
	7o4TmrS54R8z5A72hJ0FWlnJvwC9n2A==
X-Google-Smtp-Source: AGHT+IHPBWGvKHitu+cPUICnBDx81PrqLWYs0y1Dx7O0Z5qMwFfaHcem+8bSPtFPkrMsVnrEB1/uKuQuhqsAY71/ZhI=
X-Received: by 2002:a2e:b8c1:0:b0:2f7:6277:f2be with SMTP id
 38308e7fff4ca-2fcdc95906bmr17017061fa.22.1730278445384; Wed, 30 Oct 2024
 01:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <VN9Q.1730278163030155799.pwBR@lists.yoctoproject.org>
In-Reply-To: <VN9Q.1730278163030155799.pwBR@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Oct 2024 09:53:54 +0100
Message-ID: <CANNYZj_Z6i6tYCB-O3DGuwHk=U9g0-eOK97_v8+YB8BqFoQCtw@mail.gmail.com>
Subject: Re: [yocto] About Yocto based images
To: yocto@lists.yoctoproject.org, dhanyalakshmi.k@priyarajaelectronics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 08:54:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64175

On Wed, 30 Oct 2024 at 09:49, Dhanyalakshmi K via
lists.yoctoproject.org
<dhanyalakshmi.k=3Dpriyarajaelectronics.com@lists.yoctoproject.org>
wrote:
> core-image-minimal
> core-image-base CLI
> core-image-full-cmdline
> core-image-sato GUI
> core-image-x11 GUI
> core-image-weston
> core-image-lsb
>
> To make an informed decision, I need to understand the specific differenc=
es between these images, particularly concerning layers, recipes, and other=
 relevant aspects.
>
> Could you guide me on how to gather this information effectively? What sp=
ecific questions should I ask to gain insights into the differences between=
 these images? Additionally, if anyone knows the rationale behind the vario=
us image options provided by Poky, in which scenarios should I consider bui=
lding one of these images?

You can gather this information yourself at the source: the recipes
for those images in meta/ that fully define them and contain their
descriptions. If you have specific questions about specific images, do
ask.

When you settle on something, copy the image recipe to your product
layer, rename it to something like myproject-image-imagetype.bb and
modify as necessary.

Alex

