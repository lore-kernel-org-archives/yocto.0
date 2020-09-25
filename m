Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.3748.1601025057113033918
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 02:10:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4ByR3L2SD6z5tlD;
	Fri, 25 Sep 2020 11:10:54 +0200 (CEST)
Date: Fri, 25 Sep 2020 11:10:53 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] sd-bus.h not found when compiling #yocto
Message-ID: <20200925091053.6rmcmk6kbvbyqa45@qschulz>
References: <BA1A.1601024897483922946.J5j4@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <BA1A.1601024897483922946.J5j4@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Talel,

On Fri, Sep 25, 2020 at 02:08:17AM -0700, Bel Hadj Salem Talel wrote:
> Hi All,
> I'm trying to create a recipe for wirepas_gateway , it is a python proj=
ect, but it uses systemd dbus , and there is a .c file that includes=A0 #=
include <systemd/sd-bus.h>
> I tried to add "systemd" and "libsystemd" to RDPENDS, but same error ke=
eps showing :

RDEPENDS is for runtime dependencies, DEPENDS is for build time, so you
want to use DEPENDS here.

Cheers,
Quentin
