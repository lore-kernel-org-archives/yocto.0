Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17A8AE784B0
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 17:16:46 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web11.88136.1696267000440738981
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 10:16:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=McsLPOCZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1dc863efb61so9126654fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 10:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696266999; x=1696871799; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3W/mGYPuHTj2BKv1CLldvhEJcxsj40Epspk56/f6Rw=;
        b=McsLPOCZbzhXK3JvcMU9VV5n12JFu3TDmJeHCbqQbJje0xHhfrAzu3fnqeiORqNz10
         Wg6LTnMQxlPqiQWTjBU8sUHMGmaqr2QmyH+/XTP38H1tdIp+W+QuhxGMiZgpOPz5uB3X
         SYTDftGE3JTqQTuP+OSH1i+RHzSQH0hPkazEN9WhfTEdK5mA3coRIqeAdZjVoBtd0njZ
         PhfMLQGbwypVUqrRoA3RAgj6wk75DbRT4m1yvZaevbu0/T10TnOp4JB0Aj9EoD2Ys1OM
         weOxMBFxCqVDaO8ZBNLUmb9b9PChW+3JHtoL8m33rUcTgjpY+Ljhnk2V87b6+cokiU8s
         ovBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696266999; x=1696871799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3W/mGYPuHTj2BKv1CLldvhEJcxsj40Epspk56/f6Rw=;
        b=UZUv2p/76pwgu+vbInLh+XIboe7iTdiGlD5jRVd2Xx3Mb697YzS0jvjOOpDxKNsedE
         hu7oEUnKY4PGmA7nTWubRbwzMOAKHDFMYzcq3ArUGnbhgD/aYM08bCtkhP1LZiEabVNK
         cEC0ctV3HiDMreWGTOSFeIfPu/yIzyfFG3dhYd/g9perNMtId0Oki6Yd/kmtrppmsGPr
         50+evrI7BG/D6wE8nEkv1B/lQwRI30w4FruaptTm7D/tkvchnJdEgumI/PVsx1SeZtzw
         +HJHStePpLfLgoWldGHs7UXNAsOmEvFl/tkHOfi0Ws7odrsBunHxTZE+v2XoHoXTHjCN
         fM3A==
X-Gm-Message-State: AOJu0YyX1nxOVs7M7xKIlfHuwuuas/sTQ6d+37hkQ2oPpUWLqtaq94Uc
	7rEAimA+FbeV398BfjbqctM7eOQnKmc0zQ4ZuY9hgQYgii0=
X-Google-Smtp-Source: AGHT+IGSGFC0GXwK2BwwK2LOXzFdBvrUs9iq69XKoERGU+ghMkYCcD6kz1qejUEbvJ8Qnce4Vt4SQ/9w352+fub0xKk=
X-Received: by 2002:a05:6870:6111:b0:1d6:40f9:804a with SMTP id
 s17-20020a056870611100b001d640f9804amr14946212oae.57.1696266999468; Mon, 02
 Oct 2023 10:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <20231002145446.3166108-1-fabien.thomas@smile.fr>
In-Reply-To: <20231002145446.3166108-1-fabien.thomas@smile.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 2 Oct 2023 10:16:13 -0700
Message-ID: <CAMKF1spMqcOwtUSkQB8=R4nsfMywMdkxwyB9ZJXpdiC4Mg18yg@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] config.json: add
 reproducible-openembedded build
To: Fabien Thomas <fabien.thomas@smile.fr>
Cc: yocto@lists.yoctoproject.org, Yoann Congal <yoann.congal@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:16:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61197

looks fine to me Thanks

