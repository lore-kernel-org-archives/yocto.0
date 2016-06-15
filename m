Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37797E00C8B; Wed, 15 Jun 2016 02:04:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3394 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Jun 2016 02:04:02 PDT
Received: from mx36-56.antispamcloud.com (mx36-56.antispamcloud.com
	[209.126.121.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5FE8E00C7D
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 02:04:02 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx36.antispamcloud.com with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1bD5rA-00042d-Oj; Wed, 15 Jun 2016 10:07:26 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 15 Jun 2016 10:07:20 +0200
To: Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com>, Christopher Larson
	<clarson@kergoth.com>
References: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
	<CABcZANkeE_RumUN=6D8n8zFQW8hEb-nRQgXBbc5ZMPkZniPLjA@mail.gmail.com>
	<5760041E.1010809@topic.nl>
	<ea5b572b51f542459e034c49f2f05d76@BN3PR97MB0132.062d.mgd.msft.net>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <57610CB8.4050904@topic.nl>
Date: Wed, 15 Jun 2016 10:07:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <ea5b572b51f542459e034c49f2f05d76@BN3PR97MB0132.062d.mgd.msft.net>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw2ZJFVxz8gx98PpQXwylg7GRvwwxOJx3doQ0G9N22B3qcOizynlqHMLYpxwQSN6rHEQ3
	GlTDBW/f6pOUbImGIBLDpJxxYwML4QEFO4rejcoTB1ON6HovqIvxtmjUuhcoviuLs85zA/yHEgrq
	vKfKLjPw+Lxqd/jtI5dgi/GqPWkFFJ9owWVPz12mktd2H4eQoIyY8Gyrh5dcaydCjh55fziT6L31
	7/p6ioncOp25t+mRVjRUy0x2AKc9FHMbmlOoMvGX+ObfaU6whL8xq/xH+avyvQ7CbINIDcS5wpWy
	+I5YvF3K7LgeiuH5eCStSiiSVJeFB9XoTpMnYKYB1MU+b9NrzOR53mK2sN34HMy+JoRFY4+4QY0s
	jn2opeJJeXfjJME2PcThwZvQzlAUa/De200n/t9mSP8PaFvoZGGW7zDZn0Omwyz83+od6yXM3xg5
	3lJa8Sow8yJBTz7nPOPnRKhbLPp9n350Mbemie5JWWm/nCVm/AhWHHHCeRDROo40UY9D2cFVeTvb
	bla5RrV04KsyFJGu1KuteTIpNas3M99Pv535EWTPad0aO6lKcCtW6K0hIR8cIf6lYHZizJx95IFo
	h9VoIekQHpwUfpYnEThmPqynlLtqAOJgPXwSJyHNEt6xJPJ0xxPL9Fup9dJTlL3Dn3AnUp/IgRFm
	TKeqmapZC0alLBSoLUwNq02/+YVsRw==
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Originating-IP: 88.159.208.100
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.11)
X-Recommended-Action: accept
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mounting USB drives on a "read-only-rootfs" based system
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
X-List-Received-Date: Wed, 15 Jun 2016 09:04:08 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 14-06-16 15:48, Jeffrey D Boyer wrote:
> Sorry, /media is not a symlink and there is no /run/media link or directo=
ry present on my running system.  When I insert an SD card, for example, I =
get a bit of text on the debug serial port that a card has been detected, b=
ut I don't see a mount point anywhere after that.
>
> 	root@mySys:/# mmc1: new high speed SDHC card at address 1234
> 	mmcblk1: mmc1:1234 SA04G 3.63 GiB
> 	 mmcblk1: p1
>
> It should be noted that if I exclude the " read-only-rootfs" option in th=
e bb script, a normal read/write kernel image is produced and the action of=
 inserting an SD card under those conditions will automatically produce a m=
ount point at /media/mmcblk1p1

Apparently your distro or image or whatever is lacking some directories. Th=
e=20
/run/media should have been created automagically.

Are you using udev or mdev for hotplug?

For mdev, I implemented the automounting using /run/media and that should a=
lso=20
work on read-only-rootfs systems. So I can probably figure out what's wrong=
=20
with your config.

For udev, I don't have a clue, sorry...


> FYI, I'm running 3.14 kernel.  Is this a job for aufs?  If so, how would =
I go about configuring it?

No, it's not related to autofs or aufs or whatever. It's plain simple udev =
or=20
mdev.



Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






