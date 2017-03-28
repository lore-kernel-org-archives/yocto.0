Return-Path: <prvs=0260a732b4=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91FB4E00939; Tue, 28 Mar 2017 07:37:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.112.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2554 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Mar 2017 07:37:45 PDT
Received: from mx5-04.smtp.antispamcloud.com (mx5-04.smtp.antispamcloud.com
	[95.211.112.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24578E00655
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 07:37:45 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx5.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1csraW-0005jz-Gb
	for yocto@yoctoproject.org; Tue, 28 Mar 2017 15:55:09 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 28 Mar 2017 15:55:07 +0200
To: <yocto@yoctoproject.org>
References: <1e0b01d2a79a$18c68030$4a538090$@ln-systems.com>
	<CAJTo0LajEvXnv+_L-udEejKu6c56xOrKwekoNRNzn29R_ihqZg@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <26c1ad6f-052e-3260-ae06-4f5185522e88@topic.nl>
Date: Tue, 28 Mar 2017 15:55:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LajEvXnv+_L-udEejKu6c56xOrKwekoNRNzn29R_ihqZg@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.18)
X-Recommended-Action: accept
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNHcQ
	HarJ3TdMf4aSj8IylsE8KY/Sh1vzbtueiKYvDFupize2KZj1QMUvQPa5R89adWbjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAANeo6Hr4UJMIZEVOGlXeApA3I626B4k1VCg2pmPRu/tsJdUfg0BBA/jDPAolgiEjQNrdm88ZO
	hP1sHXP6wEwxP73upx1n/FUf/NwbTI+uRoXlWvXEyVXmV1DcCGMoc6ig/SVaKi0jvtxxX4zA29pu
	2ONYQFX+rhdRbxagFZk9QeU7sEKSfUWHty4XO0JvVoTKUz0sPgnpAk2KA2vJwMd1uVp/3TgIM4oj
	TBFr687rGjvg8i1EWhZgcWEg+htcON1+aIfVaCHpEB6cFH6WJxE4Zs5mbpFFk0cqJJSclmrLqtls
	116aTDs833MeJV30f/JZPGg8GyebUcHHoTZkyAmXZhFMyLWU2atJ3T6oYWHm47FfucNbjTxIOR91
	bxck2vvLx45W6h2ctW+V1+EyMGTLxVItpNmHURF6jYEBDsakSw8HHCZJTZ9IJG3AwYPF1NUzlG39
	CuxUtSxaDJJ6TChcLUH9asyhHPHrk1fOl/Hbtww=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: Current situation with gobject introspection? (off-topic)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Mar 2017 14:37:50 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 28-03-17 10:39, Burton, Ross wrote:

> Krogoth (2.1) isn't the latest, that's Morty (2.2) released in October 20=
16
> and next month Pyro (2.3) is being released.

So what happened to the missing two walker bots?

:-)



Kind regards,

Mike Looijmans
System Expert

TOPIC Products
Materiaalweg 4, NL-5681 RJ Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






