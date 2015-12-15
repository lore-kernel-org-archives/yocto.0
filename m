Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84D6DE00BEF; Mon, 14 Dec 2015 16:43:32 -0800 (PST)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48729E00546
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 16:43:29 -0800 (PST)
Received: by pabur14 with SMTP id ur14so112968924pab.0
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 16:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=T99y3/o5790gpZLM+u9VdQrfQuY3K0+ZD6sSJlTS3QI=;
	b=fXp8fgvx4g57cakHmeRVUnOQU+y9OR66r8NPdeDE8yEH5i4xw9uqzwaNSLBnVUNMbj
	Kagbw463coUEGdzKTGtfulbuvrqEiSKdemOSgXSOu6qZDOLl1Ysd5Z7e9XlTeGoB1Pix
	OAgFRGrv/yepF5nZrqor4xvgf9Y8tVV4PiAdgGJLfmxSyQrB7qCt/hcnvbCpe5fNE861
	5HycHfMEoWbu0aGPozcRT5pVok4OsUUOq5WjvSQ5vMC7+tEX7pvVw5bej98u6kgXLGZV
	+Hg+U+CRcH0vVe6w09istxLRaqRJ7Y5TmHTYvGPBPeIh6sRcmsuUzd+p2KTKUV3wg2eK
	NM3w==
X-Received: by 10.67.23.226 with SMTP id id2mr28457148pad.149.1450140209649;
	Mon, 14 Dec 2015 16:43:29 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:5c4d:b840:1a41:b442?
	([2601:646:8802:5d5c:5c4d:b840:1a41:b442])
	by smtp.gmail.com with ESMTPSA id
	i70sm20727459pfj.32.2015.12.14.16.43.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 14 Dec 2015 16:43:28 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAANXd04abgdaHxkGhL7pppOvio419XPH3o-FPyWHHTaz1qQMZA@mail.gmail.com>
Date: Mon, 14 Dec 2015 16:43:19 -0800
Message-Id: <E1E08070-102D-46A7-9575-EB4DF64A06C5@gmail.com>
References: <CAANXd04abgdaHxkGhL7pppOvio419XPH3o-FPyWHHTaz1qQMZA@mail.gmail.com>
To: Yang Liu <yliu.public@gmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: How to unset LD_PRELOAD environment viarable
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
X-List-Received-Date: Tue, 15 Dec 2015 00:43:32 -0000
X-Groupsio-MsgNum: 27712
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4E1AD7F5-8952-4893-99BB-F2E80343C240";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_4E1AD7F5-8952-4893-99BB-F2E80343C240
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Dec 12, 2015, at 6:18 AM, Yang Liu <yliu.public@gmail.com> wrote:
>=20
> Hi, All,
>=20
> I would like to unset the LD_PRELOAD variable when I try to compile my =
module using go cross compiler with CGO enabled.
>=20
> I tried to add "unset LD_PRELOAD" to my do_compile function in bb file =
or I did it manually in devshell, the LD_PRELOAD is still set to =
LD_PRELOAD=3Dlibpseudo.so.
>=20
> I tried other env variable, unset is working. Any one know what's the =
reason? Is there any way I can get around with this?

you are trying to run a task outside pseudo. So you should unload pseudo =
using
export PSEUDO_UNLOAD=3D1


>=20
> Thanks,
> Yang
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_4E1AD7F5-8952-4893-99BB-F2E80343C240
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZvYi8ACgkQuwUzVZGdMxRjTgCePGdRwTAe4gJsE4RnHFr2OUuN
dGYAn06N0TdAFbyLE3heBTRlGUHzM7It
=64PC
-----END PGP SIGNATURE-----

--Apple-Mail=_4E1AD7F5-8952-4893-99BB-F2E80343C240--
