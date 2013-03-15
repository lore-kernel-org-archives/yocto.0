Return-Path: <raj.khem@gmail.com>
Received: from mail-yh0-f52.google.com (mail-yh0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDF88E00429
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:31:46 -0700 (PDT)
Received: by mail-yh0-f52.google.com with SMTP id q46so536683yhf.25
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=4MIuykKpBh86bk/xdosTbmOGQgTTnPoP/wqvPk1T9KA=;
	b=mRdVDJDs/NkpWsbgE+hT2i7EP0hQ1ZN9JEn1HWQ0QyMc7OJFShNlVkxusGvCpbQ+H8
	v8K1FOjiTZvcg0e+RI4vy9+G7wSfqAjamEPUwiqC74U36T0bncZpJjwukbjlJPP486HG
	V0faHDjTxKAcaExU5rHHrXDKIs+wi84G/yAKibhySet8ldd42FcFIq63A+rfXkJTi0Nn
	UKPoW7yEC2WzPP08qvEYHWnnwXmaMX3kqBfdokn0Qkn/P07ekjreLEDJoUV36GMracfi
	bMyCFC2eoa6K5xf+xfFg2dA5IQ0N00+l1mJfYW5JuVW+u3cFgZ7N6a70JBOyK1xNsri9
	QP+Q==
X-Received: by 10.236.124.208 with SMTP id x56mr147762yhh.67.1363332705504;
	Fri, 15 Mar 2013 00:31:45 -0700 (PDT)
Received: from [172.23.7.5] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id u2sm10819534yhl.8.2013.03.15.00.31.43
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 15 Mar 2013 00:31:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CA+Z6RkUxVBDJqRT0kcwyqNROhjVsxKkRugB3EMVWAadsDL2-Pw@mail.gmail.com>
Date: Fri, 15 Mar 2013 00:31:42 -0700
Message-Id: <1B03475D-B706-43D2-A25F-DCB9B0DAF68F@gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1B6F3998@POCITMSEXMB05.LntUniverse.com>
	<CA+Z6RkUxVBDJqRT0kcwyqNROhjVsxKkRugB3EMVWAadsDL2-Pw@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK creation
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
X-List-Received-Date: Fri, 15 Mar 2013 07:31:47 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_34750002-DF3E-4D15-8600-3804AFF9ACC9"

--Apple-Mail=_34750002-DF3E-4D15-8600-3804AFF9ACC9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Mar 15, 2013, at 12:06 AM, Navani Srivastava =
<navani.srivastava@gmail.com> wrote:

> Hi,
>=20
>  I wish to create SDK with meta-toolchain-qte recipe.  As two versions =
are provided by Poky-8.0. How can I direct compilation of SDK for =
qt4-embedded_4.8.1.bb ?
>=20
>=20


use PREFERRED_VERSION to pin qt4-embedded to 4.8.1

> =20
> Right now I am getting following error-
>=20
> ERROR: Multiple .bb files are due to be built which each provide =
qt4-embedded (/home/user/danny/meta/recipes-qt/qt4/qt4-embedded_4.8.1.bb =
/home/user/danny/meta/recipes-qt/qt4/qt4-embedded_4.8.3.bb).
>=20
> Thanks and Regards
> Navani Kamal Srivastava
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_34750002-DF3E-4D15-8600-3804AFF9ACC9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Mar 15, 2013, at 12:06 AM, Navani Srivastava &lt;<a =
href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail.com</a=
>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><p>Hi,</p><p>&nbsp;I wish to create SDK with =
meta-toolchain-qte recipe.&nbsp; As two versions are provided by =
Poky-8.0. How can I direct compilation of SDK for <a =
href=3D"http://qt4-embedded_4.8.1.bb/">qt4-embedded_4.8.1.bb</a> =
?</p><div><br></div></blockquote><div><br></div><div><br></div><div>use =
PREFERRED_VERSION to pin qt4-embedded to 4.8.1</div><br><blockquote =
type=3D"cite"><div>&nbsp;<br =
class=3D"webkit-block-placeholder"></div><p>Right now I am getting =
following error-</p><p>ERROR: Multiple .bb files are due to be built =
which each provide qt4-embedded (/home/user/danny/meta/recipes-qt/qt4/<a =
href=3D"http://qt4-embedded_4.8.1.bb/">qt4-embedded_4.8.1.bb</a> =
/home/user/danny/meta/recipes-qt/qt4/<a =
href=3D"http://qt4-embedded_4.8.3.bb/">qt4-embedded_4.8.3.bb</a>).</p><p>T=
hanks and Regards<br>
Navani Kamal Srivastava<br>
</p>
_______________________________________________<br>yocto mailing =
list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body>=
</html>=

--Apple-Mail=_34750002-DF3E-4D15-8600-3804AFF9ACC9--
