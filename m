Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.22601.1593613224361545141
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 07:20:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49xk061pGLz5tlC;
	Wed,  1 Jul 2020 16:20:22 +0200 (CEST)
Date: Wed, 1 Jul 2020 16:20:21 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] ERROR: Nothing PROVIDES 'core-image-sato' #raspberrypi #yocto
Message-ID: <20200701142020.q47fa2ryqempbm5g@qschulz>
References: <Czxo.1593612634059275173.hllo@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <Czxo.1593612634059275173.hllo@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jul 01, 2020 at 07:10:34AM -0700, Pankaj  Vinadrao Joshi wrote:
> Hi,
> i am building an image for RPI4

You have probably added core-image-sato to DEPENDS which is incorrect.
You can't add an image recipe as a dependency.

Quentin
