Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E33BE0086D; Tue, 11 Aug 2015 07:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
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
	*      [209.85.220.45 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C87E005A2
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 07:21:41 -0700 (PDT)
Received: by pacrr5 with SMTP id rr5so128820715pac.3
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 07:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=b0R6RPLF6LAjo68JAdIMUqW7rg3qkZinaSKAvE2+KEU=;
	b=Zx0neI7YpIYRXB27Ypb9z7qIXuKith5A2L7CPxJgumkZgdpWP1fXw07fHG7TanIYdu
	K3PQsLL3qAw7NigZ1cOzopnlMx3KmktdYDShMtMz20bfheQb0gf8h2ze1L8LaT7ND7LO
	Y/sishW8cWhjjYkULayNMKGI1QjuxZGxy4le0DGMDU2iOaDPfWEG4axSKtYYpE/U+7fi
	QNqLasEVqSVw34gz7T+ZJP9dPUY7sLkbiU0iB3spZmGzJcJSFbLjnIkCqRZ8+0oijyov
	3/S1W3ju27Ei8UTFWEHlFfvPH947fXC8GlwE1AJp8R0Pu2k5lRay5YCm06ZrS1DNnZf3
	niMw==
X-Received: by 10.68.88.69 with SMTP id be5mr57214737pbb.105.1439302900748;
	Tue, 11 Aug 2015 07:21:40 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:314c:ca06:767e:6f7f?
	([2601:646:8601:4580:314c:ca06:767e:6f7f])
	by smtp.gmail.com with ESMTPSA id
	ym6sm2893065pac.32.2015.08.11.07.21.38
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 11 Aug 2015 07:21:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACTu1LiZu_ahYN6-qOi9eFAMvqwdM+Q0+ENZZre0FXVngssmow@mail.gmail.com>
Date: Tue, 11 Aug 2015 07:21:33 -0700
Message-Id: <21479A30-7583-46C6-ADBD-C4731F62990F@gmail.com>
References: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
	<CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
	<CACTu1Ljn2ven-b51Q+X9gGcWYxxe1-nv1T9+N=y4LSy6juLnoQ@mail.gmail.com>
	<F8159D01-CD91-48A9-AA7B-EFE99FFDDCEB@gmail.com>
	<CACTu1Lj+9WOZXh2-P5pWeaGwn_CPxBt5bcQSB3dTAJnK5Yc=Og@mail.gmail.com>
	<CAMKF1soKzVgxH4HjJOPVVkEwaAm95=YWw0ncZ+0DW25oz5VnAA@mail.gmail.com>
	<CACTu1LiPeGST8FQZREC_Tyryuehbg8r_Ur43j1qKrtRy53RJxA@mail.gmail.com>
	<CACTu1LiZu_ahYN6-qOi9eFAMvqwdM+Q0+ENZZre0FXVngssmow@mail.gmail.com>
To: yocto yocto <yoctomailinglist@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Tue, 11 Aug 2015 14:21:44 -0000
X-Groupsio-MsgNum: 26029
Content-Type: multipart/signed;
	boundary="Apple-Mail=_313FE9FB-5267-4F11-BA66-95BD403671F2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_313FE9FB-5267-4F11-BA66-95BD403671F2
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A91EE2ED-9B7A-40FF-BD51-018B6DEF9FAD"

--Apple-Mail=_A91EE2ED-9B7A-40FF-BD51-018B6DEF9FAD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 10, 2015, at 11:59 PM, yocto yocto <yoctomailinglist@gmail.com> =
wrote:
>=20
> Maybe this is of interest, here is my solution:
>=20
> In CMakeLists.txt
>=20
> SET(BITBAKE_SYSROOT "" CACHE STRING "Description")
> SET(SOCI_INCLUDEDIR ${BITBAKE_SYSROOT}/usr/include/soci)
>=20
> So if BITBAKE_SYSROOT is not passed the compiler takes =
/usr/include/soci as usual. My *.bb contains:

its your package you are free to choose the name but instead of =
BITBAKE_SYSROOT call it OE_SYSROOT

>=20
> EXTRA_OECMAKE =3D "-DBITBAKE_SYSROOT:STRING=3D${STAGING_DIR_HOST}"
>=20
> So when using bitbake the appropriate prefix will be added.
>=20
>=20
>=20
> 2015-08-11 8:36 GMT+02:00 yocto yocto <yoctomailinglist@gmail.com =
<mailto:yoctomailinglist@gmail.com>>:
> But not within CMakeLists.txt? At least this is not working, cmake is =
handling "=3D" as a normal character. I guess I have to pass a parameter =
within my *.bb to cmake containing the sysroot path
>=20
> 2015-08-10 22:36 GMT+02:00 Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>>:
> On Mon, Aug 10, 2015 at 12:08 PM, yocto yocto
> <yoctomailinglist@gmail.com <mailto:yoctomailinglist@gmail.com>> =
wrote:
> > SET(SOCI_INCLUDEDIR
> > =
/home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroot=
s/edison/usr/include/soci)
> >
> > everything worked fine. Is there any way to get the path
> > =
"/home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroo=
ts/edison/"
> > within CMakeLists.txt automatically?
>=20
> you can use =3D/usr/include/soci which will prepend sysroot =
automatically.
>=20
>=20


--Apple-Mail=_A91EE2ED-9B7A-40FF-BD51-018B6DEF9FAD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 10, 2015, at 11:59 PM, yocto yocto &lt;<a =
href=3D"mailto:yoctomailinglist@gmail.com" =
class=3D"">yoctomailinglist@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Maybe this is of interest, here is my solution:<div =
class=3D""><br class=3D""></div><div class=3D"">In =
CMakeLists.txt</div><div class=3D""><br class=3D""></div><div =
class=3D""><div class=3D"">SET(BITBAKE_SYSROOT "" CACHE STRING =
"Description")</div><div class=3D"">SET(SOCI_INCLUDEDIR =
${BITBAKE_SYSROOT}/usr/include/soci)</div></div><div class=3D""><br =
class=3D""></div><div class=3D"">So if BITBAKE_SYSROOT is not passed the =
compiler takes /usr/include/soci as usual. My *.bb =
contains:</div></div></div></blockquote><div><br class=3D""></div><div>its=
 your package you are free to choose the name but instead of =
BITBAKE_SYSROOT call it OE_SYSROOT</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D""><br class=3D""></div><div class=3D"">EXTRA_OECMAKE =3D =
"-DBITBAKE_SYSROOT:STRING=3D${STAGING_DIR_HOST}"<br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D"">So when using bitbake =
the appropriate prefix will be added.&nbsp;</div><div class=3D""><div =
class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div></div></div><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">2015-08-11 8:36 GMT+02:00 yocto =
yocto <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:yoctomailinglist@gmail.com" target=3D"_blank" =
class=3D"">yoctomailinglist@gmail.com</a>&gt;</span>:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D"">But not within CMakeLists.txt? At least this is not working, =
cmake is handling "=3D" as a normal character. I guess I have to pass a =
parameter within my *.bb to cmake containing the sysroot path</div><div =
class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">2015-08-10 22:36 GMT+02:00 Khem =
Raj <span dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:raj.khem@gmail.com"=
 target=3D"_blank" class=3D"">raj.khem@gmail.com</a>&gt;</span>:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Mon, Aug 10, 2015 at 12:08 PM, yocto yocto<br class=3D"">
&lt;<a href=3D"mailto:yoctomailinglist@gmail.com" target=3D"_blank" =
class=3D"">yoctomailinglist@gmail.com</a>&gt; wrote:<br class=3D"">
&gt; SET(SOCI_INCLUDEDIR<br class=3D"">
&gt; =
/home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroot=
s/edison/usr/include/soci)<br class=3D"">
&gt;<br class=3D"">
&gt; everything worked fine. Is there any way to get the path<br =
class=3D"">
&gt; =
"/home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroo=
ts/edison/"<br class=3D"">
&gt; within CMakeLists.txt automatically?<br class=3D"">
<br class=3D"">
</span>you can use =3D/usr/include/soci which will prepend sysroot =
automatically.<br class=3D"">
</blockquote></div><br class=3D""></div>
</div></div></blockquote></div><br class=3D""></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_A91EE2ED-9B7A-40FF-BD51-018B6DEF9FAD--

--Apple-Mail=_313FE9FB-5267-4F11-BA66-95BD403671F2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXKBPEACgkQuwUzVZGdMxRrEACeJMTHNpU30w1kD6tqfkmkf2Uk
GF4AnRmvRzmkhB4gHK737Ao87yi1fQJ2
=gloX
-----END PGP SIGNATURE-----

--Apple-Mail=_313FE9FB-5267-4F11-BA66-95BD403671F2--
