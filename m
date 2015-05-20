Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ED47E0095D; Wed, 20 May 2015 12:09:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1866DE004F6
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 12:09:49 -0700 (PDT)
Received: by padbw4 with SMTP id bw4so77098185pad.0
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 12:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=xxgS80NmwOqYhddPsSXXqbZON6NeRWKT6b5EFY6h+bw=;
	b=RWutvrK5qx9OQyHprm32yN2wWJEyPVCcgpsyPJVo5546tX6PMokcgSMjYMKeKFjFOU
	8BLlUjfDkc7Jh5B3pGGP/65N5NNFgg5UXIqhb2H0xhZwxKmjfNK+1F56grGAmPTCmfU3
	r/rAh7eP7VUFRwa5qkUCeu70D94PvgIVbsZSqUUWxhROUA2W2e7PJcz61ydcJGoPDDhB
	Ikdk9se0OQzKh1Xhp9PzgmngXilm8v7kThdk6czugkANARFh2YwDGilULbWanyM/KFq2
	jhmqhrWMUJap1cg6tbcZym8hrVjYDaQubIGUwK6u8JxnFBbsWU7oKveYQRujUTd8HLZi
	7o2A==
X-Received: by 10.68.232.164 with SMTP id tp4mr65485901pbc.101.1432148989505; 
	Wed, 20 May 2015 12:09:49 -0700 (PDT)
Received: from ?IPv6:2600:1010:b04d:4ac3:5910:a868:e4de:c473?
	([2600:1010:b04d:4ac3:5910:a868:e4de:c473])
	by mx.google.com with ESMTPSA id he9sm16891917pbc.7.2015.05.20.12.09.48
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 20 May 2015 12:09:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1834240664.1563821.1432108579634.JavaMail.yahoo@mail.yahoo.com>
Date: Wed, 20 May 2015 12:09:41 -0700
Message-Id: <029927DD-BA24-4EEB-9E7E-6991C2103F61@gmail.com>
References: <1834240664.1563821.1432108579634.JavaMail.yahoo@mail.yahoo.com>
To: abhishek srivastava <just_abhi22@yahoo.co.in>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to interface piTFT2.8" with Raspberrypi using fbtft driver?
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
X-List-Received-Date: Wed, 20 May 2015 19:09:53 -0000
X-Groupsio-MsgNum: 24908
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3572092B-521B-489E-A497-753A631F57C9";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_3572092B-521B-489E-A497-753A631F57C9
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1D26455F-6130-419B-9BEC-6AF69A84769B"

--Apple-Mail=_1D26455F-6130-419B-9BEC-6AF69A84769B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 20, 2015, at 12:56 AM, abhishek srivastava =
<just_abhi22@yahoo.co.in> wrote:
>=20
> Hi
> i need to interface piTFT2.8" resistive display with raspberrypi using =
fbtft driver. i want to insert this driver in Yocto Image that I have =
built.
> But I really dont know how? I can find fbtft driver under stagging =
directory (in linux3.18.11+) but when it would be officially available =
as feature/package ? Putting piTFT2.8" driver is extremely easy in =
Raspbian but when i try to do the same in Yocto built image, it gives =
error (I thing libc issue, which is looking for gcc4.6 and in Yocto we =
have gcc4.9/5.1).
> Any help would be appreciated.
>=20

if you send logs and error messages etc. it will be easier to help. Plus =
I would recommend to read through manual on how to add new recipe
and also if its a kernel module then how to add that would be simply =
adding the relevant kernel module package to your image using =
IMAGE_INSTALL if its not happening already, but you really need to =
provide more information.

>=20
> Abhishek
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_1D26455F-6130-419B-9BEC-6AF69A84769B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 20, 2015, at 12:56 AM, abhishek srivastava &lt;<a =
href=3D"mailto:just_abhi22@yahoo.co.in" =
class=3D"">just_abhi22@yahoo.co.in</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D""><div =
style=3D"background-color: rgb(255, 255, 255); font-family: =
HelveticaNeue, 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', =
sans-serif; font-size: 14px;" class=3D""><div =
id=3D"yui_3_16_0_1_1432107840254_5125" class=3D""><span =
class=3D"">Hi</span></div><div dir=3D"ltr" =
id=3D"yui_3_16_0_1_1432107840254_5170" class=3D""><span =
id=3D"yui_3_16_0_1_1432107840254_5211" class=3D"">i need to interface =
piTFT2.8" resistive display with raspberrypi using fbtft driver. i want =
to insert this driver in Yocto Image that I have built.</span></div><div =
id=3D"yui_3_16_0_1_1432107840254_5213" dir=3D"ltr" class=3D""><span =
id=3D"yui_3_16_0_1_1432107840254_5212" class=3D"">But I really dont know =
how? I can find fbtft driver under stagging directory (in linux3.18.11+) =
but when it would be officially available as feature/package ? Putting =
piTFT2.8" driver is extremely easy in Raspbian but when i try to do the =
same in Yocto built image, it gives error (I thing libc issue, which is =
looking for gcc4.6 and in Yocto we have gcc4.9/5.1).</span></div><div =
id=3D"yui_3_16_0_1_1432107840254_5304" dir=3D"ltr" class=3D""><span =
id=3D"yui_3_16_0_1_1432107840254_5212" class=3D"">Any help would be =
appreciated.</span></div><div id=3D"yui_3_16_0_1_1432107840254_5164" =
class=3D""><div id=3D"yui_3_16_0_1_1432107840254_5355" =
class=3D"">&nbsp;</div></div></div></div></div></blockquote><div><br =
class=3D""></div><div>if you send logs and error messages etc. it will =
be easier to help. Plus I would recommend to read through manual on how =
to add new recipe</div><div>and also if its a kernel module then how to =
add that would be simply adding the relevant kernel module package to =
your image using IMAGE_INSTALL if its not happening already, but you =
really need to provide more information.</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D""><div =
style=3D"background-color: rgb(255, 255, 255); font-family: =
HelveticaNeue, 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', =
sans-serif; font-size: 14px;" class=3D""><div =
id=3D"yui_3_16_0_1_1432107840254_5164" class=3D""><div =
id=3D"yui_3_16_0_1_1432107840254_5354" class=3D""><br =
class=3D""></div></div><div id=3D"yui_3_16_0_1_1432107840254_5217" =
class=3D"signature"><div id=3D"yui_3_16_0_1_1432107840254_5216" =
class=3D""><span id=3D"yui_3_16_0_1_1432107840254_5348" =
style=3D"font-size:16px;" class=3D""><span =
id=3D"yui_3_16_0_1_1432107840254_5347" style=3D"font-family:garamond, =
new york, times, serif;" class=3D""><span =
id=3D"yui_3_16_0_1_1432107840254_5346" style=3D"font-weight:bold;" =
class=3D"">Abhishek<br class=3D""><span class=3D"tab"><br =
class=3D""></span></span></span></span></div></div></div></div>-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_1D26455F-6130-419B-9BEC-6AF69A84769B--

--Apple-Mail=_3572092B-521B-489E-A497-753A631F57C9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlVc2/kACgkQuwUzVZGdMxRArQCdFEh7SweoPdLBGq2yMrYouRTz
E/sAnAzGgc4bzj6seK/dyY8EU2bV4WTT
=yfnR
-----END PGP SIGNATURE-----

--Apple-Mail=_3572092B-521B-489E-A497-753A631F57C9--
