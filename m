Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web12.550.1581616705201735894
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 09:58:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:55760 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j2Ikq-003SMc-4P; Thu, 13 Feb 2020 12:58:24 -0500
Date: Thu, 13 Feb 2020 12:58:22 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] should all "IMAGE_INSTALL +=" become "IMAGE_INSTALL_append"?
In-Reply-To: <b653f8fe-60e5-06d5-8787-a7af5dee46b9@mvista.com>
Message-ID: <alpine.LFD.2.21.2002131258070.2836540@localhost.localdomain>
References: <alpine.LFD.2.21.2002131230260.2835172@localhost.localdomain> <19e5bb94-18b7-2ac7-4d8d-afee04772862@mvista.com> <alpine.LFD.2.21.2002131246280.2835715@localhost.localdomain> <b653f8fe-60e5-06d5-8787-a7af5dee46b9@mvista.com>
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

On Thu, 13 Feb 2020, Jeremy A. Puhlman wrote:

> I was looking at th 1.6 version of the document, and the 5.2.1
> section is 3.2.1 in the 3.0 version. The section is about modifying
> images from the local.conf, so my comments are still the same. You
> need it to modify an image from the local.conf, but += is more
> appropriate in an actual image recipe.

  yes, i see your point now.

rday
