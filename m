Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21B76E00D6F; Fri, 29 Apr 2016 19:19:44 -0700 (PDT)
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
	*      [209.85.192.181 listed in list.dnswl.org]
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EAD2E00D58
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 19:19:43 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id c189so56272231pfb.3
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 19:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=naDVK9EIodc+gr6Az7BMdUE1QRkW75DL3IoKSVWyOWg=;
	b=k+tdQ+KnhhtZXZ9RMZ5qiK+9f37zluYKJ40E9krtb1moCwOIfU8exPotaAReG5a3yz
	dbi7H7iSqc6D16iJ0l09Y9r/zEyZPHavJ4eo9WnnGMCHzThrnJuX+Xv00yTPYA+pBLZn
	9TCFqg8+u50qwf49yEDQ3ICpBZ56v94zYur9o5GW/ojD0Cbo9bw6EDvv2U6qvo8KOHob
	RYfbvkfJ96rNk0q8FdvZCvGiSQrUYkpySNPpDXUIWw7sTDqK/Z8KkHhi0OkoDMpxsWHz
	9UGpds0tYofjYLbBXqFOwESb5/4rw4qzhwSx1++YMHXRBzDAXpT9ky42C9dhFoQkSJXp
	KAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=naDVK9EIodc+gr6Az7BMdUE1QRkW75DL3IoKSVWyOWg=;
	b=TScJp8jQe8nsu5hKx6CScIRuRAP8YiLIl5TBWUVmjf4wiu2poM7Cu+pe3E6cJXXl6R
	GIOFwxFN8nPLPmzsMZo5TcdY+i5W7dyUIv/Nh190GCj1YXWClgDyIojA452k9QFvblzg
	/36bsatSjBMFHShK3ECDlAK6k9jBnr4ermjRERFfjLXdYATSQCTNF0aBoHLRo6rhowzd
	nRYI33OtGp6H1yVMPfI911jKFVcMFHwjqclCjfeqhyRURGIKunIrH9kz+bfPexKsJLP+
	akMm5Ryi2TRsstcslqPbtalbs2vWIFVlwN2tWV7lIhicwJ4bn8jojUdAj4s/1DOAF/qB
	yiTg==
X-Gm-Message-State: AOPr4FXpKiKF7apVk96DxuT0RDqWyXYS8u4Bm7IdDjqldrdaUCk9L7zCj2ORpcfak0YSuw==
X-Received: by 10.98.35.212 with SMTP id q81mr34245424pfj.108.1461982782992;
	Fri, 29 Apr 2016 19:19:42 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:9475:a54c:5e22:a356?
	([2601:646:8800:5a9a:9475:a54c:5e22:a356])
	by smtp.gmail.com with ESMTPSA id
	zs16sm27029630pab.13.2016.04.29.19.19.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 29 Apr 2016 19:19:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <4240230.kXqFvlgrOF@peggleto-mobl.ger.corp.intel.com>
Date: Fri, 29 Apr 2016 19:19:36 -0700
Message-Id: <CED9050A-0F3B-483A-85D9-D5EDF2214031@gmail.com>
References: <5722E217.40108@mlbassoc.com>
	<2094217.rxhuCqpasC@peggleto-mobl.ger.corp.intel.com>
	<572330DA.4020009@mlbassoc.com>
	<4240230.kXqFvlgrOF@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Change in override behavior?
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
X-List-Received-Date: Sat, 30 Apr 2016 02:19:44 -0000
X-Groupsio-MsgNum: 29778
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A7B257C7-E0A3-43F7-9975-75FB9756AB33";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A7B257C7-E0A3-43F7-9975-75FB9756AB33
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 29, 2016, at 3:09 AM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
>>=20
>> By experimentation, I have found that XYZ_append_<MACHINE> seems to =
do
>> the correct thing, even when <MACHINE> has upper case letters.  Maybe =
this
>> is an oversight that will be fixed?
>=20

This seems to be an oversight and should be fixed for consistency. =
packagers may have
gripes about using uppercase too, not sure how thats working out in your =
case.


--Apple-Mail=_A7B257C7-E0A3-43F7-9975-75FB9756AB33
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlckFjwACgkQuwUzVZGdMxQTtwCfXZtS5xiTp4KTWvdnqnPhWqNY
O0EAmgJ9PJlYo1L9sKA3AxvIK4tLILr3
=UAD8
-----END PGP SIGNATURE-----

--Apple-Mail=_A7B257C7-E0A3-43F7-9975-75FB9756AB33--
