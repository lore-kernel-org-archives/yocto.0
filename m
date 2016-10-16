Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6609E00C43; Sun, 16 Oct 2016 11:24:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D94E00C38
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 11:24:35 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id e6so69573953pfk.3
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 11:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=QXSnABtnUyfN66keohbK8vJjGilai2YEdbCwI1N/7fs=;
	b=nLbyMy3Wj0B5u4W9yOzXrWE//XxgS05bufv6aw+5zGGbw5XGTChgrra1ZtQBXlR558
	hxQFuYSJslL/GI0jwPfOWc6fyE3jESscR3uimdqoLGJDPcj8kGQIXAO9lIhfzCU9tiFF
	ECISY603AgJ1RMlquZeIGcqL8/gQA5/Er+YQ8g4q262OZTP+/6BrCo62c+tg6z8o0Ri0
	ogDVWqZaRHArvuU84a+bbHA2KtXhHBZsc1kM33ekjSXVCvh1OBwUklSjxQQst+pI4mmO
	bZD7QIVrMFDCis/Si8GTSCT7n9UlaNhDrP3yMBeoLNAASvut4UHAwitjrfFQDYCfarzv
	ip3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=QXSnABtnUyfN66keohbK8vJjGilai2YEdbCwI1N/7fs=;
	b=Asamj70vmSiTKzE3+EY5KSzxHerN0W6kn6eK5EXfBAZFq1LzALGtYjK0hQvgqi1LMD
	ZepWt0KsXxZ9MTPJRvhoSpak+fB5KHlhx9WTZtfs5ZH0X/of16uLDb9OdUQh8p8j1dD7
	n2DT4qn9cOJPBkOl+i3kErTyoUursLPhMi+GY+kZhTK5K5Uq7o+48t6v+9yxKOhP9EHG
	OxLSTvVQTVx4tnx85XVeswCWJS5gl5hRrRuHupooENMSUp0hLZNCDAHclH55hMvmytSw
	y4ENmh8BLO8aeNIa3dvNNnemFBw/IlWJEvfudilgIVmRvuaU5ibcot9ckhdWyl7dI+De
	HoBQ==
X-Gm-Message-State: AA6/9Rmwa/r/Quj9/TP1+0IDdJebrcMg48npPtXxuZM/QeghzLE/j6uDEKxK8Awz1j1h+A==
X-Received: by 10.98.159.70 with SMTP id g67mr32401496pfe.62.1476642275290;
	Sun, 16 Oct 2016 11:24:35 -0700 (PDT)
Received: from ?IPv6:2600:1010:b026:70df:d54d:70d9:9262:3840?
	([2600:1010:b026:70df:d54d:70d9:9262:3840])
	by smtp.gmail.com with ESMTPSA id
	b83sm42102964pfl.41.2016.10.16.11.24.33
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 16 Oct 2016 11:24:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFq4t4gDKfnjPJi_sDTa_Dyd_HcfDafrKnJKggmQpqG0orPD0w@mail.gmail.com>
Date: Sun, 16 Oct 2016 11:24:28 -0700
Message-Id: <E5667198-80F0-4A62-B2B1-B053CB2FA46F@gmail.com>
References: <CAFq4t4gDKfnjPJi_sDTa_Dyd_HcfDafrKnJKggmQpqG0orPD0w@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Resizing root flash partition/filesystem on first boot
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
X-List-Received-Date: Sun, 16 Oct 2016 18:24:37 -0000
X-Groupsio-MsgNum: 32432
Content-Type: multipart/signed;
	boundary="Apple-Mail=_65A3FF2C-292C-4720-8CF2-F101AABD3163";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_65A3FF2C-292C-4720-8CF2-F101AABD3163
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BDA31EBD-31E7-4FF7-8C71-D74AAD40933D"

--Apple-Mail=_BDA31EBD-31E7-4FF7-8C71-D74AAD40933D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 12, 2016, at 11:13 PM, Peter Balazovic =
<balazovic.peter@gmail.com> wrote:
>=20
> Hello Jason,
>=20
> I'm interested in your code + BitBake recipe to be able to =
automatically resize on first boot.

Take a look at 96boards layer there is a recipe as well as systemd =
service file that will be packaged into image

=
https://github.com/96boards/meta-96boards/blob/master/recipes-bsp/96boards=
-tools/96boards-tools_0.7.bb =
<https://github.com/96boards/meta-96boards/blob/master/recipes-bsp/96board=
s-tools/96boards-tools_0.7.bb>


>=20
> Thank you.
> Peter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_BDA31EBD-31E7-4FF7-8C71-D74AAD40933D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 12, 2016, at 11:13 PM, Peter Balazovic &lt;<a =
href=3D"mailto:balazovic.peter@gmail.com" =
class=3D"">balazovic.peter@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Hello Jason,<div class=3D""><br class=3D""></div><div =
class=3D"">I'm interested in your code<span style=3D"white-space: =
pre-wrap;" class=3D""> + BitBake recipe to be able to </span><i =
style=3D"white-space: pre-wrap;" class=3D"">automatically resize on =
first boot</i><span style=3D"white-space: pre-wrap;" =
class=3D"">.</span></div></div></div></blockquote><div><br =
class=3D""></div><div>Take a look at 96boards layer there is a recipe as =
well as systemd service file that will be packaged into =
image</div><div><br class=3D""></div><div><a =
href=3D"https://github.com/96boards/meta-96boards/blob/master/recipes-bsp/=
96boards-tools/96boards-tools_0.7.bb" =
class=3D"">https://github.com/96boards/meta-96boards/blob/master/recipes-b=
sp/96boards-tools/96boards-tools_0.7.bb</a></div><div><br =
class=3D""></div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><span =
style=3D"white-space: pre-wrap;" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"white-space: =
pre-wrap;" class=3D"">Thank you.</span></div><div class=3D""><span =
style=3D"white-space: pre-wrap;" class=3D"">Peter</span></div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_BDA31EBD-31E7-4FF7-8C71-D74AAD40933D--

--Apple-Mail=_65A3FF2C-292C-4720-8CF2-F101AABD3163
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgDxeAACgkQuwUzVZGdMxSiRgCfaGlQgnh8RaBH55EpClSGRjwT
yaUAnj7Hr/I5wr+nyZq2/nLM5kUilKeW
=1AGi
-----END PGP SIGNATURE-----

--Apple-Mail=_65A3FF2C-292C-4720-8CF2-F101AABD3163--
