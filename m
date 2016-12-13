Return-Path: <prvs=0155dabe15=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E17AE00C69; Tue, 13 Dec 2016 01:00:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.165.232.184 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx12-14.smtp.antispamcloud.com (mx12-14.smtp.antispamcloud.com
	[46.165.232.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F128EE00C45
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 01:00:15 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx12.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cGioD-0004vm-OL
	for yocto@yoctoproject.org; Tue, 13 Dec 2016 09:51:39 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 13 Dec 2016 09:51:36 +0100
To: <yocto@yoctoproject.org>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
	<1481296433.17535.170.camel@intel.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <ad99fb40-4d8e-c7e0-3fe8-d27bc593f8fb@topic.nl>
Date: Tue, 13 Dec 2016 09:51:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1481296433.17535.170.camel@intel.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t6mx
	j3Zz/WM/IwRyPjIHIwAJ0setUvJiF04IYla5riya6DbJ+nZjtHD0CLU60rCp9DwJWw42swm4bO6g
	acpMpzKAsmN/Lb+FQ/HEaohPJy4sx1hqmEa9iilDbgon2SBEM3eltedoxtsLVBJQHGKESyMFY4Gq
	im2xiRyWNqAIwgPKlF4BAIVCj4pS1pIKtVOXE59Wyy39ARVu6lpph/EphEnxqviw72Riavv+eZyE
	9H0bbbZrb4z7LVDm3uwJhixiewzr8ZOLud7oSceJFiA/jmR53/wXFnold8ciD8b1mxJhifnL+9wg
	oTj4ygNPw1XfN5Vao551PLI0A+euz2IJwDlwPHEzll1HTKtfLd0Dh7Mx6JpC9ZPQXZ49HLEasqm4
	uECLQbQ894/WJEvbJGlt9p+RVYKU9W9tbmVXJBqdHHDm21XAikGmQzbz+8y1rHkBAHFgzfxPX9rD
	YD/Gch+cIwMZdIAbrFDOs81P1HZjZMJ7p+7MnOeW9GGCwwhAiPn2K1dCvde4ogPN22DoEbu0qzo=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.08)
X-Classification: not-spam/combined
X-Recommended-Action: accept
Subject: Re: update mechanisms
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
X-List-Received-Date: Tue, 13 Dec 2016 09:00:19 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 09-12-16 16:13, Patrick Ohly wrote:
> Hello everyone!
>
> Thanks for contributing directly to the page. It's great to see this
> done collaboratively.

Nice informative page.

Only thing lacking is simple, OE-built in upgrade procedures like: "Just ru=
n=20
'opkg update && opkg upgrade'"



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






