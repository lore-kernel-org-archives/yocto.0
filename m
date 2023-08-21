Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B8AEE4996
	for <webhook@archiver.kernel.org>; Mon, 21 Aug 2023 22:53:15 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.4945.1692658393182759929
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Aug 2023 15:53:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LS6JSkz3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-3fee7b7689dso21719735e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 15:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1692658391; x=1693263191;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BGIJDuMZNXmySYskddMAdXmiopK47f4+tOHNorsmfBg=;
        b=LS6JSkz3ptLq8HS9pFYs74fACdvHB1Ph1E6n6nlwNFKd5T6m2T3YTqWWg/WaUtUfuL
         jq+eGYVywbJyHcJpc6DeVNgQm5lae+kBQ0bq+ht5Er78tVqJTupbznDYgoFTCOJ7E0pQ
         cYpmJJXCGVgtivtyZU+Si2ZtfSQflBiMUTs9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692658391; x=1693263191;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BGIJDuMZNXmySYskddMAdXmiopK47f4+tOHNorsmfBg=;
        b=HCFvRujaOkeKP6hpp8cR2TlqpAc/aWnN3/1h33FLCdptKU6G9VmFsu/YsDoVlrKZL+
         Z1Y/im7VnhMXxoZ3lmzeZQnP3zlGJl2r1vxV921cIMQ1zjROIbaZ1o92fcYYhJjH6vRN
         FWsrupxSeODKYR4Sl1MyG05G09uw+OAr7wkpIDHNnm28CMFzheWhTBsglZCgimShKwF1
         HlqxvQ6EsGZGRRrJY7LxsRzNehgABQKirt0bttiH5dvieDWAoaiZHyejwCJ/LShvDiSX
         zMNNGXVoVuuZsTNnCsuaOuYNiHWkEMEqrEblS7zqs2igJLk95u6YP3IcBPn9CDwTz0sj
         /0UQ==
X-Gm-Message-State: AOJu0YwijE+2jBJHUbG7oxGTsJerUTMEfc5qcfV1ZCrztMOA8uihinmE
	owQ8p2pwRw7muP3gx8lv9M1I9g==
X-Google-Smtp-Source: AGHT+IF9Q8T4ob5GFmofMklEnk6zvxRjWA9iupF+t25vkdGX+nhYXyNzRl1yNxt9z6DUN1obQiZZjg==
X-Received: by 2002:a05:600c:210b:b0:3fe:ef5b:bb6 with SMTP id u11-20020a05600c210b00b003feef5b0bb6mr3632916wml.35.1692658391334;
        Mon, 21 Aug 2023 15:53:11 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:eb4c:c27c:35e6:14a1? ([2001:8b0:aba:5f3c:eb4c:c27c:35e6:14a1])
        by smtp.gmail.com with ESMTPSA id g10-20020a7bc4ca000000b003fe29f6b61bsm13885434wmk.46.2023.08.21.15.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Aug 2023 15:53:10 -0700 (PDT)
Message-ID: <3251b838adc306a0cfab650c48ac0d26a0a2fde9.camel@linuxfoundation.org>
Subject: Re: [yocto] SDK build generally broken?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Daniel <david.daniel@vrag.ch>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 21 Aug 2023 23:53:10 +0100
In-Reply-To: <7d6af5897b3a409c3252dcce0286ff449952cff1.camel@vrag.ch>
References: <7d6af5897b3a409c3252dcce0286ff449952cff1.camel@vrag.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 22:53:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60841

On Mon, 2023-08-21 at 12:49 +0000, David Daniel wrote:
> Hello everybody
>=20
> Has anyone successfully built an SDK lately? I cannot build any SDK,
> neither for my image nor for core-image-minimal.
>=20
> If I define my own image I get the error (I already wrote - nobody any
> idea?) that the dummy-sdk package is to be built for a different
> architecture:
>=20
>=20
> x86_64_nativesdk           3.1.2-r0    oe-repo  330 k
>  nativesdk-openssl-conf                 x86_64_nativesdk           3.1.2-=
r0    oe-repo   12 k
>  target-sdk-provides-dummy              sdk_provides_dummy_target  1.0-r0=
      oe-repo  9.0 k
>=20
> THIS ERROR ONLY APPEARS IF I DEFINE MY OWN IMAGE (though the image can be=
 built and works).
>=20
> I guess this is due to the following code in the sdk-dummy recipe:
>=20
> python() {
>     # Put the package somewhere separate to ensure it's never used except
>     # when we want it
>     # (note that we have to do this in anonymous python here to avoid
>     # allarch.bbclass disabling itself)
>     d.setVar('PACKAGE_ARCH', '${DUMMYARCH}')
> }
>=20
> But furthermore, I am completely unable to build the SDK with my
> machine - I took the machine from the working image sources I am
> working with and took a plain master poky checkout (bleeding master).
> When I want to build the SDK for the core-image-minimal I get the
> following error:
>=20
> ERROR: m4-native-1.4.19-r0 do_collect_spdx_deps: Error executing a python=
 function in exec_func_python() autogenerated:
>=20
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_collect_spdx_deps(d)
>      0003:
> File: '/home/david/yocto/bf133/poky/meta/classes/create-spdx-2.2.bbclass'=
, lineno: 494, function: do_collect_spdx_deps
>      0490:    from pathlib import Path
>      0491:
>      0492:    spdx_deps_file =3D Path(d.getVar("SPDXDEPS"))
>      0493:
>  *** 0494:    deps =3D collect_direct_deps(d, "do_create_spdx")
>      0495:
>      0496:    with spdx_deps_file.open("w") as f:
>      0497:        json.dump(deps, f)
>      0498:}
> File: '/home/david/yocto/bf133/poky/meta/classes/create-spdx-2.2.bbclass'=
, lineno: 475, function: collect_direct_deps
>      0471:    deps =3D set()
>      0472:    for dep_name in this_dep[3]:
>      0473:        dep_data =3D taskdepdata[dep_name]
>      0474:        if dep_data[1] =3D=3D dep_task and dep_data[0] !=3D pn:
>  *** 0475:            deps.add((dep_data[0], dep_data[7]))
>      0476:
>      0477:    return sorted(deps)
>      0478:
>      0479:collect_direct_deps[vardepsexclude] +=3D "BB_TASKDEPDATA"
> Exception: IndexError: list index out of range
>=20
> ERROR: Logfile of failure stored in: /mnt/data/yocto/bf133/sdk/build/tmp/=
work/x86_64-linux/m4-native/1.4.19/temp/log.do_collect_spdx_deps.731506
> ERROR: Task (/home/david/yocto/bf133/poky/meta/recipes-devtools/m4/m4-nat=
ive_1.4.19.bb:do_collect_spdx_deps) failed with exit code '1'
>=20
> Is the generation of an SDK outdated, not recommended, not maintained
> anymore? Or do you have any recommendations to troubleshoot these
> issues?

SDK builds are tested on the autobuilder so it does work, at least
there.

Are you using the right version of bitbake with that metadata? That
index issue looks a bit to me like it is the wrong version of bitbake.

Cheers,

Richard


