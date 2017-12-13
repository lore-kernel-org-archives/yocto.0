Return-Path: <prvs=052031cdc2=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31922E00CEF; Wed, 13 Dec 2017 06:01:55 -0800 (PST)
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
Received: from mx6-out12.antispamcloud.com (mx6-out12.antispamcloud.com
	[95.211.2.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FC65E008FB
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 06:01:52 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx35.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1eP6h5-00071u-LZ; Wed, 13 Dec 2017 14:03:33 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 13 Dec 2017 14:03:25 +0100
To: Sherif Omran <sherifomran2000@gmail.com>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
	<CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
	<084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
	<CAPb0b+MZzZFS+goVDWpX1Wm7+RSM1+AxH-zONm+x+C5diNLMcg@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <20181cde-bfa7-aeee-96b9-dba232ae0179@topic.nl>
Date: Wed, 13 Dec 2017 14:03:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+MZzZFS+goVDWpX1Wm7+RSM1+AxH-zONm+x+C5diNLMcg@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-AntiSpamCloud-Domain: topic.nl
X-AntiSpamCloud-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-AntiSpamCloud-Outgoing-Class: ham
X-AntiSpamCloud-Outgoing-Evidence: Combined (0.08)
X-Recommended-Action: accept
X-Filter-ID: EX5BVjFpneJeBchSMxfU5qBR+JyedFgFeOAgkiXGzSzj1g3/PwYZaTCzSym8uE9HkHA9/xDKDHqr
	Jh4Qpex1MCIm22Igb9wwO43+YCPGONBWShQ0+uJXiDSCp280tJFsz4bEVfjlFj4AoBLkOOE4qM8d
	O+xgXNt99qI9YYgjZV2fI3EVhqxj8Nu1voFLyLyTVa/Hj/lpqf8vwAdisrIBg2I7rzc7nYGst0KN
	zT4J6hy1CfKDfndv9WApXzTp2SEvw+pJdu/U5y6mAHsHsNznwGNYhEhifhAWrDKpmZJBan+sAL96
	EgU4J4J3tsW/5DkwosefbE1jmWEp5zI0N9cLxVT08VH0yijnhbv6KoiGRjf+UQxZAG43pqG5cKuM
	24FNE7eZTbPbLBRyM3vHY+UIA73N8ewPjo1YBjYJp8Klqr0JJq9AGs+hqARd9nbXQLHxvCrJPmnn
	THzVkpybMK7ZTWXSksuvpDYZ94t4kYX7zQObaSu96tBFhXLdphepkYTzNYq0tP1ZHnujFS9GLGNp
	1xinUAdR3CX/nLpL0A1FsI6u1NuTlJAoXPPS2uTLHY7E8GwE6qL83Y7Y1LQg0DSGSDvAy92Qhy/5
	J1xUGQUc1RxWqVzJfFQC0dWOJf7e/BXAkyRhEwd9RAcCE+V2HvVAG6IF28qb//NlVRgvyFwDRNmo
	g79yJeaPat2AcF1mPnBSB9cRUjozhGFkskTqWntrK7Yt0cu7uiGPocyYuyf/X0WM1U0T4hT0eexp
	qncFjpZKctgzcDoFd+96Xw4QUNtTnYBE6ltHgV0E/8MEqtDQu5uPmCuwBz+y+0mFrmb6z6oZceZr
	Ekeh70qXMtLHWocjF2J8UMoS6qj7LtIzksqaWqRCTYcG6SWU394FkPgYZsWwJP920wiz8uo5T2Fn
	+/fWhHODtCCm6ZDGBPghwp4CV/KM8hALgRf3rwz0t4mCnb6TeZ+9Jfj2BSPiPrw3mwELeQ==
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
X-List-Received-Date: Wed, 13 Dec 2017 14:01:55 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BF${D} won't work here, grep on ROOTFS_POSTPROCESS_COMMAND for recip=
es that get=20
it right.

And, much much much better would be to just not install psplash into your i=
mage!

On 13-12-17 09:10, Sherif Omran wrote:
> here is my recipe, the aim was to remove some files from the init.d folde=
r and=20
> tweek before creating the image
>=20
> #
> # This file was derived from the 'Hello World!' example recipe in the
> # Yocto Project Development Manual.
> #
>=20
> SUMMARY =3D "This recipe removes any missing files from the filesystem be=
fore=20
> finalinzing it"
> SECTION =3D "base"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D=20
> "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"
>=20
> #SRC_URI =3D "file://*"
>=20
> S =3D "${WORKDIR}"
> BB_STRICT_CHECKSUM =3D"0"
> ALLOW_EMPTY_${PN}=3D"1"
>=20
>=20
> #IMAGE_INSTALL =3D "packagegroup-core-boot packagegroup-base-extended=20
> ${CORE_IMAGE_EXTRA_INSTALL}"
> #IMAGE_INSTALL =3D "${CORE_IMAGE}"
>=20
> #inherit core-image
>=20
> my_postprocess_function() {
>  =C2=A0rm -r ${D}${bindir}/init.d/psplash.sh
> }
>=20
> ROOTFS_POSTPROCESS_COMMAND +=3D "my_postprocess_function; "
>=20
> On Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans <mike.looijmans@topic.nl=
=20
> <mailto:mike.looijmans@topic.nl>> wrote:
>=20
>     Well, start by sharing yours first.
>=20
>     Be careful when naming your shell routine, sometimes OE considers par=
ts
>     behind the underscore as overrides and then it cannot find it.
>=20
>=20
>     On 13-12-17 07:14, Sherif Omran wrote:
>=20
>         hi Mike,
>         i could not get it to work, if you have a recipe that works, plea=
se
>         share it. ROOTFS_POSTPROCESS_COMMAND seems to be buggy.
>=20
>         thank you
>=20
>=20
>=20
>         On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans
>         <mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>
>         <mailto:mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>>=
> wrote:
>=20
>          =C2=A0 =C2=A0 On 11-12-17 15:18, Sherif Omran wrote:
>=20
>          =C2=A0 =C2=A0 =C2=A0 =C2=A0 i want to create a recipe to clean s=
ome files from the rootfile
>          =C2=A0 =C2=A0 =C2=A0 =C2=A0 system, but i don't know how to let =
this recipe run the last one
>          =C2=A0 =C2=A0 =C2=A0 =C2=A0 before building the rootfile system.
>=20
>=20
>          =C2=A0 =C2=A0 You can use ROOTFS_POSTPROCESS_COMMAND in your ima=
ge recipe to do
>         some
>          =C2=A0 =C2=A0 last-minute filesystem cleanup.
>=20
>          =C2=A0 =C2=A0 However, in most cases it's much better to determi=
ne what recipe
>         puts the
>          =C2=A0 =C2=A0 files there and modify the recipe or remove the pa=
ckage. It would
>         help a
>          =C2=A0 =C2=A0 lot if you would reveal what files you want to rem=
ove and why.
>=20
>=20
>          =C2=A0 =C2=A0 Kind regards,
>=20
>          =C2=A0 =C2=A0 Mike Looijmans
>          =C2=A0 =C2=A0 System Expert
>=20
>          =C2=A0 =C2=A0 TOPIC Products
>          =C2=A0 =C2=A0 Materiaalweg 4, NL-5681 RJ Best
>          =C2=A0 =C2=A0 Postbus 440, NL-5680 AK Best
>          =C2=A0 =C2=A0 Telefoon: +31 (0) 499 33 69 79
>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>          =C2=A0 =C2=A0 E-mail: mike.looijmans@topicproducts.com
>         <mailto:mike.looijmans@topicproducts.com>
>          =C2=A0 =C2=A0 <mailto:mike.looijmans@topicproducts.com
>         <mailto:mike.looijmans@topicproducts.com>>
>          =C2=A0 =C2=A0 Website: www.topicproducts.com <http://www.topicpr=
oducts.com>
>         <http://www.topicproducts.com>
>=20
>          =C2=A0 =C2=A0 Please consider the environment before printing th=
is e-mail
>=20
>=20
>=20
>          =C2=A0 =C2=A0 --
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
>=20
>          =C2=A0 =C2=A0 yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>         https://lists.yoctoproject.org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>
>          =C2=A0 =C2=A0 <https://lists.yoctoproject.org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>>
>=20
>=20
>=20
>=20


