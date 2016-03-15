Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 986C3E007B5; Tue, 15 Mar 2016 14:05:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F29AE0071E
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 14:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=Mime-Version:To:Message-Id:Date:Subject:
	Content-Type:From; bh=787KEuixuUkc3bxZQT8j1bWLZFS3ishFUSb0LlPVeis=;
	b=t3K9jnr
	jDF0i8d6UecNjR6xiCyxJwfhI0c5UqqweV4KE51AjqkvmEn7ZCxZELg13jUTL6BXJhm6eMBkasTnE
	5XYxTh/p+ukD0tjadCoLa9roj0EihSqUwm/BnqYkkxhBv94bmmN+meoVy21Wi08xA8RyypZHjKzp4
	eJXFZER67c=;
Received: from durham.keylevel.com ([88.97.63.243]:46309
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86_1) (envelope-from <opensource@keylevel.com>)
	id 1afw9l-000i81-QV
	for yocto@yoctoproject.org; Tue, 15 Mar 2016 21:05:33 +0000
From: Chris Tapp <opensource@keylevel.com>
X-Pgp-Agent: GPGMail 2.6b2
Date: Tue, 15 Mar 2016 21:05:24 +0000
Message-Id: <AFBE2F12-5F5E-4982-BB3D-65C7D390485F@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Starting Pulseaudio automatically
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
X-List-Received-Date: Tue, 15 Mar 2016 21:05:41 -0000
X-Groupsio-MsgNum: 29035
Content-Type: multipart/signed;
	boundary="Apple-Mail=_18D0C78B-55FA-49B2-98E3-6995FE7C6DE1";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_18D0C78B-55FA-49B2-98E3-6995FE7C6DE1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I=E2=80=99ve got an X11 application which uses Pulseaudio. Everything =
works as expected when built under =E2=80=9Cdaisy=E2=80=9D (Pulseaudio =
5), but the same system built under =E2=80=9Cjethro=E2=80=9D (Pulseaudio =
6) fails as Pulseaudio doesn=E2=80=99t start automatically.

It looks like this is down to a difference in start-pulseaudio-x11. The =
following is present in =E2=80=9Cdaisy=E2=80=9D:

   pulseaudio --start

but this isn=E2=80=99t there in =E2=80=9Cjethro=E2=80=9D. Adding this =
line makes Pulseaudio start as expected, allowing the application to =
run.

Why was this removed in Pulseaudio 6? Is it supposed to be started =
another way?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_18D0C78B-55FA-49B2-98E3-6995FE7C6DE1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW6HkfAAoJEAM2GeiJDBSGqacQAIvUiwzPQDq4e85NJssnT5f4
p2K7ea1Q/7xGV6fpEzbiAwkD8PtL5mA9RFqnE7/7b0iNvVxRLBSjIqMuXqFplR1f
rKVAIdpGzj4iht8o7gOF3PdE5sJCiwjIoBSfbcSlxYsEwK7/NwkaHaxDGhRIY3gO
hVtQjgYAYMXwh9rNt7RTzxrKoJWsP3ZPngnvbyZPZy2xlUBQtHchd3Qdd8Q9Liq/
iVTUZPXGj5tFBAQKx3i+So0pChIif1PentOTrxHHCvC8o8kZv+Xu8ATU/UKYZUys
7fBiAxz0r+OjakTbdkQX4/1bcZ5RjSUA3T60X6Y0lXp6gmhWURa6qv0g5OXsmyq/
qRtKDY+iIJ/MvmwwiHNgBMg4X0Rri3OfDztraOfKik0SPDC9MIcvT12E58uVD93h
fTA6CVyDoirA/calRM9c3zk8A2jXtketWJDLj5a9J1wBmAx5VhJUQCTp5LhxMdKL
v30BdJokI3Z+aF0/AoFTKV73Eb+pRRnnDEeCQ6NsiTKn3mSi06lKybbEXFYa38I2
frSzVxxo7jFCZAUPtNRGo8vjcKZO5ItvRJNYOgQqx3AXTnsoXfc2XgmELtM/mWFw
UQItsXDHH1ZpgsRS0Zu4rH6Y/S0Idu/6CduTGIzcO1Q3OtWLQs/SZR/Cr/rmo9VC
2daflztdWAYVORHh66hp
=mHL/
-----END PGP SIGNATURE-----

--Apple-Mail=_18D0C78B-55FA-49B2-98E3-6995FE7C6DE1--
