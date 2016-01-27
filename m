Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9D14E00C13; Tue, 26 Jan 2016 21:30:35 -0800 (PST)
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
	*      [209.85.160.182 listed in list.dnswl.org]
Received: from mail-yk0-f182.google.com (mail-yk0-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 719BCE00C10
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 21:30:31 -0800 (PST)
Received: by mail-yk0-f182.google.com with SMTP id k129so229540854yke.0
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2016 21:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=KlQfl/DX36c1UeHbI2fNAEZ32+2FeJj6mq389dqZ8gs=;
	b=UKlTe6A0yiBpK1VZalDnBY0MU+JK43tLctgsrvWjYfH1kHbF1XJJIPT+U7I7au4t7e
	PR+OAPMYuc3ToBX0sqxf90HhGD916mIJljCNyLq9nw8PEIv1sLvs+W5A+lY/8REN/H87
	F+DJqPahhg0uEWZuJtnfSLUAapw921J1bnWhEyqN2QabIwDLAmhiX7B8qx0FjYFoIxCq
	WcSlouPbWYVooHy8YWq7/uTfWmIC0lRDgf5mmP1ac3RqXqvDqh/TsxdorBuadxGCG8cW
	dylKvDHFCiquGbnCHy2hoUgxvP/aMY9n4XoMo3RQT1mIwicv7rOv9+ZdGuDcrL6OehyB
	MMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=KlQfl/DX36c1UeHbI2fNAEZ32+2FeJj6mq389dqZ8gs=;
	b=RNrz6qg09qTbcma0W2wdyIN8Qepn0w3YECfjww3e30vbi33R3ogXm1EsrriDKmtbW0
	dDnwTcZmJTJ5okFZBU8xfhnYDp54TrNJwUKulMIccmEdMNTcrHEz7LdlJ29TJMarS63n
	oSk+BQRQKCkAuUykCQJwkAdbwwRWYTwWqqnbV+uQoUoL3D7viVNcEhMngcRCJNMPXiwM
	4Cr54atFETM9uIa01K6HRBAgQdZK9T6YoEadYU/KZy+oLmRMqWr4dWlOuNgCpxNKLhWi
	2bWXNJok6uhBZvMTSbBGnKO6hWMEJ4y0bJRtswCPkZpInwieXL/ln3vpmZHEQJNnMr0j
	LBYA==
X-Gm-Message-State: AG10YOTPgg8t7uZsFMNyGD/vLdxxksDV+4sflHXKN1yonm+JFR2y1NPY4lER0ZqXfxc1zw==
X-Received: by 10.37.4.146 with SMTP id 140mr14268902ybe.18.1453872631074;
	Tue, 26 Jan 2016 21:30:31 -0800 (PST)
Received: from ?IPv6:2600:1002:b014:c92e:ed2f:4d62:56d8:d791?
	([2600:1002:b014:c92e:ed2f:4d62:56d8:d791])
	by smtp.gmail.com with ESMTPSA id
	m188sm3718858ywe.46.2016.01.26.21.30.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 26 Jan 2016 21:30:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <56A82765.30403@windriver.com>
Date: Wed, 27 Jan 2016 00:30:26 -0500
Message-Id: <C89DF346-CD9F-4CC5-A41A-8FCD4B87DD06@gmail.com>
References: <2747032A-1F56-4CA6-860C-484B9292A0B5@gmail.com>
	<56A82765.30403@windriver.com>
To: openembeded-devel <openembedded-devel@lists.openembedded.org>
X-Mailer: Apple Mail (2.3112)
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [oe] [RFT] Glibc 2.23 and binutils 2.26
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
X-List-Received-Date: Wed, 27 Jan 2016 05:30:35 -0000
X-Groupsio-MsgNum: 28103
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A3BFF862-90CE-4BB9-BF9E-65F482525B46";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A3BFF862-90CE-4BB9-BF9E-65F482525B46
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jan 26, 2016, at 9:11 PM, ChenQi <Qi.Chen@windriver.com> wrote:
>=20
> On 01/17/2016 07:54 PM, Khem Raj wrote:
>> Hi all
>>=20
>> upstream glibc and binutils release branches have been cut out and =
are being made ready for next release
>> I have put together update patchset for both of them
>>=20
>> here are the branches
>>=20
>> https://github.com/kraj/openembedded-core/tree/kraj/binutils-2.26
>> https://github.com/kraj/openembedded-core/tree/kraj/glibc-2.23
>>=20
>> FYI These are still using autorev to ensure that we test tip of =
release branches
>>=20
>> Please give them a shot in your environments and report any issues =
you encounter.
>>=20
>> Thanks for help
>>=20
>> -Khem
>>=20
>>=20
>>=20
>>=20
>>=20
>=20
> 0001-Generate-relocatable-SDKs.patch is included in SRC_URI twice, =
which causes the following error when building binutils-crosssdk-XXX.
>=20
> ERROR: Command Error: exit status: 1  Output:
> Patch 0001-Generate-relocatable-SDKs.patch is already applied; check =
your series file
> ERROR: Function failed: patch_do_patch
>=20
> binutils-2.26.inc and binutils-crosssdk_2.26.bb both has this patch in =
its SRC_RUI.
>=20

Thanks for report. fixed and squashed into original commit in same =
branch as above.

> Regards,
> Chen Qi
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel


--Apple-Mail=_A3BFF862-90CE-4BB9-BF9E-65F482525B46
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaoVfYACgkQuwUzVZGdMxTquACfXlFjaTreb/TCI2OIIE974AjE
khgAn1rgEUf/chKvp5ja0/BLV671sIyI
=+8j8
-----END PGP SIGNATURE-----

--Apple-Mail=_A3BFF862-90CE-4BB9-BF9E-65F482525B46--
