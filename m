Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web11.37455.1585230947596645315
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 06:55:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:52562 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jHSz3-00H3mq-Tz; Thu, 26 Mar 2020 09:55:46 -0400
Date: Thu, 26 Mar 2020 09:55:44 -0400 (EDT)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Matt Campbell <Mcampbell@izotope.com>
cc: yocto@lists.yoctoproject.org, Huzefa Mandviwala <hmandviwala@izotope.com>
Subject: Re: [yocto] Best way to mask bbappends based on Poky version to have a layer support multiple versions of Poky?
In-Reply-To: <CAMDowVVL9L=ScNR49vG3fnHCTiYHsp2OHLi2xTZWE-gvetDWmw@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2003260954290.12282@localhost.localdomain>
References: <CAMDowVVL9L=ScNR49vG3fnHCTiYHsp2OHLi2xTZWE-gvetDWmw@mail.gmail.com>
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

On Thu, 26 Mar 2020, Matt Campbell wrote:

> HI All,

> We have a layer where we want to concurrently support two releases
> of Poky. There is an issue when we have bbappnds against recipes
> that have different versions in the two poky releases. for instance,
> imagine recipe foo that is version 1.0 in Zeus and 1.2 in Dunfell.
> If we had a bbappend in our layer `foo_1.0.bbappend` and tried to
> use our layer with Dunfell, bitbake will error out saying that
> `foo_1.0.bbappend` has no base recipe.

  not sure if this really solves the underlying issue, but you can
always turn those errors into warnings with:

  BB_DANGLINGAPPENDS_WARNONLY = "1"

in your local.conf, although i'm still skeptical as to whether that's
really the problem you're trying to solve.

rday
