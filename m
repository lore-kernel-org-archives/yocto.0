Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 420B3E0095D; Tue, 19 May 2015 21:59:53 -0700 (PDT)
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
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D46BEE004F6
	for <yocto@yoctoproject.org>; Tue, 19 May 2015 21:59:51 -0700 (PDT)
Received: by pdbnk13 with SMTP id nk13so54333253pdb.1
	for <yocto@yoctoproject.org>; Tue, 19 May 2015 21:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Y7XpBJArgQookFJVT6Z8OPEO/8Z+ChLAGZs29JrHvSY=;
	b=UYuL9g4/D7SCpyxkxTbHFZRNwC+p63K9BS9my7DLPhYtG+rQPM0YkLza28tie+O7wb
	Fv/iPaGZ7D7wX2BcZqA+qbpEM7F1oGM2k0eZcQF+Cy0OK5ntZnN9/dj/rabLhMswV0xW
	IvNTyLcZLnWNeoF3t1yG/UFqGHp35s+ulq6+Nx3tvUhSn7TVaU1/8uY8D06kUf4mcRTI
	GzELP8XsKYIX2iYA18ZY7oX18NQS24lXUiBO3Wz1VZAMFGhanBgHn+yYRkJGGcLzf2xj
	YFES5sWC0Am/IuDV2h6jFg64thcJybEkHEnyZ6/etRNknjysNRZMA571TowBwzclIV/D
	EboA==
X-Received: by 10.70.44.76 with SMTP id c12mr60973872pdm.49.1432097990732;
	Tue, 19 May 2015 21:59:50 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:f46f:40a:7124:fb2?
	([2601:9:3580:84c:f46f:40a:7124:fb2])
	by mx.google.com with ESMTPSA id
	dk5sm14643726pdb.88.2015.05.19.21.59.49
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 May 2015 21:59:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <AA6EBB22527ED441A9B86C56F43F6DD82012EDDA@POCITMSEXMB08.LntUniverse.com>
Date: Tue, 19 May 2015 21:59:44 -0700
Message-Id: <A60620CB-81E7-4974-95F9-4372AA329E6F@gmail.com>
References: <AA6EBB22527ED441A9B86C56F43F6DD82012EDDA@POCITMSEXMB08.LntUniverse.com>
To: Dilip Basavaraju <DILIP.KUMARB@LNTTECHSERVICES.COM>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Modify configuration via bb file
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
X-List-Received-Date: Wed, 20 May 2015 04:59:53 -0000
X-Groupsio-MsgNum: 24900
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0129C192-C4B1-4D1B-8E2D-5A710D7A19ED";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0129C192-C4B1-4D1B-8E2D-5A710D7A19ED
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_92C9ACF4-C801-47C3-890E-07EDE07F6E8E"

--Apple-Mail=_92C9ACF4-C801-47C3-890E-07EDE07F6E8E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 19, 2015, at 9:44 PM, Dilip Basavaraju =
<DILIP.KUMARB@LNTTECHSERVICES.COM> wrote:
>=20
> Dear All,
>=20
>                 I am compiling coreutils package with the coreutils.bb =
file and its compiling  successfully, now I need to modify the arguments =
passed to ./configure command I tried to modify in the bb file but I did =
not get the proper results.
>=20

Pass it using EXTRA_OECONF in recipe e.g.

EXTRA_OECONF +=3D =E2=80=9C=E2=80=94enable-foo"

>                 Please suggest me where to modify parameters to =
./configure via bb file or if any other way.
>=20
> Thanks and regards
> DILIP KUMAR B
> L&T Technology Services Ltd
>=20
> www.LntTechservices.com <http://www.lnttechservices.com/>
> This Email may contain confidential or privileged information for the =
intended recipient (s). If you are not the intended recipient, please do =
not use or disseminate the information, notify the sender and delete it =
from your system.
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_92C9ACF4-C801-47C3-890E-07EDE07F6E8E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 19, 2015, at 9:44 PM, Dilip Basavaraju &lt;<a =
href=3D"mailto:DILIP.KUMARB@LNTTECHSERVICES.COM" =
class=3D"">DILIP.KUMARB@LNTTECHSERVICES.COM</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Dear =
All,<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; I am compiling coreutils package with the =
coreutils.bb file and its compiling &nbsp;successfully, now I need to =
modify the arguments passed to ./configure command I tried to modify in =
the bb file but I did not get the proper results.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div></div></blockquote><div><br =
class=3D""></div><div>Pass it using EXTRA_OECONF in recipe =
e.g.</div><div><br class=3D""></div><div>EXTRA_OECONF +=3D =
=E2=80=9C=E2=80=94enable-foo"</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"WordSection1" =
style=3D"page: WordSection1; font-family: Helvetica; font-size: 13px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; Please suggest me where to modify parameters =
to ./configure via bb file or if any other way.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Thanks =
and regards<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">DILIP KUMAR B<o:p class=3D""></o:p></div></div><p =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><strong =
class=3D"">L&amp;T Technology Services Ltd</strong></p><p =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"http://www.lnttechservices.com/" target=3D"_blank" style=3D"color:=
 purple; text-decoration: underline;" =
class=3D"">www.LntTechservices.com</a></p><p style=3D"font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">This Email may contain =
confidential or privileged information for the intended recipient (s). =
If you are not the intended recipient, please do not use or disseminate =
the information, notify the sender and delete it from your =
system.</p><span style=3D"font-family: Helvetica; font-size: 13px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Helvetica; font-size: 13px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; font-family: Helvetica; font-size: =
13px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_92C9ACF4-C801-47C3-890E-07EDE07F6E8E--

--Apple-Mail=_0129C192-C4B1-4D1B-8E2D-5A710D7A19ED
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlVcFMQACgkQuwUzVZGdMxTP0gCeObbXVO3dbd3hdcdLcYRevORm
xMgAoI2YWrH4FLiXB3ZmRQkDk3bf03Pf
=r97o
-----END PGP SIGNATURE-----

--Apple-Mail=_0129C192-C4B1-4D1B-8E2D-5A710D7A19ED--
