Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C91C25B76
	for <webhook@archiver.kernel.org>; Sat,  1 Jun 2024 10:10:35 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.34648.1717236627403183021
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Jun 2024 03:10:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=J2ctRVri;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e6f33150bcso29281541fa.2
        for <yocto@lists.yoctoproject.org>; Sat, 01 Jun 2024 03:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717236625; x=1717841425; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmftcCBezUp8o6Z4yL71UdovnvU30eSXMjqIxFWUtqY=;
        b=J2ctRVricrRPBkB7jk2f8AVg9ro4gKUOgVGAW/hT62vffU3zQDqwhmSE7SRCzoSHpU
         AqFsVlcbtHFNQ8SVQUwNBmTKg162CK/gHajXz6QKeSrT9H0JNA0bfJwxamoLYD5V136P
         do+U/+HVqAje5vO6wCtdB6ho7FO+yCUwgk8I20CmbRcVVBVoBOAaTZKthSlKY05qpWN2
         AZD+5Cz3bp+0PtbFC/p3TcU0EoC7HvKM0VnD+XBhLecNId6E/0YAdei+h8SQNleH9gCA
         I5JyJanmnp0bHg26El6LCLhHVpWldjJlGcXalG0CCbIDGjHlWsLz1/zE3bscSNGZeDGp
         H7Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717236625; x=1717841425;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmftcCBezUp8o6Z4yL71UdovnvU30eSXMjqIxFWUtqY=;
        b=EeVNaAMGmGQsbRb52uKzwtUciYuCaEi0G1xf3ec5sZIWJkg4/dqbc5kxyDCshie7Cr
         7VgUxjhVDE+XyW059Hdp1qKh58dsPL66RVJaASDIqiLzSCsyOx98Cay5WUTlKuQuHpyO
         LMSnLyCJsWap3WIqjp8l9WcYoP8Gd4U5rgJuNIS0WLNLoUh1mAe/6/+45n29qW9YQow/
         P9hdn4p8HbKtZ2YHDaYNlD7G9W6HCR7OXbGP20qNazKpi+CRaUb6quJEu/NqTax/gCFJ
         tOojj7o3vu67uQvTy35fowSyh77B3tUxO+Tg5flJwIOGf3sJaMpbwXAZbq/P3g30VlyR
         qpNQ==
X-Gm-Message-State: AOJu0YzkW0TzBEOcLbw+v0jqamm9Q47WsWdPSI1Cl8/dOxtol+JQuAEw
	jYT5yJFCunZo3csqDcp+7fkxPamMkKPIh3W+OJUbhJWXq11lycRYxoBU12cJaSvmKkaZdOfKlWU
	m+H0x2Mkd7ITQTrRXsEl/B2+IeZRLaA==
X-Google-Smtp-Source: AGHT+IH2RQOyw8L5R2MG/pDh2niVauJHVCREk3kfA/ypW/nSMKhOS+FQiXKkeSFiHRsVsUJykwlbl2HHSOU5uyBJvEU=
X-Received: by 2002:a2e:3501:0:b0:2e6:f5f5:f97 with SMTP id
 38308e7fff4ca-2ea950c142amr27507381fa.6.1717236625210; Sat, 01 Jun 2024
 03:10:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH03pVQO2pmeyCwQ4WW_mEGJXZvV=2Wihi+LL2+woEUhPg@mail.gmail.com>
In-Reply-To: <CAEFUPH03pVQO2pmeyCwQ4WW_mEGJXZvV=2Wihi+LL2+woEUhPg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 1 Jun 2024 12:10:13 +0200
Message-ID: <CANNYZj855qs0zrV0_6qYXrhtmLE-eVsG2-y_a=9oUGvmFvYNXg@mail.gmail.com>
Subject: Re: [yocto] query on do_stage
To: yocto@lists.yoctoproject.org, simonkbaby@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Jun 2024 10:10:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63252

The folders indicate that the build happened entirely from sstate, and
so only the sstate objects for populate_sysroot and package_write_ipk
tasks were executed. You need to use -c cleansstate first and rerun
it.

Alex

On Sat, 1 Jun 2024 at 00:17, SIMON BABY via lists.yoctoproject.org
<simonkbaby=gmail.com@lists.yoctoproject.org> wrote:
>
> Hei Team,
>
> I have a recipe below. I did not see the staging directory under the tmp generated folder. Is there a hidden folder or where are the files going?
>
>
> DESCRIPTION = "UMSD SDK library for Marvell Switch Product Family."
> LICENSE = "CLOSED"
> PR = "r0"
> PROVIDES = "marvell-umsd"
> SRC_URI = "file://UMSD_v${PV}.tar.gz"
>
> S = "${WORKDIR}/UMSD_v${PV}"
>
> MSD_ROOT="${S}"
> MSD_USER_BASE="${MSD_ROOT}"
> MSD_PROJ_NAME="msdDrv"
> MSD_TOOL_DIR="${MSD_USER_BASE}/tools"
> RELEASE="YES"
> OS_RUN="LINUX"
> TOPAZ_BUILD="YES"
> PERIDOT_BUILD="YES"
> AGATE_BUILD="YES"
> PEARL_BUILD="YES"
> AMETHYST_BUILD="YES"
> export STAGING_INCDIR
> export STAGING_LIBDIR
>
> do_compile () {
>         make -C  ${MSD_ROOT}/src MSD_USER_BASE=${MSD_USER_BASE}/ MSD_PROJ_NAME=msdDrv MSD_TOOL_DIR="${MSD_USER_BASE}/tools" RELEASE=YES OS_RUN:=LINUX PERIDOT_BUILD=YES
> }
>
>
> do_stage () {
>         mkdir -p ${STAGING_INCDIR}/marvell-umsd
>         cp --dereference -R ${MSD_ROOT}/include/* ${STAGING_INCDIR}/marvell-umsd/
>         cp ${MSD_ROOT}/library/msdDrv.o ${STAGING_LIBDIR}
> }
>
>
>
> I checked the path below and could not see the include files or the  msdDrv.o copied anywhere. Please correct me with any other solution. Can I go with do_install () ?
> The requirement is to use this recipe as a dependency for other modules to use the include file and library.
>
> sbaby@eadlng-build-machine:~/workspace/05222024_simon/ecp-nic-test/build$ ls -ll tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0/
> total 40
> drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 deploy-ipks
> drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 license-destdir
> drwxr-xr-x 7 sbaby sbaby 4096 May 29 10:46 pkgdata-pdata-input
> drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-packagedata
> drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_qa
> drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-package_write_ipk
> drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_lic
> drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 sstate-install-populate_sysroot
> drwxr-xr-x 3 sbaby sbaby 4096 May 29 10:46 sysroot-destdir
> drwxr-xr-x 2 sbaby sbaby 4096 May 29 14:52 temp
>
> Regards
> Simon
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63251): https://lists.yoctoproject.org/g/yocto/message/63251
> Mute This Topic: https://lists.yoctoproject.org/mt/106417703/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

