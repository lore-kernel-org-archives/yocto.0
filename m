Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E86FE00C0B; Mon,  1 Feb 2016 00:56:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0F10E00BE1
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 00:56:13 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id p63so59935779wmp.1
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 00:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=SjuPoX9tN2YzEBJ215eehjZxWgtu1LTVuTuqXcpSHRo=;
	b=V56j2MiS/MgcnsbHFhZlUdX8ClM5AsULaD1cb4MzCe+j+O5yz51DD3QxcXpl6Mncs4
	GA2F8HUgIPpuuG3U/uyoJw7Ppeyt32sPdVvgOGEwMfH1MnPq/c/iJdR5E315ofdRanm1
	DPRoUy1fpGfN3//KUF2t6Eja6dSdUUBG2NeiQDMmHQp9KSsDUTCD1NjRMM0vo3IGRYPm
	h7EcpQLlkZ6ZfoKcT0PICriR/hJCvZ2HoiPfsK5qtnZQey1mq+RQWrkPhsgNFOGu425L
	ZVAxtQljh38ptRUBu+jrJFwjvXmnJjYKmVdDb0sLv94Z4FgOuIlFea+rGtjJi/tpPDcN
	B9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=SjuPoX9tN2YzEBJ215eehjZxWgtu1LTVuTuqXcpSHRo=;
	b=Uj8CYLZdCNAzohpNjfUcqIyT6LJRi/PO+EC14McYfqYOWCh0o/8L/STS3lQl42kbKt
	j/8evJWnSUW2m5rF42m/jjK58gfwWLtJZFBv07l8IMcf/ickX3GRwar9jp5H+mzI612l
	Rm1FFnJOTeQhkpAGqOybO9STX0+pC4jq8BB+nzgCxFUZNp+dghIRc6RumbRV2R1ac1MI
	tGmPMCXX0kFGs4dzKobQss4u5I9tVsTS9EHUjm28ex+hK8kRyDcnUuWCRh2V26VBrSw2
	wgCcu03Z0ZIim3yf9Z11C13vIiLJm/oGqJs+NxyEkD7P9noGsFaPy/LRmkovZCqAqB4G
	YIdQ==
X-Gm-Message-State: AG10YOTctqthta6je5ivAJG02PnCr2GhM5GA6yjtmN1ToBXlrKLHIyO5mlgq3MdNlsStww==
X-Received: by 10.28.212.85 with SMTP id l82mr9764805wmg.11.1454316972404;
	Mon, 01 Feb 2016 00:56:12 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	c26sm10345936wmi.24.2016.02.01.00.56.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Feb 2016 00:56:10 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 1 Feb 2016 09:58:52 +0100
To: Karim ATIKI <karim_atiki@hotmail.com>
Message-ID: <20160201085852.GA2803@jama>
References: <AMXPR01MB0865B0A5B853FA4FD557C8092DE0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
MIME-Version: 1.0
In-Reply-To: <AMXPR01MB0865B0A5B853FA4FD557C8092DE0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get the latest version of Qt5 with meta-qt5
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
X-List-Received-Date: Mon, 01 Feb 2016 08:56:19 -0000
X-Groupsio-MsgNum: 28178
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline

--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 01, 2016 at 08:39:08AM +0000, Karim ATIKI wrote:
> Hi all,
>=20
>=20
> I've been using yocto to create distros on rspi2 and develop Qt5 based ap=
plications.
>=20
>=20
> I noticed that through the meta-qt5 layer, it is Qt 5.4.1 that is compile=
d and deployed.

I don't know how you noticed that, but meta-qt5 currently has
5.6-alpha1, since this commit in October:
https://github.com/meta-qt5/meta-qt5/commit/178a817e6f4604e0f4b24a416d5e83b=
428cbabe7

> How should I tune the metadata so that the latest version of Qt 5 is used=
 instead ?

If you want even newer version, you need to rebase patches, update
SRCREVs and PVs like the commit above.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlavHkoACgkQN1Ujt2V2gBzAXgCgmqEhxqk1U6SMNUdGLiC95YO9
eNEAn1skp71d6QJgkGSAr6PEa5pDQ+kx
=M8Jc
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--
