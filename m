Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.7794.1622205930149869337
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 05:45:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:37536 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lmbrl-0081FL-47; Fri, 28 May 2021 08:45:28 -0400
Date: Fri, 28 May 2021 08:45:24 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Zoran <zoran.stojsavljevic@gmail.com>
cc: Swapna Nannapaneni <sayinswapna@gmail.com>, Khem Raj <raj.khem@gmail.com>, 
    Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
In-Reply-To: <CAGAf8Lx_MxnDMVWspVDShzq8uLCtxcSAGqZZoT0Vdsh8YT8cRw@mail.gmail.com>
Message-ID: <bb2c2342-d737-84dd-6f43-c4c515fedf23@crashcourse.ca>
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org> <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com> <CAHUEwNZPjwy93VOvRLK5DA=pQRyFSK5TA32h_uZgzwdKyQFagQ@mail.gmail.com> <CAGAf8Lx_MxnDMVWspVDShzq8uLCtxcSAGqZZoT0Vdsh8YT8cRw@mail.gmail.com>
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

On Fri, 28 May 2021, Zoran wrote:

> > Tried setting  INIT_MANAGER  = " sysvinit" in build/conf/local.conf
>
> Is it INIT_MANAGER  = " sysvinit" , or INIT_MANAGER  = "sysvinit" (no
> blank at the beginning)?
>
> Thank you,
> Zee

  you don't want the leading space.

rday
