Received: from gateway31.websitewelcome.com (gateway31.websitewelcome.com [192.185.143.36])
 by mx.groups.io with SMTP id smtpd.web11.8125.1602973007225427851
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 15:16:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: dajac.com, ip: 192.185.143.36, mailfrom: david.novak@dajac.com)
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway31.websitewelcome.com (Postfix) with ESMTP id A6F9C54B9E
	for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 17:16:46 -0500 (CDT)
Received: from gator3290.hostgator.com ([198.57.247.254])
	by cmsmtp with SMTP
	id TuVKkMbjmn9FWTuVKk8xZZ; Sat, 17 Oct 2020 17:16:46 -0500
X-Authority-Reason: nr=8
Received: from 75-15-4-89.uvs.iplsin.sbcglobal.net ([75.15.4.89]:56505 helo=[192.168.0.118])
	by gator3290.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <david.novak@dajac.com>)
	id 1kTuVJ-000QAy-Jn
	for yocto@lists.yoctoproject.org; Sat, 17 Oct 2020 17:16:46 -0500
From: "David Novak" <david.novak@dajac.com>
Subject: Which dts is being compiled?
To: yocto@lists.yoctoproject.org
Message-ID: <40cb2bfe-b789-de46-d05a-6f331781846a@dajac.com>
Date: Sat, 17 Oct 2020 18:16:40 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3290.hostgator.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dajac.com
X-BWhitelist: no
X-Source-IP: 75.15.4.89
X-Source-L: No
X-Exim-ID: 1kTuVJ-000QAy-Jn
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 75-15-4-89.uvs.iplsin.sbcglobal.net ([192.168.0.118]) [75.15.4.89]:56505
X-Source-Auth: david.novak@dajac.com
X-Email-Count: 3
X-Source-Cap: ZGFqYWNpbmM7ZGFqYWNpbmM7Z2F0b3IzMjkwLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi all. I've found the device tree files and I'm fairly certain I know 
which one is being used in out image, but I want to be certain.

What process is used by Yocto to determine which top level dts file to 
compile?

Thanks,
David



