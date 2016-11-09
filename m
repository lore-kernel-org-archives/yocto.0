Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA6A0E00A30; Tue,  8 Nov 2016 16:50:52 -0800 (PST)
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
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52037E009B1
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 16:50:50 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id 144so13002978pfv.0
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 16:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=vXr/PgNSqOZxavDmGc9cR/AypS2tq1vJzvSIz0hLSNQ=;
	b=Zyu5YrAsjs7yvxUurlMwCKX66g5fNDrHfSkyOgm+eQCdrvY6noYHvYrrjfBd9IR4u9
	qQuXa7+A1/A7kvYpF0swbMNrb7ICvO9rucgGjXtVn2w2TizErHTIYU5MXZk1HauxkEMe
	9gc2lQX8r55g9ulXEgplj8Pq6Fviuo5pe/xKWk2p4ME/j1d3Jafio2slQho9+++8Rnom
	cX6mBU+aXK+OmVV8bA/g17CN1QHumJfXSyvp9wGVKpq4Gcco4RyYfAMf1UKi3bzJvTtl
	c5xKDsluJSDGZ0Z5PEX+t36XukBcMq2j1ayxsZqs1SN86QwLUx1zeu7z+2Ya5L4JnVsj
	vdPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=vXr/PgNSqOZxavDmGc9cR/AypS2tq1vJzvSIz0hLSNQ=;
	b=ORH+6l7A0o3EDGXYtHBy0WQE87CB8R2U/LnP0MrHr5fVxF5dWuRK/nsqu5ayhIUzHB
	dWwv9G1pwD4P/YIUeTPrhZ91wMoUSMwjHP+ax+OZFrVxoB5dhPRzmICSG4r6jslNplIG
	QrCNuFFf7c9YlDAhCWTTNBuYeAjFAlWPSS2e43lBym7kXAQa512+VAi9cBEYB0tHA2kC
	SPFY0IjLPOFy2xdU0npK21e1A0BhomNHQM9tmHbe3WGVjYl/QJjBrWXkj57T6wPADaAi
	29AJBh60+I4ivr1YPP3ttrcN86wrRs0MFs08FUFveiieTWUBF5pW6rs7yoa0BEspEl2c
	3RNg==
X-Gm-Message-State: ABUngvdKIRhF1VBldmy1tXysEF+SP5+kF+qFr9x+zHAUBa9Q/btZG+Jlh3Zg1QeH6V3aAg==
X-Received: by 10.98.8.137 with SMTP id 9mr27241186pfi.4.1478652650615;
	Tue, 08 Nov 2016 16:50:50 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:8af:972a:9de4:9514])
	by smtp.gmail.com with ESMTPSA id
	xn11sm50822941pac.38.2016.11.08.16.50.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 16:50:50 -0800 (PST)
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <5b0001b8-5f02-1314-ec60-8ba2b94de474@gmail.com>
Date: Tue, 8 Nov 2016 16:50:48 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>
Subject: Re: Postinsts question
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
X-List-Received-Date: Wed, 09 Nov 2016 00:50:52 -0000
X-Groupsio-MsgNum: 32931
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="31lVf4nxqEhgEChVLDKDgV4wboD0x8vKN"

--31lVf4nxqEhgEChVLDKDgV4wboD0x8vKN
Content-Type: multipart/mixed; boundary="qamIc7ocl7qcXI5EdjPl5eksiOqq6NglT";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <5b0001b8-5f02-1314-ec60-8ba2b94de474@gmail.com>
Subject: Re: [yocto] Postinsts question
References: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>

--qamIc7ocl7qcXI5EdjPl5eksiOqq6NglT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 11/8/16 3:23 PM, Vuille, Martin (Martin) wrote:
> We are running with our rootfs mounted read-only.
>=20
> Consequently, any postinsts that get deferred to first boot fail.
>=20
> =20
>=20
> Is there a way to fail the build for any postinsts that can=E2=80=99t
>=20
> be performed during the build and have to be deferred?

I hope you are using "read-only-rootfs" in IMAGE_FEATURES

>=20
> =20
>=20
> MV
>=20
>=20
>=20


--qamIc7ocl7qcXI5EdjPl5eksiOqq6NglT--

--31lVf4nxqEhgEChVLDKDgV4wboD0x8vKN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgicugACgkQuwUzVZGdMxT1OQCfR9ScwDip5L4b5OGMFBAJ2LeN
Vj0An0Q7iFvcgKN0jLICtrqzSuEdTcNB
=2OQl
-----END PGP SIGNATURE-----

--31lVf4nxqEhgEChVLDKDgV4wboD0x8vKN--
