Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web12.399.1581616128066773495
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 09:48:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:55608 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j2IbW-003R7x-RY; Thu, 13 Feb 2020 12:48:47 -0500
Date: Thu, 13 Feb 2020 12:48:43 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] should all "IMAGE_INSTALL +=" become "IMAGE_INSTALL_append"?
In-Reply-To: <19e5bb94-18b7-2ac7-4d8d-afee04772862@mvista.com>
Message-ID: <alpine.LFD.2.21.2002131246280.2835715@localhost.localdomain>
References: <alpine.LFD.2.21.2002131230260.2835172@localhost.localdomain> <19e5bb94-18b7-2ac7-4d8d-afee04772862@mvista.com>
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

> You are referring to section 5.2.1 if I am not correct, not 3.2.1?

  no, section 3.2.1 in current git version of YP development tasks
manual. that manual doesn't even have a section 5. we better make sure
we're looking at the same manual.

> The context is important here. 5.2.1 is discussing using the
> variable as part of your local.conf. Which is a different animal
> then adding it to an image recipe.  In local.conf you really need
> _append to for it to even take effect, where its more correct and
> natural in my opinion to use += in bb since it provides more
> flexibility to alter the recipe with out using too much magic.

rday
