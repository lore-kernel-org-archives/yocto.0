Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5F99E00724; Tue, 28 Mar 2017 11:20:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECD4DE006CD
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 11:19:51 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id g2so79422504pge.3
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 11:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=04U5q/zxrFboto/pFz66/olILpSov1AoaiX4vRN4FBw=;
	b=mzsUdnwxm9yN8Jcr/ok0wq4HoWgq5AKqfNvQUuHu7EpOnE90zaCYkEf3UeoJIQzCXZ
	TXfkuHTCHSttn8S/sIobPZSqzcy8UExFYDt7JqYCdN+IgDCxDi0YHWpBt8n3kVsMh1br
	YMIyaY0QWdQNpuxXQBXJh8rM8uZ4oSo11A1TdplrYwu7kENtsaqndEvLS1PZeOOfT5i/
	4lYeImKkkkoNH9zLjQSnwx+s9z+H93L8er+9WySVmVcz2eLQ03krMOMqOlPv5w3mzV+9
	H1sE+ZkCbQwyGtTeSMnv4fXEZ2c5SduRyJDAqDAevc1J4IIysmD0yjZjNT30G+ngjC5K
	p5Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=04U5q/zxrFboto/pFz66/olILpSov1AoaiX4vRN4FBw=;
	b=OiXXrENL62xgL4ACjutOUUig6dvUUgTQqfeROLbJfAEKRAJI988iAmcG1a2UhKYIdp
	41m8eCqDXqbHBUZbFnaoYRaxvQskYcAj/7c8xAddN7sv0B56ZMaCtLpUgXa87QeyCQF/
	IkBigfa+VvN89AkGwlS4WZgADwPRy5ZSZiQHwmBtf4/gaG1e+2NZxaEcIU1p+/vXxTdh
	FE9App7r1iytMAanHXZD1sBtbVu1v+ySvMIKGPjTbGrM5P+gYhLITmWFCpSPuaVT+dWT
	DdcDtIYvJbn0kdhpy3lbsW24frDuaJ1G9l7b6Rtsw7dYSEupZcbnk9ima0aW/sLQMvMa
	+cYQ==
X-Gm-Message-State: AFeK/H3ipeC/aH/UTve6QgX+HcWbYbKqcpTUkgHbgRS7c5HNm/es90njENy0a9IR/Z0sig==
X-Received: by 10.84.192.129 with SMTP id c1mr37933227pld.181.1490725190930;
	Tue, 28 Mar 2017 11:19:50 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:647:4c00:23ec:1153:8bec:b665:1636])
	by smtp.gmail.com with ESMTPSA id
	l29sm8755754pfb.118.2017.03.28.11.19.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 Mar 2017 11:19:48 -0700 (PDT)
To: yocto@yoctoproject.org
References: <CAJ2oMh+=JeNZMXDV_rGjxYU5nBVKSPo9gwAP0wVEKBNrLGgcpw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <b85fc531-02e2-c132-2b63-30966e6b3022@gmail.com>
Date: Tue, 28 Mar 2017 11:19:47 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ2oMh+=JeNZMXDV_rGjxYU5nBVKSPo9gwAP0wVEKBNrLGgcpw@mail.gmail.com>
Subject: Re: host sysroot
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
X-List-Received-Date: Tue, 28 Mar 2017 18:20:05 -0000
X-Groupsio-MsgNum: 35277
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="ojESpu5f9ngaxtmC8JCawlUDdE08Ppjd2"

--ojESpu5f9ngaxtmC8JCawlUDdE08Ppjd2
Content-Type: multipart/mixed; boundary="ab8rxHAnwr0tJ0q4hkQR9fBRJq1JN5SPK";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <b85fc531-02e2-c132-2b63-30966e6b3022@gmail.com>
Subject: Re: [yocto] host sysroot
References: <CAJ2oMh+=JeNZMXDV_rGjxYU5nBVKSPo9gwAP0wVEKBNrLGgcpw@mail.gmail.com>
In-Reply-To: <CAJ2oMh+=JeNZMXDV_rGjxYU5nBVKSPo9gwAP0wVEKBNrLGgcpw@mail.gmail.com>

--ab8rxHAnwr0tJ0q4hkQR9fBRJq1JN5SPK
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/28/17 4:18 AM, Ran Shalit wrote:
> Hello,
>=20
> I am trying to understand what's the purpose of host sysroot (in
> /build/tmp/sysroots/) ?
> I see it contains a set of libraries too. But for cross compiling an
> application in host isn't all we need is toolchain and target sysroot
> ? If so, than what's the purpose of host sysroot ?
>=20

there is more to it than just cross toolchains. Build system is building
some components for the build host itself and does not rely on the host
to provide them, they are also hosted in the host sysroot.

> Thank you,
> Ran
>=20


--ab8rxHAnwr0tJ0q4hkQR9fBRJq1JN5SPK--

--ojESpu5f9ngaxtmC8JCawlUDdE08Ppjd2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljaqUMACgkQuwUzVZGdMxTQtwCbB12N5hVau2idlyr76TaQ7uK+
6twAn0WkF4e6y9Jhe/m5JX3pHbAtGBai
=yGO8
-----END PGP SIGNATURE-----

--ojESpu5f9ngaxtmC8JCawlUDdE08Ppjd2--
