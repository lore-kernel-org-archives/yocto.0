Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web12.5689.1606305328362244454
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 03:55:28 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:39882 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1khtOQ-0007R6-7m; Wed, 25 Nov 2020 06:55:26 -0500
Date: Wed, 25 Nov 2020 06:55:24 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: vijayrakeshmunganda@gmail.com
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to add Python3 json module in Yocto
In-Reply-To: <5Kvc.1606304896086886389.KEDF@lists.yoctoproject.org>
Message-ID: <d18dbda2-b15-16f-ad1-cc1dfb4ebd@crashcourse.ca>
References: <5Kvc.1606304896086886389.KEDF@lists.yoctoproject.org>
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

On Wed, 25 Nov 2020, vijayrakeshmunganda@gmail.com wrote:

> Hi, can anyone please guide me on adding json module to my python
> library in yocto. I had download .bb file from OE Layer and placed
> it under recipe-devtool/python folder, but it is not including to
> the build. Also guide me how to select a suitable .bb file as there
> are many recipes available on json.

  simply adding a recipe to your layer is not sufficient ... you need
to specifically say you want a package added to your image with,
perhaps, adding the line:

  IMAGE_INSTALL_append = " <package> <package> ..."

to your local.conf file.

rday
