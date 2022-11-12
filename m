Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF21FC4332F
	for <webhook@archiver.kernel.org>; Sat, 12 Nov 2022 14:35:39 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web10.3145.1668263738985814267
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Nov 2022 06:35:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=OYL7AQmB;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.174, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f174.google.com with SMTP id l15so4498159qtv.4
        for <yocto@lists.yoctoproject.org>; Sat, 12 Nov 2022 06:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7IhFDiqMKn9xDcLxf4yLz5MGKkDJ041mGum4j4hEBe4=;
        b=OYL7AQmBK7bTenEkWQ7kBREMEYHabgvzqxwccaEBTrTEeJxboJuDdoQtPhn97u0tBS
         rktn/K0+oyxaeEEJ/IQHaB72HRU1bBskRZ88SmoEj4ittccHsvp2iPN2XYdOqXCOa0Ij
         Ss8ZAk0a/8e2IfXG0/I+b+YdxWot69Z0C0KrBwr2pn+/Gn1xknl7zie2Z+8Re3blHuBP
         PBrfifg/zJ1SINSH8cBi47Lprkcfp0Oo/tZ4zTJcn631vbwU2OZW/ywJE2x78HlFmimA
         e6BAxHNiIkhvAn95HEloncDPHPAENChbWpPMSzFsRED9NBXsqUNwJwEtgFsEQgDo1MeZ
         6AEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7IhFDiqMKn9xDcLxf4yLz5MGKkDJ041mGum4j4hEBe4=;
        b=EjLzmZJcqZxq15JTjRoG6Ydf8uZfLDIRQxBqAdONL8e8UEn9shzNAaeIUuHLiW18r/
         999vyhQ4nTfti5pHWbykdPa7AITb9MDGv99MPVltzZBZuaKr7/xtdNz7WKZB/iAd84yu
         i0CZuGPLkhuMt6sBrwgOJT7Uoe3ADkhlfoVPUcVnhGQT7L1qikisPzyjQyKildSnUk/+
         jEGLXihCBcGeFkmk9vdWlFSJIQBbks6Kh/a6psWJ0SlVPZbHGf4QS0wuECmXWo0R4Z/u
         tYrevGAG5ebcLlOJUXA6A7w2g39eiEk/q1e+NJPDrzjkbOEr65/t0rvQCOsFouxVLCAl
         E8BQ==
X-Gm-Message-State: ANoB5pn0RIKGcnjglOu+e1io91yE0uxLv0jmXPz2LwbB073UV1HidZmg
	+MUWyNqZwlR93BzANJMhZRiadA==
X-Google-Smtp-Source: AA0mqf6mc7OxgLsOS2D9zLTD7ZBUCLqlWr7w5dTBTJX1vZv7f8oXYQzDfUT6NCXHAYmegczXu4Reaw==
X-Received: by 2002:a05:622a:2595:b0:3a5:62e4:b972 with SMTP id cj21-20020a05622a259500b003a562e4b972mr5469389qtb.198.1668263737944;
        Sat, 12 Nov 2022 06:35:37 -0800 (PST)
Received: from kudzu.us ([2605:a601:a615:a000:24f9:d5b6:38a7:110])
        by smtp.gmail.com with ESMTPSA id l23-20020ac848d7000000b0039a372fbaa5sm2849295qtr.69.2022.11.12.06.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 06:35:37 -0800 (PST)
Date: Sat, 12 Nov 2022 09:35:35 -0500
From: Jon Mason <jdmason@kudzu.us>
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-zephyr][PATCH] zephyr-sdk: upgrade 0.14.2 -> 0.15.1
Message-ID: <Y2+vNzt/PcSVVpCq@kudzu.us>
References: <20221026052945.535612-1-naveen.kumar.saini@intel.com>
 <Y1l42k+lFDUOkdwQ@kudzu.us>
 <CO1PR11MB5026D198A509E3EE7CF0420DC4019@CO1PR11MB5026.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CO1PR11MB5026D198A509E3EE7CF0420DC4019@CO1PR11MB5026.namprd11.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Nov 2022 14:35:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58545

