Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web11.193493.1598271261052994322
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 05:14:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from [127.0.0.1] (port=34394 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kABMh-006CLi-Cb
	for yocto@lists.yoctoproject.org; Mon, 24 Aug 2020 08:14:19 -0400
Received: from [66.129.241.11] ([66.129.241.11]) by crashcourse.ca (Horde
 Framework) with HTTPS; Mon, 24 Aug 2020 08:14:19 -0400
Date: Mon, 24 Aug 2020 08:14:19 -0400
Message-ID: <20200824081419.Horde.jqNYAuMzi_gParI45SlQAqB@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Yocto uses older PV instead of newest - how to figure out why?
In-Reply-To: <Nffe.1598270546825143039.KBHO@lists.yoctoproject.org>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline


Quoting Oliver Westermann <oliver.westermann@cognex.com>:

> Hey,
>
> we're porting our yocto from an older NXP iMX release to their  
> newest BSP, upgrading yocto in the process from sumo to zeus.
> Using their current setup, the layers provide one recipe in two  
> versions - 0.2 and 1.0. imx-boot to be precise.
>
> I assumed yocto would use the newer version, but it uses 0.2 for  
> some reason and I can't figure out why: I 'grep'ed' everything and  
> could not find any reference to this package which has some version  
> requirements.
> Are there any tips to figure out why yocto is not using the 1.0 recipe?

   Could it have something to do with layer priorities? Use the
"bitbake-layers" utility to display where recipes are being
pulled from.

rday

