Return-Path: <prvs=0721de6c26=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17649E01089; Mon,  2 Jul 2018 14:16:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.2.203 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 35741 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Jul 2018 14:16:48 PDT
Received: from mx6-out12.antispamcloud.com (mx6-out12.antispamcloud.com
	[95.211.2.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F8BE0080A
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 14:16:48 -0700 (PDT)
Received: from [37.74.225.131] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx64.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1fZwtF-0006TX-MM
	for yocto@yoctoproject.org; Mon, 02 Jul 2018 13:21:06 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 2 Jul 2018 13:21:04 +0200
To: <yocto@yoctoproject.org>
References: <CAJw2sSBnJWCWV84FDV=L4JX6EQg80Z-HvMAOnkCwKXaZboZCuQ@mail.gmail.com>
	<CAJw2sSDJOKV-aXrUEjmHGvQ7NxPmnMKgJn3njY_hAEka4HGrQg@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <12bc4741-afe5-c0e0-abd0-f9483be306df@topic.nl>
Date: Mon, 2 Jul 2018 13:21:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAJw2sSDJOKV-aXrUEjmHGvQ7NxPmnMKgJn3njY_hAEka4HGrQg@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.131
X-AntiSpamCloud-Domain: topic.nl
X-AntiSpamCloud-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-AntiSpamCloud-Outgoing-Class: unsure
X-AntiSpamCloud-Outgoing-Evidence: Combined (0.39)
X-Recommended-Action: accept
X-Filter-ID: EX5BVjFpneJeBchSMxfU5na9dIrEnTJ5iW6feKcQskt602E9L7XzfQH6nu9C/Fh9KJzpNe6xgvOx
	q3u0UDjvO6o33k7ex0aJilIfU+9klVrmcwoElHgcIN3IBKCALItii/77mVkkLnpxqOrZwNHqf9pE
	I7O5e2ARZxxo/Ye/5CVQyacT2UA9FxLvxR5esQOY/yox/64M9sssD3rtPzwyOVYFvf25LVONYbYi
	fH5OzZBcL+MdujCjU5iV47di8pZymqZ9l5BbLgn5uBWKsF5sXv6uW3BB9i/rD4I2O09txq7iTzj+
	/BOqg7SFB7Og72Wa0TyXe6jsMXnTy/o9BuCfMU0N8VsfwEwgrGZ4g+CwipxU9luQrU+8/8qthi+0
	Jd/WC1iHQdTyKl6V4X8eYMOTQT/8U8jGWZSIp3MkcCdYxtmQ925D5y2rV05l1KzUZfXwXSkUN9YO
	FVKaiUNJUFPD/NY4BNO+cb5BQJx+tKzoVlxXU2LhVNPGXzR4wPhpC4sYe3KKC/am0SSdnvIEkFKi
	Cahg+1A6gSzKLyn/BYWKbfH74O4hBSz/kkmPgL+fgIguMHfOEvSInHnrbahJGL8cw9CF9LeOAefq
	UBSpGAbUEY7ze5vg+28xHmkrcwxA7rSm9msNLhj3JMwwUQbkKqoNClzlkzXu1dw0WcBov4OS/MA+
	n0GI+vic4IKyFWgs/C2Q92PNDpgLsd6Ddd/s7VM53tdnPuxFIxFtmUUsBociIOC8NerMo4qUhIZK
	iu2YtnpN2Rz1pPOUS4X93420HcNhjgk4NWWutrsCpCDShSb5W9QEaFrgCvBoVJdxi+eW4aEACnGS
	Lr4ok5YT+YirCnMR0fGq+LDvZGJq+/55nIT0fRvptqX8nVoZKzdBjfrUqNEbJ4hvzMdfMIdvfTVQ
	5z75sPLd14/y82ebPziYNS9mrGdRT5rWFD8BAm2aL++pZqMfqTeNwRe8o7J9V+BIuhdSMfY4ocfm
	Wv3Fe9Iziczdq+A=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: Basehash value changed issue
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
X-List-Received-Date: Mon, 02 Jul 2018 21:16:50 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFThe simplest (and probably preferred) way to fix would be to get r=
id of TIME=20
usage from that recipe. Parsing the recipe twice should yield the same resu=
lt=20
and your trouble would be over.


On 02-07-18 07:27, techi eth wrote:
> Hi,
>=20
> Can anybody give me hint over below issue.
>=20
> Thanks
>=20
>=20

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



---------- Forwarded message ----------
> From: *techi eth* <techieth@gmail.com <mailto:techieth@gmail.com>>
> Date: Thu, Jun 21, 2018 at 6:30 PM
> Subject: Basehash value changed issue
> To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>=20
>=20
> Hi,
>=20
> I am facing issue with basehash value changed while building image on one=
 of=20
> my test board (Ref of beagle bone) on morty branch.
>=20
> Error :
> gateway.bb.do_rootfs, the basehash value changed from=20
> e685a429b8df6dcff60063f087d425ee to 3f98a102f48ea8722835ad0d65bfbc1f. The=
=20
> metadata is not deterministic and this needs to be fixed
>=20
> When i run bitbake-diffsigs -t gateway do_rootfs
> I found below O/P.
> basehash changed from 8e6b9498c9704590bd016491efcbf9f9 to=20
> 3f98a102f48ea8722835ad0d65bfbc1f
> Variable TIME value changed from '112854' to '115745'
>=20
> After googling I found that TIME need's to be added in vardepsexclude lis=
t.
> I added below in conf/distro/machine.conf but error persist.
> do_rootfs[vardepsexclude] =3D "TIME DATE DATETIME"
>=20
> Please suggest me where & what has to be added to come out of issue.
>=20
>=20
>=20


