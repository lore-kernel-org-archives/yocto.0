Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 894C7E006F3; Tue, 13 Sep 2016 13:15:54 -0700 (PDT)
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
	*      [209.85.220.46 listed in list.dnswl.org]
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 240A1E00563
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:15:52 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id b2so64731919pat.2
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=fYdtQ8eQ4TrIZwdQJiYtJo+H7zGlFWk2eVN+2xDxFGI=;
	b=nLnNtdj1YqjKkGewDi/wvD/cYIG5qkEBB6ZPjQMY7IJGqdmglc1UgojDD86v7JuWKS
	2M7mW8IZbTg7gLMF/iFcQw8knfdEbM8QDeFkfQhAO/m0GpeCJyRhvvLiveyuqsOHbpnN
	wqT65HcIp1cki9T3kBT/JmC+0SVw+jZNAJ0O4aYbRt5f0iTYXmWRpusLNnEpSb0Vivdt
	IzoFArTEX+Nn5ltqVkYrJB6fsPawAjzatrh0NztegyJISkg5ljyRzg/eUTaWAbDKYul8
	Ey+q/nwYLl/AXLSrG0WtRRlQIm6H4G5hGogEUbklKV5bDvmbrMXPYh0Snhm9uknkvmNP
	5XfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=fYdtQ8eQ4TrIZwdQJiYtJo+H7zGlFWk2eVN+2xDxFGI=;
	b=D9IwYSaeJayFz+lI37RP4ffu5n4KyMWbtk1ZtFvKGUcLD/M4hI9bM3rsG9E+jJ4IUi
	VcRsoi3YnsDJkXBIY3l6SbMoeYA04G8+jImNIBYuL1qUtUXyOQa4Q+6nLnySg1i6PSCR
	IpGzHqiavpd1vqrCJHI0o71WegiuPkWQmSYmhF2ZfaNfTAg4gZJinXxVY/daUYc/thi7
	w08HipQyrAQVdiXrgKVrnVXe1UuDawBfX0Cmwbd7Af2qRxrFw0ehmIXy57FVrLFMALsX
	Pae/3UzdBDDeG+fIY8Ni1ASRQkiIRd9FLHS85YyCQWUte575jSMvHicGrMzlfllPjImK
	e97A==
X-Gm-Message-State: AE9vXwNU6kX4OmgITee8Mlk9eipiHVxpI8sdQm2b79aSdq4MWxfGUsyDNgNKq0x50Mo4KQ==
X-Received: by 10.67.23.70 with SMTP id hy6mr4510717pad.75.1473797751764;
	Tue, 13 Sep 2016 13:15:51 -0700 (PDT)
Received: from [192.168.0.5] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	y3sm32991275pfy.36.2016.09.13.13.15.50
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 13 Sep 2016 13:15:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <140dc7c6-d500-11a2-026f-54bdc5a7dc0c@reliableembeddedsystems.com>
Date: Tue, 13 Sep 2016 13:15:49 -0700
Message-Id: <88AA93DF-A9F2-4C96-A2BD-8B8C781F6172@gmail.com>
References: <DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<1da73c18-5295-5524-4b80-05269193b9d8@windriver.com>
	<DB6PR0401MB26304EA907417D20A2333B56EEFF0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<8f11dcb6-91bc-c5c9-f79c-32e0fb684011@windriver.com>
	<140dc7c6-d500-11a2-026f-54bdc5a7dc0c@reliableembeddedsystems.com>
To: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org, "yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org"
	<public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
Subject: Re: Cortex-M4 build support
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
X-List-Received-Date: Tue, 13 Sep 2016 20:15:54 -0000
X-Groupsio-MsgNum: 31909
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3CFAF883-98D5-4933-90BE-996295C5D7CC";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_3CFAF883-98D5-4933-90BE-996295C5D7CC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 13, 2016, at 10:31 AM, robert.berger@gmane =
<gmane@reliableembeddedsystems.com> wrote:
>=20
> Hi,
>=20
> Shouldn't it be possible to build a bare-metal Cortex-M4 compiler with =
the YP and build a small RTOS like FreeRTOS with this compiler?
>=20

yes it should be possible. you can also look into meta-ti where I think =
they try to have their DSP toolchain build some code using OE
recipe model

> Regards,
>=20
> Robert
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_3CFAF883-98D5-4933-90BE-996295C5D7CC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfYXnUACgkQuwUzVZGdMxTSqgCeOBqwnFo6ZLSCDXUNh1dD0fzc
GRgAmwQxbn1aMVX9WIXhhliQUDaY+48m
=PtP7
-----END PGP SIGNATURE-----

--Apple-Mail=_3CFAF883-98D5-4933-90BE-996295C5D7CC--
