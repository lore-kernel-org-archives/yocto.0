Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 423C2E00E96; Tue, 16 Aug 2016 09:36:38 -0700 (PDT)
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
	*      [209.85.220.65 listed in list.dnswl.org]
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15824E00E88
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 09:36:34 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id hh10so5534912pac.1
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 09:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=hktNKtwgKiAYL5NdovfyL+A+pJqALCSo5J79ruj6PEA=;
	b=tEnfLeqXhHkzgB6KA/n6/sz4+Cjr3ZyrYl+Ko/D4tT41YHn4bQYnHJfn29rPq70ljp
	m6BP1k6XBhNJhT8TwB5dpHqv3EZChaB+SA9L3lv+NNK5OgxxgUDmm6rJIsX5dPcM23Qy
	NoppMNcjXh+ytBZekDg/qAkZMM0hI3F4Ah6jmJDFd/sgSKhNuI8BCqrkm1335hc2faz2
	q94Tz69czNIXP7P9qZdiBoeoq1o09k1p2/29BtSsN6KbBp093/6gMzf0bmUgHuXvEfK4
	q9U9aBwdtJ07rJbMUzb4FO0vbGJgRl4AdetkMeVLzKR6my23cWFaq0sa6aS2mvRkV4cV
	TBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=hktNKtwgKiAYL5NdovfyL+A+pJqALCSo5J79ruj6PEA=;
	b=kvS01guLJxh1oL5ZxxWbR2X2XIZ9neE6M2pDWzOUxGqYh1u3WQH6vf2cy3LeqfnNfu
	7Ctjx0hRwNMvHCcWTP/BSZm8Npvzz1DuklWBv2uz4uOv2MaRgUWT0zUykw2ZA2IEAVxK
	jy8G2acdtxIx3O35u/aSSt2H+Hb20pmyzZzWv8P9s+PP9eRr81ZpNUG6brxNJhW+ag/N
	gnU9vMY7jZWpNeanVYwJPGVK46NiDP/iFEfcIR3wvec4LO9VyVZ2dqWP7FzGct57Q4fc
	mCXqz0sQfkoJTlaD+sIShRmnjZj3CIqThCKc+MQtT4JkcjBzbrvMhnjMTbphg0dr1h2e
	8vww==
X-Gm-Message-State: AEkoouv/xK9auhvxvSGXJxcBeYDwfwQc1csl5ahEZqq8Vx1wnx4FJOmYdwtIGuTBWWxz1g==
X-Received: by 10.66.217.132 with SMTP id oy4mr65724584pac.46.1471365394171;
	Tue, 16 Aug 2016 09:36:34 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:8111:5203:81eb:cf56?
	([2601:647:4c00:3edf:8111:5203:81eb:cf56])
	by smtp.gmail.com with ESMTPSA id
	15sm40567969pfz.36.2016.08.16.09.36.31
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 16 Aug 2016 09:36:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1608161134290.9097@ca624034.mitel.com>
Date: Tue, 16 Aug 2016 09:36:31 -0700
Message-Id: <07E2CC82-5296-4ED3-8F74-E213EC509F4D@gmail.com>
References: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
	<alpine.LFD.2.20.1608161134290.9097@ca624034.mitel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to maintain a global DL_DIR?
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
X-List-Received-Date: Tue, 16 Aug 2016 16:36:38 -0000
X-Groupsio-MsgNum: 31502
Content-Type: multipart/signed;
	boundary="Apple-Mail=_ABAB86B0-09A2-4D96-B67F-1891F9B476F9";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_ABAB86B0-09A2-4D96-B67F-1891F9B476F9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 16, 2016, at 8:37 AM, Robert P. J. Day <rpjday@crashcourse.ca> =
wrote:
>=20
> On Tue, 16 Aug 2016, Patrick Doyle wrote:
>=20
>> As I am playing with several different Yocto/OE projects, I thought
>> it would be nice to set up a global downloads directory.
>>=20
>> Also, being a somewhat forgetful sort, I thought it would be nice if
>> I could set DL_DIR in my .bashrc and not have to remember to edit
>> conf/local.conf each time I follow the directions from a third party
>> site to set up their Yocto based distribution.
>>=20
>> Can I do this?  If so, how?
>=20
>  if you're talking about creating a local source mirror for tarballs
> to be shared across multiple projects, i taught an OE/YP course last
> week based on a digi ConnectCore 6 dev kit, and i wrote some wiki
> pages for it, including this one:
>=20
> http://www.crashcourse.ca/wiki/index.php/CC6_local_source_mirror
>=20

a small nit, perhaps its better to use rsync instead of cp.

> that explains how to create a globally accessible directory full of
> tarballs, how to configure each new project to look there first, and
> there's even a script so that, if a new project *does* have to
> download a bit of stuff that's not in your local source mirror, you
> can run that script from the downloads/ directory, and it will copy
> all the newly-downloaded stuff into your local source mirror.
>=20
>  let me know if anything on that page is unclear.
>=20
> rday
>=20
> --
>=20
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, =
CANADA
>                        http://crashcourse.ca
>=20
> Twitter:                                       =
http://twitter.com/rpjday
> LinkedIn:                               =
http://ca.linkedin.com/in/rpjday
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_ABAB86B0-09A2-4D96-B67F-1891F9B476F9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlezQQ8ACgkQuwUzVZGdMxT9ngCghYIGfyEAHVifXeP6wScY7I64
3oUAn3J5fWjLpOkDAfjI97DhlWfdzx9U
=q+JE
-----END PGP SIGNATURE-----

--Apple-Mail=_ABAB86B0-09A2-4D96-B67F-1891F9B476F9--
