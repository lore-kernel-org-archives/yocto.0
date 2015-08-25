Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD541E00C3A; Tue, 25 Aug 2015 15:56:16 -0700 (PDT)
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
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 076C6E00BE4
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 15:56:13 -0700 (PDT)
Received: by pacgr6 with SMTP id gr6so4879318pac.3
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 15:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=wvvS8PaK56tG4j45rjdqTYRv1x6u7v4BNGbR+gq6brw=;
	b=zVcIkS4BDiH8i8FEFJcTbCgWhYyWBrLa49geKT/PQGyWvkftSUml1h3Dp6dJFPjKJ+
	0Zf0fB51lr1JqAfXJiJOZdKOgoYw6EUEcggjusD07kEolLxi2CfUiNHMNf/OffTLRhDz
	iGL8eJOjxfkC44RXJJwZ2scUdgqOEJkmv2r2tEam7XhNPXgP/tXkidCD/3m7/nNac3ys
	B9mRJdZaVBeyNuxFItKgT60NFIrCPvbwmT+8ezN3KcgE9pL02GoRV0uvt05qm4FrEruc
	u6LuJO8u+gZn59QhwXFw1YvymPBONvi/5rKGKrJgHhd/nEC4hrc+a4yjvwuhtzCkpMzb
	QRLQ==
X-Received: by 10.68.218.104 with SMTP id pf8mr61711821pbc.31.1440543373459;
	Tue, 25 Aug 2015 15:56:13 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:316a:3272:24e7:4679?
	([2601:646:8601:4580:316a:3272:24e7:4679])
	by smtp.gmail.com with ESMTPSA id
	ip7sm22232057pbc.68.2015.08.25.15.56.11
	(version=TLS1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Aug 2015 15:56:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5.1
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1440541648-25268-1-git-send-email-sgw@linux.intel.com>
Date: Tue, 25 Aug 2015 15:56:07 -0700
Message-Id: <9105BF1E-8B11-45D2-B3D5-9642FF030E02@gmail.com>
References: <1440541648-25268-1-git-send-email-sgw@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] CheckforGPLv3: Improve find/grep check
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
X-List-Received-Date: Tue, 25 Aug 2015 22:56:16 -0000
X-Groupsio-MsgNum: 26229
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9613EB9D-E5BE-4B7F-B087-2A317D789328";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9613EB9D-E5BE-4B7F-B087-2A317D789328
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 25, 2015, at 3:27 PM, Saul Wold <sgw@linux.intel.com> wrote:
>=20
> Add additional information to help determine what is reporting
> the GPLv3 if there is a match
>=20
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
> lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py | =
2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git =
a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py =
b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py
> index 0cc5b2c..ace6473 100644
> --- =
a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py
> +++ =
b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckForGPLv3.py
> @@ -28,7 +28,7 @@ class CheckForGPLv3(ShellCommand):
>         ShellCommand.__init__(self, **kwargs)
>=20
>     def start(self):
> -        self.command =3D 'for x in `find ./build/tmp/deploy/licenses =
-name "license.manifest"`; do cat $x|grep GPLv3; done'
> +        self.command =3D 'find ./build/tmp/deploy/licenses -name =
"license.manifest" -exec grep -H -B1 GPLv3 {} \\;'

how about GPL-3.0 and LGPL-3.0 will that be caught ?

>         self.description =3D ["Checking to ensure no GPLv3 packages"]
>         ShellCommand.start(self)
>=20
> --
> 2.1.0
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_9613EB9D-E5BE-4B7F-B087-2A317D789328
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXc8ooACgkQuwUzVZGdMxRxBACePzor4ZhEZ3ygNzgWQx37ydT4
dxoAniNroim+3t8oPzLZDofD17fPo5cF
=sOD4
-----END PGP SIGNATURE-----

--Apple-Mail=_9613EB9D-E5BE-4B7F-B087-2A317D789328--
