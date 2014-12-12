Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A924FE009E2; Fri, 12 Dec 2014 11:41:12 -0800 (PST)
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
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E6ACE009D9
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 11:41:08 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id rl12so7495818iec.16
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 11:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=LDMtAu9LygMPweFoftrC5qnbB3mzrXsbUTreBkeKb3E=;
	b=YN/T16eyNO9GGECUnvlY8k7x8ifComN232Uj7dp+0LFK8j3nQ5htNPa7aZvQTvLC4p
	BblUdXg7jsEC2ruI6UEIBLtNSr/cg2zHRwQcOCKdv/Yuf7hIipblDN+t8+XXFOqaOB74
	zdMvIO5KHGqK4jDwlWXQ2b2QcUXiSMQT9vFQ//asY1RZIb4Ur0/GgcN9x+A8x+q9UTNI
	Qpcv02ZllThvOtfGXYRbNlcmJePrAY0+PoBkhUDMiba14zCTf7BQDuREq+oEkVW/dlYP
	l2Ys2zIHPZgTg7v7HEC71ACGM45hR9m2p/R+EX4qhqINsp72OJ9TK3LyApbI6S9ZnYvN
	xX8w==
X-Received: by 10.107.7.94 with SMTP id 91mr16852283ioh.27.1418413267398;
	Fri, 12 Dec 2014 11:41:07 -0800 (PST)
Received: from 10.168.191.178-ra01.englewood.co.denver.comcast.net
	(fw01.aurora.co.denver.comcast.net. [198.178.8.81])
	by mx.google.com with ESMTPSA id
	b194sm1044628iob.38.2014.12.12.11.41.06 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 12 Dec 2014 11:41:06 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984117EA89@AZ-US1EXMB03.global.avaya.com>
Date: Fri, 12 Dec 2014 11:41:04 -0800
Message-Id: <176725E8-EB4F-475E-9D53-6FB7F137A1C7@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377984117EA89@AZ-US1EXMB03.global.avaya.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
X-Mailer: Apple Mail (2.1993)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How long are stable branches maintained?
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
X-List-Received-Date: Fri, 12 Dec 2014 19:41:12 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E9CC2092-B18F-4FD8-863A-BFBB3C9A3B68"

--Apple-Mail=_E9CC2092-B18F-4FD8-863A-BFBB3C9A3B68
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Dec 12, 2014, at 5:48 AM, Vuille, Martin (Martin) =
<vmartin@avaya.com> wrote:
>=20
> I have read the information at =
https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance =
<https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance>
> =20
> I would like to know how long stable branches are maintained.
> =20

as long as patches are actively sent. for more details see

https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

> If we are using daisy (1.6), how long can we count on point releases =
with
> security patches before we should plan to upgrade to a newer release?
> =20


> MV
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_E9CC2092-B18F-4FD8-863A-BFBB3C9A3B68
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 12, 2014, at 5:48 AM, Vuille, Martin (Martin) &lt;<a =
href=3D"mailto:vmartin@avaya.com" class=3D"">vmartin@avaya.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Verdana; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I have =
read the information at<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance" =
style=3D"color: purple; text-decoration: underline;" =
class=3D"">https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance</a=
><o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I would =
like to know how long stable branches are maintained.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div></div></blockquote><div><br =
class=3D""></div><div>as long as patches are actively sent. for more =
details see</div><div><br class=3D""></div><div><a =
href=3D"https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance" =
class=3D"">https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance</a=
></div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: Verdana; font-size: 12px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">If we are using daisy (1.6), how long can we count on point =
releases with<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">security patches before we should plan to upgrade to a newer =
release?<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div></div></blockquote><div><br =
class=3D""></div><div><br class=3D""></div><blockquote type=3D"cite" =
class=3D""><div class=3D""><div class=3D"WordSection1" style=3D"page: =
WordSection1; font-family: Verdana; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">MV<o:p class=3D""></o:p></div></div><span style=3D"font-family:=
 Verdana; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
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

--Apple-Mail=_E9CC2092-B18F-4FD8-863A-BFBB3C9A3B68--
