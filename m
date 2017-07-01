Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA399E00AD5; Sat,  1 Jul 2017 08:08:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33BB4E00857
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 08:08:50 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id q86so80416685pfl.3
	for <yocto@yoctoproject.org>; Sat, 01 Jul 2017 08:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=+j+lUS2wYI6kPZQZvjh52hhJ7tz2bAkLDqDYu2yMXpw=;
	b=DH4gC7wxn9k6s7bi4zkf5Jx3gLbrf2hkhZu8F4SjjInaK9elRMLBLIYlrIm0qQwCVM
	ypswQPsmYHdB6sUJKtAlhHcon2Vl1pq7lY0ZOBamI8kSBFFCPz3h++YpIcsrs7IxTKqi
	EFqnwUSoR6xl7IH0zHAHWC6ln5Q+FAKQWDP0m802O7x3g+OwHlGOde5wYFxmJF3g7dcz
	mhxYIA8SLxTmZ5vxVT+bgdGa6u9udx13dmzwvhKtaf4HxC9QvdwFMF0QcKy3YOc+U2ED
	HaNE7awIiCYU6hqcahY22Y5JeOT6rfaYqI3mqfMaqYNO6Prb7CX7kM5uVL9uW3h7a2iD
	ZRZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=+j+lUS2wYI6kPZQZvjh52hhJ7tz2bAkLDqDYu2yMXpw=;
	b=p7NCWReVpYhQ8R/qaYLE49gfIDWN4tqEcFn2Cyvve29VdBCngHHq+LwFAySGYJ2ot3
	yuRuO6ibnYifCRZsfTj6HpgZpY7YJ0rLxjEonTbEazofzJ0JErDLi7nA5oYEJCEcmCyY
	uOI6TRiygMCSy78gcR2TirUbuKGlQ+bVQVtU9KahsOT5kQcjxLTYAWZt7Wy0kfgwTan6
	SY8wXdz6cgPB4UhV7eaLDnuwcSZMzUBxsToi0acEocy5X37L+JOqrhZG/HC3bEqsX7qV
	QeCZwpUKAS8FqfdQR5dc+LbM7Tf3SPhZR2mcw1m9do9Zr1vjN5U1VKtW1Oc1UGDYJ/C1
	+DRA==
X-Gm-Message-State: AIVw113viUDx6mXl/e+xcwDdIHt0enOYXC9nq8nFE3+fb6B4a8s7LzXG
	HysXithUJ7TnGvDWx+M=
X-Received: by 10.84.198.36 with SMTP id o33mr1143549pld.79.1498921729938;
	Sat, 01 Jul 2017 08:08:49 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:5159:4118:3c4b:f59c?
	([2601:646:8882:b8c:5159:4118:3c4b:f59c])
	by smtp.gmail.com with ESMTPSA id
	r62sm27859603pfb.39.2017.07.01.08.08.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 01 Jul 2017 08:08:48 -0700 (PDT)
To: =?UTF-8?Q?Juan_Jos=c3=a9_Casafranca?= <juan.casafranca@kdab.com>,
	yocto@yoctoproject.org
References: <8fd08db1-eebb-f7ce-b258-cafa45891113@kdab.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <053b4021-6d15-ccdb-ee77-13d244a99801@gmail.com>
Date: Sat, 1 Jul 2017 08:08:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <8fd08db1-eebb-f7ce-b258-cafa45891113@kdab.com>
Subject: Re: Raspberrypi3 with Kodi (as an exercise)
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
X-List-Received-Date: Sat, 01 Jul 2017 15:08:54 -0000
X-Groupsio-MsgNum: 36864
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="MTlUf2n3OOuqs1j0jDofxMG9NNS3FWajN"

--MTlUf2n3OOuqs1j0jDofxMG9NNS3FWajN
Content-Type: multipart/mixed; boundary="2oARbqhwgxsw5dfLvDVtTBaasJw0vD9A3";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: =?UTF-8?Q?Juan_Jos=c3=a9_Casafranca?= <juan.casafranca@kdab.com>,
 yocto@yoctoproject.org
Message-ID: <053b4021-6d15-ccdb-ee77-13d244a99801@gmail.com>
Subject: Re: [yocto] Raspberrypi3 with Kodi (as an exercise)
References: <8fd08db1-eebb-f7ce-b258-cafa45891113@kdab.com>
In-Reply-To: <8fd08db1-eebb-f7ce-b258-cafa45891113@kdab.com>

--2oARbqhwgxsw5dfLvDVtTBaasJw0vD9A3
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 7/1/17 4:10 AM, Juan Jos=C3=A9 Casafranca wrote:
> Hi everybody,
>=20
> I'm completely new to the Yocto project, just started playing with it
> and my rpi3 two days ago.
>=20
> As an exercise to learn how Yocto works, I'm trying to build a rpi imag=
e
> which can launch kodi.
>=20
> Right now I'm able of building an image which contains kodi,but when I
> try to launch it, it fails. It says that it cannot create the GUI. (I
> have tried kodi, kodi --standalone and kodi-standadlone, same result)
>=20

do you have x11 and opengl in your DISTRO_FEATURES ? you can check it
with bitbake -e kodi | grep -e "^DISTRO_FEATURES=3D"


> In order to build the image, I had to add
>=20
> MACHINE_FEATURES +=3D "vc4graphics" so it gets mesa as egl, gl and open=
gl
> provider.
>

it should work with both userland and vc4graphics.


> If I dont add that feature, kodi complains about not finding egl during=

> configuration. I dont understand why it complains, since userland (the
> default) its a egl provider (as it says in the recipe at least, probabl=
y
> I am understanding something incorrectly).
>=20
> Could you please guide me a little bit with this? As I said, it's my
> first time playing with embedded devices and with yocto, so some
> explanations would be nice :-)

This is good section to work on in OE in general.

>=20
>=20
> Thanks!
>=20



--2oARbqhwgxsw5dfLvDVtTBaasJw0vD9A3--

--MTlUf2n3OOuqs1j0jDofxMG9NNS3FWajN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAllXuv8ACgkQuwUzVZGdMxQIZACfZnBeGXP17zaNDWU2VRNgF3YC
OksAniu9B6uUi0z9YKko/QRvrrpZ8iD4
=PZiC
-----END PGP SIGNATURE-----

--MTlUf2n3OOuqs1j0jDofxMG9NNS3FWajN--
