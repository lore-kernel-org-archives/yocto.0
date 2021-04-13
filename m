Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web10.989.1618336814268307062
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 11:00:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
X-Originating-IP: 109.210.254.211
Received: from [192.168.1.20] (amontpellier-552-1-199-211.w109-210.abo.wanadoo.fr [109.210.254.211])
	(Authenticated sender: michael.opdenacker@bootlin.com)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 7CF97C0006
	for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 18:00:12 +0000 (UTC)
To: yocto@lists.yoctoproject.org
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Subject: ref-manual: reverse the order of migration guides?
Organization: Bootlin
Message-ID: <aa9e2f70-95d9-f703-441f-ddf973f34eca@bootlin.com>
Date: Tue, 13 Apr 2021 20:00:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Greetings,

Wouldn't it make sense to reverse the order of migration guides in the
reference manual
(https://www.yoctoproject.org/docs/3.0/ref-manual/ref-manual.html#migration)?

I guess it would be easier to start mentioning the migration path from
the most recent release, as version 1.3 looks ancient.

Would it make sense? If so, it's easy to propose a patch...

Thanks in advance,

Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

