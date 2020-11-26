Received: from bsmtp1.bon.at (bsmtp1.bon.at [213.33.87.15])
 by mx.groups.io with SMTP id smtpd.web10.4483.1606395023156282730
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Nov 2020 04:50:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.15, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp1.bon.at (Postfix) with ESMTPSA id 4Chczw35Hpz5tlD;
	Thu, 26 Nov 2020 13:50:20 +0100 (CET)
Date: Thu, 26 Nov 2020 13:50:19 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: aloofbynature@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Error during do_install for linux-libc-headers_5.8 recipe during 'bitbake core-image-minimal'
Message-ID: <20201126125019.b7q22albu3fpl3hh@qschulz>
References: <18AC.1606393594224214075.801I@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <18AC.1606393594224214075.801I@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Nov 26, 2020 at 04:26:34AM -0800, aloofbynature@gmail.com wrote:
> Hello,
> 
> I am just starting using Yocto Project and I've been following along with the getting started section of the mega manual. I am working on Ubuntu 20.04 LTS through WSL2 on Windows 10 (not sure if it matters but I'm running OS build 20231) trying to create an image using poky-yocto-3.2.
> 
> I've followed all setup steps and made sure the host has all necessary packages before cloning poky (I kept running into an error when trying to clone the repo because the connection was refused so I just extracted the poky-yocto-3.2 tarball). When I try to run 'bitbake core-image-minimal' I get an error saying the following task failed with exit code 134:
> 'poky-yocto-3.2/meta/recipes- kernel/linux-libc-headers/ linux-libc-headers_5.8.bb:do_ install'
> All the other recipes are installed with no problems.
> 

To be able to help you we'd need the logs of this task.
You can either paste the whole output on the console or send us the task
log you can find if you carefully read the console output.

Quentin
