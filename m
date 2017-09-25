Return-Path: <prvs=0441e0e062=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EC3EE00D0D; Mon, 25 Sep 2017 05:03:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from out1-6.antispamcloud.com (out1-6.antispamcloud.com
	[185.201.16.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 306A2E00CD5
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 05:03:49 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx36.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1dwRrl-0008Sn-1K; Mon, 25 Sep 2017 13:48:02 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 25 Sep 2017 13:47:55 +0200
To: Joshua Lock <joshua.g.lock@linux.intel.com>, Martin Jansa
	<martin.jansa@gmail.com>, Michael Ho <Michael.Ho@bmw-carit.de>
References: <1498816090789.97105@bmw-carit.de>
	<CA+chaQcS17v-sPc9Prhu0JTf_TNTRXBEDxnwzZ6eTFC0aYSEJw@mail.gmail.com>
	<80532641-d9f5-c6db-15de-257bc075f88c@topic.nl>
	<7501485e-57df-ffbc-9189-f22edbb4de74@linux.intel.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <9b72183b-7f7c-59d9-4afb-24d363e6860e@topic.nl>
Date: Mon, 25 Sep 2017 13:47:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <7501485e-57df-ffbc-9189-f22edbb4de74@linux.intel.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.24)
X-Recommended-Action: accept
X-Filter-ID: EX5BVjFpneJeBchSMxfU5rnYMBsyoQssi1Q65SmC85fj1g3/PwYZaTCzSym8uE9HziYc+ALDjHuU
	eQwkRg2Yk0JJAslmRFFFj3HtgXyTP/+VnaT9NV9ZRmkOqbYwD0vNCQ9BXhL12XAJQXAlcQla+QCK
	VEUaai3SkpKNLAI51RCHF/klOPS5fWJZWsB+FPARim+d08L+p8vsDsQkMRmoWkGlz8CJSOMrvzx9
	TVg3RkXWtRCVM01fHBtFT4oza+5k/sevPPdLVvjz7b14RFNIS30ONArWHUY/dwk70VyeflhfZdf1
	siwYNJirk4ABKayR03+K7Ju/qxRhvHDAT5LyR61Qv/sjUDXLdm6w1gNv1etv8Cg3hLmAc6MzNodh
	mCNS0NZNW/XZC9qHOdKoypXuCpuv8+AJAs5OVVdGw7jzTmmm5dI++Vyz8xORtdI4KXtFaVJDVmKe
	Dpr9avyeewLWSMYOmcQ4SubaAVu9t1ITChSyteBiC2Fk67lA3oq4sbRYGLS9q7PUvAE5M+uoi7Vn
	1b3mhms596EiHWMnaJWhO1LjZzKoOS1fbJ8eBzRwmWyabhIf1VyGtn175sojVMHLwUPZJwrB9PDz
	SePVLTUBD75oh9VoIekQHpwUfpYnEThmh+P9FOBSfb4yot7FAn4mifVJKXZ64UA3UtMnEG/1uFZA
	MU+hVLX6zWC8WogFc6sqYp9LmvOvOp5BC5uzmBZyXVzlkzXu1dw0WcBov4OS/MDmWX9qu5xRtvpE
	gQ6+jeHz92PNDpgLsd6Ddd/s7VM53lgba1I91CQ3WEjK3YlD5w8Okf5jZxMgE16bb9a88jHh+Vth
	d0gJGePaJXlClzl3yodyCXNQWPWpqaG0C3TDtXeFCE3V8KWAT7a7O5nnupqnQKHY6H+wSCoVvwvq
	uzDDiPGq+LDvZGJq+/55nIT0fRv9l3EK8njykfMKlTyG/zOSKMFEHS3+vt/NjsedNDmPw/Ld14/y
	82ebPziYNS9mrGcHWFhVQvKDd9aHm1tzPaYBvBBr7WLx7CJQSQYjBPVNjPY4ocfmWv3Fe9Iziczd
	q+A=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Backwards compatibility checking sstate-cache
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
X-List-Received-Date: Mon, 25 Sep 2017 12:03:51 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 23-09-17 00:51, Joshua Lock wrote:
> On 22/09/17 15:00, Mike Looijmans wrote:
>> I think this remark in the referenced link is the best summary of "what=
=20
>> could be improved":
>>
>> """the biggest weakness of the sstate signature bits, in my opinion, is =
that=20
>> it only tracks inputs, not outputs. If task A depends on B, and the meta=
data=20
>> input to B changes, then A will be rebuilt, even if the *output* of B di=
dn't=20
>> change as a result of the change to its metadata."""
>>
>> For example, if someone fixes a bug in gcc that only applies to MIPS, th=
en=20
>> builds that only target an ARM machine shouldn't be affected. Much worse=
=20
>> than that, I have a dependency like:
>> gcc -> ... -> python -> bitstream tool -> FPGA image
>>
>> so this means that a change in gcc causes Python to rebuild, which cause=
s=20
>> the bitstream tool to be rebuilt and produce idential output, and that=20
>> triggers a roughly 31-hour build of lots of FPGA images. These are the o=
nes=20
>> we really want to break. A binary output compare would help a lot, even =
if=20
>> 80% of the libraries fail to create reproducible output, I may still be=
=20
>> spared those 31 hours...
>>
>> I think tracking digital output is technically feasible, and won't requi=
re=20
>> any change to existing recipes.
>>
>> Also think about "feed" setups. When I see my settop reporting "331 pack=
ages=20
>> need updating"... It'd be great if that could be avoided.
>>
>=20
> That's what packagefeed-stability.bbclass is for. Work on binary=20
> reproducibility will improve things here too.

Interesting, thanks for the hint.

That might cut down a bit on the over 4TB/month "update my box" traffic.


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


Visit us at the Space Tech Expo Europe (Stand E-71)

