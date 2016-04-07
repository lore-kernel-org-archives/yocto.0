Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53067E00C75; Thu,  7 Apr 2016 13:34:08 -0700 (PDT)
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
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C7B4E00C37
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 13:34:04 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id zm5so61103808pac.0
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2016 13:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=agaFN50LLp/2uDkkD5v+W8HkFGw3QQljDUnUriAx9Og=;
	b=r48oTFyfD44j8W+vbJjSM+4L1JCX9XzM/3gvXZbeMG1tW/ze2GdJ8ppy3znu0MyK7S
	LDuHCNN3ClgC4B4obpKq+60volRnQFDqsAC0O4uaqSvQ4kSHtFYUNeT20bSRN9N+i/m6
	89UtF/8gwY1E7BOkPdpcjw95fLtj8oyj8ui8T2exmBfvCwmmT3Vtm3CP3B8co4xE+WWZ
	FXyRq1n6vvhIxMqrAOI4QCBcqbULuL7TarXGr8iqRP2yGLP4n+4rDkfdmwSVZsN0NRL5
	/fZ5dJlH88w8GCkVpQRRNa8TdFCQsxbaOgYboQwukVv6+cDVsPPXoKLJyC16J2/e9Hax
	IjlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=agaFN50LLp/2uDkkD5v+W8HkFGw3QQljDUnUriAx9Og=;
	b=QZpjtdHjQTGSwqkOnWRiih6/2xlLxQr47BHs9KTo4rX7uSlFTi0x3muOat0Na7s7lI
	IOIzMVAf6Ga6dnPcZf1gI3WtQgWUIe6achH4LV1jAZC3tqBCPieKn9TNmWsfN4A9uNuV
	wV+FPD7F39QRMztMI+Ve0ta875CWpOY1otMc09bTyzbGuvdI4gbPl72RcdK5WLurmIMM
	hpxgeWf07Aoq77i8ofq0IoFgscqFN9k1OtMNygMYp65G/HMIzHkOar5FFMHaMTtEAZ9D
	lh9NgbeqjO4r4wtEIQGZkgqH20Ui8MBhJl960iStGz0Vl90/YAiNt9OJjRYOK4vb/qNk
	TiOw==
X-Gm-Message-State: AD7BkJIL2B7IEoK+bFI4i4BLORFRNHzCy4yAoVJ98f5KVai48acR5++Pw2ZPdzMMdKZ3xg==
X-Received: by 10.66.189.166 with SMTP id gj6mr7332834pac.158.1460061243557;
	Thu, 07 Apr 2016 13:34:03 -0700 (PDT)
Received: from [10.187.91.43] ([69.241.124.150])
	by smtp.gmail.com with ESMTPSA id
	oy2sm14089489pac.38.2016.04.07.13.34.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 07 Apr 2016 13:34:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <BN3PR01MB130439626CBEDC020B6F455887990@BN3PR01MB1304.prod.exchangelabs.com>
Date: Thu, 7 Apr 2016 13:33:57 -0700
Message-Id: <40A71D9C-DDEA-4020-A5EF-D2B75B90E772@gmail.com>
References: <BN3PR01MB130439626CBEDC020B6F455887990@BN3PR01MB1304.prod.exchangelabs.com>
To: "Washburn, David (washbudh)" <washbudh@mail.uc.edu>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help Cross Compiling for AVR
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
X-List-Received-Date: Thu, 07 Apr 2016 20:34:08 -0000
X-Groupsio-MsgNum: 29337
Content-Type: multipart/signed;
	boundary="Apple-Mail=_350A7A2C-86B5-4EB7-BBCD-BC8A79E506B2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_350A7A2C-86B5-4EB7-BBCD-BC8A79E506B2
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_99D9583D-FB80-41AF-A186-521A6292297B"

