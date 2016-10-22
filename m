Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C224E0099B; Sat, 22 Oct 2016 09:34:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
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
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46BA4E00510
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:33:58 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i85so11700143pfa.0
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=/f9VqTT/zA5ewuqfBO9RcQC/VR/PmHHU3NWHAttV9FQ=;
	b=AGeKXqOIGPog/fQ9DZUP5YvBbpLWpqxaq8BI6jxNncIxCLqF1mTthtLi6k1tnkHVGe
	pNysOOpxrnd2ROX0tYK4kNCW+h+4cTb0czaKvY8pEQxXxcBxUKp37KfzpMmRyp9lVugZ
	rT53nQB0o/kdcSOFwwFjiWaLjqDpzQVvjtRn5k0DZWPMT/PVLiGVCyWD2gPjSfpeboDd
	ccHvR/IcU8xiuMwd5RTo7dFEiRJGf6x/lk1a2txTIGCuomDyHwC42tsTSsAAFV9bLvi5
	RDVRmOLtleXiAS8OWw2wWFdbcuw2KDXRgCIU+vpLJpQKhMCXhHwD7+BXmvsOf/uGwwP/
	bLkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=/f9VqTT/zA5ewuqfBO9RcQC/VR/PmHHU3NWHAttV9FQ=;
	b=hr9mve9qFZ4fu3udDlIqz+i4ghTkHJGio6ot042PG7BksYlUWEE3Q1AobrseLjjXN9
	2RHQtA5PfeoIqFHLmMiJAyhu/aucIYkBcA3c4DaethuoY5RT12uTG0Mm+gNr/P7GLa7T
	RLiAlKY5nfP47w7ijVTufpwE/KntljX3Cv0Z8D/ypN3WZqCuoWXCTghIHeysqepL1eps
	2YRkkbCi9GGYCC4KVzzLhIOmfKxR9x2ggfqZx2hFayY5MrcMw3dNFxn7mfpzssO3AENR
	4SL6cLZ74JgLdU9F10ki32A3M7esenV45y/5Z5bKSUYnBW2SSnW4xjzfamX6xAsW4Qgz
	uIyA==
X-Gm-Message-State: ABUngvfFM5a5yaW1KmgcM8Ss7/vdw3HRn29JToocbQ74lJ8xZbwmKridWbd9GJ2KAtFelw==
X-Received: by 10.98.73.203 with SMTP id r72mr12725234pfi.4.1477154038545;
	Sat, 22 Oct 2016 09:33:58 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:69a1:6763:cf15:8ed8?
	([2601:646:8882:b8c:69a1:6763:cf15:8ed8])
	by smtp.gmail.com with ESMTPSA id
	m25sm13472622pfg.14.2016.10.22.09.33.57
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 09:33:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACfi_Z0W3pBTf-ByqQdeov=_+w5ePTQn4a3R0ou5MGgmTU3mRA@mail.gmail.com>
Date: Sat, 22 Oct 2016 09:33:57 -0700
Message-Id: <CA000DDA-692B-4BDC-9441-1CDFD79FA949@gmail.com>
References: <CACfi_Z0W3pBTf-ByqQdeov=_+w5ePTQn4a3R0ou5MGgmTU3mRA@mail.gmail.com>
To: Davis Roman <davis.roman84@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: if user space application compiles with a static library, does it need to be included in the yocto build ?
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
X-List-Received-Date: Sat, 22 Oct 2016 16:34:00 -0000
X-Groupsio-MsgNum: 32575
Content-Type: multipart/signed;
	boundary="Apple-Mail=_500683CA-BEC2-4E81-83B2-F3BEBF7FA6BD";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_500683CA-BEC2-4E81-83B2-F3BEBF7FA6BD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 21, 2016, at 3:30 PM, Davis Roman <davis.roman84@gmail.com> =
wrote:
>=20
> Hello Yocto Community,
>=20
> As much as I like to advocate for code reuse and minimizing code =
bloat, there is one instance where our user space application will be =
compiled with a statically linked library.
>=20
> We don't do any development on our target boards themselves so I'm =
starting to think that I don't need to include this library at all in my =
yocto build ( either in the toolchain or rootfs )
>=20
> Is this a correct assumption ?

yes.

>=20
> Any advice would be greatly appreciated.
>=20
> Thank you,
>=20
> Davis
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_500683CA-BEC2-4E81-83B2-F3BEBF7FA6BD
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgLlPUACgkQuwUzVZGdMxSARQCeJEPXSLZawgxg78fPQB2o/b0j
yyYAoIHVrmEnpPlTKZRUABUvdmQpP7wV
=Pmf9
-----END PGP SIGNATURE-----

--Apple-Mail=_500683CA-BEC2-4E81-83B2-F3BEBF7FA6BD--
