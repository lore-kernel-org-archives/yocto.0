Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EE8BE009DA; Mon, 31 Oct 2016 09:54:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D15E8E00848
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:54:29 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id y68so3323492pfb.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=YXBpKTJrw2R6zIad4eKg5oSW/bHPKCpsIfJSm/7tSUg=;
	b=x2TH6vAZG0MvMRug/Mow7ToK9ge4bINndTsmEWmnuFrhP2EtIRTV4jF5trddarfq2s
	yPfK89I9yPSYmU5Uv36l8UhrxSqAPISdqAQXAn/6+A9KCx/GUAHIaRVYhajnQJyyZpMq
	DVz2AMBrVKuXnVHUfLF1fZxw5sLLfqz0aCsMxj5LuEuLdcj+04wOwlKDMEkYG0A8tf/i
	Lmnko4niQIOrQOjXE/MArAp83G6xCjwQ7QJjrZi72TTDNqdGcVv38XxEnNfzkRkrk03u
	u9Jg8W+f2m3CgAAO91kQLV8Y1UqJQkXkp1s2ve9ZaGaLDKLGB5o3uXn8u+nEopzwnf9U
	h3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=YXBpKTJrw2R6zIad4eKg5oSW/bHPKCpsIfJSm/7tSUg=;
	b=Rf4L+bhZWSyeqhSew5J3Fm38jHcyJw3BZZcv/2pLcz8HS/0/fLrnP7mgnzbNcWkg6I
	e5A7BAeotRgwgaSHca1Zuprp8kuD7pHh7vHtlYwxGGcfzOsxAp30FrcesJFrdcFmjDSm
	/Xw+mqPK043GDbh5zLE6e5ggE32eozt00TItXQuOCnZ/7FV8GsoURVL7hV0yCyborLNu
	n5MUUouTYMt9rtQKJmBWjIjMkeVTcUxmCX6sxGEWOZy/tDdQTfPoK4kZ8SR/VHGjs/zg
	NKOqIgZAymw5UmwEDoUXCdDcK9N4qXcPgggrzyLHW0orS5ZaeAsjGgSSLzu0hbhvrd2w
	tFvA==
X-Gm-Message-State: ABUngvdvEKDSzhvYm2JfWQpv/7YYJKQYJmzOgqaZor79pPazAL0+vJJLSwLIKMBeQosNTg==
X-Received: by 10.99.112.72 with SMTP id a8mr42371507pgn.43.1477932869141;
	Mon, 31 Oct 2016 09:54:29 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:793b:10a4:267d:c6fc?
	([2601:646:8882:b8c:793b:10a4:267d:c6fc])
	by smtp.gmail.com with ESMTPSA id
	188sm36818171pfd.9.2016.10.31.09.54.28
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 09:54:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1477931993-21342-1-git-send-email-andrei@gherzan.ro>
Date: Mon, 31 Oct 2016 09:54:26 -0700
Message-Id: <C39CDB78-6CA7-4E5D-AC34-DFDF51E568A9@gmail.com>
References: <1477931993-21342-1-git-send-email-andrei@gherzan.ro>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] linux-raspberrypi: Update to 4.8.4
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
X-List-Received-Date: Mon, 31 Oct 2016 16:54:46 -0000
X-Groupsio-MsgNum: 32708
Content-Type: multipart/signed;
	boundary="Apple-Mail=_517FC16C-9E38-4742-A0EC-57026367DD1C";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_517FC16C-9E38-4742-A0EC-57026367DD1C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Andrei

Sent a series which includes upgrade for 4.8

> On Oct 31, 2016, at 9:39 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
> recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> index 7934747..528cfef 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> @@ -1,8 +1,8 @@
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>=20
> -LINUX_VERSION ?=3D "4.8.2"
> +LINUX_VERSION ?=3D "4.8.4"
>=20
> -SRCREV =3D "0105b0ea92b1614ac00329a530da940053e64a4a"
> +SRCREV =3D "d8f7c2da3d33ea4fb4f67411badad374b1160b44"
> SRC_URI =3D =
"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.8.y =
\
> "
> require linux-raspberrypi.inc
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_517FC16C-9E38-4742-A0EC-57026367DD1C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgXd0IACgkQuwUzVZGdMxQvdQCfVA0kEFMEvIjsg2NY7hkZFDr1
sN8Ani+OCxUL5JTl4gB/YuRHERxvEIyM
=PYhK
-----END PGP SIGNATURE-----

--Apple-Mail=_517FC16C-9E38-4742-A0EC-57026367DD1C--
