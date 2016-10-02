Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FB4BE008F3; Sun,  2 Oct 2016 16:07:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.43 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CA6EE00874
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 16:07:09 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id cd13so51672392pac.0
	for <yocto@yoctoproject.org>; Sun, 02 Oct 2016 16:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=qKCKaHjXDJbVv31WbXkL9Ktv8jF24pH67YXvhlnfzXQ=;
	b=B3K79mkovL4GmKS86scDQST+Ucv6IJYViK2ur/dD4DAYp/PMNKtPr/46VAGHOZeETY
	JrB97qael2AnNbR+eacLrwiEOJ5zqjyn8HlCc5SAYXS08M3I02Gh0409ugwdSCNy5kvL
	H2Q49qhsX8zALhjMDkpjR3B47XrJd+YnD9Pki02iK1BEahabaOjGJPyTnZ9FuiliiL+I
	mpbeMw1PLkPKHqrsblZde0If3lcGKPHZ7ZxpNMNkiDM50JfywkE6+6pnTopsUXpb+hdR
	D2kANefIIX0XJJLQyTSx35K2wrctTGj9kjuIHcgB7SOLqrYOncJEpFvyfFNch03cv6Jn
	JMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=qKCKaHjXDJbVv31WbXkL9Ktv8jF24pH67YXvhlnfzXQ=;
	b=JAqy7UFXFePykxuFmHgoifHZEmJ4e6lSHbNGjIjneYLmZZkpK8zZbBYl4OPrBECKeM
	lDs/qrQKvuOyP27iYfmzrjiBs8BT9lLRCF4bEXhVX5oqVWmvTIKQC4N5dCYPWTyuDy+5
	QYauGZzm9zo0k/F2WFCuJE7DZ7FsvMY4loHnklEO9p3utB+TQnWPA9sZwEl6pRHwC268
	kIED9JynCfSbJdcIs8+Gym98U8G2/NjIMqgdZAtHek0o9isKD15nLOerL9KRF+hj6aNB
	Ze46rOwBHb24M3y5EVAW4M1aaHCYSXUV2pyF2lCZNIE6o3dY7odmrSqV/jEo/QDtPyr0
	OCJA==
X-Gm-Message-State: AA6/9Rmu5oP/bU14McBdaoQ2oM48GBzMtt/ys5jtradvMvMuoXlnlsW5mDYZj8Upj8sPrw==
X-Received: by 10.67.10.14 with SMTP id dw14mr32647355pad.165.1475449628878;
	Sun, 02 Oct 2016 16:07:08 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:4b8:204d:45de:e844?
	([2601:646:8882:b8c:4b8:204d:45de:e844])
	by smtp.gmail.com with ESMTPSA id
	w63sm42205271pfk.43.2016.10.02.16.07.07
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 02 Oct 2016 16:07:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5c1591659f7bb76cdb3a1887b0cc42df@iwavesystems.com>
Date: Sun, 2 Oct 2016 16:06:58 -0700
Message-Id: <5212690D-56EB-4D19-A9DB-B03B42C5A928@gmail.com>
References: <5c1591659f7bb76cdb3a1887b0cc42df@iwavesystems.com>
To: ambika@iwavesystems.com
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Adding mysql in bitbaking meta-toolchain-qt5
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
X-List-Received-Date: Sun, 02 Oct 2016 23:07:13 -0000
X-Groupsio-MsgNum: 32157
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B5A490A4-D8DF-4E42-A6F4-4E92DB4E2545";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B5A490A4-D8DF-4E42-A6F4-4E92DB4E2545
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3F80565F-8E7F-4726-9E0E-CC7A118DA126"

--Apple-Mail=_3F80565F-8E7F-4726-9E0E-CC7A118DA126
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 14, 2016, at 12:54 AM, ambika@iwavesystems.com wrote:
>=20
>=20
> Hello,
>=20
> I=E2=80=99m doing bitbake of meta-toolchain-qt5. When trying to use =
mysql, not able to find it in include/ directory.
>=20
> mysql sources is located in the below path in my yocto setup,
>=20
> sources/meta-openembedded/meta-oe/recipes-support/mysql
>=20
> Tried to include mysql by adding the below to conf/local.conf under =
build directory but could not able to locate mysql under include/.
> (Also not sure whether I=E2=80=99m doing it right.)
>=20
> IMAGE_INSTALL_append =3D =E2=80=9Dmysql=E2=80=9D

