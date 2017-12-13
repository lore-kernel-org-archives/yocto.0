Return-Path: <prvs=052031cdc2=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 377D4E00CEF; Tue, 12 Dec 2017 22:22:20 -0800 (PST)
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
Received: from mx6-out9.antispamcloud.com (mx6-out9.antispamcloud.com
	[95.211.2.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41841E00B5F
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 22:22:18 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx44.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1eP0Qq-0008LN-OI; Wed, 13 Dec 2017 07:22:17 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 13 Dec 2017 07:22:15 +0100
To: Sherif Omran <sherifomran2000@gmail.com>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
	<CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
Date: Wed, 13 Dec 2017 07:22:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-AntiSpamCloud-Domain: topic.nl
X-AntiSpamCloud-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-AntiSpamCloud-Outgoing-Class: ham
X-AntiSpamCloud-Outgoing-Evidence: Combined (0.05)
X-Recommended-Action: accept
X-Filter-ID: EX5BVjFpneJeBchSMxfU5hgGKOEbhwLAAcdDVznw7sLj1g3/PwYZaTCzSym8uE9HkHA9/xDKDHqr
	Jh4Qpex1MCIm22Igb9wwO43+YCPGONBWShQ0+uJXiDSCp280tJFsz4bEVfjlFj4AoBLkOOE4qL3F
	8D4YQCQr+3+aHYIePeKfI3EVhqxj8Nu1voFLyLyTVa/Hj/lpqf8vwAdisrIBgyPQ3mdUGkYAU/w8
	y7kGQNG1CfKDfndv9WApXzTp2SEvw+pJdu/U5y6mAHsHsNznwGNYhEhifhAWrDKpmZJBan+sAL96
	EgU4J4J3tsW/5DkwosefbE1jmWEp5zI0N9cLxVT08VH0yijnhbv6KoiGRjf+UQxZAG43pqG5cKuM
	24FNE7eZTbPbLBRyM3vHY+UIA73N8ewPjo1YBjYJp8Klqr0JJq9AGs+hqARd9nbXQLHxvCrJPmnn
	THzVkpybMK7ZTWXSksuvpDYZ94t4kYX7zQObaSu96tBFhXLdphepkYTzNYq0tP1ZHnujFS9GLGNp
	1xinUAdR3CX/nLpL0A1FsI6u1NuTlJAoXPPS2uTLHY7EmLtTMekk71CtEMGhrP03LKc6T/SEFTXC
	BmjHHHfHJ0Jipm9ZGQrzDr/oWwAZSnWeNWAsE0Te1gPeb/02qtEcysxTSSkRtGrNs5JTMkgwIxMN
	lyxN3RLueUBsuZU4NZidZOGmBFme224ssPTWl18pUirAyJRl88UFFV7I/Yb04fpmP5uaz+4OQH4v
	H0cKPC6bPAlbDjazCbhs7qBpykynMlTdMoUSH1VFHFHEYroxwxZ6jL3BPbZvTfn+FNLHrc2aPcz6
	t3WaABx3xFR6ZuaR8luDQEdKm65cTUbfWaDAny7l+30jPRYO1eVGeLkcIIkz1C+Wj1RXu91a22x7
	C1cqjBoQ7rna6j7rEdUSfjeCXT07DlvSF/91CX3fipIinoHejADe9oHwrL30QtqvwfeDAw==
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: recipe to clean up files from rootfs
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
X-List-Received-Date: Wed, 13 Dec 2017 06:22:20 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFWell, start by sharing yours first.

Be careful when naming your shell routine, sometimes OE considers parts beh=
ind=20
the underscore as overrides and then it cannot find it.


On 13-12-17 07:14, Sherif Omran wrote:
> hi Mike,
> i could not get it to work, if you have a recipe that works, please share=
 it.=20
> ROOTFS_POSTPROCESS_COMMAND seems to be buggy.
>=20
> thank you
>=20
>=20
>=20
> On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans <mike.looijmans@topic.nl=
=20
> <mailto:mike.looijmans@topic.nl>> wrote:
>=20
>     On 11-12-17 15:18, Sherif Omran wrote:
>=20
>         i want to create a recipe to clean some files from the rootfile
>         system, but i don't know how to let this recipe run the last one
>         before building the rootfile system.
>=20
>=20
>     You can use ROOTFS_POSTPROCESS_COMMAND in your image recipe to do som=
e
>     last-minute filesystem cleanup.
>=20
>     However, in most cases it's much better to determine what recipe puts=
 the
>     files there and modify the recipe or remove the package. It would hel=
p a
>     lot if you would reveal what files you want to remove and why.
>=20
>=20
>     Kind regards,
>=20
>     Mike Looijmans
>     System Expert
>=20
>     TOPIC Products
>     Materiaalweg 4, NL-5681 RJ Best
>     Postbus 440, NL-5680 AK Best
>     Telefoon: +31 (0) 499 33 69 79 <tel:%2B31%20%280%29%20499%2033%2069%2=
079>
>     E-mail: mike.looijmans@topicproducts.com
>     <mailto:mike.looijmans@topicproducts.com>
>     Website: www.topicproducts.com <http://www.topicproducts.com>
>=20
>     Please consider the environment before printing this e-mail
>=20
>=20
>=20
>     --=20
>    =20

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



_______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>=20
>=20


