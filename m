Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76FADE00C86; Thu, 31 Mar 2016 02:40:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 229E2E00C7E
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 02:40:20 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id p65so106665797wmp.0
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 02:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=BrnmffTBvQNau7p2umNFAmNIzYC9qn7CNify47Vq9Dk=;
	b=TTz9AoF4B2OY6QkamBA0qi4UjWkyPK5bZZVVO5hr/rXmkLTRnSAWLqr2d2ruoTLez6
	uS5lt2xQhCwFNUZ4bxPWaRu3PSB3/poZwlBWIWsRTXKmVmgd0fyxZxVxMihxVi+9nzEC
	1jSPypIlOM4m2sVWFrDnSq+6IlBLfwTSR0F7/ChtvOdTv6/qdBKkVQHHC9YTtCLQUkf+
	/GHlm1cYUBTshesIv7FYPW+q9+q1Iy/6MLKvu4X7/Wfp0psnUn7moFeYiS3TXiIrtgDR
	ffOsZWHvZmZ5WGB8sCInvNcZ8dV2XvCHUX/BiK7H6XP8xnkoqHzGuf6bCTxB/FJQ4HsT
	5irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BrnmffTBvQNau7p2umNFAmNIzYC9qn7CNify47Vq9Dk=;
	b=hPzAT7qr8aTnD+Q8TEwjp0R8e0roVcIuXfV4bKBzGmflDckKxMFyyTKJR0TVt6XWvp
	RQ6GWacEzzNGkkfUORP0HvPMVnCHzaiT34H97WK9CiNJSe9wvbw8KebKxCLpeRCanNWz
	IRvBntHRwjlz1CdIw3M2qZjiMcyThm5eowCdAE4QZ6eLzxfpMv+Ug7gsXPZuXf5sLrNR
	nyIzkPHTFb0l7fcK/pacreIIQoSAdhM/COmgSIqefln1goRuofv2Xq8HpFkDQAe/Oj6f
	D/J9+/5vmfB9Ac3N6yJ7gkYfUSiEu954dAInJBe9ATjewq8T57+ZrhaZc/Fv6pcaJX3v
	YZxg==
X-Gm-Message-State: AD7BkJK7Gf5J82CbgQ4XQtaNCJ80rZ19OOl5wq+NatovW4BYw+yOj7mVhZv7XWSDzJFycA==
X-Received: by 10.194.77.193 with SMTP id u1mr2287386wjw.73.1459417219889;
	Thu, 31 Mar 2016 02:40:19 -0700 (PDT)
Received: from walter.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by smtp.gmail.com with ESMTPSA id
	da6sm8122582wjb.24.2016.03.31.02.40.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2016 02:40:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <1459363701.3311990.563914570.78E2C83E@webmail.messagingengine.com>
Date: Thu, 31 Mar 2016 11:40:17 +0200
Message-Id: <8E99AFB5-0A2B-40FE-8B21-3F647746330C@gmail.com>
References: <1459363701.3311990.563914570.78E2C83E@webmail.messagingengine.com>
To: Karl Voelker <karl@karlv.net>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Can wic split rootfs files across partitions?
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
X-List-Received-Date: Thu, 31 Mar 2016 09:40:22 -0000
X-Groupsio-MsgNum: 29220
Content-Type: multipart/signed;
	boundary="Apple-Mail=_253EFBBC-254B-4A88-B246-C47BDD433DAF";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_253EFBBC-254B-4A88-B246-C47BDD433DAF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> Am 30.03.2016 um 20:48 schrieb Karl Voelker <karl@karlv.net>:
>=20
> I am trying to build a multi-partition image with wic, with separate
> partitions for / and /var. So, the / partition should get all the =
files
> except those under /var, and the /var partition should get the files
> under /var.
>=20
> I thought this was possible because of the suggestion in the docs that
> the mntpoint arg of a "part" command could be /usr or /home (see
> =
http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#command-pa=
rt-or-partition).
>=20
> However, after trying a few different things in my wks file, and =
looking
> through a lot of the wic source code, I am starting to wonder if this
> kind of thing is not actually supported. If it is supported, is there =
an
> example somewhere? None of the examples in scripts/lib/wic/canned-wks
> appear to cover this situation.

We didn't figure out how it can easily be done and use a mix of volatile
and overlayfs settings to have /etc and /var separated from readonly /.

Cheers
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_253EFBBC-254B-4A88-B246-C47BDD433DAF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW/PCBAAoJEESZlq7c5QqdB40P/ia+hKIfXs5OrVAExSNiHx53
UYCWAy4dfqhbSkQ9WyNoYfTqc2s7LVhqMntcGRVssC6/QWg7SLhNMe6CDxKWg/vi
5G+Xiipdo90yKrH0VP8tSxaBcp+BHahj5Nqe/mbmrAdJL+Dy7OXBSZrJcn12uO9Y
F9/3AJU/ka7f8H2ppMq2uepoUtYf8VOhCnFiTBulHsbOS6lcBqyy6F9ysBZk0CF7
OC455uqF36o7ew2wnGnhtsGRqVtLGcyoVVYive13ftdRSt3Qq7LHXvWq43VDo5wB
QrLYn21vqzkKh6ss18wPVENSWltLggQjHLh5Mu7e3NxqWoAHPO+wgwBMzRh48Y5Z
PWj9gkBxG8mUdBD1++cLEYfomKYJrj3tONuSmlmbLysZWWy2WWcpSl36xtpmmAzN
evWmHWOmYxZZbz5Ce1921LpRzkTSW/LkaRnO454BaIegK3ExrEQuH1zrBR3Xl/1u
0hQAAUC1NyShOp5zLXu2ikzM4awLSaFnQ765UjBqN9UrtnStC215FeTvfTgtDJ7u
PPW08m6Lfgv+VfsfdDcH6UrGTl6oYT7rbfDvs0KzisLOmfcrtCfvlfBAHJPrA094
FDMKVUTVLhNc/QgI7UZa9zBgLHgx88d4Du0oCSopje8iivQVxCyE2TNUDx5u3PYD
3UfN4oM4PBA3PVD8phM2
=bi4o
-----END PGP SIGNATURE-----

--Apple-Mail=_253EFBBC-254B-4A88-B246-C47BDD433DAF--
