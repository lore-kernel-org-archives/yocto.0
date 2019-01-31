Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77A49E00D2F; Thu, 31 Jan 2019 07:36:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D85B4E00D0F
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 07:36:34 -0800 (PST)
Received: by mail-qt1-f176.google.com with SMTP id i7so3844904qtj.10
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 07:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=3og/ZGTOQlx+0sJ/zj9jXxIA2x+OXjHQp0s6X/mZ1QA=;
	b=CgES59iEdstbyWEBoA1wABem8lcFPPHO6RAof0LR0YcASvADjd5RoP8RqE/3ekB9IG
	Syaarpk49r2Djt4aD/6DIMu6FpgytxVHzTrAqsnd7eATpKFD+yPDswCu1GwhIyvv4uQT
	ncx76OCaRBKo1HhlVWH9Vl4KfDKbo3VqtKmwE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=3og/ZGTOQlx+0sJ/zj9jXxIA2x+OXjHQp0s6X/mZ1QA=;
	b=GzvAprBkArfNYl417juKwO+/wJ0Ytg+DHW389YtzGANYvuSRPjn6jinAucfzg4rzfl
	lQ+eUCYXXvfss6mbBN+tkdMtsaIFbXRbijOVPlzWc5k09/FNzwphcftcE3NW1OwamrRR
	ZvKQi0mgjXforYrbcKlvlrcdNmvVkFiFHMX0HmXOt7KiPY8IJnZ32ZSl3Oly9WL4HMc3
	DbfqUgqlIJ9YLcw2Blfdh+ZhWCVbM+cvu+0YweAo5mFR5aRBj46kn5WOcCqaeHvQhN/a
	FJDjw+uOh6rcVJi/C871StAd2nJVGKIV8hGdB8RIK6SxHkMStd6Kae6UrAnZRIo2L/eV
	78sQ==
X-Gm-Message-State: AJcUukeDL/1qwLHaSK00o1D0WiySpHhIK9elgijcjvuCKipgLL58dR/6
	wZOi8x8M5zXbep8K8MUg9KKSD+h3skw=
X-Google-Smtp-Source: ALg8bN63A8hAxT2h2JMGLL92tAEtm2EcMPEPaoCFOQwhvg0FCR7QYOlIVrnE3DNHWAHAMipUeFe8gQ==
X-Received: by 2002:a0c:fc09:: with SMTP id z9mr33606273qvo.157.1548948993854; 
	Thu, 31 Jan 2019 07:36:33 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-82A1-BACA-3AFF-FE98-1ABB.dyn6.twc.com.
	[2606:a000:1401:82a1:baca:3aff:fe98:1abb])
	by smtp.gmail.com with ESMTPSA id
	a192sm4643484qkg.63.2019.01.31.07.36.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 31 Jan 2019 07:36:32 -0800 (PST)
Date: Thu, 31 Jan 2019 10:36:30 -0500
From: Tom Rini <trini@konsulko.com>
To: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <20190131153630.GB30838@bill-the-cat>
References: <a3bf6461-6024-b418-5c2b-101a3d964eec@fridu.net>
MIME-Version: 1.0
In-Reply-To: <a3bf6461-6024-b418-5c2b-101a3d964eec@fridu.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to create a signed bootloader and Linux kernel on a UEFI BIOS
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
X-List-Received-Date: Thu, 31 Jan 2019 15:36:35 -0000
X-Groupsio-MsgNum: 43968
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="F25dJIO4n7LGqrNz"
Content-Disposition: inline

--F25dJIO4n7LGqrNz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 31, 2019 at 12:53:36PM +0100, Dominig ar Foll (Intel Open Sourc=
e) wrote:

> Hello,
>=20
> Securing the full boot chain on a UEFI BIOS such as those provided on
> Intel platforms is possible but not that simple.
> Working, detailed documentation is not easy to find anywhere.
>=20
> Some of my students from Lorient (University of South Brittany) have
> done a good documentation job on
> a HowTo create and boot a signed kernel and Grub2 on a UEFI BIOS.
>=20
> As it could be useful to some of you, I share the link.
> =A0=A0 https://ubs_csse.gitlab.io/secu_os/tutorials/linux_secure_boot.html
>=20
> Thanks to Romain Brenaget, Jer=F4me Blanchard and Pierre Fontaine from the
> Master1 in Embedded Cyber Security.
>=20
> fontaine.e1800982@etud.univ-ubs.fr
> brenaget.e1803332@etud.univ-ubs.fr
> blanchard.e1804130@etud.univ-ubs.fr

I did pick up something new reading through those docs, so thanks for
the link.  Please note that in the context of OpenEmbedded
https://github.com/jiazhang0/meta-secure-core/tree/master/meta-efi-secure-b=
oot
provides all of this and is fairly well documented.  There may be some
interesting parts in there for you and your team as it does handle the
kernel/initramfs question differently.

--=20
Tom

--F25dJIO4n7LGqrNz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcUxX+AAoJEIf59jXTHXZSoPIQAMOkSv8L+rKPzO8fH37n4mF/
vrtdRiF19FA8/YKDkO12rfOywTE5Xa+3FbfWVSYn1v5wkA6UhynZiAKGzYZzsPQB
n8JPvLO+HoRg0mJrr6f/RKbjalf+Zxr6Lk7O/q8sTfAT+g5c+Hj5IffTxyQoBlfC
AbLjlvKyWluqJ2HSLZKosRLZZs65qLpqyuVrrnSpLXwZvTHjHqiJMT74Y2QmX3px
XEIsbIYJ5Q7rW4w41g2emMFdFSNQkFFcLTcPlNplpnmAB3PE/OqEcJoro+EUJT1R
8gQJv3Y11iazEjsqy+t3HEEdBARLWlwXwI51bgMQr17x4mGBJO6HDmlhvR/65Owk
fSdh5L153LUMoL+cgJmvj0CSagACMPZl1AtNnnIVsoV4h/TVMY4d3Hy3xDDeXlVE
dXR6FI/E4YRiaerxnJdF2pXCHqyPtPiDD2A8cX8qYvRZS2yQUKZZTsRKJLrekxvm
6jU+Q8gCsIwuPPE9hcsqK+Q9GZO2dkSXyi5H5wr6YFkE94vrbXNXlolBUDxVFXNh
IBPlRL6RdMW5Il0OfcWk96B2N/RCsvlbD46VTG/OkyHhJIYSqPl1MeKrez1CVQqE
LQNdVWx+FCXQDCEeh39p9yyv1JML0aq2sBoHj39KK5Jp2AEuOirrP1aj3wZfEZq/
f7cH7NB6e18TU9rSLj1Y
=c2uj
-----END PGP SIGNATURE-----

--F25dJIO4n7LGqrNz--
