Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536EECED27F
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 08:53:10 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.4314.1728377587503970487
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 01:53:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=sJmKbJDX;
 spf=pass (domain: linaro.org, ip: 209.85.208.178, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fad0f66d49so79850891fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 01:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728377586; x=1728982386; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AT7BQ7XB4DWpl2EwGPaMYKYeNlpEGFh0wo6fYcayPw4=;
        b=sJmKbJDXue2YKqSEsE5rM5tNi8DHIdTDbgKBsVCCH70xbZkSjmYR6Rsa3TlmDP6m4H
         4SwBRd6eNEpnSQZ5h6u662jvdoCladjp0SH1Yy8vzuY6IzFy2ryhKDxah56W3igEoAnc
         gOOrrx0E92x+rxjKvLAT5BoQCikg34LvS0k1SXfVIJFP7o/TafkJzs49XGJRt0xpxhwC
         wJ5bFi9hFgjAOXhd49kSzwwqz++ps8ukWQrWPNinI7pXaGIHnbcJBO61KEbikPglqo09
         busMvwhfV1hhr077o3XV+LOR/nAJHbtOzGAMgDYfycCLPL1JyuIG5paiW/w4+RuGjzi3
         mfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728377586; x=1728982386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AT7BQ7XB4DWpl2EwGPaMYKYeNlpEGFh0wo6fYcayPw4=;
        b=BeE79w++Oe0+rs43L+AwVLZVYrEL1Q9/KFw6dnMu8sNDM27K5UHF6OlEcl/saBKUu6
         qBW2JlQDvu0WbzjVjKDKKUK9H2cZUaCNm8vyZ7e+itCrTEKOfZxwUnAb4d0jPnS+qPht
         gJVXT81PNI7kICvhuzmpvZlhYfZz05QSXTisoaL2cxvBQAAv5iXRwhMs4/N4MgrcSsK+
         hM+6sx+tWNn74PwTLJVyzyjxKrn5Bx5w1WfMLzDP6hWR49zik2LsSMRbB2K4uVSj8e+B
         /UWAUsTG1azB32AupN/LkeEGcIsjtGC08QV2Rm4uHxtIZPPn0LQDhFmFZrmPkqebTyxy
         f2fQ==
X-Gm-Message-State: AOJu0YwVYbh+9sReeDPPhstLDBl+vzmr4oAmC/7WV6ppx6lvb/lSuYHk
	8vkc2xDoOZiqIGSyNgWF9UQ4Lb207wbnkgIPp/69+JGtQv86KVbFBEtDmVVjMOw58f8KuAnc31W
	ylv4=
X-Google-Smtp-Source: AGHT+IFerICKAVSRjTjh1WYA5Ln/YP8/1qpwIgg2S56VdrJYAX+ITGe6xdSELKXu8c7ePGg1hx6I/g==
X-Received: by 2002:a05:651c:1245:b0:2f7:4d86:5dcf with SMTP id 38308e7fff4ca-2faf3c661a4mr51275461fa.35.1728377585523;
        Tue, 08 Oct 2024 01:53:05 -0700 (PDT)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2faf9adcc72sm10703271fa.62.2024.10.08.01.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 01:53:04 -0700 (PDT)
Date: Tue, 8 Oct 2024 11:53:03 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Cc: Dmitry Baryshkov <dbaryshkov@gmail.com>
Subject: Re: [yocto] Yocto Binary Distro
Message-ID: <ZwTy7wiOzHJcVNjn@nuoska>
References: <CALT56yOVpmvaS+oWDG1oJeOLOW2NbLq6TwCGwisFqh=4c95h8Q@mail.gmail.com>
 <11278.1728376247903375011@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11278.1728376247903375011@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 08:53:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63959

Hi,

On Tue, Oct 08, 2024 at 01:30:47AM -0700, Aleksandar Nikolic via lists.yoctoproject.org wrote:
> On Tue, Oct 8, 2024 at 01:25 AM, Dmitry Baryshkov wrote:
> 
> > 
> > Consider using shared SSTATE, it saves you from all the rebuilds,
> > while keeping Yocto internals intact and sane.
> 
> We are using sstate cache, but if I am not mistaken it can happen that even though a package is in the sstate cache, there's a cache miss and the package gets rebuilt - and this is exactly what some coworkers would like to avoid, cause it means a different binary is on the target than the one previously built and tested. That's why I posted another question here (maybe 2 weeks ago) if there's a way to force Yocto to only use sstate-cache and fail if a package needs to be rebuilt or to print a list of packages which were built from source. But there's no an "easy" way to do it.

Why is one compilation of the released recipe different from another? Who
maintains the toolchains and dependencies?

Yocto is for building from sources. It doesn't really have ABI checks and layers
which would easily enable to freeze an ABI and integrate binaries on top
of that. Every rebuild can change the ABIs in significant ways.
The approach in bitbake is to rebuild full dependency tree if something changes.
Compilers, glibc etc get updated all the time and it's important to know if something
fails to compile, also to make sure that needed features are enabled, correct
compile flags applied etc.

It is possible to integrate binaries into yocto builds but then it must
be understood that there are no ABI compatibility checks. The binary
may start failing at any time. The recompilations may be costly but
that's how yocto is. sstate cache helps but doesn't take away the
full tree rebuilds when something e.g. native recipe changes.

IMO it is tricky to fight against this and it's better to accept it.
If developers want stable ABIs and integrate binaries then other distros
could be better but they come with different problems. Debian is hard to
optimize for the full stack, e.g. distro and machine features. OBS
may help building only subset of packages from scratch, but even there
ABI checks may not exist and user need to rely on test automation to detect
breakage.

Yocto can build an SDK which can be used to generate 'golden' binaries but
again compatibility of different SDK builds needs to be checked
to know when binaries may start breaking. At various points ABIs change so
much that all binarees need to be recompiled. Think of a security update
which brings a new openssl version with incompatible ABI.

Cheers,

-Mikko

