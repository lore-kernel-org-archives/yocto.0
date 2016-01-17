Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 352CFE00A9B; Sun, 17 Jan 2016 03:54:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0CE1E009F3
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 03:54:30 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id uo6so404159203pac.1
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 03:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version;
	bh=ZgTzfc3yjA8bO7xlGh6+07jGLX5JW21qY+GkSOhudjU=;
	b=A33I85ZlXpqdVbJV27NbJLefVL9xPjZJxDo98s7bSO/cA8DVKlhBGjXPO9vikbLMME
	iBzsR8NscP25yJj6Epq9JKRsabaUD7gOlFdsp9GurToZAp03pER5FwSj3AZXj6WA137j
	mgDvvjSiqC0Qu5KOqbaRilC5ifUrVW/vWxLWxCxE/F8xtqYFVjvNDlXwo6p6bKwjN+RP
	MhzAFTZliENYtWUWRxUFvbelIonDVcjVmHLfw6DZSDOkzkUk+KWvlemBXzek1QZJFW+J
	XrKg0nLf1USkVI+3fiKp2J1XlvnSOVZJH0u8QF+Hqhy1KuQgX7aHoRRzKGx7AacJnGsr
	NTGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:subject:date:message-id:to
	:mime-version;
	bh=ZgTzfc3yjA8bO7xlGh6+07jGLX5JW21qY+GkSOhudjU=;
	b=G7Om88+hKr08a/eOziNFTx5WGIkB8cJwMnPk/nMuKSr5AJKlBm5gylSsaC6/6UN1HX
	GJmDp+aRfyVFTfYIGyVgbg6ubG2CWDAcf5eTpahZacJu1k851v3znZsSag4FmXluGXmy
	mAmzDY63q3whwJEar1b2PiVOg7Lqqxp48IVYtK8aWwx4T3GX0sZNbQ1pD5zW84W3BYSf
	R5eHhIWW7kOx3BfJClg/cWqbze+2yiZJVETsXmHb7MZuMK2Bu4NXH2i5a270SBsnUjZx
	CmILkg1pVWfGQShzIRhIUVoK1umyIczCvaEh+gC60zETP5iEG5gkouM+e5ukRsvPDGrl
	aseg==
X-Gm-Message-State: ALoCoQntA/4vGzFs3NBFj4NLv8qO1r99mTIVsQayB2MvTnZSDdZgUv/1TIGJeraYpLY6muOpBO2P9U+Vpjkkm0QQlf9McFW1wQ==
X-Received: by 10.67.15.73 with SMTP id fm9mr29009372pad.130.1453031670202;
	Sun, 17 Jan 2016 03:54:30 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:551e:cfd2:447c:a7d1?
	([2601:646:8802:5d5c:551e:cfd2:447c:a7d1])
	by smtp.gmail.com with ESMTPSA id
	o4sm26854689pfa.85.2016.01.17.03.54.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 17 Jan 2016 03:54:29 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
X-Pgp-Agent: GPGMail 2.6b2
Date: Sun, 17 Jan 2016 03:54:24 -0800
Message-Id: <2747032A-1F56-4CA6-860C-484B9292A0B5@gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
Subject: [RFT] Glibc 2.23 and binutils 2.26
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
X-List-Received-Date: Sun, 17 Jan 2016 11:54:33 -0000
X-Groupsio-MsgNum: 28015
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8D4272E7-1A64-4E3A-81C8-91D1D6629844";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8D4272E7-1A64-4E3A-81C8-91D1D6629844
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi all

upstream glibc and binutils release branches have been cut out and are =
being made ready for next release
I have put together update patchset for both of them

here are the branches

https://github.com/kraj/openembedded-core/tree/kraj/binutils-2.26
https://github.com/kraj/openembedded-core/tree/kraj/glibc-2.23

FYI These are still using autorev to ensure that we test tip of release =
branches

Please give them a shot in your environments and report any issues you =
encounter.

Thanks for help

-Khem




--Apple-Mail=_8D4272E7-1A64-4E3A-81C8-91D1D6629844
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlabgPQACgkQuwUzVZGdMxS0iQCeMjFZdQcyWnlXTVJ52SSkh4Ov
w08AmwTnRETUMzIELpWrYesmX43wh7ml
=mZoe
-----END PGP SIGNATURE-----

--Apple-Mail=_8D4272E7-1A64-4E3A-81C8-91D1D6629844--
