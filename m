Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE1FEE00C19; Wed,  9 Nov 2016 09:06:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA33E00C09
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2016 09:06:01 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id 144so920475pfv.0
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2016 09:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=+p+3NXezWGlPpfAEOhVPtVaxJuMgS2A8iIzTCZYb0nk=;
	b=MmM+bDPHBc4Yn1bPPKcSOrHKL4ozPKkG3wdAUVIFQ/KLhZrOkbJR7OPcd+/e05a7sO
	E8dsO0vYmRM3V+f5wTtPeGPgG26tXYhdsRlzz46Bivb9zTnCNCa8jxzVwmC2yWiX19Db
	u8wgIEFJHsUe9xAbTf2VlQqupXIkKpbhVLd3q3xapXAEfiuWw0EZiVw1BDQO3PbtBm2v
	dzlAZ9g+m7QwI/hidkIf1uU4wqA4mlhC5SBG/cJlawhlA7Wrl4n5n8qtTOAJAOkcEd5f
	ELAfNzr1xi/GP3bVaCOHY//NGZ8F+3Td9MqaB5NDtLSHaMQuoO8C2pynKAlVu8UYajdx
	/s7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=+p+3NXezWGlPpfAEOhVPtVaxJuMgS2A8iIzTCZYb0nk=;
	b=YEC7azJIIr6EP+9THKE/GRyg+S5kHYfvKVUupYGrYYJB6RfAmomN1QBI5DzlKc8OMU
	Xw6+LuttjBPjTYPylItcGaHi6PK6fSBIfQYqWZW6ogBAimBMQzzqSNIkoY70QN4Ubqt8
	nlhkoJUmB829x+8ws1pStHym9ivVt0esnPHpjM2V/BbccsbYa0izw/Xxw70Y1ZgYBpnF
	22EJRdWBIUmdnwocOtCOvotVcRadDxkn/H9fwWdR3RAc3JRbqAGGvbvylHtpgr7u1u82
	O48Lklv5TcPGdYNzP2A+Iv+Ib9luv/Ra3n28mBWiKu1rHjY4MBq2rwpg0qEw/6zDsYWl
	fnqQ==
X-Gm-Message-State: ABUngvfjCBXksXxRVgrwjb1ykClg2yHybdWDczLBOLk6x/+WjT41sOnfuRA0GjhaCsHcSw==
X-Received: by 10.98.4.6 with SMTP id 6mr994448pfe.152.1478711160884;
	Wed, 09 Nov 2016 09:06:00 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:fc1a:7e9c:5ae8:420])
	by smtp.gmail.com with ESMTPSA id p62sm600662pfb.42.2016.11.09.09.06.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Nov 2016 09:06:00 -0800 (PST)
To: Yannick Kiekens <yannickkiekens@gmail.com>, yocto@yoctoproject.org
References: <CAEyFGJEAb0T+oXCrFXNVaWbFjb19Z=we9afarzZ08giRghXwMA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <285e6b7a-4391-ff6a-1467-bfa0e7ce4573@gmail.com>
Date: Wed, 9 Nov 2016 09:05:53 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <CAEyFGJEAb0T+oXCrFXNVaWbFjb19Z=we9afarzZ08giRghXwMA@mail.gmail.com>
Subject: Re: error: package X is already installed
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
X-List-Received-Date: Wed, 09 Nov 2016 17:06:05 -0000
X-Groupsio-MsgNum: 32936
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="LsatpnDf0NQcK3gMQev9Lx1PGD4hDduKs"

--LsatpnDf0NQcK3gMQev9Lx1PGD4hDduKs
Content-Type: multipart/mixed; boundary="HUPJtjE0neMfqsjo6qjm5ajmXn4TJJRww";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Yannick Kiekens <yannickkiekens@gmail.com>, yocto@yoctoproject.org
Message-ID: <285e6b7a-4391-ff6a-1467-bfa0e7ce4573@gmail.com>
Subject: Re: [yocto] error: package X is already installed
References: <CAEyFGJEAb0T+oXCrFXNVaWbFjb19Z=we9afarzZ08giRghXwMA@mail.gmail.com>
In-Reply-To: <CAEyFGJEAb0T+oXCrFXNVaWbFjb19Z=we9afarzZ08giRghXwMA@mail.gmail.com>

--HUPJtjE0neMfqsjo6qjm5ajmXn4TJJRww
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/9/16 4:57 AM, Yannick Kiekens wrote:
> Hi all,
>=20
> I am porting several projects from Jethro to Morty.
> Some of those projects give several hundreds of "error: package X is al=
ready
> installed" during do_populate_sdk stage in Morty.=20
> These projects compiled fine in Jethro.
>=20
> What can cause these errors?

bitbake and metadata checkers got more stricter with every new release, t=
he
problem you have was always there, it just was not detected. The problem =
is
that multiple recipes are producing artifacts which conflict in final ima=
ge
because they are trying to install same file. So the right fix is to choo=
se
one recipe which will provide the package/file in final rootfs and add rm=
 -rf
${D}/path/to/<conflicting file> in do_install of other recipes

>=20
> Mvg
> Yannick Kiekens
>=20
>=20


--HUPJtjE0neMfqsjo6qjm5ajmXn4TJJRww--

--LsatpnDf0NQcK3gMQev9Lx1PGD4hDduKs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgjV3YACgkQuwUzVZGdMxR/XQCfbMmds9Oc3QYH5xRndOzR2jsW
ZXsAn2ZNtj8ZjBwLEwc3E1Nc36naEheb
=69bM
-----END PGP SIGNATURE-----

--LsatpnDf0NQcK3gMQev9Lx1PGD4hDduKs--
