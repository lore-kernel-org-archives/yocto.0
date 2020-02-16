Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.11310.1581856779206877429
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 04:39:39 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=gyynhZhP;
 spf=fail (domain: axis.com, ip: 140.211.169.56, mailfrom: peter.kjellerstedt@axis.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15B40E0085D; Sun, 16 Feb 2020 04:39:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [195.60.68.17 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AF6DE007D4
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 04:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; l=1825; q=dns/txt; s=axis-central1;
  t=1581856778; x=1613392778;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=nCyetRVM4MVddutvIPwie9HHaw5dqLi/6FTiUN+3s/s=;
  b=gyynhZhPS0GA2rd4vxaKyHPlVjVyXEyZPvS4+u0kckJikakhUnqqNCtY
   vOynGZjy5jHan+WLbdW2NQQcjfg+py0IGFXBSuWZY6IWMD9JxYlNGcKF6
   8H1eNHykFtuh3GXeYKmqSgFlaPpS5/cIOfQOdg9a4VrkKqAM1pMDerC/b
   LbLMKc3x1n4hXty2E8AS7zldvN5TmycRWg6zmFneWtRsVvfGrLPw0Z0ZY
   De7sCYS/pO6QqAW4d1L3a9DRB/Ap6h8LeOsRcG8tayWNDdq1gArgSEUHj
   qCEkj2rD82YoKPw7WQk69HAAqluyfidpSxq3rOQvkOp50iwoYNUlJO2QW
   Q==;
IronPort-SDR: NbPrq5cmTwFbUQ7bEfgnTAkQLlpS9YlUHuORFxZPP5xUgcqv7KltB1dCN+76l+IA3KLSHXYEOg
 E3arU6H4V0TIGnoSs7C8AjikC9F39m8MPU2QhJtdP97Ak4CrH/8SEIxdRcz/eV+9dZ38H4uKlv
 kTYFTl3zcj10uB10rGGUiQSfECCsbp2VhyCVmD4hrV10La6lBr3IR0vyME9xhfORb9DBlB55Lc
 Vcc66Wt8M2O9xxePbzf5dtGnLN6QzejJ3sqD3EM19QoH+hFZ1Dp7WBiF4EtzUKfKMWI+bAdlqy
 9SI=
X-IronPort-AV: E=Sophos;i="5.70,448,1574118000"; 
   d="scan'208";a="5467845"
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Subject: Re: [yocto] [PATCH] dev-manual: phrase should read "inherit packagegroup"
Thread-Topic: [yocto] [PATCH] dev-manual: phrase should read "inherit
 packagegroup"
Thread-Index: AQHV40gL2gaW0MZKfEKaEVpc5cZ5oKgdw28w
Date: Sun, 16 Feb 2020 12:39:35 +0000
Message-ID: <cc93a0cda6814b41b6c00792d5cdafa8@XBOX03.axis.com>
References: <alpine.LFD.2.21.2002141003040.2882208@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2002141003040.2882208@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Wrong mailing list. Changes to (and discussions about) the documentation=20
should go to docs@lists.yoctoproject.org since the end of January.

//Peter

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of rpjday@crashcourse.ca
> Sent: den 14 februari 2020 16:04
> To: Yocto discussion list <yocto@yoctoproject.org>
> Subject: [yocto] [PATCH] dev-manual: phrase should read "inherit packageg=
roup"
>=20
>=20
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>=20
> ---
>=20
> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> b/documentation/dev-manual/dev-manual-common-tasks.xml
> index 1e6addde4..d230ea90a 100644
> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> @@ -1397,7 +1397,7 @@
>                  package specified in the <filename>PACKAGES</filename>
>                  statement.
>                  <note>
> -                    The <filename>inherit packages</filename> should be
> +                    The <filename>inherit packagegroup</filename> line s=
hould be
>                      located near the top of the recipe, certainly before
>                      the <filename>PACKAGES</filename> statement.
>                  </note>
>=20
> --
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                          http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
