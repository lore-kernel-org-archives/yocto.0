Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.53926.1594025645937168047
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 01:54:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4B0fWJ0T6kz5tlC;
	Mon,  6 Jul 2020 10:54:04 +0200 (CEST)
Date: Mon, 6 Jul 2020 10:54:02 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Shlomi Vaknin <shlomi.39sd@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Building a clean image without using sstate-cache
Message-ID: <20200706085402.h4ysl6ydc5erzv5a@qschulz>
References: <CALxJ29R_QJEmQeXWc4JSy7vi2CC7tprMp5tfmFjV8uwpfjR9Hw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALxJ29R_QJEmQeXWc4JSy7vi2CC7tprMp5tfmFjV8uwpfjR9Hw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Jul 06, 2020 at 11:08:31AM +0300, Shlomi Vaknin wrote:
> Hi,
> 
> I'm trying to run a clean build without using the sstate-cache shared
> directory, so we can check that everything is working properly and also
> update our sstate-cache shared folder every now and then.
> 
> I have the SSTATE_MIRRORS defined in my site.conf using "?=" operator.
> 
> When I try to export this variable as empty string and then build the
> image, the image is built using the cache.
> 
> How can I override the SSTATE_MIRRORS when running bitbake or run a clean
> build without using sstate-cache?
> 

IIUC, SSTATE_MIRRORS is just a way to prepopulate your local sstate-cache.
So you'd need to have SSTATE_MIRRORS="" but also change SSTATE_DIR to some
path where no sstate-cache is so that the local sstate-cache isn't also
used.

Quentin
