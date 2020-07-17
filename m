Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web12.12189.1594994986862017870
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jul 2020 07:09:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from localhost ([127.0.0.1]:55236 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jwR3Z-001vZS-7k
	for yocto@lists.yoctoproject.org; Fri, 17 Jul 2020 10:09:45 -0400
Received: from [66.129.241.10] ([66.129.241.10]) by crashcourse.ca (Horde
 Framework) with HTTPS; Fri, 17 Jul 2020 10:09:45 -0400
Date: Fri, 17 Jul 2020 10:09:45 -0400
Message-ID: <20200717100945.Horde.0y7MyxUpqucZDjld3LfKkEV@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: Python compile error: "The 'wheel' distribution was not found and is required by the application"
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

Colleague hands me build error wherein a Python2 recipe (grpc-python) fails
to compile with:

...
pkg_resources.DistributionNotFound: \
   The 'wheel' distribution was not found and is required by the application

...

This is a new one for me, and is in the context of a recipe added to "morty",
so I examine the checked-out source and, sure enough, in the requirements.txt
file, the final line reads:

   wheel>=0.29

But this doesn't look like a normal dependency failure, and I'm not sure what
to make of this ... can anyone advise on how to resolve that error  
above? I can
see there is a python3-wheel recipe, and I used "pipoe" to create a  
python-wheel
recipe, but none of that helped. What exactly is the compile step in  
this recipe
looking for that generates that error?

   Thoughts?

rday

