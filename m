Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web10.9757.1588441925013271438
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2020 10:52:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:54764 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jUwJ1-0089IU-5o; Sat, 02 May 2020 13:52:03 -0400
Date: Sat, 2 May 2020 13:52:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: yocto@lists.yoctoproject.org
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] short form for unpacking recursively into WORKDIR?
In-Reply-To: <20200502174549.GA11927@denix.org>
Message-ID: <alpine.LFD.2.21.2005021351100.935890@localhost.localdomain>
References: <alpine.LFD.2.21.2005021150090.931595@localhost.localdomain> <20200502174549.GA11927@denix.org>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Sat, 2 May 2020, Denys Dmytriyenko wrote:

> https://lists.yoctoproject.org/g/yocto/topic/73258946

  ah, i remember that exchange, but i was focused on the patching
aspect of it, not the simpler copying aspect.

rday
