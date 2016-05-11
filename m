Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25508E00E67; Wed, 11 May 2016 11:05:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 402B6E00D79
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 11:05:37 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id y7so4303019pfb.0
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 11:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=dE4RMZgULsxBSmU+K98TxJHdhZNLWpln2FFon01MnM8=;
	b=Z/EhR6Aa3WRkqX8zvMWTjOjuM2DPQhO+4MUBKdlmwF/5QxDDh087VcpAM1ZpdIh9Hr
	pXtbZ0Gi2+BdC7gAmNRAjqliEnvXPovYBgh4gUngJh2kSzzg9nVZu5NWYoO2PLgEzXBv
	bRpYYgL262ykgFfApwgHKcafZLKrl8vlfW/J6djK7QIF8sfnULGt12ZSCKSTAaPa9yq+
	FwI4lPK9iihgozzbRgo/UsF0Trk/iG1RN8dmnrAvYJRjbno55IuzQJmybDu/PHqsNt6i
	qlm4fE6d4ArmMZPSc2dDRY8H7+0+2ktPjI4cC9Ma6b57id9FEM8PuKhJE25H03N85q9q
	Q9PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=dE4RMZgULsxBSmU+K98TxJHdhZNLWpln2FFon01MnM8=;
	b=Pas778oeI0rYRAJIvVNOtGqQ6MgYpuVPzccAnWjtbYjHCX4Y+/7RHWlIa3CZR8Cjtb
	QirAsE9jJCZN6UzZrRFApu9XZR1UhYq+qdDECELCRDgKZOAXBFSDFVpJJ0WMn8JqIaFO
	3CLDGUn2QHfpOaWaYBBRmRVYIX+7IZdMVE0rteGx5ONaHNUlwl9OFckXpM3BFXLVwJsv
	UUnnHQd5ZEgCk5AgC02fqO5f0B7phf3E6/naI3Z0lEfvWutnIpFKtdEGqARq3MQlgrol
	MFJfUDyOM54uPwRcwUR6Z3h+ljFwzXntf70QevKmhBnvUILxhGy0ZlRGbFEeHKxyRLxd
	u9nw==
X-Gm-Message-State: AOPr4FW+PcqI8V0vo+rovYRBXNg9lXMy5hoYAuf6moLUzRBcHq+aTtWp+uTvRx2uaGQCiw==
X-Received: by 10.98.50.67 with SMTP id y64mr7009431pfy.128.1462989937758;
	Wed, 11 May 2016 11:05:37 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:695b:c36c:8e56:a8aa?
	([2601:646:8800:5a9a:695b:c36c:8e56:a8aa])
	by smtp.gmail.com with ESMTPSA id
	64sm13750535pfk.69.2016.05.11.11.05.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 11 May 2016 11:05:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <OFCE6FE81A.96E3BD6C-ONC1257FB0.0051D8CD-C1257FB0.0052D3C5@esa-grimma.de>
Date: Wed, 11 May 2016 11:05:54 -0700
Message-Id: <B6682E9D-557A-4191-842B-C5886175EA0F@gmail.com>
References: <OFCE6FE81A.96E3BD6C-ONC1257FB0.0051D8CD-C1257FB0.0052D3C5@esa-grimma.de>
To: S.Jaritz@esa-grimma.de
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: at91 kernel module problem with includes
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
X-List-Received-Date: Wed, 11 May 2016 18:05:39 -0000
X-Groupsio-MsgNum: 29944
Content-Type: multipart/signed;
	boundary="Apple-Mail=_34E8E1A3-0C62-4357-A3B8-D005AC42AF08";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_34E8E1A3-0C62-4357-A3B8-D005AC42AF08
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A8AE98F8-1343-429C-945F-8B5A651AC5EF"

--Apple-Mail=_A8AE98F8-1343-429C-945F-8B5A651AC5EF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On May 11, 2016, at 8:04 AM, S.Jaritz@esa-grimma.de wrote:
>=20
> Hej
>=20
> I like to build a module. I am working on a SAMA5D3x Evalboard form =
Atmel. For that I use the meta-atmel recipes.
>=20
> My driver should toggle a pin. The pins are defined in the =
"mach/gpio.h". Any ideas how to configure that the atmel linux is =
creating the includes? Maybe I forgot to set some parameter at the =
local.conf?
>=20

would something like libgpio help ?

