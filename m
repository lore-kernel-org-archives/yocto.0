Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B152FE00D92; Mon, 21 Sep 2015 07:04:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.244.64.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 8148 seconds by postgrey-1.32 at yocto-www;
	Mon, 21 Sep 2015 07:04:26 PDT
Received: from mx18-09.smtp.antispamcloud.com (mx18-09.smtp.antispamcloud.com
	[207.244.64.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD169E00C69
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 07:04:26 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1ZdzaD-0004H4-2N; Mon, 21 Sep 2015 13:48:37 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Mon, 21 Sep 2015 13:47:49 +0200
To: <andy.pont@sdcsystems.com>
References: <55F822C0.8030404@windriver.com>
	<55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>
	<55F846D8.4020808@gmail.com>
	<CAJTo0LaXx_DR7j0og26UK7mvmmR6fPk6ZnGiyVSOeGfw7JYQ7g@mail.gmail.com>
	<55f9358a.44f2440a.38b16.7e0cSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAJTo0LZr4TZ48ctS7U8EwUreSz7GZ8JuB_Y0Kody3LKGp2o9cw@mail.gmail.com>
	<010b01d0f089$e87a7670$b96f6350$@pont@sdcsystems.com>
	<55FA68E9.9090904@topic.nl>
	<00a001d0f45b$09ff9350$1dfeb9f0$@pont@sdcsystems.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <55FFEE8D.40001@topic.nl>
Date: Mon, 21 Sep 2015 13:48:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <00a001d0f45b$09ff9350$1dfeb9f0$@pont@sdcsystems.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw10X2em4dw3vSXNA5R32mSNclwRXGqFkEfIvKu6CNtaedqZk0309+K7L5bjCPYYTrEif
	hqPzFVUyRBl32z0+nZrNvKN2kDnaTSa7rBDWFldJ/BqzrxwoLVfE3bnc2h3ikTh4rLn0zyq8zz3Q
	7ChrRBVv73+pptByDUM8igNl9Rg0ugNuylZsLevy5ia/a/+5aHcovBtceMenHPxU5a3FqpG0Zq1L
	XSu3rlGGdZSBKS3XPQwbnle21pUHnXNW1Wm96ZFVgpT1b21uZVckGp0ccOYJH6sC5oCk/8v9mZ1n
	Ys+9QOCe7aowgYngmPcm0y4syV/2HYZTKQ+r7Jt8D04J/YOLBDMrD7q/cJogwbqzsuokHxWj8Foi
	CTq0J+qn1IaJoNZeels3I4vsqtm1dXCnaLG9og1s35mw1E+5Gx3FeTul9zV0u0qe2Jq4j4QQWaTx
	c3pRgAE8QmaiSAxWIQ3rF5W2D/Ga1fZdqU1kLs7UmNCbWyZtXcdXYx1yuUdxkWGZYmFcdHvIPeIb
	QORDOmk0Kfk8zYOZy1SS6ohN09nxrcu5XHFvnZNrbYwqRgrOIQ5LXMosZUplPQkMyKQV5CLS4vtT
	OicmOHAc+dReqkO+qVhhGAP8VURju/iVoh1Mnx34oLiLFZJhYijeIOrG82fwxtkbwVX99ABFVwbn
	9YX0Sq+5
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJUb3OPwsHaH0Fvg5oXltHd/JUWjZ8+qhjyB23tbDuyLOYL8Ff78gYsez
	4Rl08xudmXi4esCQ0R1MchVjt7wblGlvhFgW0MjUMRkF5sMCDfftTXNFDzN17hnrWeZYOJvLq0Ic
	WjZ+XcEjj/7Pkld0zkmvziDInX9WdMov2kn2yXjdwv61T+KDYyYtREgszdyFwv8IxCB3p/oCKvxr
	eyISh3JGb7OS5oVgiO+kDxZrVPLz3MmEGC2PrUKqLq5WmHK+Nw==
X-Originating-IP: 88.159.208.100
X-Spampanel-Domain: topic.nl
X-Spampanel-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-Spampanel-Outgoing-Class: ham
X-Spampanel-Outgoing-Evidence: Combined (0.05)
X-Recommended-Action: accept
Cc: yocto@yoctoproject.org
Subject: Re: Dumping sysvinit
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
X-List-Received-Date: Mon, 21 Sep 2015 14:04:30 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 21-09-15 12:48, Andy Pont wrote:
> Hi Mike,
>
>>> Back to plan A then, trying to figure out how to get Busybox init and
>> mdev as the defaults in the image.
>>
>> Create your own distro, here's an example that uses mdev:
>>
>> https://github.com/topic-embedded-products/meta-
>> topic/blob/master/conf/distro/tiny.conf
>
> Thanks for pointing me in the direction of this.  I have cloned it and us=
ed
> it as the basis of my distro, tweaked it a bit and it is starting to beha=
ve
> how I want.  There are a few anomalies that I haven't managed to figure o=
ut
> yet...
>
> Despite having VIRTUAL-RUNTIME_initscripts =3D "" the root file system st=
ill
> contains /etc/rcX.d directories
>
> On other embedded Linux projects that boot using Busybox init the
> /etc/init.d directory contained the individual service start and kill fil=
es
> e.g. S50-dropbear and K50-dropbear but I can't see how to make Yocto
> populate this directory in that form.
>
> Thoughts and guidance from anyone would be much appreciated!

I didn't go as far as attempting to get rid of initscripts as well. I just=
=20
patched the initscripts to remove the things I did not want in a=20
do_install_append.

Many recipes will create /etc/rcX.d entries to start/stop things.



Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
Telefax: +31 (0) 499 33 69 70
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






