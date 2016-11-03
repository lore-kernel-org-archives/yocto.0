Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE345E00BB0; Thu,  3 Nov 2016 12:10:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A364E00C09
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:10:30 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id 189so36338745pfz.3
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 12:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ySd9Fpvp8IH0qj4QQrdV/0AdLp5zfSpxpswk/4FA1Ok=;
	b=Zz8j89G+107X2G2g/8Tdw1/Hz4+Art1SKcRwbq8MBHhLIiHuEV1nUUvVJ5/HOv+Tjh
	PwzOJTPCbznQHcWlFZGH7uPteF376ck39tjFp0upRmSPUv56L8WOUesXiZ6cquex4oAm
	69Hw9EI5A+vtqmt472cJ0DCOwC7m94lbg/AwfBAVBbaJLZA9ueEnlHZeXsCOO8blyId6
	bLBjy+jnvBt1zlZeodsv4Zm1/TtUpRG8eZfeKXvwr7+4yCELzS475jyAUKteg3/NScu4
	yS1xQeCN0DCDu+pE48oJy3T4TCQqwOhdjCSdjRLyAkqSp9+8Nhy6h0093gCfCDm6kK2d
	QuOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ySd9Fpvp8IH0qj4QQrdV/0AdLp5zfSpxpswk/4FA1Ok=;
	b=IBaq/y05qbrLHZO5tQZRWAPWdTBew5WY4JzB4TGg5Jm6XrylfUMiVlQiDsC+Y8TFZt
	d2wi8hMrqqcGqagc58a92ztaC1iFb3qFoAIaWFYwgQaBw9fSPIOjHb4GTIgOEQ6s5c/B
	VIi0luuzGKMjKKgspSuK4dWjYAJgauEhvOXtwojWv3EkX/vPjHn5KlXayp+5My0Etrb7
	6ubXPKrypF6u0RLNCSO+jUQ0jt8y+OW8HZsLJUn6P8ZeX38lhBGJ4EwBYSbEVX3Zygol
	ZZQ9+6onqDpsinPQk/Rt1EqLhzykZm2QPreh7Mc+KJeJKaYecq19hv9KysUXkHxEB3hW
	wugA==
X-Gm-Message-State: ABUngvf/5TXbRqL8RUgXAP3ZnNrW+yqE8/jTZVFqigx7O/sl6+pN/a2G7KWKjoWwgiuDcA==
X-Received: by 10.98.99.131 with SMTP id x125mr964185pfb.135.1478200230242;
	Thu, 03 Nov 2016 12:10:30 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:a08a:c533:b969:820?
	([2601:646:8882:b8c:a08a:c533:b969:820])
	by smtp.gmail.com with ESMTPSA id
	j63sm14473414pfj.70.2016.11.03.12.10.28
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 03 Nov 2016 12:10:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <d5b63ec2-ce46-74ef-41fd-d000fea28af5@generationrfid.com>
Date: Thu, 3 Nov 2016 12:10:28 -0700
Message-Id: <BE902065-8FCC-4124-AF1F-2AA0FB828480@gmail.com>
References: <d5b63ec2-ce46-74ef-41fd-d000fea28af5@generationrfid.com>
To: Anatoli Veselinov <aveselinov@generationrfid.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: How do I remove/disable QtWebKit from building?
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
X-List-Received-Date: Thu, 03 Nov 2016 19:10:42 -0000
X-Groupsio-MsgNum: 32825
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E5359948-828E-41F5-A066-277A22B29A6A";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E5359948-828E-41F5-A066-277A22B29A6A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 2, 2016, at 7:18 AM, Anatoli Veselinov =
<aveselinov@generationrfid.com> wrote:
>=20
> I have been searching about this but didn't found anything. I don't =
know if what I'm asking is possible so let me explain.
>=20
> My goal is to create a custom image for a target that it can run Qt =
applications.
> I have the image ready, I also generated the Qt sdk (with =
populate_sdk) and I already can cross-compile. Ok.
>=20
> My question is, for future builds, how do I disable or remove some Qt =
modules that I don't need?
>=20
> I did:
>=20
> PACKAGECONFIG_remove_pn-qttools =3D "qtwebkit"
> PACKAGECONFIG_remove_pn-qtquick1 =3D "qtwebkit"
>=20
> but that doesn't disable qtwebkit to be built, I saw qtwebkit =
do_compile task running and it takes a lot of time.

you need to remove it from qtbase as well.


> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_E5359948-828E-41F5-A066-277A22B29A6A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgbi6QACgkQuwUzVZGdMxQczACgiElDNhFXSZRHOh1eMLhWCOQl
2R0An3b2IxMRiMNin8+wnLOOH6S3YbnB
=IZZJ
-----END PGP SIGNATURE-----

--Apple-Mail=_E5359948-828E-41F5-A066-277A22B29A6A--
