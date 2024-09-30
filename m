Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB48DCF64A6
	for <webhook@archiver.kernel.org>; Mon, 30 Sep 2024 12:53:41 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.53943.1727700815385893807
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Sep 2024 05:53:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QdaJD6lH;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fac60ab585so12972141fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 30 Sep 2024 05:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727700813; x=1728305613; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lHHV2IzpVR5th+loJOnR52dA83b6vRXPBitWYxo1Fao=;
        b=QdaJD6lHV++SHoIRXeWnkEy7igSXo5w6cQVO1r/MbLdRLFOCrWdermgLXUjFybvaAy
         HAYxPTyZ7hCiErFcwYcMOMSyby524LaHVNQdvfSGW8S/GiAjb2N2OpTENtoXF/mg8OlF
         JRDhmc66OZsOAfCv+pFD+ssXUpOHbej4Gy/BXw6a1cWhSTA6LcocePL/Rb2UFP9D6fef
         KvieH9KtgMhaDHLTBa1jxLUO/kIRnPJl9jA3URZ0Pkes+KuYT9jhI68uagwD6TaMnmFH
         ZTuu9MvsPzXyr9a2cH1IdXov0XlTSr/30Io4WOPEEOaR5G8Hd574u0L89gJP3z6xKuwm
         9XXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727700813; x=1728305613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lHHV2IzpVR5th+loJOnR52dA83b6vRXPBitWYxo1Fao=;
        b=IoAH/ZnlGlxakHmPmAD1Jd4fmeu42ESfPv2k0au+mA7yvNhB04mEOPMGKVsaTanrMZ
         BOOnceFuFnA1LvmXQuTbPcjCUIjJgETVQMPTJAC3cHDYVzgoWQlhrW/8D3hZDZGpSh0E
         sgOPGJ65na+WiiIHs1kVArgcOzxR/3nuymPvB9BS+Q0ovWZuJPi+k3qqOr65wrRwDqJW
         nkhAb73b3OeGyMQUNun18UEa39/TFnu1dG+/MB1eoKBCcbx9bIsKbeCfud8OF5i2QoQ7
         FChQLexjIWODgonA3y0YaC6rRXNvbqRr/uf5/h9rt3JwVmQtNdotDsklLdOvBxAJ4AcO
         fOTQ==
X-Gm-Message-State: AOJu0YwfjzkXVw+UGg0YUGEef3YW6Di1f6SDxf9fukRLsZMjAJvIch3T
	rxnU1bWpBzmmhgQ84Zk2CwUIdc4iMdeA+3NxCGsbt/xOX4Od4s6zQ1+cNpy+m0hM6xr8eDpG5Bb
	gXFl75kudbAJk/tBH0zvhmT6Bl/E=
X-Google-Smtp-Source: AGHT+IFtmecE56u5EbPkRkgtrI1k1pIfU5wYEgAFO5iwbnY5zu7KqrVxz72WFN7RO7blxdRr5sebSCrRpde1xfpA98U=
X-Received: by 2002:a2e:4e19:0:b0:2f7:631a:6e0d with SMTP id
 38308e7fff4ca-2f9d3e478a3mr49515871fa.12.1727700813027; Mon, 30 Sep 2024
 05:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9xVDpbWsa-5b0HoNR-jMyQZgVPp3LazLQx+q-GuDjBbw@mail.gmail.com>
 <7587.1727699612753182646@lists.yoctoproject.org>
In-Reply-To: <7587.1727699612753182646@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 30 Sep 2024 14:53:21 +0200
Message-ID: <CANNYZj8=CMA9hb3=7s0QdULtGPqg3UWA67xp7GrVHxVBbMA5Cg@mail.gmail.com>
Subject: Re: [yocto] esdk devtool finish workflow
To: radoslav.pesek@microstep-mis.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Sep 2024 12:53:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63911

On Mon, 30 Sept 2024 at 14:33, Radoslav Pesek via
Lists.Yoctoproject.Org
<radoslav.pesek=3Dmicrostep-mis.com@lists.yoctoproject.org> wrote:
> Regarding esdk - what is their purpose now, when there is this new workfl=
ow? I mean, in what use cases would you use esdk instead of this new workfl=
ow?

There is no purpose, other than compatibility with legacy processes
and workflows that existing yocto users rely on, and esdk's ability to
provide something self-contained that can be put on a usb stick and
unpacked elsewhere. I've prototyped a tool to do this with a regular
yocto builds.

I'd happily mark bundled esdk as a deprecated feature if I could :)

> For example, i'm now trying to setup ci/cd pipeline for testing using qem=
u. Is it good idea to run devtool runqemu or just runqemu from esdk? Cause =
i tried that and it failed - specifically, i run MACHINE=3Dqemuarm devtool =
runqemu nographic and get "runqemu - ERROR - IMAGE_LINK_NAME wasn't set to =
find corresponding .qemuboot.conf file" (i get similar error even when just=
 running MACHINE=3Dqemuarm runqemu). MACHINE=3Dqemuarm runqemu command runs=
 fine under normal yocto environment (devtool runqemu subcommand doesn't ex=
ist under this environment). Also, tmp/deploy/images/qemuarm/*.qemuboot.con=
f exist in esdk. Changing MACHINE to runqemu in conf/local.conf doesn't wor=
k either. Is this expected?

By all means, in CI you should run runqemu directly from a yocto
build. Esdks are not even intended for CI, they're for developers.

Alex

