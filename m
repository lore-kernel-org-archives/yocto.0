Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7A8BE00D42; Wed, 15 Jun 2016 13:48:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3358AE00D35
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:48:32 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id 62so12186440pfd.1
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=vLaehoBmVe5dyf3c/WeixgdePuWttaIsaUX6Mc6fJm8=;
	b=hQ6UdcyrzcnqRfBaUHoHMw8NipJiyrtUw17LQasxCQLCbI8TAIwpF4lRaguShRTIkW
	rBcXQTcJbPjF1JeCOUHNjBr0ZOepD5hE4m0e/MMZEHl4966Cm+1sWVIaWXKRFTK6OUc/
	Zcc8OSfG28wQT9ABg353is1Mik7Ah9K6Q0qfEtAjy31dMN1riTHFXgoD4LwcKKysutUW
	57gOrU0MrgBmXNftUMLuVlA03bMTXYHsiX2ehP1VJnQYIdtB1CyHibWmgk50WAn7OptP
	UBGHJL+rq1izJqBL/k+KwIXyvikoSFvXkP0spZLL5ZUgEkchOB/E38X2OJHh+BxDaVFy
	s8vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=vLaehoBmVe5dyf3c/WeixgdePuWttaIsaUX6Mc6fJm8=;
	b=gbIcHqyJg/se5GttHWvSAXh0/8LMxs1GUik+BbV8fw4ny52YZE1jPIAq7rN/XZLmfa
	Y9lYOuIy1Jfe2rMHeVZs2Kh4sbBy73Yk4oXs0A02YU88ffNHg/Wcjq4BG48qEG5YkDJb
	foD9gBMeTM+44y4HdXxNwOt31wuEwAS33F9Al6hnCKwA06vHxT3wKij9qUvCLHZrBf5N
	oE7/m+onbOZdR9MEtx2o6h9UBChgbkk903MIjjbsdM3K/0k5SaeObC2r/g7TlGOEzHYw
	X/yZJPV4w7YuEYWgA51LxHdmySkSJ4O/4Ow8XQANaaBmYyN2uVQE86X2KUVH+oQ7Cgxa
	K6QQ==
X-Gm-Message-State: ALyK8tJFS1ko4fRF5/SSaF24hSqXays2N3Vy7P16RU2K0daKEUOPHYXhsl9OsmPK9/5EcA==
X-Received: by 10.98.67.7 with SMTP id q7mr777457pfa.70.1466023711553;
	Wed, 15 Jun 2016 13:48:31 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:115c:1c9f:7ed3:245b:56cd?
	([2601:647:4c00:115c:1c9f:7ed3:245b:56cd])
	by smtp.gmail.com with ESMTPSA id
	d8sm55026522pfg.72.2016.06.15.13.48.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Jun 2016 13:48:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA600122@RCHEXMBP1.fnc.net.local>
Date: Wed, 15 Jun 2016 13:48:26 -0700
Message-Id: <88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<7482070.IBUNiqSIt6@peggleto-mobl.ger.corp.intel.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6000E2@RCHEXMBP1.fnc.net.local>
	<24600FD4-C8B5-4282-87C1-1F2AF3E403DF@gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600122@RCHEXMBP1.fnc.net.local>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
X-Mailer: Apple Mail (2.3124)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autoreconf
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
X-List-Received-Date: Wed, 15 Jun 2016 20:48:33 -0000
X-Groupsio-MsgNum: 30565
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D09F1646-0B94-44F2-BDDD-51AD9CACB3A3";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D09F1646-0B94-44F2-BDDD-51AD9CACB3A3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

That might work, however you might need more packages, so adding =
tools-sdk will cover all of them in one go

> On Jun 15, 2016, at 1:47 PM, Rajasekaran, Monica =
<Monica.Rajasekaran@us.fujitsu.com> wrote:
>=20
> Hi Raj,
>=20
> Will adding a line in the image's recipe file like this work ?
>=20
> IMAGE_INSTALL =3D =E2=80=9Dautoconf=E2=80=9D
>=20
> I installed "git" and "resolvconf" in the same way. Just not sure =
about the package name this time.
>=20
> Thanks,
> Monica
>=20
>=20
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Wednesday, June 15, 2016 3:42 PM
> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
> Cc: Paul Eggleton <paul.eggleton@linux.intel.com>; =
yocto@yoctoproject.org
> Subject: Re: [yocto] autoreconf
>=20
> You need to add autoconf to your target image, if you do not use =
Online package management
>=20
> EXTRA_IMAGE_FEATURES_append =3D =E2=80=9C tools-sdk=E2=80=9D
>=20
> in local.conf might help
>=20
>=20
>> On Jun 15, 2016, at 1:35 PM, Rajasekaran, Monica =
<Monica.Rajasekaran@us.fujitsu.com> wrote:
>>=20
>> Hi Paul,
>>=20
>> Thank you. This is in the target.
>>=20
>> Thanks,
>> Monica
>>=20
>> -----Original Message-----
>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>> Sent: Wednesday, June 15, 2016 3:25 PM
>> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] autoreconf
>>=20
>> Hi Monica,
>>=20
>> On Wed, 15 Jun 2016 20:17:16 Rajasekaran, Monica wrote:
>>> What is the package to install autoreconf ? (Ubuntu equivalent:
>>> apt-get install dh-autoreconf )
>>>=20
>>> I am getting the following error for one of my applications:
>>> "autoreconf: command not found"
>>=20
>> autoreconf is part of autoconf.
>>=20
>> Where is this? On the target or within the build system?
>>=20
>> Cheers,
>> Paul
>>=20
>> --
>>=20
>> Paul Eggleton
>> Intel Open Source Technology Centre
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20


--Apple-Mail=_D09F1646-0B94-44F2-BDDD-51AD9CACB3A3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldhvx4ACgkQuwUzVZGdMxTPvACaA6Q3xQdctKR8K3g8CkM4gG1r
6/cAn0Oz8pMxQ0vE5UHjS2ZV2RdQ4utp
=paz8
-----END PGP SIGNATURE-----

--Apple-Mail=_D09F1646-0B94-44F2-BDDD-51AD9CACB3A3--
