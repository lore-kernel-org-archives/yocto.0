Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web10.726.1622153544452199506
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 15:12:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:49614 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lmOEn-004Bxz-UI; Thu, 27 May 2021 18:12:22 -0400
Date: Thu, 27 May 2021 18:12:18 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: sayinswapna@gmail.com
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
In-Reply-To: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
Message-ID: <1e7a7a18-f281-b72b-36cf-9e1014ab10ef@crashcourse.ca>
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Thu, 27 May 2021, sayinswapna@gmail.com wrote:

> Hello Yocto team:
>
> I just started with yocto and would like to know the process for switching the init
> manager from systemd to sysvinit.
>
> I tried this options in config file
> VIRTUAL-RUNTIME_init_manager = "busybox"
> PREFERRED_PROVIDER_udev = "sysvinit"
> PREFERRED_PROVIDER_udev-utils = "sysvinit"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> DEFAULT_DISTRO_FEATURES += " sysvinit"

  as i recall, all of the above can be replaced by a single assignment
to the INIT_MANAGER variable.

rday
