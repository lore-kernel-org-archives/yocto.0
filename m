Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8422E00932; Tue, 21 Apr 2015 18:46:45 -0700 (PDT)
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
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A55B6E003A8
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 18:46:43 -0700 (PDT)
Received: by pdbqa5 with SMTP id qa5so258713141pdb.1
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 18:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=RfAjGMHm8xKHpMVrl6rKG2BeYmZ5nBZyf7PYHyRbij8=;
	b=yYFNafmpKLtu61ydUjOqmIOBoPtlGYLgmb6RpQM3VaBf0nYmhpyCysBAZlDjeSnjvG
	Ujj8Y1Cku4ZEAX6Jr3h6lWczt25uFEtfOJ7AdfXtXavxcIvTFJJZAuIz3/k87O9RJurY
	Z9m9DfZJkTFBb1veV5kkr28CADKK5FPKezeR5m2MdkfOWsXvgZP7RSDh7b6RVrzUYIcr
	Th747/JKsYgDu6IDGrqHV2tXs1UAz4Gznp6RJYLn3JojBZM3QK1bVZqjqbrC18jFOXQH
	QwrqgyP0Ce6rT9msxDSgj7xzeZXFED2qDAAcPBad0Ie5kC3y+n3yfd9LOgZkUcDoLMiT
	HcEw==
X-Received: by 10.70.56.4 with SMTP id w4mr42902406pdp.148.1429667202807;
	Tue, 21 Apr 2015 18:46:42 -0700 (PDT)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id o4sm3294578pdh.22.2015.04.21.18.46.41
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 21 Apr 2015 18:46:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <AM3PR06MB4512D0124741E48B0402FF48AEF0@AM3PR06MB451.eurprd06.prod.outlook.com>
Date: Tue, 21 Apr 2015 18:46:40 -0700
Message-Id: <A63533E1-92FB-4C03-8984-7F3B74932AF7@gmail.com>
References: <AM3PR06MB4512D0124741E48B0402FF48AEF0@AM3PR06MB451.eurprd06.prod.outlook.com>
To: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libc6-dbg-2.20-r0.core2_64.rpm empty
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
X-List-Received-Date: Wed, 22 Apr 2015 01:46:46 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C06DA26D-5603-4B8A-9A5A-BE8857630CFC"

--Apple-Mail=_C06DA26D-5603-4B8A-9A5A-BE8857630CFC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Apr 21, 2015, at 6:18 AM, Francois P. Gallichand =
<francois.p.gallichand@ca.abb.com> wrote:
>=20
> Hello,
> =20
> I=92m trying to use Valgrind but when I start it, it gives me an error =
because a required library has its symbols stripped. After looking =
around, I found out that the libc6-dbg packages should be installed and =
it is. However, when I look into the rpm for libc6-dbg, it is empty. Why =
is that? What must I do so it contains the non-strip version of the =
library?

you can add  EXTRA_IMAGE_FEATURES +=3D =93dbg-pkgs=94 so you get debug =
info for whole image. if you just want libc to be with debug symbols add

may be adding=20

RDEPENDS_${PN} +=3D =93libc6-dbg=94

to valgrind recipe is better if it always required libc with debug info.
> =20
> Thank you.
> =20
> Fran=E7ois Gallichand
> Engineer - Software Group
> ABB Group
> Analytical Business
> (418)877-2944 x268
>=20
> <image001.png>
> =20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_C06DA26D-5603-4B8A-9A5A-BE8857630CFC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 21, 2015, at 6:18 AM, Francois P. Gallichand &lt;<a =
href=3D"mailto:francois.p.gallichand@ca.abb.com" =
class=3D"">francois.p.gallichand@ca.abb.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Hello,<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I=92m =
trying to use Valgrind but when I start it, it gives me an error because =
a required library has its symbols stripped. After looking around, I =
found out that the libc6-dbg packages should be installed and it is. =
However, when I look into the rpm for libc6-dbg, it is empty. Why is =
that? What must I do so it contains the non-strip version of the =
library?</div></div></div></blockquote><div><br class=3D""></div><div>you =
can add&nbsp;&nbsp;EXTRA_IMAGE_FEATURES +=3D =93dbg-pkgs=94 so you get =
debug info for whole image. if you just want libc to be with debug =
symbols add</div><div><br class=3D""></div><div>may be =
adding&nbsp;</div><div><br class=3D""></div><div>RDEPENDS_${PN} +=3D =
=93libc6-dbg=94</div><div><br class=3D""></div>to valgrind recipe is =
better if it always required libc with debug info.<br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Thank =
you.<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
style=3D"font-size: 10pt; font-family: Helv, sans-serif;" =
class=3D"">Fran=E7ois Gallichand<br class=3D"">Engineer - Software =
Group<br class=3D"">ABB Group<br class=3D"">Analytical Business<br =
class=3D"">(418)877-2944 x268<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span style=3D"font-size: 10pt; =
font-family: Helv, sans-serif;" class=3D""><br class=3D""></span><span =
id=3D"cid:image001.png@01D07C13.ADB50950">&lt;image001.png&gt;</span><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div><span style=3D"font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: rgb(149, 79, =
114); text-decoration: underline; font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
rgb(149, 79, 114); text-decoration: underline; font-family: Helvetica; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_C06DA26D-5603-4B8A-9A5A-BE8857630CFC--
