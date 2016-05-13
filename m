Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05393E009EF; Fri, 13 May 2016 11:00:04 -0700 (PDT)
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
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABDADE0093E
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 11:00:02 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id bt5so42616068pac.3
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 11:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=dgjqVCMWst+3V28rDy/mxmtT3Rb1kXRO/RyP5m+pGHc=;
	b=tEdtDdqd178XyZN9BF4fVifaFSi3tzWo1hnypismvwX2YYbqRWppjIhZVbK87DpnYe
	Yd+Jv/a1xecglY1NHbrZ9vPS8wjvNR2C3qCyV2NUKACG8ulRo8zIe9LEAQx6Bp7l/3RE
	V+xt9QfazU0iAx/n0TEN+HtLKONjIcbklUoqj+cnqR3dwkOQgnfDYsngedIc8l73JVG9
	Mv/qNr8GGawLF3cdzmJT8mWxNod+zXs3TjGIDakklqZzaYJsypPpcFriBXXdzjRNb6lx
	F72qSU1Bc2Czu5VAGE9u6OYY+vtxgOWxScOD8zwUwjSG8QYwFTNSwciYL1Bn7rrkXzRh
	Emqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=dgjqVCMWst+3V28rDy/mxmtT3Rb1kXRO/RyP5m+pGHc=;
	b=Sy7TBLRrfFXcxys77kw3Ab2gTylEYNVO/nxI32b3/KCoYUmGaa6KQP6wxqbNnoxrNO
	QVz4+3HKte21jm+4nNdt1etu5t+YPeWzcVc/rZnKLkopWsQNP6/NKTnbhL3+WfEUrNwh
	J1A4X9b7TYvYlxWJfSsknqoIso62Z5fGIbY0uTa01+20YuM48eCsxMgAEiOVSH6o/FQi
	NUs8LxzKln7flJjfAI4r8FjiKhtnLngv+8QGvRTLh5IaGBA4iA+tr6A6plkHmGefg7Xn
	7TI37K5YJHNl/WLK7Mlg4cxDvI82n5NVujra5xd3JMuGuMZ671VLvaQrqg7Dkr6VtSRm
	AsqA==
X-Gm-Message-State: AOPr4FV48vfVwETHnRCZ9vqWilgAm+pBs06rXlKYHRTrQ70QUrQZWewAS+ckZ5qWhAXm9g==
X-Received: by 10.66.141.139 with SMTP id ro11mr5932059pab.74.1463162401892;
	Fri, 13 May 2016 11:00:01 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:90dc:14f3:602d:85ba?
	([2601:646:8800:5a9a:90dc:14f3:602d:85ba])
	by smtp.gmail.com with ESMTPSA id
	qm10sm28919203pac.33.2016.05.13.11.00.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 May 2016 11:00:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5735F40F.1000402@gmail.com>
Date: Fri, 13 May 2016 10:59:57 -0700
Message-Id: <82AEE06F-34F3-4751-A742-D3DE921AA652@gmail.com>
References: <5735F40F.1000402@gmail.com>
To: akuster808 <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: errors.yoctoproject
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
X-List-Received-Date: Fri, 13 May 2016 18:00:04 -0000
X-Groupsio-MsgNum: 29972
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0A364052-8EA4-44D5-BFA2-E9C0A8003F79";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0A364052-8EA4-44D5-BFA2-E9C0A8003F79
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

don=E2=80=99t think so

just do

echo `git config --get user.name` > ${HOME}/.oe-send-error
echo `git config --get user.email` >> ${HOME}/.oe-send-error

and it should be able to send

> On May 13, 2016, at 8:34 AM, akuster808 <akuster808@gmail.com> wrote:
>=20
> Do I need an account enabled to submit to errors.yoctoproject?
>=20
> - armin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_0A364052-8EA4-44D5-BFA2-E9C0A8003F79
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc2FiAACgkQuwUzVZGdMxSsSwCfRCQXim/GVsvfJEcGBVMEmIYx
SbIAoJCNHl+mVdEmxyntfxRSx0ezVEGF
=7+6Y
-----END PGP SIGNATURE-----

--Apple-Mail=_0A364052-8EA4-44D5-BFA2-E9C0A8003F79--
