Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81CC2E01458
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 21:46:58 -0700 (PDT)
Received: by mail-pd0-f173.google.com with SMTP id v10so1751025pde.4
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 21:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=6uHJXijLt2Afl8goj6cfC8ICK6CeezYeTwWifxerOiM=;
	b=VX3eP8KaC5CdLDEF7sJv70uxkqyL178k20Gtwc/YYR4Qt/EvSMRHa3XHoiR95J7Xku
	S4xBEynXqxKECpJSdEL0exWiZBC7Y7Exnxe+bGaZD04Ma68lsRB+d/jiXMk1vhYOlpXf
	cCVY6VrGLlZEjtLUX9HKeI9D048WvzlzSVDnCkwp63vkcKbRH9TLmB/QGFcH2WKZHC5t
	xZO7tRuAasQK5Jl+knVFml9kJq4BnIuZb83OIi+f7B5SerUCMsBWA1A8Gv23KmL8am+J
	EoCJWs66fvnZs8rh9Mh/JlcAovHfFb6MOmWqXSa2gweBgRC5MeXGsg0rMkj3mzmTlG0T
	HM9g==
X-Received: by 10.68.223.10 with SMTP id qq10mr10814722pbc.57.1368074818273;
	Wed, 08 May 2013 21:46:58 -0700 (PDT)
Received: from stafford-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id z8sm1421837pbt.23.2013.05.08.21.46.56
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 08 May 2013 21:46:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <4F1B91CF7B31604FABE8442530201B780195B3@ALPURAPA22.e2k.ad.ge.com>
Date: Wed, 8 May 2013 21:46:56 -0700
Message-Id: <349B24DA-30D1-4541-A2C1-4EDC44CEE734@gmail.com>
References: <4F1B91CF7B31604FABE8442530201B780195B3@ALPURAPA22.e2k.ad.ge.com>
To: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
X-Mailer: Apple Mail (2.1503)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Does anyone have a recipe for efibootmgr?
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
X-List-Received-Date: Thu, 09 May 2013 04:46:58 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B50B5E56-8ABF-4272-8833-DE6BB201B83B"

--Apple-Mail=_B50B5E56-8ABF-4272-8833-DE6BB201B83B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On May 7, 2013, at 11:11 AM, "Wenholz, Brian (GE Healthcare)" =
<Brian.Wenholz@med.ge.com> wrote:

> All,
> =20
> I have been unsuccessful in finding one yet, and would prefer not to =
re-invent the wheel.

check

http://layers.openembedded.org/layerindex/

if its not there then it does not exist.=20
secondly check classic OE metadata and if it exists there

http://git.openembedded.org/openembedded/tree/recipes

then forward port it to relevant layer and post patches for the layer =
using relevant layer guidelines

> =20
> Brian Wenholz
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B50B5E56-8ABF-4272-8833-DE6BB201B83B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><base href=3D"x-msg://5116/"></head><body =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><br><div><div>On May 7, 2013, =
at 11:11 AM, "Wenholz, Brian (GE Healthcare)" &lt;<a =
href=3D"mailto:Brian.Wenholz@med.ge.com">Brian.Wenholz@med.ge.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><span style=3D"font-size: 10pt; font-family: =
Arial, sans-serif; ">All,<o:p></o:p></span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><span style=3D"font-size: 10pt; font-family: Arial, sans-serif; =
">&nbsp;</span></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif; "><span style=3D"font-size: =
10pt; font-family: Arial, sans-serif; ">I have been unsuccessful in =
finding one yet, and would prefer not to re-invent the =
wheel.<o:p></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; =
"></div></div></div></blockquote><div><br></div><div>check</div><div><br><=
/div><div><a =
href=3D"http://layers.openembedded.org/layerindex/">http://layers.openembe=
dded.org/layerindex/</a></div><div><br></div><div>if its not there then =
it does not exist.&nbsp;</div><div>secondly check classic OE metadata =
and if it exists there</div><div><br></div><div><a =
href=3D"http://git.openembedded.org/openembedded/tree/recipes">http://git.=
openembedded.org/openembedded/tree/recipes</a></div><div><br></div><div>th=
en forward port it to relevant layer and post patches for the layer =
using relevant layer guidelines</div><br><blockquote type=3D"cite"><div =
lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><div =
class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><span style=3D"font-size: 10pt; font-family: =
Arial, sans-serif; ">&nbsp;</span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><span =
style=3D"font-size: 10pt; font-family: Arial, sans-serif; ">Brian =
Wenholz<o:p></o:p></span></div></div>_____________________________________=
__________<br>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; ">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; =
">https://lists.yoctoproject.org/listinfo/yocto</a><br></div></blockquote>=
</div><br></body></html>=

--Apple-Mail=_B50B5E56-8ABF-4272-8833-DE6BB201B83B--
