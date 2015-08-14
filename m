Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28D8DE00A54; Thu, 13 Aug 2015 23:20:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C42E009B8
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:20:40 -0700 (PDT)
Received: by pabyb7 with SMTP id yb7so53267949pab.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=aa2f7SCKjIoqIwMiVBYf6NQV1igiYKI8VtAcN6J+dPo=;
	b=PdAl4Abv49jjqYbkwZ0+DRcCVOh3Fz4Y698TBraUmuGc4YnTvjg2XoInFMCbKbFIo5
	hWHeQr2Qf0eZM1Kkxcx+NP1KS6l3dFEUZ/eNy/D97pbTiNJ7ZU0UMS212miJaY4Ybu6p
	li7OLWNucF7YwQUR4mX2Un1WzntvlUqy8/tP1oLtXxJcowM+fGJpLunL6TmIe/HGXt3i
	eteBCI0oom5GGKNyninGeNmnrZ+u9VY3iSgdjtGDhVqce+aolmmtjdHSfWIavfsrLNfA
	ngyM8dd+txLxiCq/EWN3Uxhaxn1tFy0xfO2uHJE9q8Dj1kLtIs62ftnWOvVoNlglx4n1
	FJ2A==
X-Received: by 10.66.63.99 with SMTP id f3mr86360588pas.6.1439533240383;
	Thu, 13 Aug 2015 23:20:40 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:7d4a:3993:27b2:859?
	([2601:646:8601:4580:7d4a:3993:27b2:859])
	by smtp.gmail.com with ESMTPSA id
	d13sm4693949pbu.51.2015.08.13.23.20.38
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Aug 2015 23:20:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <HK2PR0201MB0931B1E128C7F804CB9DEED6FFB60@HK2PR0201MB0931.apcprd02.prod.outlook.com>
Date: Thu, 13 Aug 2015 23:20:34 -0700
Message-Id: <7A2410D4-3C40-40AA-8E2F-72726C3141FC@gmail.com>
References: <HK2PR0201MB0931BD840FB4D45904641EDAFFB60@HK2PR0201MB0931.apcprd02.prod.outlook.com>
	<HK2PR0201MB0931B1E128C7F804CB9DEED6FFB60@HK2PR0201MB0931.apcprd02.prod.outlook.com>
To: Neelkumar Patel <neel.patel@einfochips.com>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cortexa15 toolchain compilation option
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
X-List-Received-Date: Fri, 14 Aug 2015 06:20:44 -0000
X-Groupsio-MsgNum: 26109
Content-Type: multipart/signed;
	boundary="Apple-Mail=_801B3880-699B-448A-8353-A182905412F8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_801B3880-699B-448A-8353-A182905412F8
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8165A4BE-CF5F-437C-A375-330F27DA7381"

--Apple-Mail=_8165A4BE-CF5F-437C-A375-330F27DA7381
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jun 1, 2015, at 12:02 AM, Neelkumar Patel =
<neel.patel@einfochips.com> wrote:
>=20
> Hi,
>=20
> Sorry option is  -mfloat-abi=3Dhard.
>=20
> We have to provide below option during compilation.
> arm-XXX-gcc  -mfloat-abi=3Dhard hello.c
>=20
> We do not want to give -mfloat-abi=3Dhard option during compilation.

What is the reason for not using it ? hard float is ABI level decision, =
if your system is running base OS with hard float turned on you dont =
have this choice to not use it
if you are using SDK environment then please use $CC variable and its =
ilk to get it right set of options to compile the application and good =
thing is that when you turn
this into a bitbake recipe to build the app it will still work.

>=20
> If we do not provide that option (arm-XXX-gcc  hello.c ) then it gives =
below error.
> fatal error: gnu/stubs-soft.h: No such file or directory
>=20
> Thanks
> From: yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org> =
[mailto:yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org>] On Behalf Of Neelkumar Patel
> Sent: 01 June 2015 12:04
> To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Subject: [yocto] cortexa15 toolchain compilation option
>=20
> Hi,
>=20
> We are building the toolchain for cortexa15 CPU in oe-core and we are =
able to build the toolchain but during the compilation of the =
application we have to provide manually option =E2=80=9C--with-float=3Dhar=
d=E2=80=9D.
>=20
> e.g.  We have one application called =E2=80=9Chello.c=E2=80=9D. We =
have to provide below option for compilation. If we do not provide =
--with-float option then we are getting compilation error.
>=20
> arm-XXX-gcc  --with-float=3Dhard  hello.c
>=20
> Is there any option to remove =E2=80=9C=E2=80=94with-float=E2=80=9D =
option during the application compilation. Is there any change we have =
to do in oe-core ??
>=20
> Thanks in Advance.
>=20
> =
**************************************************************************=
**************************************************************************=
********* eInfochips Business Disclaimer: This e-mail message and all =
attachments transmitted with it are intended solely for the use of the =
addressee and may contain legally privileged and confidential =
information. If the reader of this message is not the intended =
recipient, or an employee or agent responsible for delivering this =
message to the intended recipient, you are hereby notified that any =
dissemination, distribution, copying, or other use of this message or =
its attachments is strictly prohibited. If you have received this =
message in error, please notify the sender immediately by replying to =
this message and please delete it from your computer. Any views =
expressed in this message are those of the individual sender unless =
otherwise stated. Company has taken enough precautions to prevent the =
spread of viruses. However the company accepts no liability for any =
damage caused by any virus transmitted by this email. =
**************************************************************************=
**************************************************************************=
*********
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_8165A4BE-CF5F-437C-A375-330F27DA7381
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 1, 2015, at 12:02 AM, Neelkumar Patel &lt;<a =
href=3D"mailto:neel.patel@einfochips.com" =
class=3D"">neel.patel@einfochips.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D"">Hi,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"color: rgb(31, 73, =
125);" class=3D"">Sorry option is &nbsp;<b =
class=3D"">-mfloat-abi=3Dhard.<o:p class=3D""></o:p></b></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><b class=3D""><span style=3D"color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span></b></div><div style=3D"margin:=
 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">We have =
