Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7728E0072A; Thu, 11 Dec 2014 02:04:49 -0800 (PST)
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
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A513E002F9
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 02:04:37 -0800 (PST)
Received: by mail-ig0-f176.google.com with SMTP id l13so8578573iga.15
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 02:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=/yiZYaQN5l+OvrrYQYRAEzibaA3ZQ5C/zWL/XqnIdU0=;
	b=edAkC7Bih0egmLPu1pe8x9PxHLBlU2Jg+iHTijND1ehHVg6V20N5pKfjVRcCchHoUs
	xOPMmXGa8sFxqVgPAwhx1UOdvVgfNWuMwcveHbIPRf3LLIGVqHhtw0WrpKG9unLlQ4tE
	nOmyMIcu7d18YxhJQkP0+HPdpBSM6DTZ+48Mav9qjyuGWGw1xzw/eZ4mPikcxDpdbHy8
	9XvUAKVOtqxk5Mz9Hfr4I29sDWAKyz3zTK9g8zDlHfM2nwRr9VT4F3LVpx3l8V24oah7
	G+JqziYEMlz85Yq5ULR7LD+o+f/WFqm1eBq6NBOAFYLV6UdKQun7DTVpHZgB6hpWPE8C
	hefw==
X-Received: by 10.107.138.5 with SMTP id m5mr8643837iod.85.1418292276518;
	Thu, 11 Dec 2014 02:04:36 -0800 (PST)
Received: from 10.168.189.219-ra01.englewood.co.denver.comcast.net
	(fw01.aurora.co.denver.comcast.net. [198.178.8.81])
	by mx.google.com with ESMTPSA id n4sm267997igr.15.2014.12.11.02.04.35
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Dec 2014 02:04:35 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8521E22093F@USSTLZ-PMSG012.emrsn.org>
Date: Thu, 11 Dec 2014 02:04:34 -0800
Message-Id: <F9A75476-0E0A-4908-B047-2FB8028ACB8A@gmail.com>
References: <20141211004713.GC4102@mentor.com>
	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
	<3204FE6663E1F14CAF4CA6928E60C8521E22093F@USSTLZ-PMSG012.emrsn.org>
To: Neil.Wu@Emerson.com
X-Mailer: Apple Mail (2.1993)
Cc: yocto@yoctoproject.org
Subject: Re: add files to dirctory in packages-split
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
X-List-Received-Date: Thu, 11 Dec 2014 10:04:49 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8397414F-A3E9-442A-9BC5-20244FE8CB26"

--Apple-Mail=_8397414F-A3E9-442A-9BC5-20244FE8CB26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Dec 11, 2014, at 1:35 AM, Neil.Wu@Emerson.com wrote:
>=20
> Hi all,
> I want to add some files to the specified  directory what in =
packages-split.
> =20
> How to do it ?

FILES_<name-of-package> +=3D =E2=80=9C/path/to/file"

> =20
> Thank you
> Neil
> =20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_8397414F-A3E9-442A-9BC5-20244FE8CB26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 11, 2014, at 1:35 AM, <a =
href=3D"mailto:Neil.Wu@Emerson.com" class=3D"">Neil.Wu@Emerson.com</a> =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"Section1" style=3D"page: Section1; font-family: Verdana; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div class=3D""><div class=3D""><div class=3D""><div class=3D""><div=
 class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">Hi all,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">I want to add some files to the specified =
&nbsp;directory what in packages-split.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">How to do it =
?</span></div></div></div></div></div></div></div></div></blockquote><div>=
<br class=3D""></div><div>FILES_&lt;name-of-package&gt; +=3D =
=E2=80=9C/path/to/file"</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div class=3D"Section1" style=3D"page: =
Section1; font-family: Verdana; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div class=3D""><div class=3D""><div=
 class=3D""><div class=3D""><div class=3D""><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">Thank you<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">Neil<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><span style=3D"font-size: 11pt; =
font-family: Calibri, sans-serif; color: rgb(31, 73, 125);" =
class=3D"">&nbsp;</span></div></div></div></div></div></div></div><span =
style=3D"font-family: Verdana; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Verdana; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Verdana; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Verdana; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Verdana; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Verdana; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Verdana; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Verdana; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"color: purple; text-decoration: underline; font-family: =
Verdana; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_8397414F-A3E9-442A-9BC5-20244FE8CB26--
