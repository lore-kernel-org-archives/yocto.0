Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 641C2E007B5; Mon,  1 Feb 2016 10:32:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
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
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCA78E0073D
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 10:32:29 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id cy9so86304649pac.0
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 10:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=DKph4cWeJP0hp6tjK9aDA3WD+jA/2iLa/374lA0Jing=;
	b=piCWGxMlMS8zVPy49Ge8gpoSkQVNZ9PlpyeSsQj6cYx1uVJuktADrWzK4zHqeFMJwQ
	JH+4poNqlOURL1Fhtm+eYFQWbpl3Q6Laowu5fyy6Kw122hAjOalSrJs9e3NbrATr0bWX
	Lai/QOExIrelmBY1VCfPB1I9Ac6lddJ5hWuXd7e1xwa5HxZGf5alMyRJSjRAcXkPhedB
	KdQbyah5jiVvrXQuVHmx1VlJeEy2SPqg9t2WdfiJgvkV6V0jzfTj4Qiw4dT1wlF8rEbV
	05H2FguSBw4ea2CndhFsRoYFA7zpBS8Zt55pk97Nbls4aUABoJ27k6Xw0Z335eadV1NK
	qx8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=DKph4cWeJP0hp6tjK9aDA3WD+jA/2iLa/374lA0Jing=;
	b=d3rXU+IfnayA4FLbgjrVPzI9kr8j3YQ48RT4TyUeKwIVPSgtlMTByocf8yqBFYVGuJ
	uDF0kw2l4Xiqdj/wdGh2yfrRmhuyCA5gdKanmH72WdC5eDzDB0zDrVdmXVEKcULJ1uwp
	JAc/G7t2NqaNAkZGEaFyp1vF4VFtQ+YxMS6YiZCljwRspHW80LWyNdl9REP5ViljkBmK
	fm98IBSvubWjhoj2qHzqDctycQvk9w5GGDMaRA0MK+nXaEc7U2zJn015gzNMahMEeSr3
	7r9OtOateCdwRW29/4xI0wF/X2yIzWnO2dVsFT8OZAydynmWaXMQallAVTX9IiGxgDaN
	FBVQ==
X-Gm-Message-State: AG10YOTJSPJ8g/nWPFL6jxxDgAwZi5jU80NElJ7Cxp/l395W836yVQD3l7a8wQKux67v4g==
X-Received: by 10.67.7.200 with SMTP id de8mr40586936pad.28.1454351549622;
	Mon, 01 Feb 2016 10:32:29 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:74e3:8760:72f:db60?
	([2601:646:8802:5d5c:74e3:8760:72f:db60])
	by smtp.gmail.com with ESMTPSA id
	o73sm33991715pfa.37.2016.02.01.10.32.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 01 Feb 2016 10:32:28 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <23AB3A7A-72F1-4614-9E60-5277575EF085@irdeto.com>
Date: Mon, 1 Feb 2016 10:32:24 -0800
Message-Id: <92F590AF-E6B7-4D9D-9A8C-D04D8ED03FFC@gmail.com>
References: <23AB3A7A-72F1-4614-9E60-5277575EF085@irdeto.com>
To: Ben Gardiner <ben.gardiner@irdeto.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security-rockwell] Introduction of a new OE layer: help in hardening your Yocto daisy built systems
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
X-List-Received-Date: Mon, 01 Feb 2016 18:32:33 -0000
X-Groupsio-MsgNum: 28186
Content-Type: multipart/signed;
	boundary="Apple-Mail=_47FD1F18-42AB-470C-AEB1-3C5588FC8AA9";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_47FD1F18-42AB-470C-AEB1-3C5588FC8AA9
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_66A3DD0F-13C0-4265-8A1D-7F3902744106"

--Apple-Mail=_66A3DD0F-13C0-4265-8A1D-7F3902744106
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Feb 1, 2016, at 8:46 AM, Ben Gardiner <ben.gardiner@irdeto.com> =
wrote:
>=20
> We would like to introduce a new layer: meta-security-rockwell
>=20
> We=E2=80=99ve built on other excellent projects to realize this layer =
(so far) and have relied on help from many of you on IRC. Thank you.
>=20
> Our goal is to support the daisy release of Yocto and to (eventually) =
require explicit skipping of warnings to get automated build systems =
failing on new security warnings. It=E2=80=99s a work in progress and =
we=E2=80=99re not there yet. We would welcome the input of this =
community of experts.
>=20
> For more details on the layer=E2=80=99s contents please see the repo =
README.
>=20
> OE layer: =
http://layers.openembedded.org/layerindex/branch/master/layer/meta-securit=
y-rockwell/ =
<http://layers.openembedded.org/layerindex/branch/master/layer/meta-securi=
ty-rockwell/>
> Repo: https://github.com/IrdetoServices/meta-security-rockwell =
<https://github.com/IrdetoServices/meta-security-rockwell>
Thanks Ben, what would interest folks here as well is support for latest =
stable release ( jethro) and master

>=20
> Best Regards,
> Ben Gardiner
>=20
> Irdeto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_66A3DD0F-13C0-4265-8A1D-7F3902744106
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 1, 2016, at 8:46 AM, Ben Gardiner &lt;<a =
href=3D"mailto:ben.gardiner@irdeto.com" =
class=3D"">ben.gardiner@irdeto.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D"">

<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D"">
We would like to introduce a new layer: meta-security-rockwell
<div class=3D""><br class=3D"">
</div>
<div class=3D"">We=E2=80=99ve built on other excellent projects to =
realize this layer (so far) and have relied on help from many of you on =
IRC. Thank you.</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Our goal is to support the daisy release of Yocto and to =
(eventually) require explicit skipping of warnings to get automated =
build systems failing on new security warnings. It=E2=80=99s a work in =
progress and we=E2=80=99re not there yet. We would welcome the
 input of this community of experts.</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">For more details on the layer=E2=80=99s contents please =
see the repo README.</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">OE layer:&nbsp;<a =
href=3D"http://layers.openembedded.org/layerindex/branch/master/layer/meta=
-security-rockwell/" =
class=3D"">http://layers.openembedded.org/layerindex/branch/master/layer/m=
eta-security-rockwell/</a></div>
<div class=3D"">Repo:&nbsp;<a =
href=3D"https://github.com/IrdetoServices/meta-security-rockwell" =
class=3D"">https://github.com/IrdetoServices/meta-security-rockwell</a></d=
iv></div></div></blockquote><div><br class=3D""></div><div>Thanks Ben, =
what would interest folks here as well is support for latest stable =
release ( jethro) and master</div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D""><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Best Regards,</div>
<div class=3D"">Ben Gardiner</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Irdeto</div>
</div>

-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_66A3DD0F-13C0-4265-8A1D-7F3902744106--

--Apple-Mail=_47FD1F18-42AB-470C-AEB1-3C5588FC8AA9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlavpLsACgkQuwUzVZGdMxTvIgCfZUM7tDGTVC1O3pPenzZrCXpM
/GkAn3Jla3WnF2UYnOFe+AgwL3hzGfsm
=qES2
-----END PGP SIGNATURE-----

--Apple-Mail=_47FD1F18-42AB-470C-AEB1-3C5588FC8AA9--
