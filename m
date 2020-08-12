Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.10805.1597221124179377357
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 01:32:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BRNGn2Npxz5tlB;
	Wed, 12 Aug 2020 10:32:01 +0200 (CEST)
Date: Wed, 12 Aug 2020 10:32:00 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Sergey Ivanov <icegood1980@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] cmake-based project with system lib dependency
Message-ID: <20200812083200.i2zrcgnygs75mmzg@qschulz>
References: <CAJCbrz7gyBvKzyTjSFNBCiM2oZtj1E_ghGdcrP7jJaN-LbRDXg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJCbrz7gyBvKzyTjSFNBCiM2oZtj1E_ghGdcrP7jJaN-LbRDXg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sergey,

On Tue, Aug 11, 2020 at 08:36:33PM +0300, Sergey Ivanov wrote:
> Hi there.
> I want to configure the cmake-based project with dependency on library
> libuuid.
> The latter is located under util-linux and populated in my
> build/tmp/deploy/images/qemuarm/core-image-minimal-dev-qemuarm.manifest:
> 
> util-linux-dev armv7vet2hf_neon 2.35.1 (here should be header as well and
> static library)
> ...
> util-linux-uuidd armv7vet2hf_neon 2.35.1 (i believe the only library)
> ...
> My bb file is:
> 
> SUMMARY = "Recipe to build the 'helloworld-cpp-direct-compile' in cpp"
> SECTION = "common_templates"
> 
> SRC_URI = "file://CMakeLists.txt \
>            file://foo.cpp \
>            file://foo.h "
> 

DEPENDS = "util-linux"

(DEPENDS is for build time dependencies and you add the recipe providing
the sources for it, RDEPENDS_${PN} is for runtime dependencies and you
add packages to it (it is common to have the same name for the recipe and
the main package built by it)).

> inherit pkgconfig cmake
> 
> S = "${WORKDIR}"
> OECMAKE_GENERATOR = "Unix Makefiles"
> # project version seems to not be propagated properly
> EXTRA_OECMAKE="-DCMAKE_PROJECT_VERSION=${PV}"
> 
> 
> while my CMake file has:
> 
> pkg_check_modules(uuid REQUIRED IMPORTED_TARGET "uuid >= 2.25")
> 
> 
> Now I obtain the error from cmake:
> -- Checking for module 'uuid >= 2.25'
> --   No package 'uuid' found
> CMake Error at
> recipe-sysroot-native/usr/share/cmake-3.16/Modules/FindPkgConfig.cmake:467
> 
> What philosophy of yocto to make it work? In other words where 'stage' is
> supposed to be located so pkgconfig will find library?
> 

I can suggest watching/listening to Live Coding sessions done by Josef
available on Yocto project's Youtube channel:
https://www.youtube.com/playlist?list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj

It should help you get started and understand the basics.

Kind regards,
Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com
