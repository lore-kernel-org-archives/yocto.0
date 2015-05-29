Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81418E00A1C; Fri, 29 May 2015 16:14:11 -0700 (PDT)
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
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41E91E009A3
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 16:14:05 -0700 (PDT)
Received: by pdfh10 with SMTP id h10so63637468pdf.3
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 16:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BS68g3Kvz6O8oikryIUygunYeaCD0FAugWxdnVwaxHo=;
	b=qH1s0+VCItmQ3R/KU8kqrySWPPizJCW/matsZCFdJsFM5Fip8Jh/XmzZ79EYwVV4NW
	9EHAScHZkFs7baeaWdHr1DjEI3hplPULj7SqX+xRlQ08WZSnUvz5+PQfGxuwoOFQeeCr
	5eF0F2QpONAcCYIoPxQqhzVrlL/lpo9EYDO3jurUq+/6LCM/YIGnRq+D2BR3TBpMBiuF
	rhXlv8sjBRHCHpKlxvEIu1pra1x47XV0GWjXznUlNonQEUAipOodTv6QhAG5+UKqEDfc
	RGJmptUQo610iHk0mRAinWKoSVphEuFMRIPbPqx/bmg/eCKJwmT6pAnUIzdWg6GmqP1W
	qOsw==
X-Received: by 10.70.98.145 with SMTP id ei17mr19295338pdb.92.1432941245310;
	Fri, 29 May 2015 16:14:05 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:bdbe:55fb:fea4:46c3?
	([2601:9:3580:84c:bdbe:55fb:fea4:46c3])
	by mx.google.com with ESMTPSA id nw8sm6686417pdb.30.2015.05.29.16.14.04
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 29 May 2015 16:14:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5568E11F.8030000@gmail.com>
Date: Fri, 29 May 2015 16:13:59 -0700
Message-Id: <CBC34811-90A4-4B1D-8157-BE4997FDB6A4@gmail.com>
References: <5568E11F.8030000@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: overriding equals
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
X-List-Received-Date: Fri, 29 May 2015 23:14:11 -0000
X-Groupsio-MsgNum: 25002
Content-Type: multipart/signed;
	boundary="Apple-Mail=_581E38E7-8A9C-40FF-A836-3B154B0EE572";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_581E38E7-8A9C-40FF-A836-3B154B0EE572
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On May 29, 2015, at 2:58 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> 
> If a BSP layer sets a preferred kernel using an equals sign (e.g.
> PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi") is there any
> way of overriding this decision that doesn't involve:
> 1) forking the layer
> 2) hoping the maintainer accepts a relevant patch
> 3) creating my own DISTRO
> ?

you may try the following in your config metadata ( local.conf )
PREFERRED_PROVIDER_virtual/kernel_forcevariable = "linux-raspberrypi"

> 
> If I create my own kernel (linux-raspberrypi2-rt) in my own layer and
> set PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi2-rt" in my
> conf/local.conf, bitbake still complains that there are multiple
> providers for virtual/kernel and suggests I set PREFERRED_PROVIDER
> 
> haha, very funny :-)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_581E38E7-8A9C-40FF-A836-3B154B0EE572
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEUEARECAAYFAlVo8rsACgkQuwUzVZGdMxSKvwCfXPCkPtOjkm52Kj23Gd3Hf9A2
J/0Al3qEbpdNQ8YH8/EIw1IwViYNkOA=
=3z/o
-----END PGP SIGNATURE-----

--Apple-Mail=_581E38E7-8A9C-40FF-A836-3B154B0EE572--
