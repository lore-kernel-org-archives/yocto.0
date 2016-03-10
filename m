Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1153DE00CA6; Thu, 10 Mar 2016 05:48:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68FF9E00B45
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 05:48:30 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id n186so31105585wmn.1
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 05:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Hs5F3GK9Z8lh29NVEFag5tTq88IGvflxpJLsV3fwMYY=;
	b=n8GFD7bNVyLWejyO3p4cZc5lK1FaYxFwKx1PPITcy1HxTtH60MYLut/sN62FptMkLF
	BeGbR57qrrBayWjfdQvySapXFDfFsamQJwvRp2wmOLn0FhvXXIG04ruByhGQ1Mn8U/+v
	+BMgRXYKJy6uyw0OVfuikFRDAJPsQB6M973L9Sz6pZ3rq/nx8tdFcXKc330gmRM/Lkhu
	dHnuphHrz/Pzwc+3o/U8szz6rF38ekneH/L3K1SeFTE3Dhwz9ZKw4yn6z/FIUEXJvG95
	k75asd+GfAx+tJqrRZbfggVjTgdjUyiO8ei19cwzdHrtLY+nfagBz3RelZbz5Y2CNpoh
	wDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Hs5F3GK9Z8lh29NVEFag5tTq88IGvflxpJLsV3fwMYY=;
	b=GnZ+SFGS3q+JDxFuaPAqAMbjA1/XtzHsCq1mcdYpRYMLptgDqcRFoact1vvSv/etr7
	/KpZKfK6d9/QsUGMVYFaY75TZb93sUC+H+0EWWnw1WSfPP1BsPMA50xtFN0bHY+ymbQf
	y/gOXl1Uc/sc0mIRUr8sflpUgH2VEisllbRHQ4OzWDsdbyQ25TWu7fZGr11mIhgWSMG/
	8HlciF7ExgRHcsL17YVdToZqudJF9h+J26ZuW+rh9GBrK0XVo6CbzOP6kiklAN4/f0/t
	WKX0gME3kfaGpd000TI26ZHzssN7aDU3MKye+mGBNkIWetmz7lAT/o4y6RhezFSNDYBG
	QtPA==
X-Gm-Message-State: AD7BkJJ718RfQBWBPScHeOaocsHeHjo3gHvR5qjFgBXQhozx6TN9p9OaFkmJixtLaYFU7Q==
X-Received: by 10.28.228.137 with SMTP id b131mr3981660wmh.16.1457617709982;
	Thu, 10 Mar 2016 05:48:29 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id 8sm3657128wmk.13.2016.03.10.05.48.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Mar 2016 05:48:29 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 10 Mar 2016 14:51:28 +0100
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20160310135128.GH2573@jama>
References: <56E174E6.1050305@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <56E174E6.1050305@mlbassoc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: Dualing downloads
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
X-List-Received-Date: Thu, 10 Mar 2016 13:48:33 -0000
X-Groupsio-MsgNum: 28966
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OpLPJvDmhXTZE4Lg"
Content-Disposition: inline

--OpLPJvDmhXTZE4Lg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 10, 2016 at 02:21:42PM +0100, Gary Thomas wrote:
> If I have a package X that depends on X-native and they build
> from the same sources, doesn't the fetch step duplicate effort
> if the sources need to be downloaded from scratch?  I just saw
> this [appear to] happen and it's not clear if the sources were
> downloaded once or twice.

The first one should create the lock file and second fetch task should
just reuse the already downloaded source.

Otherwise sharing whole downloads directory between multiple builders
wouldn't work as well.

> I this is the case, perhaps if X depends on X-native then X.fetch
> should depend on X-native.fetch so then download happens only once?
> Or is that too hard to detect?
>=20
> For many packages (and fast network links) this probably isn't an
> issue, but I could imagine some very large packages simply wasting
> network bandwidth.
>=20
> Note: I'm happy if I'm wrong about this, it just jumped out at me.
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--OpLPJvDmhXTZE4Lg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlbhe98ACgkQN1Ujt2V2gByegwCdFxi1+teaS9dAd5wPb7miTMKV
gv8AnRUMAyeH6opyJf+sLv+NNe13YWl0
=SrH5
-----END PGP SIGNATURE-----

--OpLPJvDmhXTZE4Lg--
