Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 210C0E00D42; Wed, 15 Jun 2016 13:42:14 -0700 (PDT)
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
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE24E00D35
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:42:12 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id b13so10691678pat.0
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=OgafLHQH3EnYsToY1Re+IMqFOMKY159IC/ttads4UaI=;
	b=t82v+sZM5RZWbFZdEwDqr5qnOeBH8JbDgkw1sDoFgL+mpD6m0oVifFfV/6FI0tPwW2
	Y99ylOpd2S2Y+0o6FfVzs+MC6DdNlbzdvDA80UU9nzl7iaGZYrJ2g94To4+hf3CWJSw6
	Zqr6/DAAdzNOEWAVp3M5WrD/MY4D0+fHNWmzpAtRBtK6Bo69RJX80ZO8nmySr3EYV1d+
	l9WXdCzQK9J2BRVGmAG9tZZUigBskvxaqGRSqm75RxZI0wTs0bCmJiaOqGQWg0LfWlh1
	xMucfavyxuwGIZnwuL7KFZWB+sh43mUZGcOWVfnFcIp8O9AozDm9hF7sVueefh4ZmmOf
	Qs8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=OgafLHQH3EnYsToY1Re+IMqFOMKY159IC/ttads4UaI=;
	b=mfnccDaa6qjJKMVMkyH1s0j8TnnJIXI/q9OHpRwTjq+cFj1ymVavk1G8iWuEI8BzTG
	fyz5u805guiWY+Q6nQ5wDp9ODouYy2eCsdpnMDIf3Jj6C7g1LZaHd7aK3HKaDs7XgkJ0
	2mK2YQjJa8Cn04bEkV0akuqqjwAQIsfRmPHUTPU1Tw5ZtXo9+tUZZbIp0cFrdaW6U7Z2
	2AKNSqYW2lfSr3sTy42d/HTVwYiAx9XdzZMp9+pUUffnZ/zYsiZm6eYPGZSyxAddN8fC
	Ogswe1ESJXPl+dS8CcL1uw0ijhBueiVQoFLozbMayNi29OZ4swjIChAvGvCuOwmNHRrv
	F0ig==
X-Gm-Message-State: ALyK8tJ2kJu5SvBRmY/hivcHnaNLbN85xlvfLqFlFs/hqH7U9rVQ9KDMECMl9ZLLXCkJBA==
X-Received: by 10.66.122.196 with SMTP id lu4mr743219pab.52.1466023331771;
	Wed, 15 Jun 2016 13:42:11 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:115c:1c9f:7ed3:245b:56cd?
	([2601:647:4c00:115c:1c9f:7ed3:245b:56cd])
	by smtp.gmail.com with ESMTPSA id
	c8sm32506504pfb.33.2016.06.15.13.42.10
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Jun 2016 13:42:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA6000E2@RCHEXMBP1.fnc.net.local>
Date: Wed, 15 Jun 2016 13:42:05 -0700
Message-Id: <24600FD4-C8B5-4282-87C1-1F2AF3E403DF@gmail.com>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<7482070.IBUNiqSIt6@peggleto-mobl.ger.corp.intel.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6000E2@RCHEXMBP1.fnc.net.local>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
X-Mailer: Apple Mail (2.3124)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autoreconf
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
X-List-Received-Date: Wed, 15 Jun 2016 20:42:14 -0000
X-Groupsio-MsgNum: 30562
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8D9CDC88-4591-45D5-85B6-0F4B020B5EA8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8D9CDC88-4591-45D5-85B6-0F4B020B5EA8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

You need to add autoconf to your target image, if you do not use Online =
package management

EXTRA_IMAGE_FEATURES_append =3D =E2=80=9C tools-sdk=E2=80=9D

in local.conf might help


> On Jun 15, 2016, at 1:35 PM, Rajasekaran, Monica =
<Monica.Rajasekaran@us.fujitsu.com> wrote:
>=20
> Hi Paul,
>=20
> Thank you. This is in the target.
>=20
> Thanks,
> Monica
>=20
> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Wednesday, June 15, 2016 3:25 PM
> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] autoreconf
>=20
> Hi Monica,
>=20
> On Wed, 15 Jun 2016 20:17:16 Rajasekaran, Monica wrote:
>> What is the package to install autoreconf ? (Ubuntu equivalent:
>> apt-get install dh-autoreconf )
>>=20
>> I am getting the following error for one of my applications:
>> "autoreconf: command not found"
>=20
> autoreconf is part of autoconf.
>=20
> Where is this? On the target or within the build system?
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_8D9CDC88-4591-45D5-85B6-0F4B020B5EA8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldhvaIACgkQuwUzVZGdMxQxvQCggkPHJvcYSblQG0L7zI/OofgI
oq8An3/w/h0w1UcfKXLToWS1YVhkXMFE
=MKwR
-----END PGP SIGNATURE-----

--Apple-Mail=_8D9CDC88-4591-45D5-85B6-0F4B020B5EA8--
