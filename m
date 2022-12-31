Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD548C4332F
	for <webhook@archiver.kernel.org>; Sat, 31 Dec 2022 17:16:22 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.46020.1672506973219740028
 for <yocto@lists.yoctoproject.org>;
 Sat, 31 Dec 2022 09:16:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TrPItS+m;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so17678989wms.2
        for <yocto@lists.yoctoproject.org>; Sat, 31 Dec 2022 09:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A2HzjbePnceKCwjav/zNsAs1VeLfSsiA56ZCAiPsnw0=;
        b=TrPItS+m4/tn8opPWDbE1vw82GcQfGIEOg2AfhIqPyEgYpsLEHAVsXiyl44eXebkTi
         pBpUKldvWgiqZGS1yX7rkTFbZ9Pv2+uo7RMZrRnRT99pg4jEeeNfJDkDMgNZTeW/tZHh
         OGvBZWdqaj7ECnKwhgVIsaa2LSWcb6Pa6B2zM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A2HzjbePnceKCwjav/zNsAs1VeLfSsiA56ZCAiPsnw0=;
        b=RFGHYccXNHHF0+G9FgPoV2pTDnsN8nFfhAfwS9y2wwWf/b5d7F7mjyj2zegIir2Hgf
         sqKQoSrzYpPYvRKYmQcJRuVN9yWGfO7WdVI2ivm5nkGrQYwI3B+Zh7HRcrgepe91SnFS
         Efxvnv8lXfBr3edBc5de6fkclwnIuA57ljEtj7cWWFx/9H6jNsNCP17n1RqjReOiCH9z
         V0q3iTokLXxIoKAlkkC7dqC7M+ZGsThv5R8soIoVFyF07PQ96adiQF7b6YAripqxiFjK
         ndIMDuMKDxoEn84dPBQlf1fwhSR6YYra9lgfxpNpNv8866gUtQKzwW4m97TzRMWC/TIn
         xZgA==
X-Gm-Message-State: AFqh2kr+k3tXJ5LsxMbGA3PiJNTad/7n7+5Q4dm2i9CtBc7l5VOV22q8
	MeB53LYJtj+NwuPx/isEcsp3Ug==
X-Google-Smtp-Source: AMrXdXveV+vBdb/qhMifyD+sTSd+Jm6ZONF5klfhBFPxCWthaxdL+iih/aURHaQMJZkTJSAL6mzgkg==
X-Received: by 2002:a05:600c:1c81:b0:3d1:e907:17cb with SMTP id k1-20020a05600c1c8100b003d1e90717cbmr25368311wms.1.1672506971755;
        Sat, 31 Dec 2022 09:16:11 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:1a1f:74ee:21ca:3bb? ([2001:8b0:aba:5f3c:1a1f:74ee:21ca:3bb])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c468c00b003cf57329221sm36191866wmo.14.2022.12.31.09.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Dec 2022 09:16:11 -0800 (PST)
Message-ID: <cde182bd7f879ba447e77048f0f4f77c37744fdf.camel@linuxfoundation.org>
Subject: Re: [yocto] Strange behaviour with quilt and kernel
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mauro Ziliani <mauro@faresoftware.it>, yocto@lists.yoctoproject.org
Date: Sat, 31 Dec 2022 17:16:10 +0000
In-Reply-To: <0397ea4a-0e93-1fdd-1026-fbd7b706a290@faresoftware.it>
References: <0397ea4a-0e93-1fdd-1026-fbd7b706a290@faresoftware.it>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 31 Dec 2022 17:16:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58891

On Sat, 2022-12-31 at 16:02 +0100, Mauro Ziliani wrote:
> Hi all.
>=20
> I'm working on a board with kirkstone.
>=20
> I update every layers with latest kirkstone branch available, poky layer=
=20
> too.
>=20
>=20
> I'm patching the kernel 6.0.8 for debug purpose: 0001-debug.patch
>=20
> I make a patch with quilt as I do in the past (before update of poky)
>=20
> The problem is this:
>=20
> - I do "bitbake -c devshell virtual/kernel" and I get the terminal=20
> prompt on kernel-source folder: i check and the patch is applied
>=20
> - I do "quilt top" and quilt tell me "No series file found"
>=20
>=20
> Where is my patch?
>=20

Is the kernel using git to handle patches instead of quilt?

Cheers,

Richard

