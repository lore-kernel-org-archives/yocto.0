Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B553E00F4F; Sun,  7 Aug 2016 01:39:22 -0700 (PDT)
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
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C39FFE00F4A
	for <yocto@yoctoproject.org>; Sun,  7 Aug 2016 01:39:20 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id vy10so3493821pac.0
	for <yocto@yoctoproject.org>; Sun, 07 Aug 2016 01:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:subject:date:message-id:to:mime-version;
	bh=xj2ZZSkQTH7jPcoNcbb1L9Xo0PHUIK/DVblgNOtlA7M=;
	b=I87eRIY1iiCLbQijcj4NwWsszDUhXZphZ5ztEyfCK0tdN3N0rd9iXnX1V5QPrtaVOS
	bvdjbXmMTDfwAnywNrS+DZSJC3Xffm7LwhhDN47MbF2xA1XLM2hqM/OlAgWhwsX7oWUD
	8EO2YrJTJZD6aI5maZPSbgNN6+bjNLOa6zxO+i8VCucsx0P7ohmNy4ud0Fb4RjvqVayp
	te2fvdBAVkMn6Ir60oB1RpX1zrXoTbd4WkwXxJQkjVsTvkZCOgXc6qDL+lt4O3WUTPW2
	QrV/1qW7ZwWUsyJ12k2MWBlAkoX0Hr3h433sX2UQznqUQsVe+76o2yLm741N5UHp4aM3
	G3fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:date:message-id:to:mime-version;
	bh=xj2ZZSkQTH7jPcoNcbb1L9Xo0PHUIK/DVblgNOtlA7M=;
	b=K6x/uTsnbIEC0mvCuRRNXrzPld967tXQrPAO0RuuA9iNx3yrflNvReBdr05BDgdW60
	WYtHF+llpdXJpjiogSDrL6ux163ymzd09bmhNNW0rl2Dt8fN9yy7bVEsBsZugwxhDFjE
	qDlVuaNBoGanS+7ymOsXX+0jtCo/kn0Vd4INwQB2qvy6MS9RtnzHgoFag0ffXzkRsm7Z
	OVEVBtFROQ6iEbhe9sqtonFHrHM+A9v0vXMAcFOTnmclfhOG+q6lNg/hDxNzvoOajJPP
	1zB00qB1Wqi+AfDjW8SwhOlh7OqQWSAKzpesKGiYL24hy/J2kkt5y+HwieCgnH3DBhSe
	6hKw==
X-Gm-Message-State: AEkooutmRy6oqT5qX+/viE6K8wKeXhbxAdstj1H2TlJ3xh9Tjk5axj+ipg+OWA3SdT7c8w==
X-Received: by 10.66.135.40 with SMTP id pp8mr152972552pab.113.1470559160225; 
	Sun, 07 Aug 2016 01:39:20 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:a4e6:3f8b:d48:8537?
	([2601:646:8882:b8c:a4e6:3f8b:d48:8537])
	by smtp.gmail.com with ESMTPSA id
	q4sm39536146pfb.18.2016.08.07.01.39.19
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 07 Aug 2016 01:39:19 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
X-Pgp-Agent: GPGMail
Date: Sun, 7 Aug 2016 01:39:43 -0700
Message-Id: <CC61EFE1-5F39-4848-AD71-8E9C8DEC43C8@gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [RFT] binutils 2.27
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
X-List-Received-Date: Sun, 07 Aug 2016 08:39:22 -0000
X-Groupsio-MsgNum: 31402
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D927C18B-EE77-4A58-B130-CA3F59AB55C7";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D927C18B-EE77-4A58-B130-CA3F59AB55C7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi All

I have put together upgrade for binutils 2.27 here ( kraj/master branch =
)

=
https://github.com/kraj/openembedded-core/commit/b98f5761d2285ffd773ec6ecb=
901b799302ebd6b

I have started bunch of test builds. but I would appreciate any help in =
testing it out in your
environments and report any issues you see.

Thanks

-Khem


--Apple-Mail=_D927C18B-EE77-4A58-B130-CA3F59AB55C7
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlem89MACgkQuwUzVZGdMxRBigCdHGzu5yt+9LlYgh0ajTioHRVZ
FIkAmwZFlOHaEWdr22vC8D7XaTzs1yhi
=Vdfw
-----END PGP SIGNATURE-----

--Apple-Mail=_D927C18B-EE77-4A58-B130-CA3F59AB55C7--
