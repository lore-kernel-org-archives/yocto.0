Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF044E7B5E6
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 10:18:39 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.14964.1696414533602077596
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 03:15:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=k1mppBgF;
 spf=pass (domain: linaro.org, ip: 209.85.208.176, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2c007d6159aso21320081fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 03:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696414531; x=1697019331; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cl5kGOdRQcAfX6JHie/bfyBPaSNF4COETGGtyfOZOow=;
        b=k1mppBgF3j2u2iarG8jg8EEYDBphtaS2vJGcdwQeLkAXbZORkxfEmTXP+7YeahSt8g
         xJ0GgTBNoX3vX8yB+zS93xM9pNNEpAKv6w448sR9GhIjEl+PG41hW0PVFrr8/inBDZSW
         ro1I1YNmrNzCbqO0qnhQQ/DrSmB7YP/byXar86hyb1MBER6/6TXtYV0v2d+fU+IvL71Y
         IqW/HkiY4gh/hFgkShak+Xea1S9BvdYfBQhwjj5xPhuGhYS2p9Ll4XlL9wmu3uJO08oQ
         ebeatsHOitoq1c2IUyKp1syZShBGc5HMJD11E+2FdYYlWOVqWKmhKm79tyVrI505V6Ld
         fgKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696414531; x=1697019331;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cl5kGOdRQcAfX6JHie/bfyBPaSNF4COETGGtyfOZOow=;
        b=PDPim/v1J7AqIYw7CucXwmn/4jNS1g4Imtut2pphDqwXDTnSFk1KB6PzCv5skVF6y0
         AKNbvbBZyXi/fq7n3UzpJIYdvFcUS8cJ0zSljn3HmofEsZ2efQTAHgebPw8sTZ+jYGc3
         BLQbV29Pa+bdeyyMoUhoQdwJTiyQHwCNID7dqJQYFanwtT/J8/qbwkVwaL67AoSk9gEn
         Fz2kT/5Lq1SXn5rtAOdxQiLw9rbsfHxRLIgxkzzWgQe5Vb7SJWjZntlqjnCoWdLTCDdF
         N85lMgEjTTERa64Wi644+iy2VllVlignbkxDyyvDesG5uPW7yFn31VnkEqG/9TsyuLjR
         b4lw==
X-Gm-Message-State: AOJu0YyByFJuNkYelbMJPpuMNJ0TgoVprovBYlnSIyh3GrGrJK5uqq39
	piUNYANy6GqZaE6HEdPQILdteg==
X-Google-Smtp-Source: AGHT+IFzTY6ExnUhTXf658vIJCRz097e8XEFlLuXgH87/iTPxGAkYdf5LTNJ+KwDF+zEdvpT7jQqgQ==
X-Received: by 2002:a2e:8097:0:b0:2bb:aaec:abad with SMTP id i23-20020a2e8097000000b002bbaaecabadmr1888923ljg.30.1696414531443;
        Wed, 04 Oct 2023 03:15:31 -0700 (PDT)
Received: from nuoska (dc7g6tyyyyyyyyyyyyhpy-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::198])
        by smtp.gmail.com with ESMTPSA id d13-20020a2e96cd000000b002b9ff8450aesm637315ljj.91.2023.10.04.03.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 03:15:31 -0700 (PDT)
Date: Wed, 4 Oct 2023 13:15:28 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] how to get ubxtool into the build
Message-ID: <ZR07QA+ZA7cgbZtJ@nuoska>
References: <TV38.1696409418990780293.x1Pm@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <TV38.1696409418990780293.x1Pm@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 10:18:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61234

Hi,

On Wed, Oct 04, 2023 at 01:50:18AM -0700, Dave Hitchman wrote:
> So I hav a custom recipe, gpsd is in place and functioning along with cgps, I can see the position nicely.
> 
> I have also added per instructions I found the whole list of programs related to gps utils...
> SUMMARY_gps-utils = "Utils used for simulating, monitoring,... a GPS"
> # Python files are required for gps/fake, required for gpsfake.
> FILES_gps-utils = "${bindir}/* ${libdir}/gps/*.py ${libdir}/gps/*.so"
> FILES_gps-utils += "${bindir}/cgps ${bindir}/gegps ${bindir}/gps2udp"
> FILES_gps-utils += "${bindir}/gpscat ${bindir}/gpscsv ${bindir}/gpsctl"
> FILES_gps-utils += "${bindir}/gpsdebuginfo ${bindir}/gpsdecode ${bindir}/gpsfake"
> FILES_gps-utils += "${bindir}/gpsmon ${bindir}/gpspipe ${bindir}/gpsplot"
> FILES_gps-utils += "${bindir}/gpsprof ${bindir}/gpsrinex ${bindir}/gpssnmp"
> FILES_gps-utils += "${bindir}/gpssubframe ${bindir}/gpxlogger ${bindir}/lcdgps "
> FILES_gps-utils += "${bindir}/ntpshmmon ${bindir}/ppscheck ${bindir}/ubxtool"
> FILES_gps-utils += "${bindir}/xgps ${bindir}/xgpsspeed ${bindir}/zerk"
> 
> this appears to build without complaining but when I login to the image most of those tools (including the ubxtool) appear to be missing - though cgps works as it did BEFORE I added all that list of extra tools. ubxtool doesnt appear in the files-in-image.txt which suggests I am not so boneheaded as to not be using a right path (I am a bone head in many respects :) ).�gps-utils appeas in the installed-packages-names.txt which again isnt surprising as cgps is working (installed packages lists gps-utils_3.20-r0_cortexa53-crypto.ipk).

I suggest to enable "buildhistory" feature. It will export all source recipe (source package)
and binary package metadata as a git repository to build/buildhistory. There you can
quite easily "git grep" for files inside binary packages and things like source recipe
and binary package dependencies (DEPENDS and RDEPENDS). This can be enabled with local.conf
line:

INHERIT += "buildhistory"

Then when you modify things, it's a good idea to check "bitbake -e recipe" output before and after
your changes to a recipe, be it a .bbappend or changes to the recipe proper. bitbake
will by design not warn about typos etc. After modifying contents of recipes to include new files
in the binary package, you can then check buildhistory data as well to see that the files added
are now in some of the binary packages.

> I am making progress with understanding yocto building but this is beyond my ken. I guess the files gps utils above doesnt do anything OR is done too late to make a difference but there was no complaint that I could see (unless someone can point me at the right file to check)
> 
> Any hints? Seems others have had some issues which is where I got the above stuff from and others claim ubxtool is built but then for some reason not included (seems an odd thing)

yocto is a tool for building custom linux distributions and is by definition tricky
to understand. Any linux distro has areas which are tricky and hard grasp. 
yocto build tool bitbake builds recipes just like Debian/Ubuntu etc build source packages
and that generate binary packages. In yocto image recipes then include a specific
set of binary packages and their dependencies. What gets installed to images is controlled
by the few variables in image recipes which include names of binary packages (tip of dependency trees)),
and the runtime RDEPENDS of those binary packages and everything which they RDEPEND on.

Documentation may help too:

https://docs.yoctoproject.org/singleindex.html#customizing-images

Hope this helps,

-Mikko

