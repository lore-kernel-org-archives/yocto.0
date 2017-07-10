Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF755E00B76; Mon, 10 Jul 2017 11:02:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 614ABE00B76
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 11:02:40 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id k14so53425805pgr.0
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 11:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=aoheqRM1eiG0eP2bcfKnJAopwYqLlCM+Cryfmc3SlsQ=;
	b=vORJU3I4YEiXEUBTwpzJQ/WMeVDFPX6IB+/4MJDqcuJEKe7XHv1w6cgyOZNic7S22c
	eHf/PtCZ6j6CbeV7/tCQJSMmSLXL1gNOdxZYcB1Dq+4O2+r1PhTOFhMsNDOl8iwRqY+j
	9Ki5gfP/omik+ER9q1YYdblh4IccBgteDtxdwtci4TkBNp87yCnEd5hvyCw4DQDD8KCd
	QU+MZ/mcmRLjYHdColhSxFzaDDE13AF8i1xewIAPyU2JvPU4O3YtYvWQc0jcEJI8ZrUG
	px3IZCPXOWGRvLFkNXzMmtHMKzDdQwYBcb5baoHrFMhPZGbjfMHEsWJTTOb5mpwi5xLc
	ob1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=aoheqRM1eiG0eP2bcfKnJAopwYqLlCM+Cryfmc3SlsQ=;
	b=Llc1z+k+xZ+XpknypzzO/jBQC2oWsM2oDj8ye/He3SLh+OtPbNLZvhh7mX9ZGrM/WA
	ti6//K8r0aJ6q48xmQFh2Taa7tt5/rnOgk2k5US0q6cdJClbKdNmZ25xDPTDBrCWWH56
	mPbZbX83b8RZGu/5Ra7pc4cKsZsHcgJ6+w5CnepQPFWMLgS3a098sY3YgTRx30kL3dSH
	FgBLsXMznRyy4plgx8cVJpkzYb+gyF55rX8l1eYu3Vv2Y4Fw2Jvh2FZm+Yh+1lkw5QUq
	xLnYIlh5xq76nyP9L/tWNHfJrPFs03NqRNhHk9AdchXJ0mRtbGkcBlXX0DJROegHfBgj
	BSlA==
X-Gm-Message-State: AIVw112k6z4se0fLuewHBFiIJVLZvC1xX7Yd3hZYwwln/SFqpHOqae0/
	DQe6UCgAK18fSQEHwag=
X-Received: by 10.101.90.3 with SMTP id y3mr15705122pgs.185.1499709759980;
	Mon, 10 Jul 2017 11:02:39 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:916c:598f:a4d5:4c49?
	([2601:646:8882:b8c:916c:598f:a4d5:4c49])
	by smtp.gmail.com with ESMTPSA id
	x5sm20758739pgq.18.2017.07.10.11.02.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Jul 2017 11:02:38 -0700 (PDT)
To: Jack Kiefer <jack.c.kiefer@gmail.com>, yocto@yoctoproject.org
References: <CAJQwCK__xrOSmtex3jTp6sY9X7e6ySJJxFA3hQW3Obq=toCurQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <96e845c3-4f0b-69e6-ae3c-b2f201c33cdc@gmail.com>
Date: Mon, 10 Jul 2017 11:02:33 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <CAJQwCK__xrOSmtex3jTp6sY9X7e6ySJJxFA3hQW3Obq=toCurQ@mail.gmail.com>
Subject: Re: Openssh patch being overriden by original unpatched file
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
X-List-Received-Date: Mon, 10 Jul 2017 18:02:42 -0000
X-Groupsio-MsgNum: 36983
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="abUKteICwrPr6AObduhgSbWqmlTuOe8jR"

--abUKteICwrPr6AObduhgSbWqmlTuOe8jR
Content-Type: multipart/mixed; boundary="kbWIPnfq9Eji3kO676Eoh3ImW1hEQ2Rdl";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Jack Kiefer <jack.c.kiefer@gmail.com>, yocto@yoctoproject.org
Message-ID: <96e845c3-4f0b-69e6-ae3c-b2f201c33cdc@gmail.com>
Subject: Re: [yocto] Openssh patch being overriden by original unpatched file
References: <CAJQwCK__xrOSmtex3jTp6sY9X7e6ySJJxFA3hQW3Obq=toCurQ@mail.gmail.com>
In-Reply-To: <CAJQwCK__xrOSmtex3jTp6sY9X7e6ySJJxFA3hQW3Obq=toCurQ@mail.gmail.com>

--kbWIPnfq9Eji3kO676Eoh3ImW1hEQ2Rdl
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 7/10/17 10:48 AM, Jack Kiefer wrote:
> Howdy all,
>=20
> I've been having a bit of an interesting time trying to ship a modified=

> sshd_config file to my images using Yocto Morty. I first tried adding a=

> .bbappend to the openssh recipe in which I prepended a patch file that
> would modify sshd_config to my liking. Interestingly, Yocto would
> definitely run do_patch and presumably patch the file successfully (I
> ensured the patch was correct by manually using the patch command), but=

> somehow the patched file was still overridden by the original file in
> the final version of the image.
>=20
> I've been able to temporarily remedy this by using the .bbappend to
> simply use an entire modified sshd_config file from its FILES directory=

> rather than applying a patch.
>=20
> Is this how Yocto is supposed to behave? Is there a more correct way of=

> providing fairly version-agnostic modifications to config files like th=
is?
>=20

this file is specified in SRC_URI as a whole to be copied from recipe
area to build area

SRC_URI =3D
"http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${PV}.tar.gz=
 \
           file://sshd_config \
           file://ssh_config \
=2E..

when you want to override such cases where a conf file is provides via
the metadata on top of original sources then you can create a .bbappend
in your own layer and let bitbake parse it via adding


FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

and then put your sshd_config file in your own layer e.g under
recipes-connectivity/openssh/openssh/

This will instruct bitbake to use the config file from your overlay
also pay attention to layer priority, usually you want your own layer
to have higher priority and appear before other layers in BBPATH


> Thanks!
> Jack
>=20
>=20



--kbWIPnfq9Eji3kO676Eoh3ImW1hEQ2Rdl--

--abUKteICwrPr6AObduhgSbWqmlTuOe8jR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAlljwT4ACgkQuwUzVZGdMxRo4wCgh7SwEUshfZmXcecdMBNUpLhf
WHIAnAhdnKw6Sj5lpbUi8cgHims/ey/j
=5wdn
-----END PGP SIGNATURE-----

--abUKteICwrPr6AObduhgSbWqmlTuOe8jR--
