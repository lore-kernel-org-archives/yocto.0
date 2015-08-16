Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B79D6E00A86; Sun, 16 Aug 2015 01:12:26 -0700 (PDT)
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
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D66E00A7F
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 01:12:23 -0700 (PDT)
Received: by pdbfa8 with SMTP id fa8so44820193pdb.1
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 01:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=IEJ6RCSNsHvNBVbPRXpJaPVpKpFMneULZSKOxkkEnVw=;
	b=lD0AA5BhzsSq3c3yqOuN81ycwPmpk+gb6axyfWFCt269EEo0flgr8ou/bGGt/DqyHT
	9gQ7t9TN/pwx3iTZsY8RVI92pvraGQzRhMVHTiPdspMBDrSGCwwdEG7G5a5LjzamglAg
	BGEqq2wbiKluD2ZNLe3xpkDVWiZuJ3DZRY30WNkBo9atD8zeKn7Gi0QiqgRomABT20yA
	LDSJZww8j+QZOPycFL7IIZj84qpm0xTcPQmQIT4nwAlM0P+mkIykS7DF+Mzj2+7Nn+Xq
	JPvU1cZde2i+DmfmTM+9f7vGUNU9ViC+365Cw/okT/aeR1rCNSqSWkDVPgxWASriHpWf
	vcZQ==
X-Received: by 10.70.41.100 with SMTP id e4mr105725773pdl.169.1439712742782;
	Sun, 16 Aug 2015 01:12:22 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:f5b7:823c:7f00:1ba7?
	([2601:646:8601:4580:f5b7:823c:7f00:1ba7])
	by smtp.gmail.com with ESMTPSA id
	hs11sm10788038pdb.12.2015.08.16.01.12.21
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 16 Aug 2015 01:12:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1434640961-16848-2-git-send-email-siva.borra@enea.com>
Date: Sun, 16 Aug 2015 01:12:17 -0700
Message-Id: <A075AD98-8F2B-4C8C-BA97-277DD8839AC3@gmail.com>
References: <1434640961-16848-1-git-send-email-siva.borra@enea.com>
	<1434640961-16848-2-git-send-email-siva.borra@enea.com>
To: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
X-Mailer: Apple Mail (2.2104)
Cc: issues@enea.com, Yocto discussion list <yocto@yoctoproject.org>,
	linux@list.enea.se
Subject: Re: [PATCHv2 1/1] Disable parallel build for umip.
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
X-List-Received-Date: Sun, 16 Aug 2015 08:12:26 -0000
X-Groupsio-MsgNum: 26137
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DD40B0C5-7311-4926-AB06-C28A59411F19";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_DD40B0C5-7311-4926-AB06-C28A59411F19
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jun 23, 2015, at 7:00 AM, Alexandru.Vaduva =
<Alexandru.Vaduva@enea.com> wrote:
>=20
> From: Siva Borra <siva.borra@enea.com>
>=20
> umip build fails due to parallel build order issue,
> hence disabling the same.

which stage does it fail ? if its in install stage then you can disable
it just for install task by
PARALLEL_MAKEINST =3D =E2=80=9C=E2=80=9D and let compile task still run =
in parallel. Additionally
its better to submit such a patch to recipe proper ( meta-oe in this =
case )
instead of a bbappend in different layers


>=20
> [LXCR-4977]
>=20
> Signed-off-by: Siva Borra <siva.borra@enea.com>
> ---
> meta-cgl-common/recipes-extended/umip/umip%.bbappend | 1 +
> 1 file changed, 1 insertion(+)
> create mode 100644 =
meta-cgl-common/recipes-extended/umip/umip%.bbappend
>=20
> diff --git a/meta-cgl-common/recipes-extended/umip/umip%.bbappend =
b/meta-cgl-common/recipes-extended/umip/umip%.bbappend
> new file mode 100644
> index 0000000..2858472
> --- /dev/null
> +++ b/meta-cgl-common/recipes-extended/umip/umip%.bbappend
> @@ -0,0 +1 @@
> +PARALLEL_MAKE =3D ""
> --
> 1.9.1
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_DD40B0C5-7311-4926-AB06-C28A59411F19
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXQReUACgkQuwUzVZGdMxTD3gCdG3g1rzjqaienBmV6WnfDDrN+
FaQAnA3gHG65n/SWh1yCqfYG7f6KrVAw
=9wcI
-----END PGP SIGNATURE-----

--Apple-Mail=_DD40B0C5-7311-4926-AB06-C28A59411F19--
