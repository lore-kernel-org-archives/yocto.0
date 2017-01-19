Return-Path: <prvs=0192993b27=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87FC0E00AD5; Thu, 19 Jan 2017 01:40:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.2.200 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1296 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Jan 2017 01:40:35 PST
Received: from mx6-09.smtp.antispamcloud.com (mx6-09.smtp.antispamcloud.com
	[95.211.2.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 362F8E00ACE
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 01:40:35 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx6.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cU8rw-0006X9-Fs
	for yocto@yoctoproject.org; Thu, 19 Jan 2017 10:18:58 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 19 Jan 2017 10:18:55 +0100
To: <yocto@yoctoproject.org>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <40274d5f-c074-8ee5-bb41-5cb66f5da9bd@topic.nl>
Date: Thu, 19 Jan 2017 10:18:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNKP4
	6wwrEXtXPUNrNeCoyVcemy+JTlYOXFt17SXnghoZs+JF4p6GFCsrOd61yzxCj2bjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAAdpU0oUDqng6Dyy2mQeofidULBvK2z5bnO3cb2wi65ON1el35jO+WJBgrWGjAavfuifnL+9wg
	oTj4ygNPw1XfN1IUJ2+rCMPpQhII5VkEVC//8GRISD+lYCwA5l6/Q4nfg8y63jKKBrO1BroJmvb9
	eW6r2rlUSNsSKfXWKXbAnTtpwWXpE+sdjNmnXWjiNaLzU4EFnW2XgX+M1ZN6UZmlFVODLzPsd/iT
	v744WiqgNunTiEw2ui8TVPldBCj8jBATaV0f1JQTj5AK4Kl1rn2kX88E/p9BurLOIHTmW3gH2nZm
	xXwja5iKlp+dXi/VJII42YI5PogHEGUWoL6eStEYApwKXoD4iJBsNfB/QPOzo3NC59y3EFXUwBcT
	DQ0nlghOTckC4oN5XN7BzTWQhrf/swR2CyK/TDfXujiCP8LRaB5w1V+jDE9jAOCwt+p4kGKDMS+4
	ayUpOtEhdxekWDmK9g==
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
X-Recommended-Action: accept
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Thu, 19 Jan 2017 09:40:38 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 18-01-17 16:10, colin.helliwell@ln-systems.com wrote:
> We have a configuration for our embedded system which is working via SysV=
, but
> we=E2=80=99re investigating moving over to systemd.
>
> Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has techno=
logical arguments for/against
> then I=E2=80=99d be interested =E2=80=93 but I wanted to investigate it a=
nyway.

Just one. systemd is a bit larger. So it will increase the boot time if you=
r=20
platform is I/O limited (many embedded systems are).

The good thing I noticed is that it shuts down a lot faster than initscript=
s.=20
(I don't understand why I can boot my system in 2 seconds, but shutdown tak=
es=20
over 5 seconds...)


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






