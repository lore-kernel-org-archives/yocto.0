Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web09.26249.1611518992683516697
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Jan 2021 12:09:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:39200 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1l3lhm-0003bA-OH; Sun, 24 Jan 2021 15:09:51 -0500
Date: Sun, 24 Jan 2021 15:09:47 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: steven.monsees@baesystems.com
cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel setting up PREMIRRORS under zeus
In-Reply-To: <MADEUP.165D434E10AAA4F1.7203@lists.yoctoproject.org>
Message-ID: <69eb3c98-1389-f74b-ea1f-291094707f23@crashcourse.ca>
References: <MADEUP.165D434E10AAA4F1.7203@lists.yoctoproject.org>
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
Content-Type: multipart/mixed; boundary="8323328-1159821163-1611518990=:90309"

--8323328-1159821163-1611518990=:90309
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 24 Jan 2021, Monsees, Steven C (US) via lists.yoctoproject.org wrote:

> I added the following to my local.conf:
>
> INHERIT += "own-mirrors"
>
> SOURCE_MIRROR_URL = “file:///ede/tms/yocto/zeus/downloads/PATH”
>
> But this does not appear to retrieve the tar-balls from from my local repository…

  not sure why that wouldn't work, it's what i've used for years.

rday

--8323328-1159821163-1611518990=:90309--
