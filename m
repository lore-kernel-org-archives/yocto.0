Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3DADCD80CA
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 13:14:48 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.91097.1696943688337891643
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 06:14:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fUb3cVD/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3248e90f032so5549962f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 06:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1696943687; x=1697548487; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qgHfW+WvdppeHK07z69X/Wf/r2SSrqj6ecVyHpIdHHM=;
        b=fUb3cVD/kq7ulG//n/+1o8Lj2P+8/UaPTQWF6K/1R3EuifmzXNlGv6zA3MUfqrxKqK
         QcB264Zc3F5Vc7ReFP2udzbCcp1PeWBs1gysRBzNCF7bgomvTb8uBKqu4Orcz9S8R5hf
         BhHWRKtMPlH2jXsv9UJYOeBdlGartBwWfKrIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696943687; x=1697548487;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qgHfW+WvdppeHK07z69X/Wf/r2SSrqj6ecVyHpIdHHM=;
        b=PiOe6YiMnrKdzEPfIMqZfQk3TVEdOHm2grwnqEmySazMDJetWbWM4x2sq0cH5Tnyyz
         TQ9MFFVD67COy8uY2OR2qnvfy/netthNWycehLzCF74t03k+UYb5lTRYbsSjplwIpiLp
         12HSewdOFITDazj5ivwNVLEugARYWsUQHm7Ja95l8Kf0UWsmiLZOTIdYRbtUuCJN/UIq
         8NEqPEUJH4bodIDh8EuuFg9lTqt1dLJ1oN9y5833PemADLdEy0btkVzt1AM7MjBS0vgw
         8biwOPzJ0Ec/c3oux2MrwIvaX6kOA6VrBy+tAbvxOlvg3vFTEsk5jvxpDCq7TZHnx3qK
         a8LA==
X-Gm-Message-State: AOJu0YxXZOFfv+3OI7in36J0ZR2BmxHpHEo8ESjCk2s0ZBNbNH+FxceI
	bZAbtKMbAULFcM7grOjri8vnGA==
X-Google-Smtp-Source: AGHT+IEEeXelLNqK3336w6oA3xoQr72CuBGZOMtLo6pP71kgyQZjDwx/XTStgoFCjqjOVpB345Yzog==
X-Received: by 2002:a05:6000:4013:b0:32c:9b36:a929 with SMTP id cp19-20020a056000401300b0032c9b36a929mr2060103wrb.63.1696943686520;
        Tue, 10 Oct 2023 06:14:46 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2892:849c:e303:df3f? ([2001:8b0:aba:5f3c:2892:849c:e303:df3f])
        by smtp.gmail.com with ESMTPSA id b5-20020a056000054500b00326dd5486dcsm12713130wrf.107.2023.10.10.06.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 06:14:46 -0700 (PDT)
Message-ID: <6cb6a5cfec49bcbfbdc509db31c615a551befaca.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json :
 reproducible-meta-oe build fixes
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Fabien Thomas <fabien.thomas@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 10 Oct 2023 14:14:45 +0100
In-Reply-To: <20231010100701.83119-1-fabien.thomas@smile.fr>
References: <20231010100701.83119-1-fabien.thomas@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 13:14:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61302

On Tue, 2023-10-10 at 12:07 +0200, Fabien Thomas wrote:
> - Distro has been changed to Poky so exclude Poky's layers from world to
> limit reproducibility tests to the targeted layer only.
> - Execution on autobuilder shows that addlayer steps often fail :
> reorder layer in ADDLAYER list regarding their dependencies.
> - Fix shortid building issues by setting USERADD_U(G)ID_TABLES to
> passwd and group files. These files must exist in meta-openmbedded.
> - Shorten the steps shortnames to improve readability on UI.
> - Add a directory level for output reports, for convenience.
>=20
> Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json | 107 ++++++++++++++++++++++++++++++++++------------------
>  1 file changed, 70 insertions(+), 37 deletions(-)
>=20
> diff --git a/config.json b/config.json
> index df3493b..af4ab39 100644
> --- a/config.json
> +++ b/config.json
> @@ -296,116 +296,149 @@
>              ],
>              "extravars" : [
>                  "EXCLUDE_FROM_WORLD:layer-core =3D '1'",
> +                "EXCLUDE_FROM_WORLD:layer-yocto =3D '1'",
> +                "EXCLUDE_FROM_WORLD:layer-yoctobsp =3D '1'",
>                  "EXCLUDE_FROM_WORLD:layer-selftest =3D '1'",
>                  "OEQA_REPRODUCIBLE_TEST_TARGET =3D 'world'"
>              ],
>              "step1" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-filesystems layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-filesystem=
s/ DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-filesystems",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-filesystem=
s/ DISPLAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
> -                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
>                      "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                    "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
>                  ],
>                  "extravars" : [
> -                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
> +                    "EXCLUDE_FROM_WORLD:layer-networking-layer =3D '1'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-filesystems'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-networking'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-networking'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-oe'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-oe'"
>                  ]
>              },
>              "step2" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-gnome layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-gnome/ DIS=
PLAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-gnome",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DIS=
PLAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
> -                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
> -                    "${BUILDDIR}/../meta-openembedded/meta-networking",
>                      "${BUILDDIR}/../meta-openembedded/meta-python"
> +                    "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
>                  ],
>                  "extravars" : [
>                      "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
>                      "EXCLUDE_FROM_WORLD:layer-networking-layer =3D '1'",
> -                    "EXCLUDE_FROM_WORLD:layer-meta-python =3D '1'"
> +                    "EXCLUDE_FROM_WORLD:layer-meta-python =3D '1'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-gnome'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-networking'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-networking'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-oe'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-oe'"
>                  ]
>              },
>              "step3" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-initramfs layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-initramfs/=
 DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-initramfs",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/=
 DISPLAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-initramfs"
