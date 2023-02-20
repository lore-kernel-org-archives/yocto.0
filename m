Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5AF6C636CC
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 12:12:09 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.11397.1676895119794862075
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 04:12:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LHWRelvR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id l1so649656wry.10
        for <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 04:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W210nZkfZMzzB84Ob2GAwSiwltALNxYBEYoVcy/kyU8=;
        b=LHWRelvRyjdFEXIEIF5ZN1AObpDfTZQ3vUTHni4ocPrEn2X6PLRshrY3wyaWD5u1jj
         uca9pnJOdG/iXGPRUSDucjuF4w9NBQbUHUWxylRQQEKyBBj5bNHSwzzXb2F4fvXVPWcH
         fWUIYghvVVol8z0beasrb9SNfC2fDYcyXDXUE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W210nZkfZMzzB84Ob2GAwSiwltALNxYBEYoVcy/kyU8=;
        b=WsfU7rW+xJbF/CDGaWMD/nHvZCkHelEVXuO2BWo04lk8EiXlLqertM6NN9iBJi8ZMe
         givf32dbNKB2ByKsIirboMbSJHooDTdcRXgNubxqRRAlFq/dzackHQ0rlC9uO7rs4JaR
         Uk2ziWxCtXXoB/3o4PmyPFmvPsT/c1fULB0YrI9eOY8XwbKuVCOePGJ/kAi0ldW1PEXi
         z0b4+oSx5YEfi1w5bPiZOPWUqupgPNsN3whe5j2o3iSB87LyP1P+e5xHF6hORUCEIagq
         gVa5QQMroVoTjTiTNNyX0CwBJ1AiWLwCkfkbCOM4LLGvLO+Z6ku6wG+QP+9N7256Sxqd
         6yXw==
X-Gm-Message-State: AO0yUKXmTF3QKm/C8E/L4O3cJJNcMxYYiFSace7oNIOcyFO5Ya3UUJB7
	j7yTP+DMrZkiDmf+JPoiPHHNJQ==
X-Google-Smtp-Source: AK7set87fTfuVeu09x5V8hjZzX4vidFtzV3NYTH3lQeGQJ0tFgMSfTCSpJj4peVOwqVpYVxyuHCVIQ==
X-Received: by 2002:adf:f2c9:0:b0:2c5:5aef:274e with SMTP id d9-20020adff2c9000000b002c55aef274emr982435wrp.43.1676895118186;
        Mon, 20 Feb 2023 04:11:58 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:6c6b:45a8:4f0f:7fab? ([2001:8b0:aba:5f3c:6c6b:45a8:4f0f:7fab])
        by smtp.gmail.com with ESMTPSA id k31-20020a05600c1c9f00b003dc42d48defsm1083047wms.6.2023.02.20.04.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 04:11:57 -0800 (PST)
Message-ID: <fe189cb1d03745ff13f4a3f1b40d85de7d82a4f4.camel@linuxfoundation.org>
Subject: Re: [yocto] AlmaLinux 8.5 support in Langdale
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kris.Chaplin@amd.com, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Mon, 20 Feb 2023 12:11:57 +0000
In-Reply-To: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
References: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 12:12:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59251

On Mon, 2023-02-20 at 09:12 +0000, Chaplin, Kris via
lists.yoctoproject.org wrote:
> Hello,
>=20
> I'm working with our team to test supported development OS for our=20
> AMD/Xilinx PetaLinux distribution built on top of Langdale. The official=
=20
> supported Linux distributions are Ubuntu, Fedora, AlmaLinux, Debian and=
=20
> OpenSUSE, so we regtest our flow on each of these prior to advertising=
=20
> support.
>=20
> However, the supported version of AlmaLinux for Langdale is 8.5, and=20
> this is not available for download any more=20
> (https://mirrors.almalinux.org/isos.html).=C2=A0 The earliest version is =
8.6,=20
> with 8.7 being most current.=C2=A0 The 8.5 isos are stripped from the=20
> mirrors, so url-games dont work here either.
>=20
> What is the recommended verison of AlmaLinux to test against Langdale?=C2=
=A0=20
> Is there a plan to update the Yocto release notes to reflect this?

We're testing against AlmaLinux 8.7 so I think this is a documentation
issue and the value hasn't been updated to match what we're now testing
against. I've updated master and I suspect we'll follow up with changes
to the other release branches.

Thanks for mentioning it.

Cheers,

Richard

