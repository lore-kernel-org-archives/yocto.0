Return-Path: <fabien.thomas@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A03FE81E01
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 14:28:00 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.14196.1696602476553520964
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 07:27:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=NaXMsYwC;
 spf=pass (domain: smile.fr, ip: 209.85.208.47, mailfrom: fabien.thomas@smile.fr)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-53b32dca0bfso1291649a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 07:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696602475; x=1697207275; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5YFqrn1vIES39rxltJSvLbXayrQFna1h5uKJ8aAH/s=;
        b=NaXMsYwCqGfZiW3Xw/9useeh3riofurx5dYtUT/Y9kBI9dWSc1HU3Y7cC1CvTuyqq6
         WMZIT2f/oXoN05mOzV0fkwi6wMDXqffC5uiAY3BdAr9mfOCVEzabZt5zlzvRbxaCTCeL
         2qo7AiX7kclEj0x8mPtkN9esjMny8Y0gXa3ji24elvhkZJeQmRF9y8/PQz9AL8xn0TSP
         tXBQZW1DdFxy921ZV66BFzfCsUrIeG2zLeuiSGUTyT9KjeR+biWl6NhWCiEJnY3GP0s8
         YU6hin6RUEvQyT4yeCZHLaXIwjls1sZ1h+7qFSbYjxX+GeoemA2rkkQLY9VkXmlMHF9Z
         0hWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696602475; x=1697207275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E5YFqrn1vIES39rxltJSvLbXayrQFna1h5uKJ8aAH/s=;
        b=Ie6GOsxvB+XjtGAjZidn8mHskZ3FKyM23PJI+ScIGvrqUrZzpniPGLawhVqfB524ha
         f1+osyUGAvXZPMMhGmonR+H/2lqESjB883XHI6tLF83/PVoxOID+8L0ablLRf3GI7Bbx
         dSbsb1ka1IAAUb6sQ2jfCfosPRvSXTunYZU5B9RCcPHhrxKCSV0hpeHSrvE9tS27rRVQ
         xWTCUjZKcxZBFuoZHBiUAHGFPZWZlCGBwKWJ756lhYr53ldfHjkcJsaWhxD6vAg1l89b
         nRq4MJ6MYs0QQ73TDAQ7chCwH+vHqF8CfUDaZ4DnCxEknokQrYa8N5aTva3I7N6zjb1G
         /OwA==
X-Gm-Message-State: AOJu0YwJ+6xBi89so3rMAAjjbHi7KW5r0jeCCchfXbtJK5oOWgZFALs0
	JmMPQTbSJG4Nb8CdsLFb2i6Uf+XTcqv0XdIUMQAM8g==
X-Google-Smtp-Source: AGHT+IH2uh+A04fkNq3kAsPAgAWKW5WcuRkOi40DA0idAtBtCFdmZc8QtXhV7HdssKMHtCHyE6Zd8xcSQ8uv8kLPKdA=
X-Received: by 2002:aa7:d1d9:0:b0:531:157d:ba2d with SMTP id
 g25-20020aa7d1d9000000b00531157dba2dmr5287350edp.4.1696602474815; Fri, 06 Oct
 2023 07:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <20231002145446.3166108-1-fabien.thomas@smile.fr>
 <178B43BD6DF66AF4.3256@lists.yoctoproject.org> <178B4DC19A31CF35.3256@lists.yoctoproject.org>
 <a1f9a4b2816d9f048d9ef04d20a6a21b5663ecd7.camel@linuxfoundation.org>
In-Reply-To: <a1f9a4b2816d9f048d9ef04d20a6a21b5663ecd7.camel@linuxfoundation.org>
From: Fabien THOMAS <fabien.thomas@smile.fr>
Date: Fri, 6 Oct 2023 16:27:38 +0200
Message-ID: <CAFS+G_tey5-KWRgOSsTTUcBpSWXmbzYkX_BaF=gp_iUJ3Ag9cg@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] config.json: add
 reproducible-openembedded build
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, Yoann Congal <yoann.congal@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 14:28:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61260

Thank you Richard for trying this patch, this report is very helpful.

-> Well noted for the short name, indeed it's absolutely not readable
in the UI, I will go with this name "Repro test OE meta-xxx" if you
agree.

-> Reading the logs, I see that all "Add layers" steps always fail
except meta-initramfs and meta-oe, both has no dependencies.
I understand how it works now ! I had to respect the dependencies
order in the "ADDLAYER" list because it uses the bitbake-layers
add-layer cmd.
It will be fixed too.

