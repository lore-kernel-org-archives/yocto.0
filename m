Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCFA3E009B8; Thu, 23 Apr 2015 20:10:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C1E6E008DC
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 20:10:21 -0700 (PDT)
Received: by pdbqd1 with SMTP id qd1so35997838pdb.2
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 20:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=vtoYSF9+Gfe5UVYaxCEad130R858GC2ZTQmZ/Wl+kHk=;
	b=zAzQ8cCH8W/WnHw/jK/PlvnTr8A0z6UpcseiOtmcm2QKbKdHowyBn4Y00G/4FRZ8je
	0LS71pnH8K2eScAw+ek0Mj/jkdZwsHiLDHkvJzdclmjiL56c8ZijMuNYAHjgiAvFbEDK
	ZtZmTEvDcv+iSlA28rlxCvHEQ1JdUt6J8kJiLIG0Tda1xbTZqt3f/gbG7qR9U5FV/fuw
	J9y+zY2Av7MgKVXntW82jEC1a4FNkDPIlx6ZL6cGSdH5Fz9wgeATWj7dePM8/wrDzW2N
	F0uiH94mTou+H9nV0wNt5cz6YFCbfj192RM/ETscDW5/VSYXQqJlZesCagBYNEP+hlFd
	DZhg==
X-Received: by 10.68.215.9 with SMTP id oe9mr10950394pbc.146.1429845021477;
	Thu, 23 Apr 2015 20:10:21 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:3172:4e4b:10da:ab03?
	([2601:9:3580:84c:3172:4e4b:10da:ab03])
	by mx.google.com with ESMTPSA id f1sm9462942pdp.24.2015.04.23.20.10.20
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 Apr 2015 20:10:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <51A964697D1B374D923D8F12DAC9906F972FD2A4@ORSMSX109.amr.corp.intel.com>
Date: Thu, 23 Apr 2015 20:10:18 -0700
Message-Id: <6F048A80-81B2-45A9-B730-F7E59CA006E6@gmail.com>
References: <51A964697D1B374D923D8F12DAC9906F972FD2A4@ORSMSX109.amr.corp.intel.com>
To: "Cai, Juliet Z" <juliet.z.cai@intel.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to specify required kernel version and BlueZ version in custom layer configuration?
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
X-List-Received-Date: Fri, 24 Apr 2015 03:10:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1B13553A-BA80-416A-B904-CA820AC97FFF"

--Apple-Mail=_1B13553A-BA80-416A-B904-CA820AC97FFF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Apr 23, 2015, at 6:12 PM, Cai, Juliet Z <juliet.z.cai@intel.com> =
wrote:
>=20
> I have a custom layer with recipes that require kernel 3.19 and BlueZ =
5.  I have two questions.
> =20
> 1.      Is there a place in my layer to specified required kernel =
version?  I see it can be done in machine/config, but my layer is not =
machine specific.

kernel versions are generally dictated by machine configs. you may =
document it in your README as to what you require for your layer to go =
into mix. you could also write a kernel bbappend which checks for kernel =
version =E2=80=98pythonically=E2=80=99 and barfs=20

> 2.      To switch to Bluez 5, I can add DISTRO_FEATURES_append =3D =E2=80=
=9C bluez5=E2=80=9D to local.config. Can I do something in my own layer =
configuration to have the same effect?

you can add same in layer.conf

> =20
> Thanks in advance,
> Juliet
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_1B13553A-BA80-416A-B904-CA820AC97FFF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 23, 2015, at 6:12 PM, Cai, Juliet Z &lt;<a =
href=3D"mailto:juliet.z.cai@intel.com" =
class=3D"">juliet.z.cai@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I have a =
custom layer with recipes that require kernel 3.19 and BlueZ 5.&nbsp; I =
have two questions.<o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt 0.5in; font-size: 11pt; font-family: Calibri, sans-serif; =
text-indent: -0.25in;" class=3D""><span class=3D"">1.<span =
style=3D"font-style: normal; font-variant: normal; font-weight: normal; =
font-size: 7pt; line-height: normal; font-family: 'Times New Roman';" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span></span>Is there a =
place in my layer to specified required kernel version?&nbsp; I see it =
can be done in machine/config, but my layer is not machine =
specific.</div></div></div></blockquote><div><br =
class=3D""></div><div>kernel versions are generally dictated by machine =
configs. you may document it in your README as to what you require for =
your layer to go into mix. you could also write a kernel bbappend which =
checks for kernel version =E2=80=98pythonically=E2=80=99 and =
barfs&nbsp;</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in =
0.0001pt 0.5in; font-size: 11pt; font-family: Calibri, sans-serif; =
text-indent: -0.25in;" class=3D""><o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt 0.5in; font-size: 11pt; font-family: =
Calibri, sans-serif; text-indent: -0.25in;" class=3D""><span =
class=3D"">2.<span style=3D"font-style: normal; font-variant: normal; =
font-weight: normal; font-size: 7pt; line-height: normal; font-family: =
'Times New Roman';" class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span></span>To switch to =
Bluez 5, I can add DISTRO_FEATURES_append =3D =E2=80=9C bluez5=E2=80=9D =
to local.config. Can I do something in my own layer configuration to =
have the same effect?</div></div></div></blockquote><div><br =
class=3D""></div><div>you can add same in layer.conf</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt =
0.5in; font-size: 11pt; font-family: Calibri, sans-serif; text-indent: =
-0.25in;" class=3D""><o:p class=3D""></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Thanks in advance,<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Juliet<o:p =
class=3D""></o:p></div></div><span style=3D"font-family: Helvetica; =
font-size: 14px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">--<span =
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

--Apple-Mail=_1B13553A-BA80-416A-B904-CA820AC97FFF--
