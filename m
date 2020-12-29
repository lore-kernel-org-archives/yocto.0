Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.14727.1609262349944468536
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Dec 2020 09:19:10 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:38408 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kuIeJ-0006C0-GM; Tue, 29 Dec 2020 12:19:08 -0500
Date: Tue, 29 Dec 2020 12:19:02 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Howard <howard.egan@avid.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Prevent WIC image from being built?
In-Reply-To: <23641.1609260688086369826@lists.yoctoproject.org>
Message-ID: <9a78b4ce-c2c4-96dc-72c3-8ff6ab83ba1e@crashcourse.ca>
References: <CADkTA4PdYsAjURfo4m3+1usN55p-fZd6rFQM2XcFVUkEB8o02Q@mail.gmail.com> <23641.1609260688086369826@lists.yoctoproject.org>
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
Content-Type: multipart/mixed; boundary="8323328-1933608494-1609262347=:3543"

--8323328-1933608494-1609262347=:3543
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Tue, 29 Dec 2020, Howard wrote:

> Yup, thank you Bruce:
>
> Using
> IMAGE_FSTYPES_remove += "wic"
>
> Didn't do it for me, but
>
> IMAGE_TYPES_remove += "wic"
>
> did the trick. 

  pedantry, but i'm fairly sure "=" would have sufficed; there was no
need to use "+=" here.

rday

--8323328-1933608494-1609262347=:3543--