if you are not using populate_sdk task to generate SDK then this wont be =
sufficient you have to append it to
TOOLCHAIN_TARGET_TASK

>=20
> Can anyone please let me know the procedure to include mysql to the =
meta-toolchain-qt5.
>=20
> Thanks in Advance.
>=20
> Regards,
> Ambika.
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_3F80565F-8E7F-4726-9E0E-CC7A118DA126
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Sep 14, 2016, at 12:54 AM, <a =
href=3D"mailto:ambika@iwavesystems.com" =
class=3D"">ambika@iwavesystems.com</a> wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8" =
class=3D""><div style=3D"font-size: 10pt; font-family: =
Verdana,Geneva,sans-serif" class=3D""><div class=3D"">&nbsp;<br =
class=3D"webkit-block-placeholder"></div>
<div dir=3D"ltr" class=3D"">
<div style=3D"font-size: 12pt; font-family: Calibri;" class=3D"">
<div class=3D"">Hello,</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">I=E2=80=99m doing bitbake of meta-toolchain-qt5. When =
trying to use mysql, not able to find it in include/ directory.</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">mysql sources is located in the below path in my yocto =
setup,</div>
<div class=3D"">&nbsp;</div>
<div class=3D""><span style=3D"font-family: Arial;" class=3D""><span =
style=3D"color: #1f497d;" class=3D""><span class=3D""><span =
style=3D"font-family: Calibri;" class=3D""><span style=3D"" =
class=3D"">sources/meta-openembedded/meta-oe/recipes-support/mysql</span><=
/span></span></span></span><span style=3D"font-family: Arial;" =
class=3D""><span style=3D"color: #1f497d;" class=3D""><span =
style=3D"font-size: 10pt;" class=3D"">&nbsp;</span></span></span></div>
<div class=3D"">&nbsp;</div>
<div class=3D"">Tried to include mysql by adding the below to =
conf/local.conf under build directory but could not able to locate mysql =
under include/.</div>
<div class=3D"">(Also not sure whether I=E2=80=99m doing it =
right.)</div>
<div class=3D"">&nbsp;</div>
<div class=3D""><span style=3D"font-family: Arial;" class=3D""><span =
style=3D"color: #1f497d;" class=3D"">IMAGE_INSTALL_append =3D =
</span></span><span style=3D"font-family: Arial;" class=3D""><span =
style=3D"font-size: 10pt; color: #1f497d;" class=3D"">=E2=80=9Dmysql=E2=80=
=9D </span></span></div></div></div></div></div></blockquote><div><br =
class=3D""></div><div>if you are not using populate_sdk task to generate =
SDK then this wont be sufficient you have to append it =
to</div><div>TOOLCHAIN_TARGET_TASK</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div style=3D"font-size: 10pt; =
font-family: Verdana,Geneva,sans-serif" class=3D""><div dir=3D"ltr" =
class=3D""><div style=3D"font-size: 12pt; font-family: Calibri;" =
class=3D"">
<div class=3D""><span style=3D"color: #1f497d; font-family: Arial; =
font-size: small;" class=3D""></span>&nbsp;</div>
<div class=3D""><span style=3D"" class=3D"">Can anyone please let me =
know the procedure to include mysql to the =
meta-toolchain-qt5.</span></div>
<div class=3D"">&nbsp;</div>
<div class=3D"">Thanks in Advance.</div>
<div class=3D"">&nbsp;</div>
<div class=3D"">Regards,</div>
<div class=3D"">Ambika.</div>
</div>
</div><div class=3D"">&nbsp;<br class=3D"webkit-block-placeholder"></div>
<div class=3D"">&nbsp;</div>
</div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_3F80565F-8E7F-4726-9E0E-CC7A118DA126--

--Apple-Mail=_B5A490A4-D8DF-4E42-A6F4-4E92DB4E2545
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfxkxsACgkQuwUzVZGdMxSD4ACghNRRUq9icB0VIrYBZfAnVT32
C8oAn2K9QZDvDSRHRmTTCPF0CJczSg4a
=CVTg
-----END PGP SIGNATURE-----

--Apple-Mail=_B5A490A4-D8DF-4E42-A6F4-4E92DB4E2545--
