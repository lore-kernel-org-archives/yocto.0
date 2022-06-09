Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20ADDC433EF
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 21:20:45 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.19277.1654809638015775035
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 14:20:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=X5g/Znm1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id c21so957088wrb.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 14:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=ydQDwrrYttRXDEr57gukXuFg3hXZ/p6h3jytYqUSQaw=;
        b=X5g/Znm1dNNz70Q1lAjC7VsCEfTFuVwkW5TFPqZJkNLccfGB31GVlteYF8Q1pVrmE/
         FVAEwK9WzScOd5dgXfUzrxG8OUT1iqpUsGiUVZf6pQulB4ClYN130zwJicf2FXy0B6+g
         d6KS5sVKxNqLwCbj5nJZJsCbnS062M3LsiPoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=ydQDwrrYttRXDEr57gukXuFg3hXZ/p6h3jytYqUSQaw=;
        b=xzfx5TwU3iI+7Sg4HanXfO8IcAuwXVT1sws/ik+8hScfo3NiqVqD6p/2iPO9sEdELG
         fTaiPXYeX7DNvGWc9AJqY2Z0D9q3GcaH/eeX2FxEqVuiOYJxqMCRpWKQgkZqNkYlZFoJ
         NANQWfdXjJ/EGuHy5joksxcyBG6ddysPbZFLwN6zk4puHJ0XUt3v3O4UC5c+n9huOoZA
         LCnjkMIbe949eevjL07k3/LZdJJ5sao7jA+0rq9J/TifG0xurjvRhyP48pi1CVrrfAYn
         ekiPMQmiaFfLSmePFXbhKMWo11JY1eflIQdYganZeQWj43FXDy8YJFC4Ur3bHvNABTby
         FFsA==
X-Gm-Message-State: AOAM532tWIw1JCAYEaptU4zxMsGyMGlj5Q6sCqmTS32Y7awA953GJEhU
	+WKNiewIVPaCQqpcHiYw+jEYRw==
X-Google-Smtp-Source: 
 ABdhPJyFwgQyIcEf5OkoHOWLnsquBSg8gKinyby4FMiz0YxqH/iv+b/g7DnOTlUf4PoBd9u5yj9Zeg==
X-Received: by 2002:a5d:64e6:0:b0:218:29d3:ee74 with SMTP id
 g6-20020a5d64e6000000b0021829d3ee74mr26081147wri.657.1654809636448;
        Thu, 09 Jun 2022 14:20:36 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a80c:d45b:2638:f3f9?
 ([2001:8b0:aba:5f3c:a80c:d45b:2638:f3f9])
        by smtp.gmail.com with ESMTPSA id
 i7-20020a05600c050700b0039749b01ea7sm471449wmc.32.2022.06.09.14.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 14:20:35 -0700 (PDT)
Message-ID: 
 <dbf9862962fa521be487b43664368587dc73052c.camel@linuxfoundation.org>
Subject: Re: [yocto] Question about psuedo abort errors
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rusty Howell <rustyhowell@gmail.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Thu, 09 Jun 2022 22:20:34 +0100
In-Reply-To: 
 <CAE+BM3mNuFOntxPe6ZXnHhfj9ujuZMBXZMXgOh2K-rrbCdPU9A@mail.gmail.com>
References: 
	<CAE+BM3mNuFOntxPe6ZXnHhfj9ujuZMBXZMXgOh2K-rrbCdPU9A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 21:20:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57312

On Thu, 2022-06-09 at 10:38 -0600, Rusty Howell wrote:
> My company is using yocto.=C2=A0 When building our own recipes, I get
> pseudo abort errors rather often.=C2=A0 I've read the wiki page about
> them, but I'm not sure exactly what we are doing wrong that is making
> this happen.=C2=A0 We have many recipes for various libraries and
> applications.=C2=A0 The files listed in the abort error log are usually
> C++ header files.=20
>=20
> A coworker has told me that setting PACKAGE_DEBUG_SPLIT_STYLE =3D
> "debug-without-src" in the local.conf will allow bitbake to ignore
> this error. But in the end, I would like to understand what exactly
> is the root cause, so that I can adjust our recipes to fix this.
>=20
> Here is the pseudo.log from the most recent failure. I know a lot of
> proprietary context is missing for anyone in the OSS community to
> give super confident answers, but I appreciate any suggestions.
>=20
> Some context here:=C2=A0=20
> * We have a legacy git repo that contains the source for several
> different libraries.=C2=A0=20
> * We use CMake recursively to build all the libs from the top level.
> * Some libs depend on other libs in the repo.
> * I am trying to build the recipe "libc4statsclient", which is just
> one of the libs in the repo.
> * The header file shown in the error is part of another library and
> recipe.
>=20
>=20
> ERROR: Task (/home/rhowell/corex-develop/yocto/sources/c4-distro/meta-c4/=
recipes-c4/libc4statsdclient/libc4statsdclient_git.bb:do_install) failed wi=
th exit code '1'=20
> Pseudo log:
> Setup complete, sending SIGUSR1 to pid 3063620.
> path mismatch [3 links]: ino 3804719 db '/home/rhowell/corex-develop/yoct=
o/build.imx8mq-core/tmp/work/imx8mq_core-control4-linux/libc4statsdclient/l=
ocal+AUTOINC+e18ad903a2-r3/package/usr/src/debug/libc4statsdclient/local+AU=
TOINC+e18ad903a2-r3/git/control4/c4shared/logger/logger.hpp' req '/home/rho=
well/corex-develop/yocto/build.imx8mq-core/tmp/work/imx8mq_core-control4-li=
nux/libc4statsdclient/local+AUTOINC+e18ad903a2-r3/git/control4/c4shared/log=
ger/logger.hpp'.
>=20
> Thanks for your time and any suggestions.

Starting with the error message, it says that a path of:

WORKDIR/git/control4/c4shared/logger/logger.hpp

was accessed and it was found in the pseudo database as:

WORKDIR/package/usr/src/debug/libc4statsdclient/local+AUTOINC+e18ad903a2-r3=
/git/control4/c4shared/logger/logger.hpp

This doesn't seem so unusual to me since recipe source files would
often be hardlinked into package/usr/src/debug as part of the build,
however the ordering is backwards, the git/ should be created first,
then the WORKDIR/package one.

I was thinking this was really odd, then I realised you say this
aborted in do_install. WORKDIR/package is created by do_package, *not*
do_install which runs before do_package. This probably starts to hint
at what is going on.

Is this a directory where a previous build has run? If so, what changed
between the build runs?

My suspicion is that WORKDIR/package is being deleted outside of pseudo
and that is confusing things. The question is what/where it is being
deleted. Are you using rm_work?

The WORKDIR/temp/log.task_order file can be interesting to see which
tasks reran and in which order.

I appreciate this isn't an answer but it might give you an idea where
to look...

Cheers,

Richard