On Mon, Oct 2, 2023 at 7:56=E2=80=AFAM Fabien Thomas <fabien.thomas@smile.f=
r> wrote:
>
> The purpose of this new builder is to report the reproducibility status
> of all meta-openembedded recipes layer by layer. It use the same
> reproducible selftest than OE-Core but setting only world as target,
> and excluding all oecore and other openembedded layer recipes.
> Also, the report output directory is split by layers.
>
> Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>
> Changes v1->v2 :
> * Split builder into multiple steps, one for each openembedded layers.
> * Split reports output in the same way, one for each layers.
> * For each step, only to be tested layer and its dependancies are added.
> * Every other layers than the one that is tested is excluded from world.
>
>  config.json | 133 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 133 insertions(+)
>
> diff --git a/config.json b/config.json
> index 05c6794..90762f9 100644
> --- a/config.json
> +++ b/config.json
> @@ -264,6 +264,136 @@
>
>              }
>          },
> +        "reproducible-meta-openembedded" : {
> +            "MACHINE" : "qemux86-64",
> +            "SDKMACHINE" : "x86_64",
> +            "DISTRO" : "None",
> +            "NEEDREPOS" : ["oecore", "bitbake", "meta-openembedded"],
> +            "ADDLAYER" : [
> +                "${BUILDDIR}/../meta-selftest"
> +            ],
> +            "extravars" : [
> +                "EXCLUDE_FROM_WORLD:layer-core =3D '1'",
> +                "EXCLUDE_FROM_WORLD:layer-selftest =3D '1'",
> +                "OEQA_REPRODUCIBLE_TEST_TARGET =3D 'world'"
> +            ],
> +            "step1" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-filesystems layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-filesystem=
s/ DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                ],
> +                "extravars" : [
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                ]
> +            },
> +            "step2" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-gnome layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-gnome/ DIS=
PLAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe",
> +                    "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                    "${BUILDDIR}/../meta-openembedded/meta-python"
> +                ],
> +                "extravars" : [
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
> +                    "EXCLUDE_FROM_WORLD:layer-networking-layer =3D '1'",
> +                    "EXCLUDE_FROM_WORLD:layer-meta-python =3D '1'"
> +                ]
> +            },
> +            "step3" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-initramfs layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-initramfs/=
 DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-initramfs"
> +                ]
> +            },
> +            "step4" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-multimedia layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-multimedia=
/ DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe",
> +                    "${BUILDDIR}/../meta-openembedded/meta-python"
> +                ],
> +                "extravars" : [
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
> +                    "EXCLUDE_FROM_WORLD:layer-meta-python =3D '1'"
> +                ]
> +            },
> +            "step5" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-networking layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-networking=
/ DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                ],
> +                "extravars" : [
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                ]
> +            },
> +            "step6" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-oe layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-oe/ DISPLA=
Y=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                ]
> +            },
> +            "step7" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-perl layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-perl/ DISP=
LAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-perl",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                ],
> +                "extravars" : [
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                ]
> +            },
> +            "step8" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-python layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-python/ DI=
SPLAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-python",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                ],
> +                "extravars" : [
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                ]
> +            },
> +            "step9" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-webserver layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-webserver/=
 DISPLAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-webserver",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe"
> +                ],
> +                "extravars" : [
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
"
> +                ]
> +            },
> +            "step10" : {
> +                "shortname" : "Reproducible Selftest for openembedded me=
ta-xfce layer",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-xfce/ DISP=
LAY=3D:1 oe-selftest -r reproducible"],
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe",
> +                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
> +                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
> +                    "${BUILDDIR}/../meta-openembedded/meta-python",
> +                    "${BUILDDIR}/../meta-openembedded/meta-networking"
> +                ],
> +                "extravars" : [
> +                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer =3D '1'=
",
> +                    "EXCLUDE_FROM_WORLD:layer-gnome-layer =3D '1'",
> +                    "EXCLUDE_FROM_WORLD:layer-multimedia-layer =3D '1'",
> +                    "EXCLUDE_FROM_WORLD:layer-meta-python =3D '1'",
> +                    "EXCLUDE_FROM_WORLD:layer-networking-layer =3D '1'"
> +                ]
> +            }
> +        },
>          "trigger-build" : {
>              "SDKMACHINE" : "x86_64",
>              "MACHINE" : "qemux86-64",
> @@ -955,6 +1085,9 @@
>          "reproducible" : {
>              "TEMPLATE" : "reproducible"
>          },
> +        "reproducible-meta-openembedded" : {
> +            "TEMPLATE" : "reproducible-meta-openembedded"
> +        },
>          "reproducible-ubuntu" : {
>              "TEMPLATE" : "reproducible"
>          },
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61193): https://lists.yoctoproject.org/g/yocto/messag=
e/61193
> Mute This Topic: https://lists.yoctoproject.org/mt/101713575/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

