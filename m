Return-Path: <prvs=0268497409=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD891E00777; Wed,  5 Apr 2017 05:20:37 -0700 (PDT)
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
X-Greylist: delayed 1748 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Apr 2017 05:20:35 PDT
Received: from mx18-09.smtp.antispamcloud.com (mx18-09.smtp.antispamcloud.com
	[207.244.64.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AF89E00655
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 05:20:35 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cvjT9-0004Z2-3Z; Wed, 05 Apr 2017 13:51:26 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 5 Apr 2017 13:51:21 +0200
To: "Maier, Chris" <C.Maier@geze.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <2AA7D088591C49498E92D6491C58159334CCE0DB@gcxdb1.corp.geze.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <91e0f880-ef37-c492-d1f1-227535238121@topic.nl>
Date: Wed, 5 Apr 2017 13:51:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <2AA7D088591C49498E92D6491C58159334CCE0DB@gcxdb1.corp.geze.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.08)
X-Recommended-Action: accept
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNGXS
	x9xvfqCVRP18ssdywICTB/1X3V1rgarEe3ZhmeSmoVhVc0VaI0Rn20pgNAwuO2bjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAANeo6Hr4UJMIZEVOGlXeApA3I626B4k1VCg2pmPRu/tsIpn52gdBRo6s8aumEvw2X11DDx1aD
	DwWSUnBinVYxC73upx1n/FUf/NwbTI+uRoXlWvXEyVXmV1DcCGMoc6ig/SVaKi0jvtxxX4zA29pu
	2ONYQFX+rhdRbxagFZk9QeUTMKkbMlXz2JUArHA+14sz3sbskoLsCzHbimU89cr33RKm353ztx8x
	waw1cKnsBGyxcEIKVJg0J7erdcW8mf2rcxw3qqhc+N6cuEg4XWh5FisU8iUTtM4VmEUq9mJOECjT
	wbGHRURTI9UKWvyI0BkzxSIvEq810vNgNUD1Lc5OsgZ24itrInQFZPBtVxKxu3Jc5ZM17tXcNFnA
	aL+DkvzAyLKp5C374qrZzCWjGGAc09myCLi68knwazvXGdtNWObCa9h5hBvVNPe302kgVYcKaJqD
	hZreTikaEhswpzBsOReZe1xERBkaWVGzku50NJQQnWq0ZnQiUdSnQgnmKy/i
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: Install rootfs.tar.bz2 to ${D}/home/root/
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
X-List-Received-Date: Wed, 05 Apr 2017 12:20:37 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 05-04-17 13:21, Maier, Chris wrote:
> Hi,
>
>
>
> I want to create a deployable SD card image. My board (beaglebone based) =
boots
> from SD card and runs a script which copies the rootfs.tar.bz2 to the fla=
sh
> memory.
>
> So how can I deploy a copy of the whole rootfs to ${D}/home/root?
>
> A rootfs in the rootfs, does that make sense?

I do it like this:

http://lists.openembedded.org/pipermail/openembedded-core/2017-April/135187=
.html


The idea is that you make a regular package that contains the tar.bz2 of th=
e=20
image you want in flash and put that into the image for the SD card.

You cannot have the same image, since that would recursively include itself=
,=20
but you could make big-image.bb like this:

require small-image.bb
IMAGE_INSTALL +=3D "big-project"




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






