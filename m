Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web08.40704.1606159580356551122
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 11:26:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from [::1] (port=47856 helo=cpanel8.indieserve.net)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1khHTa-0004ZG-Kt
	for yocto@lists.yoctoproject.org; Mon, 23 Nov 2020 14:26:19 -0500
Received: from [66.129.242.12] ([66.129.242.12]) by crashcourse.ca (Horde
 Framework) with HTTPS; Mon, 23 Nov 2020 14:26:14 -0500
Date: Mon, 23 Nov 2020 14:26:14 -0500
Message-ID: <20201123142614.Horde.F-OU8zufirbdV2VWd9blWRK@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@lists.yoctoproject.org
Subject: OE/YP equivalent to 'mtree'?
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

   colleague wants to know if there is something available
in an OE/YP layer equivalent to mtree:

   https://linux.die.net/man/8/mtree

i'm looking at a few possibilities right now but nothing
seems really equivalent. thoughts?

rday


