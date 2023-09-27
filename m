Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45137E80A8A
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 22:41:46 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.2174.1695854501604018664
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 15:41:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=E0EuPGGW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-32157c8e4c7so12010311f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 15:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695854500; x=1696459300; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHJAVxkzB+x24hrr7PBkMYKTuchCEZK1/xZkE0i+xew=;
        b=E0EuPGGWys9WGZ5v/CB1eWAmL9UV3KvromCfEPk3DK3s9EtUTeDJCPtAgUEeifGpSt
         3ZoPBpLZpfOwqqAJlP3DIdggPWtko1NjIBqsdI2bMRPCePE0Or3fNQVXvyUUaQlzNxUR
         1QTh1Hw/9GndHe6IThDBpOoKu0WGe1ctL/arU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695854500; x=1696459300;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iHJAVxkzB+x24hrr7PBkMYKTuchCEZK1/xZkE0i+xew=;
        b=I3Xic2PN4HnoKm5lBLZy+y23UvlZglQQWgs4yRH8gHDeaj3dhunKeaFXLIq/+XtdUY
         bv5D02y8xj/IWTwn8SUwK5uXcm6lsmYmcE/sodye/+3lUs1aDl8XKp9PCImU5c1P96yo
         TKv7+D5Ewuj2OXqQztMRwj2ZDJAchCvr/neDIXi8arMnhz29wLfR6F8HoLkX5OB/dMR5
         2QO3t7+00LcZoTl1sRBoZBDuCcIQ6NRl0jkcbT2RMOWWZ+vxd62co50rmmvKwHGODoWt
         uERA4/JRfScfpl7MAFk4zNwYHLWYhcrrDU8VtFWTbWO5rVB1A4i7qs2zEfR4lpRFM+Ut
         D/zQ==
X-Gm-Message-State: AOJu0YwqEotay1llNYh9Glp+UQgqhZIojK4qrzR/7fzoN3DnQuB8QXFZ
	SDUHNXQJeyHr6QSPTsqcTfKBwQ==
X-Google-Smtp-Source: AGHT+IGxRcVuXYai2popTFNVUNGdIy0bA0QzxlLDAYlHBDII88r/J6fbThEkRlbPxvKzj1PghH5efg==
X-Received: by 2002:adf:ab1c:0:b0:324:8239:2873 with SMTP id q28-20020adfab1c000000b0032482392873mr453959wrc.37.1695854499624;
        Wed, 27 Sep 2023 15:41:39 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93? ([2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93])
        by smtp.gmail.com with ESMTPSA id z16-20020a056000111000b003176eab8868sm17843510wrw.82.2023.09.27.15.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 15:41:39 -0700 (PDT)
Message-ID: <257d2db0bbb4f2b10814f068bfa32e3941ae95b2.camel@linuxfoundation.org>
Subject: Re: [yocto] Trouble enabling vtable-verify for gcc-cross
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alex Roberts <arob109@gmail.com>, yocto@lists.yoctoproject.org
Date: Wed, 27 Sep 2023 23:41:38 +0100
In-Reply-To: <CAPkENw-000rkwb1gBmgVTa1RarUe0yUOwXM_NiXQd7RJ3C53sg@mail.gmail.com>
References: 
	<CAPkENw-000rkwb1gBmgVTa1RarUe0yUOwXM_NiXQd7RJ3C53sg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 22:41:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61146

On Wed, 2023-09-27 at 09:40 -0500, Alex Roberts wrote:
> Hello All,
>=20
> I'm having trouble getting gcc-cross-9.3.0 recipe to build libvtv. I
> have added =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D to EXTRA_OECON=
F via a .bbappend.
> The vtable stubs are added to libstdc++ but libvtv itself is not
> compiled. This causes recipes compiling with -fstandard-verify to fail
> because libvtv doesn=E2=80=99t exist and cannot be linked in.
>=20
> Looking at the autoconf files and the resulting Makefile, libvtv
> should be getting configured and compiled with the recipe, but I can
> not determine why it is not.
>=20
> Does anyone have experience enabling vtable-verify to a cross-compiler
> toolchain?

If libvtv is a separate library (I've not looked), I suspect there are
tweaks needed to the gcc-runtime recipe to build it?

Cheers,

Richard

