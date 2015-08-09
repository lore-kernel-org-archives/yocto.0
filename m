Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 159D6E009BC; Sat,  8 Aug 2015 18:09:54 -0700 (PDT)
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
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 882FAE003D7
	for <yocto@yoctoproject.org>; Sat,  8 Aug 2015 18:09:51 -0700 (PDT)
Received: by pacgr6 with SMTP id gr6so1160584pac.2
	for <yocto@yoctoproject.org>; Sat, 08 Aug 2015 18:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=W3B0tATb7yEIG8hhX9EvYGLBhit3SiNdRwQOXQhuy7c=;
	b=XIyYH8vmrco5M3qMRcwQlbilK4cZJnaQ6NF3l8f6Qq650m76kDiDy/iuly0RZty82+
	Oz4L7FFHCuvr3O3UqPcctTqH/l0n+4TgsoCxw2FLwIQG1/xoEbrfus8AgPegoj81tSNp
	vwV833eF6CugiDB+DhK0/Uz140jkmqSKFsE/EQxuZ+ilR9AC0v3yfnOF6iKd//aH5/CZ
	x3MuTy+yIYF9Iu69q9e3YbqX0MQCOSH+ZOGU849il+kAq9/ObU7bzltiOTXnGguMD+3y
	9l2lSENak0xgeOqrdeHWTHmo1w9L30ofUPGd6WuiBozDy2vYrLYt/knkwlPtf33xEPd5
	eGIQ==
X-Received: by 10.66.248.9 with SMTP id yi9mr30095506pac.149.1439082591353;
	Sat, 08 Aug 2015 18:09:51 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:4ec:fbce:7a8:43c9?
	([2601:646:8601:4580:4ec:fbce:7a8:43c9])
	by smtp.gmail.com with ESMTPSA id
	ov3sm14890982pdb.2.2015.08.08.18.09.50
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 08 Aug 2015 18:09:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <SIXPR04MB0462DF3C7F4E2BD4EF05B39B938D0@SIXPR04MB0462.apcprd04.prod.outlook.com>
Date: Sat, 8 Aug 2015 18:09:45 -0700
Message-Id: <08F15723-A569-4034-8E00-CBCD9F517A93@gmail.com>
References: <SIXPR04MB0462DF3C7F4E2BD4EF05B39B938D0@SIXPR04MB0462.apcprd04.prod.outlook.com>
To: PRAVEEN KUMAR R <praveenr@tataelxsi.co.in>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Glibc kernel version depends
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
X-List-Received-Date: Sun, 09 Aug 2015 01:09:54 -0000
X-Groupsio-MsgNum: 25941
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4C049023-317B-401F-AAB2-CAFFAA57CBC3";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_4C049023-317B-401F-AAB2-CAFFAA57CBC3
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1DEAA630-3A55-4D30-8248-F4BD10D18C11"

--Apple-Mail=_1DEAA630-3A55-4D30-8248-F4BD10D18C11
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Jul 28, 2015, at 7:21 AM, PRAVEEN KUMAR R =
<praveenr@tataelxsi.co.in> wrote:
>=20
>=20
> I am trying to bring QT 5.5 on armv6 arch which is running on linux =
kernel v 2.6.27,
> the qt5 libraries depends on glib 2.12+, I tried installing latest =
glibc to satisfy run time depends on target
>=20
> when I run the qt application, I get
> FATAL: kernel too old

since 2.21 minimal required version is 2.6.32

>=20
> 1. is the glib 2.21 tightly coupled with kernel version ? 2.6.32+ ?
> how do I make this is compatible with older versions of kernel
>=20
> 2. I tried passing conf param --enable-kernel=3D2.6.27, I still get =
the same error
>=20
> any idea ?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_1DEAA630-3A55-4D30-8248-F4BD10D18C11
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 28, 2015, at 7:21 AM, PRAVEEN KUMAR R &lt;<a =
href=3D"mailto:praveenr@tataelxsi.co.in" =
class=3D"">praveenr@tataelxsi.co.in</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; font-size: 12pt; background-color: =
rgb(255, 255, 255); font-family: Calibri, Arial, Helvetica, sans-serif;" =
class=3D""><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><br class=3D"Apple-interchange-newline">I am trying to bring =
QT 5.5 on armv6 arch which is running on&nbsp;linux kernel v =
2.6.27,</div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">the qt5 libraries depends on glib 2.12+, I tried installing =
latest glibc to satisfy run time depends on target</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D"">when I run the qt&nbsp;application, I get</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><b =
class=3D"">FATAL: kernel too =
old</b></div></div></div></blockquote><div><br class=3D""></div><div>since=
 2.21 minimal required version is 2.6.32</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div id=3D"divtagdefaultwrapper" =
style=3D"font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
font-size: 12pt; background-color: rgb(255, 255, 255); font-family: =
Calibri, Arial, Helvetica, sans-serif;" class=3D""><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><span =
style=3D"font-size: 12pt;" class=3D""><br class=3D""></span></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><span =
style=3D"font-size: 12pt;" class=3D"">1. is the glib 2.21 tightly =
coupled with kernel version ? 2.6.32+ ?</span></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><span =
style=3D"font-size: 12pt;" class=3D"">how do I make this is compatible =
with older versions of kernel</span></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span style=3D"font-size: 12pt;" =
class=3D""><br class=3D""></span></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span style=3D"font-size: 12pt;" =
class=3D"">2. I tried passing conf param&nbsp;</span><span =
style=3D"font-size: 12pt;" class=3D"">--enable-kernel=3D2.6.27, I still =
get the same error</span><br class=3D""></div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D""><span style=3D"font-size: 12pt;" =
class=3D""><br class=3D""></span></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span style=3D"font-size: 12pt;" =
class=3D"">any idea ?</span></div></div><span style=3D"font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
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
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Helvetica; =
font-size: 13px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_1DEAA630-3A55-4D30-8248-F4BD10D18C11--

--Apple-Mail=_4C049023-317B-401F-AAB2-CAFFAA57CBC3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXGqF0ACgkQuwUzVZGdMxQa+gCeKF1tAFsKAt5vFn7EnZ4gD+nj
vRIAn3Dh3Q+MgQ0GpJaxAOrjIUnx1qfL
=0Plb
-----END PGP SIGNATURE-----

--Apple-Mail=_4C049023-317B-401F-AAB2-CAFFAA57CBC3--