> Kind regards!
>=20
> Stefan Jaritz
>=20
>=20
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de <x-msg://12/www.esa-grimma.de>
>=20
>=20
> Gesch=E4ftsf=FChrer:
> Dipl.-Ing. J=F6rg Gaitzsch
> J=F6rg Reinker
>=20
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>=20
>=20
> Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte =
Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=
 erhalten
> haben, informieren Sie bitte sofort den Absender und l=F6schen Sie =
diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail
> ist nicht gestattet.
>=20
> This e-mail may contain confidential and/or privileged information. If =
you are
> not the intended recipient (or have received this e-mail in error) =
please
> notify the sender immediately and destroy this e-mail. Any =
unauthorized
> copying, disclosure or distribution of the material in this e-mail is =
strictly
> forbidden.--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A8AE98F8-1343-429C-945F-8B5A651AC5EF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 11, 2016, at 8:04 AM, <a =
href=3D"mailto:S.Jaritz@esa-grimma.de" =
class=3D"">S.Jaritz@esa-grimma.de</a> wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><font size=3D"2" =
face=3D"sans-serif" class=3D"">Hej </font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">I like to =
build a module. I am working
on a SAMA5D3x Evalboard form Atmel. For that I use the meta-atmel =
recipes.</font>
<br class=3D"">
<br class=3D""><font size=3D"2" face=3D"sans-serif" class=3D"">My driver =
should toggle a pin. The pins
are defined in the "mach/gpio.h". Any ideas how to configure
that the atmel linux is creating the includes? Maybe I forgot to set =
some
parameter at the local.conf?</font>
<br class=3D"">
<br class=3D""></div></blockquote><div><br class=3D""></div><div>would =
something like libgpio help ?</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><font size=3D"2" =
face=3D"sans-serif" class=3D"">Kind regards!<br class=3D"">
<br class=3D"">
Stefan Jaritz<br class=3D"">
<br class=3D"">
<br class=3D"">
------------------------------------------------------------<br =
class=3D"">
ESA Elektroschaltanlagen Grimma GmbH<br class=3D"">
Broner Ring 30<br class=3D"">
04668 Grimma<br class=3D"">
Telefon: +49 3437 9211 176<br class=3D"">
Telefax: +49 3437 9211 26<br class=3D"">
E-Mail: <a href=3D"mailto:s.jaritz@esa-grimma.de" =
class=3D"">s.jaritz@esa-grimma.de</a><br class=3D"">
Internet: </font><a href=3D"x-msg://12/www.esa-grimma.de" class=3D""><font=
 size=3D"2" face=3D"sans-serif" =
class=3D"">www.esa-grimma.de</font></a><font size=3D"2" =
face=3D"sans-serif" class=3D""><br class=3D"">
<br class=3D"">
<br class=3D"">
Gesch=E4ftsf=FChrer:<br class=3D"">
Dipl.-Ing. J=F6rg Gaitzsch<br class=3D"">
J=F6rg Reinker<br class=3D"">
<br class=3D"">
Sitz der Gesellschaft: Grimma<br class=3D"">
Ust.-ID: DE 141784437<br class=3D"">
Amtsgericht: Leipzig, HRB 5159<br class=3D"">
Steuernummer: 238/108/00755<br class=3D"">
<br class=3D"">
<br class=3D"">
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte =
Informationen.
<br class=3D"">
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br class=3D"">
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
<br class=3D"">
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br class=3D"">
ist nicht gestattet.<br class=3D"">
<br class=3D"">
This e-mail may contain confidential and/or privileged information. If
you are <br class=3D"">
not the intended recipient (or have received this e-mail in error) =
please
<br class=3D"">
notify the sender immediately and destroy this e-mail. Any unauthorized
<br class=3D"">
copying, disclosure or distribution of the material in this e-mail is =
strictly
<br class=3D"">
forbidden.</font>-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_A8AE98F8-1343-429C-945F-8B5A651AC5EF--

--Apple-Mail=_34E8E1A3-0C62-4357-A3B8-D005AC42AF08
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlczdIYACgkQuwUzVZGdMxQOLwCfTw/5nL3kTUhcNxV/qQ7N3Re2
AREAni6jF0tBmLSyJInZYVEYUok69+F3
=PpxH
-----END PGP SIGNATURE-----

--Apple-Mail=_34E8E1A3-0C62-4357-A3B8-D005AC42AF08--
