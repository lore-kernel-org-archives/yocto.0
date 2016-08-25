Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CC51E00571; Thu, 25 Aug 2016 14:34:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13DB2E00444
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 14:34:44 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fi15so20292660pac.1
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 14:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=8ubQ03BV/Gla3YWsLN2Z3CrMnBPNBJmCgvUURnBiZIY=;
	b=UbgifwuVuh1zaRkujmO5Am/s59Kk4mDCObtnH7rw4PR/7Ek1F8unT+/7BfcBMdwQKU
	FJIzrXTrrkBvw8rjWX1nO31KWu5elmYzmYT9aKo2haIiWfXeCDyiF/i/QDsvtz6lTOIO
	B2mRzREI9YcJHMPiQyF/IOwWuD11mKIR6tPwyjgmZV7jwQvMpu2X1Rjc3Z2TlwC23VLz
	eujw6/lh+F8Ozr9zgCbTy3rn23jmb60QFa/ClabmskQ00rCM4R75KN7+SvPqT9Ja615V
	nwXBoN+6Aer98jH9vQ/kCRvkCOfizRvLCMhTfiG4pEZHY0nVClEzrfyi24Ofz9JWh2KT
	g+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=8ubQ03BV/Gla3YWsLN2Z3CrMnBPNBJmCgvUURnBiZIY=;
	b=IWHcPQdu7zaDq8qIi6e+dus1CQpbeCt4n0gVDVxi/7iv7/8uUGxklS1Ss75NJ/G8Qi
	QbxQKMk7AAOnVupCUiQ7Xeb2pCqd7YuGwc4t9bGsVJiu0YJazx4rxJnYkgkcjKWbk5yL
	PJhFQ9Tt0JDsVy80ZJvdieFb3j5zlysjEHWtMKEGOD1kAHuSFpiKSjFlat4jxZX3zevJ
	W9I2UFuKXUtMBQVRyakSIv0uoGZ67Ms+Xd9e+mJ9xQqpMEg8LQKswY4Qdt4UFNhBKdJZ
	3PO6I8myx2LEsNWrL8lYUuJou624vx+q8AGIpbPbD662qtORMzTuO29D1yUFIBnMV7zQ
	DP9g==
X-Gm-Message-State: AE9vXwOznR6eJs7oJm5+WiwaNW0iWSd0/w6FwbmRiBkp0Cx6yRb3bMvJSp4iOjykjvSYLA==
X-Received: by 10.66.164.227 with SMTP id yt3mr20327070pab.117.1472160884518; 
	Thu, 25 Aug 2016 14:34:44 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:157a:f659:3403:a165?
	([2601:647:4c00:3edf:157a:f659:3403:a165])
	by smtp.gmail.com with ESMTPSA id
	132sm23082402pfu.6.2016.08.25.14.34.43
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 25 Aug 2016 14:34:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAOsp8o8NNynmKHsuP3D341riayK51YpqjGhW5EkpuTgLJdTjxA@mail.gmail.com>
Date: Thu, 25 Aug 2016 14:35:14 -0700
Message-Id: <83910141-F5FD-4671-92A9-47C5A33D1C71@gmail.com>
References: <CAOsp8o8NNynmKHsuP3D341riayK51YpqjGhW5EkpuTgLJdTjxA@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Git/yocto newbie question re: submodules and multiple layers
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
X-List-Received-Date: Thu, 25 Aug 2016 21:34:45 -0000
X-Groupsio-MsgNum: 31656
Content-Type: multipart/signed;
	boundary="Apple-Mail=_BBBE134C-0213-4474-B365-048B4E608CFB";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_BBBE134C-0213-4474-B365-048B4E608CFB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 25, 2016, at 2:24 PM, Michael Habibi <mikehabibi@gmail.com> =
wrote:
>=20
> Hi, I am well-versed with Git but I haven't really ever had to use
> submodules. I am trying to create a git repository on our server that
> will host our yocto distribution. Our distribution will include the
> yocto repo, plus meta-openembedded repo, plus maybe some other layers.
>=20
> The difficulty I have is thus:
>=20
> my_git_repo/ <--- what my platform developers will 'git clone'
> my_git_repo/yocto_git/... <-- yocto framework
> my_git_repo/yocto_git/meta-openembedded <-- another git repo nested
> inside yocto repo
> my_git_repo/yocto_git/meta-intel <-- another example layer.
>=20
> I would like for developers to be able to 'git clone' a single repo,
> but pull down all the necessary layers from various git repos.
> Basically it will comprise all repos, including yocto, OE layers,
> intel layers, etc.
>=20
> I believe the only way I can nest submodules inside pre-existing repos
> is for me to create a local clone of yocto git and add the submodules
> to that clone. That means the master git repo (my_git_repo in example
> above) will point to *our* clone of yocto git and not yocto project's
> git repo. In our local clone of yocto git, I will add a submodule for
> each layer I want to add.
>=20
> Does that make sense? Is this the right approach or is there a smarter =
way?

There are several ways to setup your workspace.

1. Use android repo tool you can look at the angstrom distro which is =
OE/yocto
based (https://github.com/Angstrom-distribution/angstrom-manifest)

2. you can use combo-tool from Yocto project ( which is used by poky =
distro )
3. you can use git submodules which is used by BEC distro again based on
OE (https://github.com/cbrake/oe-build)

you can also do something else may be use jiri ( =
https://github.com/vanadium/go.jiri )



> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_BBBE134C-0213-4474-B365-048B4E608CFB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAle/ZJMACgkQuwUzVZGdMxQiIwCfWvP86vvpLON3Bkw5xH3QRRki
nO4An19GwC5CkGmGieaDw+dZ2NOv5Pc6
=NqtE
-----END PGP SIGNATURE-----

--Apple-Mail=_BBBE134C-0213-4474-B365-048B4E608CFB--
