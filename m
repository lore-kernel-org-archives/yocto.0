Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f54.google.com (mail-pb0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07662E014AD;
	Wed, 10 Apr 2013 23:03:57 -0700 (PDT)
Received: by mail-pb0-f54.google.com with SMTP id xa7so680393pbc.13
	for <multiple recipients>; Wed, 10 Apr 2013 23:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=4VYl7Sp44fpveyfWtoTZl/2N/i0Z+axXzFBjLHqSY/I=;
	b=s7HIryLWs8bGkQPsOOhnNYJOlAtkGuZ3YK6rxNaFjBWQPu6XidcpTq/0Pe8ixXqgAE
	HeBfUAyUbuXdVm/v5rXTEZjGddx6pjV8RVgKkWILENu9JEyRsVELnoWRQwtoyjtxM29r
	EMkxOJoTwp/6fmWbJAjmtMTmvFwuDqfTp8r6p/MTv/nNnlc4ruLkvznDtgrL/tDrGxMW
	CIjLV/Xjhf1EVxQvtuJ9QWsL40F2IboWA8E3DaYAgXLYMv1QVffdUoND31BIuFg1GSv5
	ZyW1+eHf3//F30nVhaQgvG0yl49tnSw2SLh4fszXnbZ1IvVjKsyerqZ9PpZwdBlve/co
	Hjvg==
X-Received: by 10.68.160.226 with SMTP id xn2mr6748169pbb.174.1365660236808;
	Wed, 10 Apr 2013 23:03:56 -0700 (PDT)
Received: from jchheda-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id yr10sm3562610pab.6.2013.04.10.23.03.54
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Apr 2013 23:03:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <2c7fcb27-77ce-4ff3-a94f-f4d1d708343f@VA3EHSMHS029.ehs.local>
Date: Wed, 10 Apr 2013 23:03:51 -0700
Message-Id: <097135E1-DE1B-457F-A4D5-A0BEB50A8826@gmail.com>
References: <2c7fcb27-77ce-4ff3-a94f-f4d1d708343f@VA3EHSMHS029.ehs.local>
To: Sipke Vriend <sipke.vriend@xilinx.com>
X-Mailer: Apple Mail (2.1503)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: Re: Xilinx git repositories moved to github
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
X-List-Received-Date: Thu, 11 Apr 2013 06:03:57 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_94FE82F7-4889-4512-923A-E69F74429895"

--Apple-Mail=_94FE82F7-4889-4512-923A-E69F74429895
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Sipke

On Apr 10, 2013, at 9:19 PM, Sipke Vriend <sipke.vriend@xilinx.com> =
wrote:

> Hi,
> =20
> If your recipes rely on repositories at git.xilinx.com, please update =
them to use
> github.com/Xilinx.


You might want to check if layer index needs to be notified of this =
change and surely other distributions e.g. angstrom etc.

> =20
> Regards
> Sipke
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_94FE82F7-4889-4512-923A-E69F74429895
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><base href=3D"x-msg://1719/"></head><body =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">Sipke<div><br><div><div>On Apr =
10, 2013, at 9:19 PM, Sipke Vriend &lt;<a =
href=3D"mailto:sipke.vriend@xilinx.com">sipke.vriend@xilinx.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-AU" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Calibri"><span =
style=3D"font-size: 11pt; ">Hi,<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Calibri"><span =
style=3D"font-size: 11pt; ">&nbsp;</span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Calibri"><span =
style=3D"font-size: 11pt; ">If your recipes rely on repositories at<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://git.xilinx.com" style=3D"color: purple; text-decoration: =
underline; ">git.xilinx.com</a>, please update them to =
use<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Calibri"><span style=3D"font-size: 11pt; "><a =
href=3D"http://github.com/Xilinx" style=3D"color: purple; =
text-decoration: underline; =
">github.com/Xilinx</a>.</span></font></div></div></div></blockquote><div>=
<br></div><div><br></div><div>You might want to check if layer index =
needs to be notified of this change and surely other distributions e.g. =
angstrom etc.</div><br><blockquote type=3D"cite"><div lang=3D"EN-AU" =
link=3D"blue" vlink=3D"purple" style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><div =
class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Calibri"><span =
style=3D"font-size: 11pt; "><o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Calibri"><span =
style=3D"font-size: 11pt; ">&nbsp;</span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Calibri"><span =
style=3D"font-size: 11pt; ">Regards<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Calibri"><span =
style=3D"font-size: 11pt; =
">Sipke<o:p></o:p></span></font></div></div><br =
clear=3D"all">_______________________________________________<br>yocto =
mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" style=3D"color: =
purple; text-decoration: underline; ">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; =
">https://lists.yoctoproject.org/listinfo/yocto</a><br></div></blockquote>=
</div><br></div></body></html>=

--Apple-Mail=_94FE82F7-4889-4512-923A-E69F74429895--
