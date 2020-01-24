Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.10542.1579856526019131781
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 01:02:07 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: iki.fi, ip: 91.232.154.25, mailfrom: anders.montonen@iki.fi)
Received: from kapsi.fi ([91.232.154.11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1iuuqo-0005vc-Vr
	for yocto@lists.yoctoproject.org; Fri, 24 Jan 2020 11:02:03 +0200
Received: from antime (helo=localhost)
	by lakka.kapsi.fi with local-esmtp (Exim 4.92)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1iuuqo-0000wH-5h
	for yocto@lists.yoctoproject.org; Fri, 24 Jan 2020 11:02:02 +0200
Date: Fri, 24 Jan 2020 11:02:02 +0200 (EET)
From: "Anders Montonen" <Anders.Montonen@iki.fi>
X-X-Sender: antime@lakka.kapsi.fi
To: yocto@lists.yoctoproject.org
Subject: cve-checker name collisions
Message-ID: <alpine.DEB.2.21.2001241057320.4667@lakka.kapsi.fi>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Rspam-Score: -0.3 (/)
X-Rspam-Report: Action: no action
 Symbol: ARC_NA(0.00)
 Symbol: R_SPF_NEUTRAL(0.00)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: TO_DN_NONE(0.00)
 Symbol: DMARC_NA(0.00)
 Symbol: RCPT_COUNT_ONE(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: NEURAL_HAM(-0.00)
 Symbol: IP_SCORE(-0.20)
 Symbol: FROM_EQ_ENVFROM(0.00)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Message: (SPF): spf neutral
 Message-ID: alpine.DEB.2.21.2001241057320.4667@lakka.kapsi.fi
X-SA-Exim-Connect-IP: 91.232.154.11
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain; format=flowed; charset=US-ASCII

Hi,

What's the best way for handling name collisions when using the 
cve-checker tool? For example, there's a ton of Adobe Flex vulnerabilities 
that are reported against the Flex lexical analyzer generator tool. 
Whitelisting the individual CVEs would be one option, but the list is 
pretty long.

Regards,
Anders Montonen
