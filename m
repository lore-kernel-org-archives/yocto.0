Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7149FE00888; Mon, 30 Nov 2015 15:06:16 -0800 (PST)
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
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50647E007D5
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 15:06:12 -0800 (PST)
Received: by padhx2 with SMTP id hx2so199224619pad.1
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 15:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=nd2+SRI7V3lhRSjnlcKIHgLgtZlEOeqHR6RVSXe/g14=;
	b=I2EBrt3w7WkqYsP1AGWIF98ys9/wNKbUPXzIAWq7GWN3ItwN9YZfLJbUZHufZbe9kW
	43mRAEts40DThgWl4a7/PiWXPCB/n5lqbTx7uetVrhYc2uRvTiv8cEhjueu97+qzQ5xf
	Y1l4ULwp0jBXYS39JMBbRk6ayY+ZhrBskKxJVkFvrOO0pn45fxk68URHtyeSlFkvLe3x
	UIR/se0IXQMyQO+SFG/MLWqdQD0AY8QnDmp97YrY0er9lPSIV2uteluWuqW5qh6JSIOu
	Ytm13G7b89aXOniuR+4mwCqbZCIBnSTumLywe3sDPRZLKY739XbF4UR6ilNsdvkrJWlZ
	JSPA==
X-Received: by 10.66.219.39 with SMTP id pl7mr95464476pac.88.1448924772473;
	Mon, 30 Nov 2015 15:06:12 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:611f:d505:13d0:657f?
	([2601:646:8802:5d5c:611f:d505:13d0:657f])
	by smtp.gmail.com with ESMTPSA id n6sm3515959pap.24.2015.11.30.15.06.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Nov 2015 15:06:11 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <565CD0DB.6010900@tibbo.com>
Date: Mon, 30 Nov 2015 15:06:01 -0800
Message-Id: <1EA640BB-A2C0-4B9C-93B0-0FC36DB98525@gmail.com>
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<2603447.ByLEse0mF5@peggleto-mobl.ger.corp.intel.com>
	<565CD0DB.6010900@tibbo.com>
To: Dvorkin Dmitry <dvorkin@tibbo.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: strange QA issue - how to ignore automatic so dependency
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
X-List-Received-Date: Mon, 30 Nov 2015 23:06:16 -0000
X-Groupsio-MsgNum: 27524
Content-Type: multipart/signed;
	boundary="Apple-Mail=_25E24FA7-4D16-4A60-A855-ADEA88D73653";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_25E24FA7-4D16-4A60-A855-ADEA88D73653
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 30, 2015, at 2:42 PM, Dvorkin Dmitry <dvorkin@tibbo.com> wrote:
>=20
>=20
> I'm trying to include binary JDK into my linux image.
> just unpacking jdk-...tar.gz into recipe image and packing it into RPM =
(I'm using RPM as base of my distribution).
>=20
> after adding
> INSANE_SKIP_${PN} =3D "file-rdeps ldflags dev-so build-deps"
> into recipe I've got no errors or warning while building recipe =
itself,
> RPM is created and it contains some dynamic libraries dependencies....
>=20
> but I've got error building rootfs with this recipe:
>=20
> ....(skipped)...
> Updating cache... ######################################## [100%]
>=20
> Computing transaction...error: Can't install =
tps-jdk-7u60+linux+arm+vfp+hflt-r0@cortexa8hf_vfp_neon: no package =
provides libXrender.so.1
>=20
> I can't include libXrender.so.1 into my image, I can't remove =
libraries from JDK.
>=20
> Is there any way to ignore this dependency?

No, and if you ignored it then this binary won=E2=80=99t function as =
expected on the system. So you should find out providers of missing
rdeps and add them to your image via depends

>=20
> something like RPM_LDD_IGNORE_CHECK=3D"libX*"
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_25E24FA7-4D16-4A60-A855-ADEA88D73653
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZc1mYACgkQuwUzVZGdMxRBCQCeN/PiZNVbnFEW8iRyqsg4BsN+
GVsAoI7lEOwC/BvYnHe+mHXlxLquOiU0
=PDYB
-----END PGP SIGNATURE-----

--Apple-Mail=_25E24FA7-4D16-4A60-A855-ADEA88D73653--
