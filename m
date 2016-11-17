Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9D52E004E5; Thu, 17 Nov 2016 09:18:45 -0800 (PST)
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
	*      [74.125.83.68 listed in list.dnswl.org]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B11AFE0049D
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 09:18:42 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id e9so17735696pgc.1
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 09:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=NI6Fn8HIydWNbViWUWb2S75yvEnJHG1zpXAYoEvHlRY=;
	b=gCBOApgRk7TQStYwhJ56gOnhClsBiHPzTbee/k7hRJF+Ufq3Qjx1jjEJCIFKS5ZKK4
	veoLSfxWR/ne+wBWEC36sUza84I94vBZ6aftWNIvGrk7PJnfzOc6A1QdAfixGKiMTLY3
	ChU9Z1bg90kY7av4/sLblnI1PQEKbZuMZz3BezY+QmBD5OzqiWKSUZvVEhitJVvCTBmI
	ZyXO31l+DC7+x4VakS8LQhC9R7HdV0crCSUONTJDIs+EY/maJ72LAg+tPVKsGmpH7zho
	VyG/dN8MmzSgkXTOSonHPsEn4Jr2ndrGixRd80CikIgxO+u335nOou5EqC5rfRcjuMa9
	zcDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=NI6Fn8HIydWNbViWUWb2S75yvEnJHG1zpXAYoEvHlRY=;
	b=jV3CqA6RhRc2UbR2uvkoF6cz3aU9dupvq1t9bRFQvoMI669k9S6Gwb0UlgL59ZLk32
	qI+kbS36sMkFgqqe3yH8HQiUTLPstbmG5gpZc9ext0KGZKgrhZnCKDhZqdh/ddQaqVym
	ZVlHwnElHo8bCREDAPS1r4gILpo8iOm9UNUP6e/AXUYLMaloTwxJdGQxvEsZMCuh+qHD
	tw/FkazNGuvIq8bSXt3MsR6Ce9lALW9ay6oU792T87+49zPS7LGw8cRxyImFHJM5m2HV
	JHFuLVCddux1LurmF8jOtvqEaca9htwtp4rhp2OiJ41DdOnfBzHTKP07r8857dPEKS+E
	On7g==
X-Gm-Message-State: ABUngvd/RGXzAl7D6OAB16+H9PZ+rP2mBRyZ7FOzHqRGsDav7Qqq+i0IdiAjBv8mEWU/PQ==
X-Received: by 10.99.239.5 with SMTP id u5mr9828931pgh.61.1479403121721;
	Thu, 17 Nov 2016 09:18:41 -0800 (PST)
Received: from CACSVMO-14452.local (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f23sm9505241pff.59.2016.11.17.09.18.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Nov 2016 09:18:41 -0800 (PST)
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
References: <1479388433-130851-1-git-send-email-herve.jourdain@neuf.fr>
	<1479388433-130851-2-git-send-email-herve.jourdain@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <29ca6996-3502-26ef-fc30-a04e7fd97814@gmail.com>
Date: Thu, 17 Nov 2016 09:17:18 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <1479388433-130851-2-git-send-email-herve.jourdain@neuf.fr>
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi_4.7.bb: upgrade to latest good version
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
X-List-Received-Date: Thu, 17 Nov 2016 17:18:46 -0000
X-Groupsio-MsgNum: 33013
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="vW6LnLsR3mpLkwjBbmmGlsj9caN4rAktr"

--vW6LnLsR3mpLkwjBbmmGlsj9caN4rAktr
Content-Type: multipart/mixed; boundary="fAqVoJVa8F2bhImF6bHc4sPbF0lTQHBDn";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
Message-ID: <29ca6996-3502-26ef-fc30-a04e7fd97814@gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] linux-raspberrypi_4.7.bb:
 upgrade to latest good version
References: <1479388433-130851-1-git-send-email-herve.jourdain@neuf.fr>
 <1479388433-130851-2-git-send-email-herve.jourdain@neuf.fr>
In-Reply-To: <1479388433-130851-2-git-send-email-herve.jourdain@neuf.fr>

--fAqVoJVa8F2bhImF6bHc4sPbF0lTQHBDn
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/17/16 5:13 AM, Herve Jourdain wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.7.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb b/recipes-ke=
rnel/linux/linux-raspberrypi_4.7.bb
> index 0315f8f..4a8fe36 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
> =20
> -LINUX_VERSION ?=3D "4.7.7"
> +LINUX_VERSION ?=3D "4.7.10"

I think, we should abandon all non-lts recipes except one
which will be latest release ( 4.8 ) as of today.

> =20
> -SRCREV =3D "a45a35c08598b23f9fd82e49c83b46c7d536244f"
> +SRCREV =3D "e7fa325a40f260ed9fb86391a0b65150eba8c112"
>  SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;bra=
nch=3Drpi-4.7.y \
>             file://0001-fix-dtbo-rules.patch \
>  "
>=20


--fAqVoJVa8F2bhImF6bHc4sPbF0lTQHBDn--

--vW6LnLsR3mpLkwjBbmmGlsj9caN4rAktr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgt5iEACgkQuwUzVZGdMxQszwCfXft2kqgswfWShUXxC3mld73f
hRkAnjTryhChonn7DwY5f+D2VeNiO16u
=P52v
-----END PGP SIGNATURE-----

--vW6LnLsR3mpLkwjBbmmGlsj9caN4rAktr--
