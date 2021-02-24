Received: from delivery.mailspamprotection.com (delivery.mailspamprotection.com [146.66.121.68])
 by mx.groups.io with SMTP id smtpd.web09.6884.1614174165658679288
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Feb 2021 05:42:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@iwavesystems.com header.s=default header.b=olY35IFx;
 spf=softfail (domain: iwavesystems.com, ip: 146.66.121.68, mailfrom: sheraz.ali@iwavesystems.com)
Received: from 3.129.213.35.bc.googleusercontent.com ([35.213.129.3] helo=c57603.sgvps.net)
	by se24.mailspamprotection.com with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <sheraz.ali@iwavesystems.com>)
	id 1lEuR9-00015z-4K
	for yocto@lists.yoctoproject.org; Wed, 24 Feb 2021 07:42:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iwavesystems.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7xGZlmPCD/FtKs0D3WmnlWqLm63MHE7U5yAMIbZ9vi8=; b=olY35IFxTmiEzYQz/4yUENgbVI
	JmzWWU9GGSUl5iWZfpMzlN88pZehFjTn+niRvsN+ZCGtXlK+xRiaJRsAOL9WhLnv85+nGl9ZUcYw+
	b04nTVbvqhqoFXw48nI6Porp9I0SLNgeISjQe54SQAMzBvPG/rfR4+yOS+O4PNmhG3J/opjCp/2E6
	XSRQeWNtwXJ7KfsP67R55lFa3nkDOQPC+FmMFC9B0qmHBgdlmtFOz+6ECP23GrDt84OzbJhKrQrin
	afxn4AsrVc+R22EbfDctSk4n3ZLJ3TgCJ2P2x7GtpoP/Qj0qWdOgP3vvWUQ8rqjSk5uZsLiCgs9bp
	UwKMJoiQ==;
Received: from [182.73.142.196] (port=49943 helo=[192.168.1.131])
	by c57603.sgvps.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.90.1)
	(envelope-from <sheraz.ali@iwavesystems.com>)
	id 1lEuRE-000JUz-KY; Wed, 24 Feb 2021 15:42:48 +0200
To: yocto@lists.yoctoproject.org
Cc: Me <sheraz.ali@iwavesystems.com>
From: "Sheraz Ali" <sheraz.ali@iwavesystems.com>
Subject: Multi-planar API support in g_webcam
Message-ID: <b18f44c5-bec2-8729-fc27-4df287ac9a20@iwavesystems.com>
Date: Wed, 24 Feb 2021 19:12:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Originating-IP: 35.213.129.3
X-SpamExperts-Domain: c57603.sgvps.net
X-SpamExperts-Username: 35.213.129.3
Authentication-Results: mailspamprotection.com; auth=pass smtp.auth=35.213.129.3@c57603.sgvps.net
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.21)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT+tFL5Uk6D79jix5EjDgYrpPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zddOVhj1YHhpbQayN2s2E/5ZX+VW4rt+Hs37fP4pfw449w
 knWGobBIYos3d1n2bREoRcxRZCPjTS54DobO52T/5WCy5VkstzhnxgTXqsdmp2i6Ddy3P13btBFZ
 UMiL3zo9n50OYfC8kcHsdWAUj3k9jGij3BCzibrgdu/V7uJKlKltlZ1QkbQsipUP31PQF+RhD5xK
 1CLlqEvk2ACBkNlY2yr6O016cVunBBlVH/QysgUDUbdKOsJ3jpiXZif7N00U+8PjOwO4/rBisbga
 BZJXj4tANry8HDRI8Ro4ghK3flsOd0QJrGYbUb6G5rsuMGuMyGnDIpSchlco6RIDoNg/c+4l84gB
 ClgS15jvOaQcD2hfj9whi8KpGkNMaaLS9DIcqbdy+7WYS7ujrPXHqhox0HpT3S2SFmqVvJUoDpLg
 16h4fdi146VscqgNfYFRJ9S0ljEWAZy6eVtYlU9ELtI6fPe5pKqoyLm9mu1N1X2+kgzxotzwEDnz
 zSpJwVUP82FQef6Ceaw0tyEeHKZjklTreHL+whhAdKuW1jHRpItetjZU1dhNAjHGSz8wA7wGPYp6
 PH5kQfzcPe5Psb29XFKglV8hheRjmhoo1FCEuljRlhkgoL0bckEue7jwJnlVscnY5Qx4fJOk03R5
 fJtf/Dv/9m9+uP0zyEETyQahh1k9u2om0xVb9oL3R5o7ogdd/Z3MVvH6q7NWbH2PL//Us/3RHQ5T
 4dd65moW3LaNF7gWmZpc90K0wvTL9FNd+S1eb6fI/cZD9lp/UR7yp4bWMJ+XX0vbOV1GC4tWSdME
 fX0qZk++GRKi3fJfRTPr/PuJHE3ILnao2Y5yeKYMv+3QEzud2snzvTkyi+CF7Utdob77tCTDxAAA
 uZiVTSjl6iCv4Gg0bLON24mXA/YHTfu5uhGm/ERLw8IyKO7iWmvDpLA3lTwJWw42swm4bO6gacpM
 pzLfE9JDNLDCOFvMDIzciql+nydj7zPDQ1vmdI1EAhz2qpvaaWIYputfBRexCCGiDE+xHShTKmGl
 cvrBQtK6UYFzNtm4M4cZHQFdihYDfzLyV/crtz7Deqzmzsvx8OJJbsiW0CcUFOZ3iTAweMP5Utmb
 8OWOI9MXNdzUY0JnS2h2mVJ/IV83IFVry3tjIumiu0AxL7hrJSk60SF3F6RYOYr2
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi All,

I wanted to know whether g_webcam supports multi-planar API.

-- 
Thanks and Regards
Sheraz Ali Shah

