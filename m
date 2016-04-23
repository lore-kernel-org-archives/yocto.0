Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCB87E00D1C; Fri, 22 Apr 2016 18:22:47 -0700 (PDT)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AED79E00BF5
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 18:22:44 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id fs9so44618604pac.2
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 18:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=KiYZH0t+SfiZmUAcbM+1D556/p4DCgU6WfLNvbZfkCc=;
	b=Qd8nphFLrYRYrOM5WrFLJsDr/Anf7ZyQ+YEp4SXQJkqhsH5ytdix6iIq2iqd1xATE/
	4c7i1Sugnp+ogS+4gzPN0cufuW2+74Tw5DZGCCD6Ggt9YfNht0kkYK/HrEpPCNGXgLJV
	8UbUKlpJ/H32FYtfm1ww2jPtSdIJuXgeTTqgppwr7w01JetykGw6qQIfCyboc4PKJP98
	mkSOopHVxr/7F7yf0rA0x08RZRv5bXLPrD6nVhymOlTm/Sv/2pi0w86KG1nUMholuhmf
	VyG9V0EHWdoz0W6Kjn9cR2fEFWXsYLKL3x5qDtFKXLqZ9TrQhg6AEfdM8GmK3F5BoJTY
	5bHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=KiYZH0t+SfiZmUAcbM+1D556/p4DCgU6WfLNvbZfkCc=;
	b=G7tWc/i2ToGwBKBQCQyqdwTLTnY9EeWw+FE9BN8SWILp1z9H07Us9Dn164MIGq9Zut
	BlbeImAAvKFk4GML7s2EA63MrjrVzrIvzxTgQGSqq9eB/mFyMbRgClE/9Mhr7zrbQxyV
	TFzKxbaeyz5XBpxwQdP02Bl2WayjX+3yim1cGRQwF29Oj2Gv6LDOEuaMkYZHppe/2YaP
	IqKoWNaATaz858braLAg/Lr8Sr3Zjy18WJJTbPNP3Cib04IPJImLYeW3TqxRJ+tgwECw
	pdoFJmO0ogoOM17oL4V+6Ngoh3y3kjx5HsJJ8rZ0QRc115qLaa9HAeBrG/y9H9UEqyG+
	8nRQ==
X-Gm-Message-State: AOPr4FWwXCcGKnyNnY3iOzixDTcNfoP/jmpDVgXGgaoffm8U1YK19IqxHKbp8+f+DfJ5CQ==
X-Received: by 10.66.67.11 with SMTP id j11mr32904082pat.45.1461374563949;
	Fri, 22 Apr 2016 18:22:43 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:a061:e2e8:8aca:7170?
	([2601:646:8800:5a9a:a061:e2e8:8aca:7170])
	by smtp.gmail.com with ESMTPSA id
	m184sm11026248pfb.22.2016.04.22.18.22.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 22 Apr 2016 18:22:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMZfsd6f7-s4pVyiNPs2sVmi+EC6yMyjCJeYTPobm0f6ffE2_w@mail.gmail.com>
Date: Fri, 22 Apr 2016 18:22:37 -0700
Message-Id: <AF020D52-486E-40B4-BE5D-5F4CAB2E9130@gmail.com>
References: <CAMZfsd6f7-s4pVyiNPs2sVmi+EC6yMyjCJeYTPobm0f6ffE2_w@mail.gmail.com>
To: openembedded-devel@lists.openembedded.org
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [oe] [meta-qt5] EGL Error : Could not create the egl surface: error = 0x300b
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
X-List-Received-Date: Sat, 23 Apr 2016 01:22:47 -0000
X-Groupsio-MsgNum: 29594
Content-Type: multipart/signed;
	boundary="Apple-Mail=_58A7AEB8-D5E1-43A3-B787-471AB0926DF7";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_58A7AEB8-D5E1-43A3-B787-471AB0926DF7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Apr 22, 2016, at 6:07 PM, Ryan Elkholy, PhD, PE =
<ryanelkholy@gmail.com> wrote:
>=20
> Hello,
>=20
> I am am trying to make a build that includes meta-qt5 without x11 or
> wayland on the Minnowboard Turbot (x86-64). I was successful in =
building my
> image but the problem occurred when testing my basic qt app on the =
image.
> When trying to run the app I get the following error:
>=20
> EGL Error : Could not create the egl surface: error =3D 0x300


Do you have =E2=80=98directfb=E2=80=99 in DISTRO_FEATURES
>=20
> I have been trying to find a solution for this for weeks with no luck. =
I am
> able tu run my application when including x11, but I am trying to =
avoid it.
> Does anyone know any solution for this? Any insight will be helpful =
because
> I have been stumped for weeks. If nobody knows of a solution is it =
possible
> to dig deeper into this error and see what is causing it? If so, how?
>=20
> Thanks
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel


--Apple-Mail=_58A7AEB8-D5E1-43A3-B787-471AB0926DF7
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcazmAACgkQuwUzVZGdMxR1zgCeIYqdNX9neh7jLhxeV9I0wyOH
NFMAnAtMWhl2G4msVO1w+vP9peAfI/77
=dTZ9
-----END PGP SIGNATURE-----

--Apple-Mail=_58A7AEB8-D5E1-43A3-B787-471AB0926DF7--
