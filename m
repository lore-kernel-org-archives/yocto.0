Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA1E7E00D5A; Tue,  6 Sep 2016 10:22:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.68 listed in dnsbl.sorbs.net]
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD3FBE00D44
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 10:22:22 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id gi6so1481430pac.1
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 10:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=2RrgklpqifFfXvzfivXxhzVsqQ5U84TgipmroASk2Og=;
	b=UuMctTq6NgnWSBnRFkH1634HsDJr8c7dHA/wugmXp1DZSNzQdfVnuu3hrUnpErmDkw
	E4F97alsa6VfFcQPK0DGgdUdQni+WU2A31Zoc1ULcR7++OluKy1XlsrYv8XO0Lxgfjp2
	X7j4gb88TlJvjnyLJP8IrC4hPNXxCGaWE6ND7+TSnkWKy+HByjOWvlEFMeuSR0ixj2sw
	nwpDhAbViwl6BdmbGMBqBBni++N0Egm9qrS+7bL/uPpH7FH3Zm8B0Cjwz8C0WU+K+l2z
	yKFSMsRIr7oILrDiXRh1cjXSDl0Ur+Cq6Ea1n0yIVbRKX3+idhGKomQ2gwFkMYMzjX7P
	QTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=2RrgklpqifFfXvzfivXxhzVsqQ5U84TgipmroASk2Og=;
	b=Vf4m3E/PfBeAUpANa5uOzyb7/W0SHGblssdDibuiLpd3u9UejvCn9QMAoXCJA+8wcG
	d2PMlvRmK1xPPFvqFNnkPBhO9oRHzBm3zyLd0pdPLjcbW22Ha1iu4/YQ/L3NqhmbrsT1
	rzukTBVuQwFjgiS1awiohEJU3LSmwEQYtWw/jYmrdl84P/Oj7okOFpgLTUcm+cy1QIV5
	XuFRKqVQKUlSTyf6TMRfV3p80ztE26C/swxJAkUPr0mqIITmuVl0DEMDfUz2v1V4QlrP
	oMPZQ955MCsaxsh4f83Hv4EYaWTdOQEgLYks4jZ/mOmp6lS+0Eb8r2TiHLK7gmcKK9td
	Dh1A==
X-Gm-Message-State: AE9vXwN3HMW/cErolIBuXH9ABzNGwn1aPs1uZfrVSXnNiRtYcOPqZaxF6PXGX/Eu35eZcw==
X-Received: by 10.66.17.164 with SMTP id p4mr71392543pad.136.1473182542298;
	Tue, 06 Sep 2016 10:22:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:99d4:c55f:fbd3:66fa?
	([2601:647:4c00:3edf:99d4:c55f:fbd3:66fa])
	by smtp.gmail.com with ESMTPSA id y6sm42651970pav.1.2016.09.06.10.22.20
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Sep 2016 10:22:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANsWYUXE=HupyZ6PFc9q=g=tyH_PEA=j0YTgXXwSL19kZ263LA@mail.gmail.com>
Date: Tue, 6 Sep 2016 10:22:18 -0700
Message-Id: <DA405E55-0FB4-43E8-B93F-2E83C71EBFB6@gmail.com>
References: <CANsWYUXE=HupyZ6PFc9q=g=tyH_PEA=j0YTgXXwSL19kZ263LA@mail.gmail.com>
To: Jaghathiswari Rankappagounder Natarajan <jaghu@google.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Add some changes to a existing machine.conf file
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
X-List-Received-Date: Tue, 06 Sep 2016 17:22:25 -0000
X-Groupsio-MsgNum: 31804
Content-Type: multipart/signed;
	boundary="Apple-Mail=_78F98B02-F741-40B3-956B-D1D63EB56940";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_78F98B02-F741-40B3-956B-D1D63EB56940
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 6, 2016, at 9:08 AM, Jaghathiswari Rankappagounder Natarajan =
<jaghu@google.com> wrote:
>=20
> Hi... what would the correct way to add some changes via my layer to a =
machine.conf file(existing in another layer)? The qemuarm.conf already =
exists in meta/conf/ .. I want to add some dependencies to machine type =
qemuarm in my layer..(qemuarm.conf file under meta/conf only gets =
included and the qemuarm.conf file under my-layer/conf does not get =
included even though my layer has higher priority)

you should define your own machine config file which inherits qemuarm =
and mentions additional changes as you need.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_78F98B02-F741-40B3-956B-D1D63EB56940
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfO+08ACgkQuwUzVZGdMxTy6wCgg74g1pN9cNeJjSD6Pg2Oyaf5
YkMAnjW+V489LaS9mZrN2y0aT4bH6Thc
=eiTO
-----END PGP SIGNATURE-----

--Apple-Mail=_78F98B02-F741-40B3-956B-D1D63EB56940--