On Thu, Nov 10, 2022 at 09:19:54AM +0000, Saini, Naveen Kumar wrote:
> Hi Mason
> 
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Jon Mason
> > Sent: Thursday, October 27, 2022 2:14 AM
> > To: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
> > Cc: yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] [meta-zephyr][PATCH] zephyr-sdk: upgrade 0.14.2 ->
> > 0.15.1
> > 
> > I added this and rebased it to be before the update to v3.2.0.  The issues with
> > the versioning are now gone, but the following issues
> > remain:
> > 
> > "BUILD_ASSERT(IS_ENABLED(_RETARGETABLE_LOCKING), "Retargetable
> > locking must be enabled");"
> > for
> > zephyr-coap-client
> > https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258971
> > 
> > zephyr-coap-server
> > https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258983
> > https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258987
> > 
> > zephyr-openthread-echo-client
> > https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258972
> 
> [Naveen] I already sent patch to fix this issue. 

I had one as well.
https://gitlab.com/jonmason00/meta-zephyr/-/commit/68a50789d28af04c0df8b46bb4d27a87e8d98cb3
Sorry for not sending it out.  I was occupied almost all of last week.
I like your patch better :)


> 
> 
> > 
> > 
> > 
> > "region `SRAM' overflowed by 1104 bytes"
> > for
> > zephyr-philosophers
> > https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231259005
> > https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231259002
> 
> [Naveen]
> As per my understanding available ram for qemu-cortex-m0 is only 16K, not sufficient for sample philosophers. So I think you should remove it for  qemu-cortex-m0 machine. 
> 
> From build logs:
> SRAM (wx) : ORIGIN = 0x20000000, LENGTH = (16 * 1K)
> 
> And also listed in yaml too
> https://github.com/zephyrproject-rtos/zephyr/blob/v3.2-branch/boards/arm/qemu_cortex_m0/qemu_cortex_m0.yaml#L10
> 
> I case see many tests and samples are being filter out based on 'min_ram' 
> https://github.com/zephyrproject-rtos/zephyr/blob/v3.2-branch/samples/net/sockets/http_client/sample.yaml#L3


Sure, I can do a patch shortly that will remove this from
qemu_cortex_m0.


This would leave the only outstanding issue the new poll test failure
on qemu_cortex_a9 (yocto toolchain only).  I think it's okay to let
this fail while a solution is being found.

Thanks,
Jon

> 
> 
> > 
> > 
> > Thanks,
> > Jon
> > 
> > 
> > On Wed, Oct 26, 2022 at 01:29:45PM +0800, Naveen Saini wrote:
> > > https://github.com/zephyrproject-rtos/sdk-ng/releases/tag/v0.15.1
> > >
> > > Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> > > ---
> > >  .../zephyr-sdk/{zephyr-sdk_0.14.2.bb => zephyr-sdk_0.15.1.bb} | 4
> > > ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)  rename
> > > meta-zephyr-core/recipes-devtools/zephyr-sdk/{zephyr-sdk_0.14.2.bb =>
> > > zephyr-sdk_0.15.1.bb} (83%)
> > >
> > > diff --git
> > > a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
> > > b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
> > > similarity index 83%
> > > rename from
> > > meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
> > > rename to
> > > meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
> > > index c893652..f5a9466 100644
> > > ---
> > > a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
> > > +++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-
> > sdk_0.15.1.b
> > > +++ b
> > > @@ -14,8 +14,8 @@ SDK_ARCHIVE = "zephyr-sdk-${PV}_linux-
> > ${BUILD_ARCH}.tar.gz"
> > >  SDK_NAME = "${BUILD_ARCH}"
> > >  SRC_URI = "https://github.com/zephyrproject-rtos/sdk-
> > ng/releases/download/v${PV}/${SDK_ARCHIVE};subdir=${S};name=${SDK_N
> > AME}"
> > >
> > > -SRC_URI[x86_64.sha256sum] =
> > "2ff0e4d79bffe1468247a3e1958aa9183a0252225ab721cf1c37188bd4b649a2"
> > > -SRC_URI[aarch64.sha256sum] =
> > "cbb616a50e940388ea737788d48dcea3624a85bb3ee04d9aae105496a21ae75e
> > "
> > > +SRC_URI[x86_64.sha256sum] =
> > "0a7406045102197b9edc759b242499941814a1c6df29dd9fbd479ad50eb0fba9"
> > > +SRC_URI[aarch64.sha256sum] =
> > "d2c5de994376a287e8bf12e5776ab8f5105eafa14826608df085142fd01b7f84"
> > >
> > >  do_configure[noexec] = "1"
> > >  do_compile[noexec] = "1"
> > > --
> > > 2.25.1
> > >
> > >
> 