to provide below option during compilation.<b class=3D""><o:p =
class=3D""></o:p></b></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" =
class=3D"">arm-XXX-gcc<b class=3D"">&nbsp; -mfloat-abi=3Dhard<span =
class=3D"Apple-converted-space">&nbsp;</span></b>hello.c<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"color: rgb(31, 73, =
125);" class=3D"">We do not want to give<span =
class=3D"Apple-converted-space">&nbsp;</span><b =
class=3D"">-mfloat-abi=3Dhard<span =
class=3D"Apple-converted-space">&nbsp;</span></b>option during =
compilation.</span></div></div></div></blockquote><div><br =
class=3D""></div><div>What is the reason for not using it ? hard float =
is ABI level decision, if your system is running base OS with hard float =
turned on you dont have this choice to not use it</div><div>if you are =
using SDK environment then please use $CC variable and its ilk to get it =
right set of options to compile the application and good thing is that =
when you turn</div><div>this into a bitbake recipe to build the app it =
will still work.</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div class=3D"WordSection1" style=3D"page: =
WordSection1; font-family: Helvetica; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"color: rgb(31, 73, =
125);" class=3D""><b class=3D""><o:p =
class=3D""></o:p></b></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" =
class=3D"">&nbsp;</span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D"">If we do not provide that =
option (arm-XXX-gcc<b class=3D"">&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></b>hello.c ) then it gives =
below error.<o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">fatal =
error: gnu/stubs-soft.h: No such file or directory<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"color: rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"color: rgb(31, 73, =
125);" class=3D"">Thanks<o:p class=3D""></o:p></span></div><div =
class=3D""><div style=3D"border-style: solid none none; =
border-top-color: rgb(181, 196, 223); border-top-width: 1pt; padding: =
3pt 0cm 0cm;" class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><b =
class=3D""><span lang=3D"EN-US" style=3D"font-size: 10pt; font-family: =
Tahoma, sans-serif;" class=3D"">From:</span></b><span lang=3D"EN-US" =
style=3D"font-size: 10pt; font-family: Tahoma, sans-serif;" =
class=3D""><span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto-bounces@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" =
class=3D"">yocto-bounces@yoctoproject.org</a><span =
class=3D"Apple-converted-space">&nbsp;</span>[<a =
href=3D"mailto:yocto-bounces@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" =
class=3D"">mailto:yocto-bounces@yoctoproject.org</a>]<span =
class=3D"Apple-converted-space">&nbsp;</span><b class=3D"">On Behalf =
Of<span class=3D"Apple-converted-space">&nbsp;</span></b>Neelkumar =
Patel<br class=3D""><b class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>01 June 2015 12:04<br =
class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" class=3D"">yocto@yoctoproject.org</a><br =
class=3D""><b class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>[yocto] cortexa15 toolchain =
compilation option<o:p class=3D""></o:p></span></div></div></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Hi,<o:p class=3D""></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">We are building the toolchain for =
cortexa15 CPU in oe-core and we are able to build the toolchain but =
during the compilation of the application we have to provide manually =
option =E2=80=9C--with-float=3Dhard=E2=80=9D.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">e.g.&nbsp; =
We have one application called =E2=80=9Chello.c=E2=80=9D. We have to =
provide below option for compilation. If we do not provide<span =
class=3D"Apple-converted-space">&nbsp;</span><b =
class=3D"">--with-float</b><span =
class=3D"Apple-converted-space">&nbsp;</span>option then we are getting =
compilation error.<o:p class=3D""></o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">arm-XXX-gcc&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span><b =
class=3D"">--with-float=3Dhard</b><span =
class=3D"Apple-converted-space">&nbsp;</span>&nbsp;hello.c<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Is there =
any option to remove =E2=80=9C=E2=80=94with-float=E2=80=9D option during =
the application compilation. Is there any change we have to do in =
oe-core ??<o:p class=3D""></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Thanks in Advance.<o:p class=3D""></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 12pt; =
font-family: 'Times New Roman', serif;" =
class=3D"">***************************************************************=
**************************************************************************=
******************** eInfochips Business Disclaimer: This e-mail message =
and all attachments transmitted with it are intended solely for the use =
of the addressee and may contain legally privileged and confidential =
information. If the reader of this message is not the intended =
recipient, or an employee or agent responsible for delivering this =
message to the intended recipient, you are hereby notified that any =
dissemination, distribution, copying, or other use of this message or =
its attachments is strictly prohibited. If you have received this =
message in error, please notify the sender immediately by replying to =
this message and please delete it from your computer. Any views =
expressed in this message are those of the individual sender unless =
otherwise stated. Company has taken enough precautions to prevent the =
spread of viruses. However the company accepts no liability for any =
damage caused by any virus transmitted by this email. =
**************************************************************************=
**************************************************************************=
*********<o:p class=3D""></o:p></span></div></div><span =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
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

--Apple-Mail=_8165A4BE-CF5F-437C-A375-330F27DA7381--

--Apple-Mail=_801B3880-699B-448A-8353-A182905412F8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXNiLYACgkQuwUzVZGdMxTURgCfQFjNUiPPFMLPSRa6AU3/bBZT
DfUAn2nigM6YBxQbeLs0PUVZaYW0LzPX
=vciK
-----END PGP SIGNATURE-----

--Apple-Mail=_801B3880-699B-448A-8353-A182905412F8--
