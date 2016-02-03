Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 066AAE00C4B; Wed,  3 Feb 2016 12:06:28 -0800 (PST)
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
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23999E00C44
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 12:06:24 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id uo6so19023911pac.1
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 12:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BObuluAdaR9XYwh8fwzWsQ4KgIaeNGasOAa2CX/zEY4=;
	b=rDF7KiiUeYMIQV3+ROFYGfS4He0XV5MGZ+wbvPcZVqb4i0Dnw+4OqzK+70rm8K/52v
	fFzK/bBrJQye5VL7AAWiJjM0uRCssAOy05I0xOC0mIVMGJHkmZFKegw1Rd2QXJBf4/25
	OjTa3MTYP0Mnvlu/9H1r0JvWYSYp245ZV0V1o0KrfkfNficOP0W2GsH7z/sBdSvXbEcc
	+6l3otjU4BulO59DSnX1Gl7q5MD2gYt94uez6VmKPm90qZ//+63AL7YzbGvGBmqE5o5Q
	iMoZ+0uU/39IUAVNeb/4iQnMbtheM0R+xAZFmg9QAm2dGGpwO8XMWtoHC4C6JQE9WNPZ
	Jjfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=BObuluAdaR9XYwh8fwzWsQ4KgIaeNGasOAa2CX/zEY4=;
	b=Btq0S0yYkNNYV3n8RKTX2aJiRGKEEGVJ4SBzbJ+s8BJdpGFkXl+yxI6C4kYjT8msVc
	PT5F7kdqf3EMBuWlgjp2dTYwkaDvoYYkRELOIt5pUzz2f/IfjG7HK2B4f3nnpcvlXMAr
	U05LL9Lvxk46K16cX/ik6LqrsG0p5gM5iY4SyfB53ib4ac8CvRBtqGsDL8ZgU2+MhSWZ
	FIJCG86bEmS+0444YHB99V8D/LX3yJmAucUjmYweb8eeuMMQFiAoZPwh0YWwYtpRsdda
	n1KV4P4+JCurd1LpeVC7PcAXOFhP/iNJYP1NiDhGkq1sFdtZu/YxCdI4qY7TAv92Lk+g
	xEwg==
X-Gm-Message-State: AG10YOS+gIO2xoFYrilpE04YFybp/cSCDDv3U3jwSoN6q1mgjUyem5tG90MBzLp2hRKGCg==
X-Received: by 10.66.187.145 with SMTP id fs17mr5158689pac.81.1454529984039;
	Wed, 03 Feb 2016 12:06:24 -0800 (PST)
Received: from ?IPv6:2601:647:4c01:b37d:95b4:fa84:8c74:446f?
	([2601:647:4c01:b37d:95b4:fa84:8c74:446f])
	by smtp.gmail.com with ESMTPSA id
	191sm11777563pfa.23.2016.02.03.12.06.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 03 Feb 2016 12:06:23 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAHWMYyAt4Mdn250Ku_uMtrHr1Awau-MPtwCaYDvi0YK8mDYE9g@mail.gmail.com>
Date: Wed, 3 Feb 2016 12:06:23 -0800
Message-Id: <4FEDECDB-AEFD-4F3B-B2BD-175D1A121862@gmail.com>
References: <CAHWMYyCftLwJ2OsiAHNtgK94gy+9FAG_71mgi6A=+F_nuUJrGw@mail.gmail.com>
	<1454430798277.69358@seescan.com>
	<CAHWMYyCW7zbZftqu4auw7OBKEnxaoykCF-_hWtaYY5qJhaiebg@mail.gmail.com>
	<CAHWMYyAt4Mdn250Ku_uMtrHr1Awau-MPtwCaYDvi0YK8mDYE9g@mail.gmail.com>
To: Todd Efflam <todd.efflam@gmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem installing ath10k firmware
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
X-List-Received-Date: Wed, 03 Feb 2016 20:06:28 -0000
X-Groupsio-MsgNum: 28251
Content-Type: multipart/signed;
	boundary="Apple-Mail=_899D5D8D-E0E8-4A70-B643-9E8CE5797766";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_899D5D8D-E0E8-4A70-B643-9E8CE5797766
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 3, 2016, at 10:22 AM, Todd Efflam <todd.efflam@gmail.com> =
wrote:
>=20
> Finally was able to get it work - the error seemed to be a combination
> of things.
>=20
> We went with the modular build and ended up building the following as =
modules:
> CONFIG_ATH10K=3Dm
> CONFIG_ATH10K_PCI=3Dm
> CONFIG_ATH_CARDS=3Dm
> CONFIG_ATH_COMMON=3Dm
>=20
> Then we added only "kernel-module-ath10k-pci" to IMAGE_INSTALL.   With
> those two steps, we were then able to push the firmware to the
> /lib/firmware/ directory as Fred had mentioned and ath10k was then
> working with our card.  Thanks for the help!


can you translate some of it into patches that you can submit upstream

>=20
> Best,
> Todd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_899D5D8D-E0E8-4A70-B643-9E8CE5797766
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlayXcIACgkQuwUzVZGdMxT+3wCcCLwmgDhTf9HFgpJL6RLWgrgz
31EAn2hmgHsAUn+GlvZ2FqYJEwbkDuNU
=0jR1
-----END PGP SIGNATURE-----

--Apple-Mail=_899D5D8D-E0E8-4A70-B643-9E8CE5797766--
