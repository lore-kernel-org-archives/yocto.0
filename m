Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web09.1568.1617224643131747564
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Mar 2021 14:04:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from [::1] (port=52148 helo=cpanel8.indieserve.net)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lRi0P-0037Vv-Cu
	for yocto@lists.yoctoproject.org; Wed, 31 Mar 2021 17:04:01 -0400
Received: from [136.2.33.165] ([136.2.33.165]) by crashcourse.ca (Horde
 Framework) with HTTPS; Wed, 31 Mar 2021 17:04:01 -0400
Date: Wed, 31 Mar 2021 17:04:01 -0400
Message-ID: <20210331170401.Horde.jO4rw4FVCs1_rhIuVYq7Swf@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: what is the state of upcoming(?) NXP S32G2xx support; layer, BSP?
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline


i note that the linux-yocto repo has a nxp-s32g2xx branch:


https://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?h=v5.10/standard/nxp-sdk-5.4/nxp-s32g2xx

so wondering about the subsequent BSP layer, from NXP or
elsewhere. thoughts?

rday

