Return-Path: <prvs=05185f543e=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAC0FE00D7B; Mon, 11 Dec 2017 06:37:32 -0800 (PST)
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
X-Greylist: delayed 3821 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Dec 2017 06:37:31 PST
Received: from mx6-out9.antispamcloud.com (mx6-out9.antispamcloud.com
	[95.211.2.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D596CE00D55
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 06:37:31 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx6.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1eOODM-0001HL-Ab
	for yocto@yoctoproject.org; Mon, 11 Dec 2017 14:33:49 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 11 Dec 2017 14:33:46 +0100
To: <yocto@yoctoproject.org>
References: <CAF3SDA5n9M_fcVY-5GCC0WV3tGhyz7Fqa49iocUPurufBsrq+A@mail.gmail.com>
	<CAPyrkgz8n9WWx4TdVbXgh-8cZB2tApCaBJ5APvS5GLQ6XhVp6g@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <6a66dfbf-6f6d-a5e4-6f71-63cdebac9bb6@topic.nl>
Date: Mon, 11 Dec 2017 14:33:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAPyrkgz8n9WWx4TdVbXgh-8cZB2tApCaBJ5APvS5GLQ6XhVp6g@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-AntiSpamCloud-Domain: topic.nl
X-AntiSpamCloud-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-AntiSpamCloud-Outgoing-Class: unsure
X-AntiSpamCloud-Outgoing-Evidence: Combined (0.23)
X-Recommended-Action: accept
X-Filter-ID: EX5BVjFpneJeBchSMxfU5onu3ont8GCmGAlpW8CqSjcXv9krsgRhBn0ayn6qsUc7w6SccWMDC+EB
	BTuK3o3KEyQlGLPaobytuzUKW+xz+P5GH4ChdP/6zl4Md4HxpuhsBMmyNbDn7R5kilAhwr3KtIuk
	b+536l3+pqAIhIa/zGWo/iGnUfSnY5dUqgMWWGZMFCHiphXB8AODqSq/lzyG2TRMHSsnw3B7WUA7
	+qoHsfNlXBj/EeuK4rQRn0mpuFNZB3XCyEChOKeG+lfo7J0os2Qm1+J+8vUqH6GhNB00o/hf4Yzq
	6dS01funfUD6Ou/VQZBNMLSx8375xL55h0aavQoJ3D/jrz/orF2VK/tUWXnCAXiLRwAzucVQJpGq
	E1PHzJJpy29T5GPauDkR8svuLz3dKxLhoxcmaInYbR5vlqEcY/cfQOfnGqboIpgp3WGjfOdU2kQF
	JEzfkq4ITozmMykuPS2k3wXW5Z7/7L7Taa+CIlIBg/Bq9smZh5ZtXzi6nKVQurH8l2RyOQTH7AN9
	xRnP8hKpI/ODMbKG1i2OpFfTdvhhnsvL61Nrz+nSvsx7nYvFTD783I3IePT22iFR8CiOtfKsJtTc
	Fd/j3b5mo/Tw6L+Rha4vSYxtpQn4lvqg0zzExxL5NoVI8mgIHlVDMHgJbFyUOzItj2jBqKA2zYz9
	MZYvjQV/M0PQ1wNC7+okbiZ6KNOFg/HMgG+TTkDLb2bjO41FyBEqIaDudcVplPFkPlJ6qSDW+aCQ
	chArcU2JTgWCa86y+gZU09fkvMjUtC30rbiheRb0a5mYj9Pl7r9IRfX5T90jmhx2+8Di+QhQ3jR5
	NeVaJQBh0uawl0Cg8sgK3Hz6uYkg1EcSzONQTDOJeknspp2QYhsLurZRnM70j9ygHhVolbJAfiYw
	jWOIY7HB7wpa5NZ74b9REdJZQ0k=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: VPS for building and serving.
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
X-List-Received-Date: Mon, 11 Dec 2017 14:37:32 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 11-12-17 12:12, Paul Barker wrote:
> On Sun, Dec 10, 2017 at 1:15 PM, Daniel. <danielhilst@gmail.com> wrote:
>> Hi,
>>
>> Is there anybody using VPS for building and serving packages? What plans=
 you
>> do recommend?
>=20
> I don't recommend using a VPS, they tend to get expensive for the spec
> you need for a Yocto build. You want plenty of RAM, CPU and disk
> space.

Saparate the two.

Use a private desktop machine for building images and feeds. You probably=20
already have it...

For serving packages, any HTTP server will do, so you can use any cheap pla=
in=20
and simple file based hosting.
Update the feed using rsync, or just use a script that copies the newer fil=
es=20
over to the hosting.

It's also a much better option security wise.


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




