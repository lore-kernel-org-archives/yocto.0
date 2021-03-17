Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.175.1615998926871380341
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 09:35:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:35166 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lMZ8n-004axT-0L; Wed, 17 Mar 2021 12:35:25 -0400
Date: Wed, 17 Mar 2021 12:35:22 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: keydi <krzysztof.dudziak@thalesgroup.com>
cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Recipes and meta-data directory tree
In-Reply-To: <PR0P264MB0889956E80D4BC27FA39A48EE16A9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
Message-ID: <eaeefee-a670-daf-77aa-70bdee34673@crashcourse.ca>
References: <PR0P264MB0889956E80D4BC27FA39A48EE16A9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
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

On Wed, 17 Mar 2021, keydi wrote:

> Two projects are given. They use different YP release each.
> Projects use also different target platform each.

... snip ...

> project B (YP release 2.0, actually backport of some later release

  you can't legitimately expect support for YP 2.0, which is six years
old and has been EOLed for quite some time.

rday
