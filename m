Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8FA4E00DE6; Thu, 27 Oct 2016 21:00:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2986E00DDC
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 21:00:48 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id n85so29628761pfi.1
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 21:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=z4WS2FeGxgg9fjzNYGdfBq0PponWVjOJnGxBWqVAan0=;
	b=ZX6zozLqcb6giR3JbA9cPFiJjfE1RzYIB4SFjgMvLQZ4/spV6oRnLVZ764+DdeafaW
	U81rihfiRKz2jtj1uy09DpAPPh6PSwsJUTDbWqrOpjSGv5Q6N0uGqWPzPHAVHXPUOOeE
	ZMJNQQdcAOB2sgtBCOFtNfWnpr92ASpWowyzc4TqZWM2IikKdPbgxhtxa01/TWlCKXEh
	rIqIyvwYpAxr1DcGsx8DVPTxIPnbvAu7lnqQJxZRmVlPIAzvQu0vrvjP2ldUdyb8VQ2K
	NdEZXNvDgWC6sOssU/6xfgAEz/XNg+y3Crhm2PRo7xXX6pAUhtfpevJltmnSqxEjBM4c
	T+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=z4WS2FeGxgg9fjzNYGdfBq0PponWVjOJnGxBWqVAan0=;
	b=ERHDARw+wiKEZGpyne5ZGTPZjDvpBg+0M+UKqHYkG38PeFhcPSBH5Lw1P5wUhCKZVb
	iVGu9Q5NKa8BPiI1UU1kkFKYpM+7C4B9euWzxZCAkU8p7+2QWuW167TjJlSrMri3PTAx
	skoQB8/utiixf/M/qZkXrz2kuATGNAfzWhOMAtA/fCB7ZhgG3zwb339mgEn5Gw6VYiyw
	+a5jGPm+OlHV2HT8+SR1iMzsjw0brLsyRFIa0aPxhqMUbKadD1YzElDW3BPMKq3N308Y
	cO/WIznk3EMhQPlEasp9ew3N7DR28bPDaq5VksAbNGUFylaOGhfhp39tv7v+x76zz8WU
	IqhQ==
X-Gm-Message-State: ABUngvc2meUNQG8G25u6VBZJP8dNkHhAS7ZT6KWXSLcT9y4wdynQD62misvQ/BgEcWmoCA==
X-Received: by 10.99.101.65 with SMTP id z62mr17171500pgb.89.1477627247706;
	Thu, 27 Oct 2016 21:00:47 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:f559:242f:d781:af84?
	([2601:646:8882:b8c:f559:242f:d781:af84])
	by smtp.gmail.com with ESMTPSA id
	t5sm14866393pfb.58.2016.10.27.21.00.46
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 21:00:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <108EEEE7-FA01-47F4-BFC9-F03C15F37184@cisco.com>
Date: Thu, 27 Oct 2016 21:00:40 -0700
Message-Id: <102BA059-A58C-4917-8697-70387D6D0540@gmail.com>
References: <108EEEE7-FA01-47F4-BFC9-F03C15F37184@cisco.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qlibc lib for Yocto Dizzy question
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
X-List-Received-Date: Fri, 28 Oct 2016 04:00:54 -0000
X-Groupsio-MsgNum: 32663
Content-Type: multipart/signed;
	boundary="Apple-Mail=_43C598F2-BB8A-4334-9570-DC7ED95A9B7E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_43C598F2-BB8A-4334-9570-DC7ED95A9B7E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_ACF8971F-3C35-4855-B102-635045DD0399"

--Apple-Mail=_ACF8971F-3C35-4855-B102-635045DD0399
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 27, 2016, at 8:19 PM, Dinh Nguyen (dinhn) <dinhn@cisco.com> =
wrote:
>=20
>=20
> Hi Yocto gurus,
>=20
> I am trying to add the qlibc lib to our Yocto 1.7.2 version.
> Able to compile and build IPK packages with out any issue as shown =
below:
>=20
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp_ppc$ =
find tmp/deploy | grep qlibc
> tmp/deploy/ipk/ppce500v2/qlibc-dbg_1.0-r0_ppce500v2.ipk
> tmp/deploy/ipk/ppce500v2/qlibc-dev_1.0-r0_ppce500v2.ipk
> tmp/deploy/licenses/qlibc
> tmp/deploy/licenses/qlibc/generic_BSD-2-Clause
> tmp/deploy/licenses/qlibc/LICENSE
>=20
> However, it is not included in the rootfs.manifest for building a LXC =
container.
> I wonder whether I am missing in my recipe qlibc.bb or how to solve =
this issue?

it seems that main package is empty. Is it just building a static ( .a ) =
library ?

>=20
> Many thanks,
>   =E2=80=94Dinh
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_ACF8971F-3C35-4855-B102-635045DD0399
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 27, 2016, at 8:19 PM, Dinh Nguyen (dinhn) &lt;<a =
href=3D"mailto:dinhn@cisco.com" class=3D"">dinhn@cisco.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D"">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D"">

<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; font-size: 14px; font-family: =
Calibri, sans-serif;" class=3D"">
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Hi Yocto gurus,</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">I am trying to add the qlibc lib to our Yocto 1.7.2 =
version.</div>
<div class=3D"">Able to compile and build IPK packages with out any =
issue as shown below:</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">
<div =
class=3D"">dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/=
yp_ppc$ find tmp/deploy | grep qlibc</div>
<div =
class=3D"">tmp/deploy/ipk/ppce500v2/qlibc-dbg_1.0-r0_ppce500v2.ipk</div>
<div =
class=3D"">tmp/deploy/ipk/ppce500v2/qlibc-dev_1.0-r0_ppce500v2.ipk</div>
<div class=3D"">tmp/deploy/licenses/qlibc</div>
<div class=3D"">tmp/deploy/licenses/qlibc/generic_BSD-2-Clause</div>
<div class=3D"">tmp/deploy/licenses/qlibc/LICENSE</div>
</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">However, it is not included in the&nbsp;rootfs.manifest =
for building a LXC container. &nbsp;</div>
<div class=3D"">I wonder whether I am missing in my recipe qlibc.bb or =
how to solve this issue?</div></div></div></blockquote><div><br =
class=3D""></div><div>it seems that main package is empty. Is it just =
building a static ( .a ) library ?</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; font-size: 14px; font-family: Calibri, sans-serif;" =
class=3D"">
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Many thanks,</div>
<div class=3D"">&nbsp; =E2=80=94Dinh</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">
<div id=3D"MAC_OUTLOOK_SIGNATURE" class=3D""></div>
</div>
</div>

-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_ACF8971F-3C35-4855-B102-635045DD0399--

--Apple-Mail=_43C598F2-BB8A-4334-9570-DC7ED95A9B7E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgSzWwACgkQuwUzVZGdMxRsWACgjfG2Zyi43hu+e5ODGEr3kOtM
KpUAnRxlq/zeyGNd6JlI3kTI00UDdn/d
=MBx7
-----END PGP SIGNATURE-----

--Apple-Mail=_43C598F2-BB8A-4334-9570-DC7ED95A9B7E--
