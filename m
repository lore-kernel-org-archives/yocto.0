Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABFFCE00A6D; Wed, 22 Jun 2016 09:51:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B1DE009F6
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 09:51:02 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id fg1so4353079pad.3
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 09:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=rxykhvJcWGwr4FnIfMBV2iZ2Qjkb9K79uDr9sTmAY2I=;
	b=Wyz59Z7M3N1N7ZW/y7KuiBEsl7K0JyfRThdmAD+pLAHtcqzWid2bXGB3o7U5q1cWs+
	SjS1sofDtmB44HBlprpI2Olxw0qUPJSvzgqiq+XVXWw5UZpZF9RLFuPdO38/racAAfFZ
	uYmMwx+aU5+iqHwYr0iC5TLGtfnZDda5Nr0qwF8qLU/rdAh4S3vTMBCIMxy+7i/9pJRB
	gG0Vk6X9c1JKgZoI7aOdPogK0FgJIv2iu+7qei0BVxzjgklRqjEhTYmxbTxRG4A27OrT
	lqsLCLSCD2hZ17Tyyh/zQbmXsxJISZpF3Hve+455GCvojjEt6kkbLvvU4FhKYoGZs1m/
	VHhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=rxykhvJcWGwr4FnIfMBV2iZ2Qjkb9K79uDr9sTmAY2I=;
	b=E8Z3nho8BRAO7rCLHyECgFmw85mS0g1RwEbTQenvk5QraGuyS8Cdj5E8lhusga8c66
	hMMkd1H214vixJanukf3w50PJVfVyP0vjNLwsCS7mPJOyesfzQ2t1uw9dnBUYwZ4Q9Kr
	d8y7f6KWx8kuitSLBtxtasgRYMYBD5AXhhRTArN2N9troikTcw8L87FojopT2rUi2K4Z
	bTEjNMkY6Ypr4HXEc2OpLa3os/K//gYzCsq7VUea6cQy8OJfgjhB7H42VF5VxqjIGLfa
	7PUG6PQ8FLzR5vcvlmSZP5kUQbf+gqGn4tw+eVuyz6nYwYjlNq/7UPDUqjsAL0BlhlV8
	707A==
X-Gm-Message-State: ALyK8tKFjMuQSRgyLkxcIsL8Q6rtdhBQhuNYWihq3quMYx+/2RPuJv2LNJQd14LGc9xlxA==
X-Received: by 10.66.190.71 with SMTP id go7mr35157121pac.146.1466614261560;
	Wed, 22 Jun 2016 09:51:01 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:fcd1:61e:b1e8:f28?
	([2601:646:8882:b8c:fcd1:61e:b1e8:f28])
	by smtp.gmail.com with ESMTPSA id 69sm939668pfc.90.2016.06.22.09.51.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Jun 2016 09:51:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <OF375FEAD7.2DA56C67-ONC1257FDA.0058120C-C1257FDA.00593682@esa-grimma.de>
Date: Wed, 22 Jun 2016 09:50:52 -0700
Message-Id: <2651D050-7001-4193-AFA4-E5AE71841234@gmail.com>
References: <OF375FEAD7.2DA56C67-ONC1257FDA.0058120C-C1257FDA.00593682@esa-grimma.de>
To: S.Jaritz@esa-grimma.de
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: How to re-set the libary path for the package manager/QA module
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
X-List-Received-Date: Wed, 22 Jun 2016 16:51:05 -0000
X-Groupsio-MsgNum: 30705
Content-Type: multipart/signed;
	boundary="Apple-Mail=_AF129317-4A5B-41F1-B26E-6DC26BCE6C1E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_AF129317-4A5B-41F1-B26E-6DC26BCE6C1E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_AC7E55F2-0F01-4CCA-BBCF-EF5E8C0D3E8E"

--Apple-Mail=_AC7E55F2-0F01-4CCA-BBCF-EF5E8C0D3E8E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jun 22, 2016, at 9:14 AM, S.Jaritz@esa-grimma.de wrote:
>=20
> Any ideas how to set the
>=20
> FILES_${PN} +=3D "${libdir}/test/*.so.*"
>=20
> in a right way?

FILES_${PN} +=3D =E2=80=9C${libdir}/test/*"

--Apple-Mail=_AC7E55F2-0F01-4CCA-BBCF-EF5E8C0D3E8E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 22, 2016, at 9:14 AM, <a =
href=3D"mailto:S.Jaritz@esa-grimma.de" =
class=3D"">S.Jaritz@esa-grimma.de</a> wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><font size=3D"2" =
face=3D"sans-serif" style=3D"font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">Any ideas how to set the</font><span =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><font size=3D"2" face=3D"sans-serif" style=3D"font-style:=
 normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D"">FILES_${PN} +=3D =
"${libdir}/test/*.so.*"</font><span style=3D"font-family: Times-Roman; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><font size=3D"2" face=3D"sans-serif" style=3D"font-style:=
 normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D"">in a right =
way?</font><span style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""></div></blockquote></div><br =
class=3D""><div class=3D"">FILES_${PN} +=3D =
=E2=80=9C${libdir}/test/*"</div></body></html>=

--Apple-Mail=_AC7E55F2-0F01-4CCA-BBCF-EF5E8C0D3E8E--

--Apple-Mail=_AF129317-4A5B-41F1-B26E-6DC26BCE6C1E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldqwfAACgkQuwUzVZGdMxRvigCfT94OasrxuEYvBTpX4XKJJIwq
aagAn1oETvEgbpm1/ccpZ3aq37mDKcWo
=uiam
-----END PGP SIGNATURE-----

--Apple-Mail=_AF129317-4A5B-41F1-B26E-6DC26BCE6C1E--