>                  ]
>              },
>              "step4" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-multimedia layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-multimedia=
/ DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-multimedia",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-multimedia=
/ DISPLAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
> -                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-python"
> +                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
>                  ],
>                  "extravars" : [
>                      "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
> -                    "EXCLUDE_FROM_WORLD:layer-meta-python =3D '1'"
> +                    "EXCLUDE_FROM_WORLD:layer-meta-python =3D '1'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-multimedia'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-multimedia'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-oe'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-oe'"
>                  ]
>              },
>              "step5" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-networking layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-networking=
/ DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-networking",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networking=
/ DISPLAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
> -                    "${BUILDDIR}/../meta-openembedded/meta-networking",
>                      "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                    "${BUILDDIR}/../meta-openembedded/meta-networking",
>                  ],
>                  "extravars" : [
> -                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-networking'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-networking'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-oe'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-oe'"
>                  ]
>              },
>              "step6" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-oe layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-oe/ DISPLA=
Y=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-oe",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPLA=
Y=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                ],
> +                "extravars" : [
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-oe'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-oe'"
>                  ]
>              },
>              "step7" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-perl layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-perl/ DISP=
LAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-perl",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DISP=
LAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
> -                    "${BUILDDIR}/../meta-openembedded/meta-perl",
>                      "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                    "${BUILDDIR}/../meta-openembedded/meta-perl",
>                  ],
>                  "extravars" : [
> -                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-perl'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-perl'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-oe'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-oe'"
>                  ]
>              },
>              "step8" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-python layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-python/ DI=
SPLAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-python",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-python/ DI=
SPLAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
> -                    "${BUILDDIR}/../meta-openembedded/meta-python",
>                      "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                    "${BUILDDIR}/../meta-openembedded/meta-python",
>                  ],
>                  "extravars" : [
>                      "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
>                  ]
>              },
>              "step9" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-webserver layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-webserver/=
 DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-webserver",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-webserver/=
 DISPLAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
> -                    "${BUILDDIR}/../meta-openembedded/meta-webserver",
>                      "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                    "${BUILDDIR}/../meta-openembedded/meta-webserver",
>                  ],
>                  "extravars" : [
> -                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-webserver'",
> +                    "USERADD_GID_TABLES:append =3D ' files/static-group-=
meta-oe'",
> +                    "USERADD_UID_TABLES:append =3D ' files/static-passwd=
-meta-oe'"
>                  ]
>              },
>              "step10" : {
> -                "shortname" : "Reproducible Selftest for openembedded me=
ta-xfce layer",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-xfce/ DISP=
LAY=3D:1 oe-selftest -r reproducible"],
> +                "shortname" : "Repro test OE meta-xfce",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DISP=
LAY=3D:1 oe-selftest -r reproducible"],
>                  "ADDLAYER" : [
> -                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
> -                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
> -                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
>                      "${BUILDDIR}/../meta-openembedded/meta-python",
>                      "${BUILDDIR}/../meta-openembedded/meta-networking"
> +                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
> +                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
> +                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
>                  ],
>                  "extravars" : [
>                      "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",

That isn't actually valid json but I fixed it and will schedule a test
build. I also tweaked the shortnames to make it clear it is meta-OE as
"OE" isn't very specific.

Cheers,

Richard


