Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAF11E00E17; Fri, 24 Jun 2016 16:16:49 -0700 (PDT)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B445EE00E0E
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 16:16:46 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id wo6so41277697pac.3
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 16:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=IXp+xK5UzHMRQ8vWXWlCipCKZ25KKw8KjiX43DuZ4AI=;
	b=bqW9hp4Q64lU5UyhKiqOclMpdm//iIzsqjPieC1NYku5UOuNuVHtBbHMRD5ItSuDxV
	3M1VNJKvjWanX4JkQdGSCS1v755Ll0wwVoY501nU/F5nVsUM0jT4uSkry9jW5CogPlYl
	43GKVkQ6wbuWeZzIyaSmbrNJlUSPr+wPinoxiZuf/HBLgk0S7RrTaRiDloM1dr9bTFHV
	WYlnR41ZNXJIUezE5DQpJ10OOLThLCbg+WM3jiXENPo/Ulxs7sCebe9HTs6dWMwIKeSd
	Ii2m6K7uG1OCKhg8W/EpvVScxyOHcktnaQqu7fUYJFyYnnTdYRBQUR2aEPeUL8ZYFEzi
	5/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=IXp+xK5UzHMRQ8vWXWlCipCKZ25KKw8KjiX43DuZ4AI=;
	b=Buy+Rpv+PJWMPrJE3wiSpXWkxwTT6krcJCVfai6P0kXYwHlImIo082+XMCs/uaux84
	skGQOsfoo2c2wlnImwmJB0XO6KJU0QToKYcQ2GXO6VMxDhfA6KsyYUHlh6tm7asN3Vvz
	KqdmaacQn5uNBJCZKyKLiPCLrYwtdHyDhLMM6LenpX3242Bw+vUwK3U5EAzZgGdQiKGB
	D3YGwKV9fM9lWjRtR0LIe4zEmqEnbBwAZeZsOmgK3vgFu46hHY5ZJTcVjwj+HPfz3G21
	E3fUlJmwCpGPsWBuf1FsFXGQIDEnOOSuUEtI+oUaCWFUwRtwgR/ZmA2p1A9E9jARwEVi
	cBaQ==
X-Gm-Message-State: ALyK8tL5d7IYGOrbZU2P3zgASR2uvTFt1DlZHRRlYdK1ZIKyTmp9N/THNfVGbTU6+vaVpg==
X-Received: by 10.66.216.202 with SMTP id os10mr11766066pac.91.1466810205929; 
	Fri, 24 Jun 2016 16:16:45 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:7d5d:d458:6a2b:7266?
	([2601:646:8882:b8c:7d5d:d458:6a2b:7266])
	by smtp.gmail.com with ESMTPSA id
	e14sm2017942pfb.89.2016.06.24.16.16.44
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 24 Jun 2016 16:16:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <BLU168-W73DAEB90097F5A05DC7281EB2E0@phx.gbl>
Date: Fri, 24 Jun 2016 16:16:37 -0700
Message-Id: <8209EA45-A463-4DA0-A3D6-706DDD5FF0C0@gmail.com>
References: <BLU168-W73DAEB90097F5A05DC7281EB2E0@phx.gbl>
To: Sridhar Pitchai <sridhar.pitchai@outlook.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: go toolchain
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
X-List-Received-Date: Fri, 24 Jun 2016 23:16:49 -0000
X-Groupsio-MsgNum: 30753
Content-Type: multipart/signed;
	boundary="Apple-Mail=_305F511D-625C-43D5-864D-A3F856FABCBD";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_305F511D-625C-43D5-864D-A3F856FABCBD
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DF629E8F-0DC2-4E13-9537-9360F67BFC48"

--Apple-Mail=_DF629E8F-0DC2-4E13-9537-9360F67BFC48
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

can you try

https://github.com/kraj/oe-meta-go/commits/master =
<https://github.com/kraj/oe-meta-go/commits/master>

> On Jun 24, 2016, at 4:06 PM, Sridhar Pitchai =
<sridhar.pitchai@outlook.com> wrote:
>=20
> Hi,
> does someone have good go meta layer. I have experimented with meta-go =
and meta-golang, not able to make it work it.
>=20
> meta-go : bootstrap 1.4 works but the native go 1.5.3 not working.
>=20
> meta-golang: i am not able to make it work even with qemu x86.
>=20
> any suggestion appreciated.
>=20
> Thanks,
> Sridhar
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_DF629E8F-0DC2-4E13-9537-9360F67BFC48
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">can you try<div class=3D""><br class=3D""></div><div =
class=3D""><a href=3D"https://github.com/kraj/oe-meta-go/commits/master" =
class=3D"">https://github.com/kraj/oe-meta-go/commits/master</a></div><div=
 class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 24, 2016, at 4:06 PM, Sridhar Pitchai &lt;<a =
href=3D"mailto:sridhar.pitchai@outlook.com" =
class=3D"">sridhar.pitchai@outlook.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">Hi,<div class=3D"">does =
someone have good go meta layer. I have experimented with meta-go and =
meta-golang, not able to make it work it.&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">meta-go : bootstrap 1.4 works but the =
native go 1.5.3 not working.&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">meta-golang: i am not able to make it =
work even with qemu x86.&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">any suggestion =
appreciated.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks,</div><div class=3D"">Sridhar&nbsp;</div></div><span =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Calibri; font-size: 16px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Calibri; =
font-size: 16px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Calibri; =
font-size: 16px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></div></body></html>=

--Apple-Mail=_DF629E8F-0DC2-4E13-9537-9360F67BFC48--

--Apple-Mail=_305F511D-625C-43D5-864D-A3F856FABCBD
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldtv1kACgkQuwUzVZGdMxSfvwCbBiSHYT5a+DjjxcCQ3AVIjk3h
mo4An2pwSyK3xavpjLlcoNkmgzP3HyHU
=95KS
-----END PGP SIGNATURE-----

--Apple-Mail=_305F511D-625C-43D5-864D-A3F856FABCBD--
