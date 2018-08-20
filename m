Return-Path: <js@hipro.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 105FBE00BD0; Mon, 20 Aug 2018 00:41:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BDDFE00BC4
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 00:40:59 -0700 (PDT)
Received: by mail-pg1-f178.google.com with SMTP id y4-v6so6346054pgp.9
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 00:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hipro.co.in; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:mime-version; bh=TuAMUDkHJoBdPdqP9+iZzDATURJuirEU12siitQrBMY=;
	b=Gl4QU6zLjWHv4+Wd/f4iw6mgT94Q5F+FoRquwX00hzoH7r5NGk6XUMLppL+YrH8heX
	jy8MDcC2RFmpK5t31USY+UCrTQ52RyAJeYrQkJ//72y5lZiGW+HHgsfOXyQqEWH/vwR0
	K/gRYjzaFYPV+W/ZU57Xs2/4rBvDUyyCgZgx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:mime-version;
	bh=TuAMUDkHJoBdPdqP9+iZzDATURJuirEU12siitQrBMY=;
	b=Ic97TrMEUridJ86sTIxcgsC1aQKn5F1idc2eYfy50wJ3998ZrbN+YzBPcIvXm8MSdQ
	YdMk/A0LlKLIvsfc/mT4kqm/h2C1zHokIIZOfVvWKsSTW8EUPiQjwQKPE/80NNM6309q
	KEudekCYEbKW6klU8aIbFjJQIH/s5i24jH9wZmzaxHZlocf6HqdzcZR8Dtnix6Zp+Mag
	Xts/QNGfqVjrBpv4x0mbo4EFlptsEuaxNQQxXu3oMI6QLE+0L+SNfdrYCnAGv4qETmX8
	EY4NWwE6gwWmE6Kbccune8Zfzv8gCHXjEPsQuGtb96bzwvoYxaYTWpNoqZB78Pb2V/0q
	vrcA==
X-Gm-Message-State: AOUpUlGDC/I2/+yg2RIv6q5WBxpjtFNDGiWK5HykB9fedpmT9Sk/dfxd
	/jhttDsZtkXZ1yWOGYBO8qDTAsSAw3E=
X-Google-Smtp-Source: AA+uWPwKQtTVqg0/UDoqxzwWfrJisfcJRuzYt6hnyne5nTljbwz1pvNRnTxGtOA+2JuKsCvRSzavPQ==
X-Received: by 2002:a63:3587:: with SMTP id
	c129-v6mr15569505pga.290.1534750859157; 
	Mon, 20 Aug 2018 00:40:59 -0700 (PDT)
Received: from dram.home ([203.109.120.130]) by smtp.gmail.com with ESMTPSA id
	v24-v6sm12450633pfl.31.2018.08.20.00.40.57
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 20 Aug 2018 00:40:58 -0700 (PDT)
Message-ID: <1534750854.15709.32.camel@hipro.co.in>
From: Joe Steeve <js@hipro.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 20 Aug 2018 13:10:54 +0530
In-Reply-To: <3e057c7d3483b73bb8507678edb06b001b771185.camel@linuxfoundation.org>
References: <AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com>
	<3e057c7d3483b73bb8507678edb06b001b771185.camel@linuxfoundation.org>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: Yocto userbase in numbers?
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
X-List-Received-Date: Mon, 20 Aug 2018 07:41:01 -0000
X-Groupsio-MsgNum: 42189
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-BDL3aN804t1+4KNAZnel"

--=-BDL3aN804t1+4KNAZnel
Content-Type: text/plain; charset="ISO-8859-15"
Content-Transfer-Encoding: quoted-printable

On Thu, 2018-08-09 at 21:43 +0100, Richard Purdie wrote:
> Even if you just look at the fields the project is used in based on the
> project's members like Comcast, the automotive industry (e.g.
> Automotive Grade Linux), several major OS vendors (Windriver, Mentor
> Graphics, Montavista, ENEA) and in TVs (LG), the deployment of the
> project is significant

We shipped a Yocto built netboot target for a customer which has already se=
en
~1M machines so far :P

--=20
Joe Steeve
HiPro IT Solutions Private Limited
http://www.hipro.co.in/

--=-BDL3aN804t1+4KNAZnel
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQT8ncJRv1NrejNRSRvoWtcPHezAQwUCW3pwhgAKCRDoWtcPHezA
Q9lJAJsER3ef2Z6NSifg4boiRE0ly6sVfgCff/+7SMEeGmVIHf6DuDVG76Ce4MM=
=76ow
-----END PGP SIGNATURE-----

--=-BDL3aN804t1+4KNAZnel--