--Apple-Mail=_99D9583D-FB80-41AF-A186-521A6292297B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Apr 5, 2016, at 8:18 AM, Washburn, David (washbudh) =
<washbudh@mail.uc.edu> wrote:
>=20
> Hi All,
>=20
> I am attempting to get the AVR Toolchain working inside of Yocto, but =
unfortunately I'm relatively new to Yocto and keep seeing various errors =
I cannot resolve. I was able to follow the instructions HERE =
<http://www.nongnu.org/avr-libc/user-manual/install_tools.html> to get =
everything working locally, but I'm seeing various issues inside of =
Yocto. I was able to get binutils configured and installed correctly but =
I haven't had any luck getting GCC installed. I am able to get pass the =
configure and compile stages in Yocto, but when I get to the install =
task, there's always a failure. The failure stems from this task below, =
which is a part of GCC:
>=20
> # Add unwind.h, it comes from libgcc which we don't want to build =
again
> install =
/build-bundle/poky/build/tmp/sysroots/x86_64-linux/usr/lib/avr/gcc/avr/4.9=
.3/include/unwind.h
> =
/build-bundle/poky/build/tmp/work/cortexa53-vfp-neon-poky-linux-gnueabi/gc=
c-target-avr/4.9.3-r0/image/usr/lib/gcc/avr/4.9.3/include/
>=20
> The reason it fails is because one of the two paths is always =
incorrect, no matter how I attempt to configure the build. If I =
configure the TARGET_SYS to be 'avr' during the install task, the path =
to 'unwind.h' becomes what is shown above, but the unwind header is not =
there. I *think* it's due to the fact that the TARGET_SYS was set to our =
default 'arm-poky-linux-gnueabi' during the configure stage. If I try to =
set the configuration to have a TARGET_SYS of 'avr' it might resolve the =
issue, but unfortunately doing this causes the compile stage to fail =
with:
>     | Makefile:1571: t-oe: No such file or directory
>     | make[1]: *** No rule to make target `t-oe'.  Stop.
>=20

I think you should try with master first

> I am using a slightly modified version of the recipes shown in the =
link below.
>          =
https://lists.yoctoproject.org/pipermail/yocto/2014-December/022781.html =
<https://lists.yoctoproject.org/pipermail/yocto/2014-December/022781.html>=

>=20
> Lastly, here is a link to the GCC commit that talks about the need to =
copy over the file that is causing issues for me:
>          https://gcc.gnu.org/ml/gcc-patches/2003-03/msg00367.html =
<https://gcc.gnu.org/ml/gcc-patches/2003-03/msg00367.html>
>=20
> Thanks in advance for any help you can give, and I apologize if any of =
this is unclear, I am still relatively new to Yocto.
>=20
> Kind Regards,
>       David Washburn
>=20
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_99D9583D-FB80-41AF-A186-521A6292297B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 5, 2016, at 8:18 AM, Washburn, David (washbudh) &lt;<a =
href=3D"mailto:washbudh@mail.uc.edu" =
class=3D"">washbudh@mail.uc.edu</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; background-color: =
rgb(255, 255, 255); font-family: Calibri, Arial, Helvetica, sans-serif;" =
class=3D""><p style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""></p><div style=3D"color: rgb(34, 34, 34); font-family: arial, =
sans-serif; font-size: 12.8px;" class=3D"">Hi All,&nbsp;</div><div =
style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; =
font-size: 12.8px;" class=3D""><br class=3D""></div><div style=3D"color: =
rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;" =
class=3D"">I am attempting to get the AVR Toolchain working inside of =
Yocto, but unfortunately I'm relatively new to Yocto and keep seeing =
various errors I cannot resolve. I was able to follow the =
instructions&nbsp;<a =
href=3D"http://www.nongnu.org/avr-libc/user-manual/install_tools.html" =
target=3D"_blank" style=3D"color: rgb(17, 85, 204);" =
class=3D"">HERE</a>&nbsp;to get everything working locally, but I'm =
seeing various issues inside of Yocto.&nbsp;<span style=3D"font-size: =
12.8px;" class=3D"">I was able to get binutils configured and installed =
correctly but I haven't had any luck getting GCC installed. I am able to =
get pass the configure and compile stages in Yocto, but when I get to =
the install task, there's always a failure. The failure stems from this =
task below, which is a part of GCC:</span></div><br style=3D"color: =
rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;" =
class=3D""><div style=3D"color: rgb(34, 34, 34); font-family: arial, =
sans-serif; font-size: 12.8px;" class=3D""># Add unwind.h, it comes from =
libgcc which we don't want to build again</div><div style=3D"color: =
rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;" =
class=3D"">install&nbsp;/build-bundle/poky/<wbr =
class=3D"">build/tmp/sysroots/x86_64-<wbr =
class=3D"">linux/usr/lib/avr/gcc/avr/4.9.<wbr =
class=3D"">3/include/unwind.h&nbsp;</div><div style=3D"color: rgb(34, =
34, 34); font-family: arial, sans-serif; font-size: 12.8px;" =
class=3D"">/build-bundle/poky/<wbr =
class=3D"">build/tmp/work/cortexa53-vfp-<wbr =
class=3D"">neon-poky-linux-gnueabi/gcc-<wbr =
class=3D"">target-avr/4.9.3-r0/image/usr/<wbr =
class=3D"">lib/gcc/avr/4.9.3/include/</div><div style=3D"color: rgb(34, =
34, 34); font-family: arial, sans-serif; font-size: 12.8px;" =
class=3D""><div class=3D""><br class=3D""></div><div class=3D""><span =
style=3D"font-size: 12.8px;" class=3D"">The reason it fails is because =
one of the two paths is always incorrect, no matter how I attempt to =
configure the build. If I configure the TARGET_SYS to =
be&nbsp;'avr'&nbsp;during the install task, the path to 'unwind.h' =
becomes what is shown above, but the unwind header is not there. I =
*think* it's due to the fact that the TARGET_SYS was set to our =
default&nbsp;'<span class=3D"">arm-poky-linux-gnueabi' during the =
configure stage.&nbsp;</span>If I try to set the configuration to have a =
TARGET_SYS of 'avr' it might resolve the issue, but unfortunately doing =
this causes the compile stage to fail with:</span></div><div =
class=3D""><span style=3D"font-size: 12.8px;" class=3D""><div =
class=3D""><span class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;</span>| =
Makefile:1571: t-oe: No such file or directory</div><div class=3D""><span =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;</span>| make[1]: *** No rule to make =
target `t-oe'. &nbsp;Stop.</div><br =
class=3D""></span></div></div></div></div></blockquote><div><br =
class=3D""></div><div>I think you should try with master =
first&nbsp;</div><div><br class=3D""></div><blockquote type=3D"cite" =
class=3D""><div class=3D""><div id=3D"divtagdefaultwrapper" =
style=3D"font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; font-size: =
12pt; background-color: rgb(255, 255, 255); font-family: Calibri, Arial, =
Helvetica, sans-serif;" class=3D""><div style=3D"color: rgb(34, 34, 34); =
font-family: arial, sans-serif; font-size: 12.8px;" class=3D""><div =
class=3D""><span style=3D"font-size: 12.8px;" class=3D"">I am using a =
slightly modified version of the recipes shown in the link =
below.</span><br class=3D""></div><div class=3D""><span =
style=3D"font-size: 12.8px;" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;<a =
href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-December/02278=
1.html" target=3D"_blank" =
title=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-December/0227=
81.html
Ctrl+Click or tap to follow the link" style=3D"color: rgb(17, 85, 204);" =
class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/pipermail/yocto/2014-<wbr =
class=3D"">December/022781.html</a></span></div><div class=3D""><span =
style=3D"font-size: 12.8px;" class=3D""><br class=3D""></span></div><div =
class=3D""><span style=3D"font-size: 12.8px;" class=3D"">Lastly, here is =
a link to the GCC commit that talks about the need to copy over the file =
that is causing issues for me:</span></div><div class=3D""><span =
style=3D"font-size: 12.8px;" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;<a href=3D"https://gcc.gnu.org/ml/gcc-patches/2003-03/msg00367.html"=
 target=3D"_blank" style=3D"color: rgb(17, 85, 204);" =
class=3D"">https://gcc.gnu.org/ml/gcc-<wbr =
class=3D"">patches/2003-03/msg00367.html</a></span></div><div =
class=3D""><br class=3D""></div><div class=3D"">Thanks in advance for =
any help you can give, and I apologize if any of this is unclear, I am =
still relatively new to Yocto.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Kind Regards,</div><div class=3D"">&nbsp;=
 &nbsp; &nbsp; David Washburn</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div></div><br =
class=3D""><p style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""></p></div><span style=3D"font-family: Ubuntu; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Ubuntu; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_99D9583D-FB80-41AF-A186-521A6292297B--

--Apple-Mail=_350A7A2C-86B5-4EB7-BBCD-BC8A79E506B2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcGxDgACgkQuwUzVZGdMxSgSgCbByxlXtqPNQ3PwrS1YvtmgPlx
CI0An10WNCZmufIsMMao1Ah+Ir/IlydL
=LB8+
-----END PGP SIGNATURE-----

--Apple-Mail=_350A7A2C-86B5-4EB7-BBCD-BC8A79E506B2--
