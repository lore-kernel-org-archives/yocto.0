Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web12.5637.1594816840499616626
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jul 2020 05:40:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from localhost ([127.0.0.1]:48192 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jvgiE-001W7W-U3
	for yocto@lists.yoctoproject.org; Wed, 15 Jul 2020 08:40:39 -0400
Received: from [66.129.241.14] ([66.129.241.14]) by crashcourse.ca (Horde
 Framework) with HTTPS; Wed, 15 Jul 2020 08:40:38 -0400
Date: Wed, 15 Jul 2020 08:40:38 -0400
Message-ID: <20200715084038.Horde._MxiVfolxrAUkmwAbzmgLHy@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: simplest way to disable all shared state cache for a build?
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

what is the simplest way to disable any use of sstate for a new build?
i see bitbake has a "--no-setscene" option that would appear to do that:

   Do not run any setscene tasks. sstate will be ignored
   and everything needed, built.

i've also seen some solutions that involve setting to empty strings
various variables like SSTATE_DIR, SSTATE_MIRRORS and so on. so if all
i want is to make sure everything is fetched, configured and built with
no use of sstate cache whatsoever, is "--no-setscene" the way to go?

rday

p.s. is this mentioned anywhere in the bitbake or a YP manual? seems
like this would be useful information for rigorous testing purposes.




