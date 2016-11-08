Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94C0EE0050B; Tue,  8 Nov 2016 08:44:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57513E00498
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 08:44:42 -0800 (PST)
Received: by mail-pf0-f170.google.com with SMTP id d2so110683028pfd.0
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 08:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=QzHxTMgkeA3cJ0raFx1zI1ilto8yj8sGRZ0wShWDrMo=;
	b=wR/4eH7Qa3q6hXmrz4fOFOaHa1c7boTDY1NcA8DmffhnhWy4AuedGdZMNadPA20nAF
	s4i71mOC7DzzlZgu/L9ryJITWYlhZ+pkglfhblYJeoP7ZUbuYEcuhBfqILyeGP+CsDrG
	7oj9a65Eu8WpFL02crgjMOcN8ys830Bv3FJr3N/8jtos5vMOF3BE5NFz4W2tIudozyOH
	4BbEYRopCAnYxDp6Hrj8tScZKfZ4rk6jRDHEfPAd4zhWa9vSCkapieipu93GVWHUpz/W
	FC3L+sj8Nj3Hvzmk2IEJWx2F0hZnzFn1oZHqPz58o6dcFuvX4P6s9AD958mVkj2n0/Gu
	+kkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=QzHxTMgkeA3cJ0raFx1zI1ilto8yj8sGRZ0wShWDrMo=;
	b=OB0fOLQpxX3hu6OAbd8PP67vgqgJeNmX+q+3bA3xD4lMFDdRCm3UiQIQEYEJtUvIa6
	E8+upKTD8sG3Q/x/cuIfzJ4ZDcZsgFSm+UoRmdwQVWJc+20JD5d4tCs+U/ngZNasEy0s
	//NhSnBn5+F27/GlJzzSQ+NBSgsDIFRvq4saMK8aHBjo5Z1SrFxPiTywFeNu3KpbAZ3d
	zEIG66C5t69sRssR6xOAdZRP88cOArYGF5JxyHtBQUFoP/mvoSEwRHvebp9nzrlkREvn
	7Xowie8D/P66ujj05FT0J3RKajKyPpadijywACg8+EZWv/0kwTpXIn+M3R+dqtl+FGg9
	/6eA==
X-Gm-Message-State: ABUngve6ZdJMHY7714Plmr0QKv40CX6CKzFfDJTquwXIA85sQcqm1s/YY1njCwq+oHZUCg==
X-Received: by 10.99.7.210 with SMTP id 201mr19870117pgh.51.1478623482245;
	Tue, 08 Nov 2016 08:44:42 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:8af:972a:9de4:9514])
	by smtp.gmail.com with ESMTPSA id
	g82sm49401877pfb.43.2016.11.08.08.44.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 08:44:41 -0800 (PST)
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>,
	"Burton, Ross" <ross.burton@intel.com>
References: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
	<CAJTo0LYtibhhgeSAC27yHzNL8hYu6HpBzKZDvB+k4nv26V+FKw@mail.gmail.com>
	<9C7FDD6C-4BD2-449B-96A1-6540B53D23A8@cisco.com>
	<CAJTo0LYXd=9bDWk_TB_ioZ96GY2gt31AxHR4w47sPdwPSo7VEA@mail.gmail.com>
	<D01FE3D2-B0DF-413E-BED4-DD4CE1AE1E11@cisco.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <92baf8a2-c148-1a1c-931b-ecd4d4fb39d0@gmail.com>
Date: Tue, 8 Nov 2016 08:44:36 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <D01FE3D2-B0DF-413E-BED4-DD4CE1AE1E11@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: cmake version 3.0.0 or greater
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
X-List-Received-Date: Tue, 08 Nov 2016 16:44:45 -0000
X-Groupsio-MsgNum: 32927
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="SDt6G1l4XotgvK6A1AIA04LdFE8757P3f"

--SDt6G1l4XotgvK6A1AIA04LdFE8757P3f
Content-Type: multipart/mixed; boundary="UPCB0C5VjJHDv7KvWhXdwEHU7TSNDNmEn";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>,
 "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <92baf8a2-c148-1a1c-931b-ecd4d4fb39d0@gmail.com>
Subject: Re: [yocto] FW: cmake version 3.0.0 or greater
References: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
 <CAJTo0LYtibhhgeSAC27yHzNL8hYu6HpBzKZDvB+k4nv26V+FKw@mail.gmail.com>
 <9C7FDD6C-4BD2-449B-96A1-6540B53D23A8@cisco.com>
 <CAJTo0LYXd=9bDWk_TB_ioZ96GY2gt31AxHR4w47sPdwPSo7VEA@mail.gmail.com>
 <D01FE3D2-B0DF-413E-BED4-DD4CE1AE1E11@cisco.com>
In-Reply-To: <D01FE3D2-B0DF-413E-BED4-DD4CE1AE1E11@cisco.com>

--UPCB0C5VjJHDv7KvWhXdwEHU7TSNDNmEn
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 11/8/16 4:43 AM, Dinh Nguyen (dinhn) wrote:
>=20
>>> This tells me that you didn't upgrade cmake-native to 3.x.
>=20
> Right, and I am trying to upgrade to 3x version.  Would you please tell=
 me
> which cmake patch or recipe  that I can use to upgrade to 3.x version f=
or Dizzy?
>=20

Keep in mind that it may result in more fallouts since all cmake based
packages will now suddenly get the update to 3.x, there still might be mo=
re
integration that you will end up doing for this.

> Thanks,
>   =E2=80=94Dinh=20
>=20
> From: "Burton, Ross" <ross.burton@intel.com <mailto:ross.burton@intel.c=
om>>
> Date: Tuesday, November 8, 2016 at 4:34 AM
> To: dinhn <dinhn@cisco.com <mailto:dinhn@cisco.com>>
> Cc: "yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>"
> <yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
> Subject: Re: [yocto] FW: cmake version 3.0.0 or greater
>=20
>=20
> On 8 November 2016 at 12:23, Dinh Nguyen (dinhn) <dinhn@cisco.com
> <mailto:dinhn@cisco.com>> wrote:
>=20
>     Here is the error message when trying to build sdk-dslink-c within =
Yocto
>      Dizzy version.
>=20
>     | + echo
>     /media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp64/tmp/work/core2-=
64-poky-linux/sdk-dslink-c/1.1-r0
>     | +
>     /media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp64/tmp/work/core2-=
64-poky-linux/sdk-dslink-c/1.1-r0/sdk-dslink-c-939fb15c97688276b1234a0e00=
92e61fdbe65c03/tools/build.sh
>     | CMake Error at CMakeLists.txt:1 (cmake_minimum_required):
>     |   CMake 3.0.0 or higher is required.  You are running version 2.8=
=2E12.2
>     |=20
>=20
>=20
> This tells me that you didn't upgrade cmake-native to 3.x.
>=20
> Ross
>=20
>=20


--UPCB0C5VjJHDv7KvWhXdwEHU7TSNDNmEn--

--SDt6G1l4XotgvK6A1AIA04LdFE8757P3f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgiAPgACgkQuwUzVZGdMxQAYwCfXlSjGjGlwYgtL2kmRb7oiiRO
QuoAmgO3uH8p4ndW1vMKg+47xVEhtRoZ
=hN7v
-----END PGP SIGNATURE-----

--SDt6G1l4XotgvK6A1AIA04LdFE8757P3f--