-> On the build step "Run cmds" for meta-oe, I see following error :
ERROR - Build directory
/home/pokybuild/yocto-worker/reproducible-meta-oe/build/build-st
already exists, aborting
Probably due to previous step failed. Do you think it is necessary to
add an rm -rf [...]/build-st in each step, before actually running
selftest ?

-> Also, I would like to inform you that I'm having build problems
with every layer in the reproducible sefltest context, except with
meta-initramfs.
So I focused myself on meta-oe.
One of the building issues is regarding recipes that use the useradd
class. In the reproducible context, these must use static-id.
I fixed it by creating new files/static-passwd and files/static-group
into meta-oe layer. I plan to send patches to both
yocto-autobuilder-helper & meta-openmebdded project soon.
Also I had trouble with 4 recipes (webkitgtk3_2.40.5, influxdb_1.8.10,
xorgxrdp_0.9.19 and xscreensaver_6.04). I didn't investigate but only
excluded them from the world target.

So my patch might look like this :

            "step6" : {
                "shortname" : "Repro test OE meta-oe",
                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedded=
/meta-oe/
DISPLAY=3D:1 oe-selftest -r reproducible"],
                "ADDLAYER" : [
                    "${BUILDDIR}/../meta-openembedded/meta-oe"
                ],
                "extravars" : [
                    "USERADD_UID_TABLES:append =3D '
files/static-passwd-meta-oe'",
                    "USERADD_GID_TABLES:append =3D ' files/static-group-met=
a-oe'"
                    "EXCLUDE_FROM_WORLD:pn-xscreensaver"
                    "EXCLUDE_FROM_WORLD:pn-webkitgtk3"
                    "EXCLUDE_FROM_WORLD:pn-influxdb"
                    "EXCLUDE_FROM_WORLD:pn-xorgxrdp"
                ]
            },

What do you think ? (Note that for layers with dependencies all
static-* files should be added)

-> With these adjustments, I finally had a successful build on my
computer. FYI here are the results for meta-oe :
oe-selftest - INFO - Reproducibility summary for deb: same=3D14650
different=3D128 different_excluded=3D0 missing=3D0 total=3D14778









Le jeu. 5 oct. 2023 =C3=A0 23:51, Richard Purdie
<richard.purdie@linuxfoundation.org> a =C3=A9crit :
>
> On Thu, 2023-10-05 at 20:46 +0100, Richard Purdie via
> lists.yoctoproject.org wrote:
> > On Thu, 2023-10-05 at 17:42 +0100, Richard Purdie via
> > lists.yoctoproject.org wrote:
> > > On Mon, 2023-10-02 at 16:54 +0200, Fabien Thomas wrote:
> > > > The purpose of this new builder is to report the reproducibility st=
atus
> > > > of all meta-openembedded recipes layer by layer. It use the same
> > > > reproducible selftest than OE-Core but setting only world as target=
,
> > > > and excluding all oecore and other openembedded layer recipes.
> > > > Also, the report output directory is split by layers.
> > > >
> > > > Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
> > > > Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> > > > ---
> > > >
> > > > Changes v1->v2 :
> > > > * Split builder into multiple steps, one for each openembedded laye=
rs.
> > > > * Split reports output in the same way, one for each layers.
> > > > * For each step, only to be tested layer and its dependancies are a=
dded.
> > > > * Every other layers than the one that is tested is excluded from w=
orld.
> > >
> > > Thanks, I've merged this with a tweak of "reproducible-meta-
> > > openembedded" -> "reproducible-meta-oe" just to keep things more
> > > readable in the UI.
> > >
> > > There is a test run queued here:
> > >
> > > https://autobuilder.yoctoproject.org/typhoon/#/buildrequests/454516?r=
edirect_to_build=3Dtrue
> > >
> > > but things are a bit busy atm on the autobuilder so it is queued.
> >
> > That broke as did the second attempt. I've pushed controller side
> > tweaks and some tweaks to helper which means this is now running:
> >
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/3
> >
> > Obviously there are still some failures but it is doing more this time
> > and a least running something in some steps.
>
> Whilst a lot of it failed, there was one piece that succeeded and
> generated diffoscope output:
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/3/step=
s/21/logs/stdio
> http://autobuilder.yocto.io/pub/repro-fail-openembedded-meta-initramfs/oe=
-reproducible-20231005-y6zo9rio/packages/diff-html/
>
> As well as fixing the failures, the "short" names need work to make the
> UI readable.
>
> Cheers,
>
> Richard

