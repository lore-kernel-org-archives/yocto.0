Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2E7AE01525
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 09:44:53 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so10952191pdj.17
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 09:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=OER0AbjLZ1dYHyXGu6+CV9DGXMzvJ58fF/cBkCsfdpA=;
	b=hIcJpFu4QFsLNH6G/lvZh8SKcFJhbQGUuddkas15MI7p11GYVLzrxG30a/vwn6/hRs
	+s39J8eFt/xZ+bn20YqheufVFjADDuKIPY+ZDLxE2uwlxcCrmx2K31NttKvbZeSW8aQJ
	T0p3NSxkVHJl8xlhqMiS7i91jBmW2kRaWjvkEzOlRyt4UgmFlNg3hFrgx/b70lvuPnS6
	SLsAWT1SZzumvMFe25L0CbymwFgEsysgZjmR0ruTcM8n2ormBf7dstt2tuAos6zRchTK
	0C2S03nF0znSqlGr/pm/6lv2EcQyBEE5RO9y5S6krhmdYOuHxx/YTBVcI/s6WjmbH15z
	WQpw==
X-Received: by 10.66.118.227 with SMTP id kp3mr54926026pab.190.1373906692919; 
	Mon, 15 Jul 2013 09:44:52 -0700 (PDT)
Received: from ddeviny-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	pv5sm60663361pac.14.2013.07.15.09.44.50 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 15 Jul 2013 09:44:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <62673661A504604B856269DAADA8BC2820C765D5@ILPTWPVEXMB02.ecitele.com>
Date: Mon, 15 Jul 2013 09:44:55 -0700
Message-Id: <38FB7F71-DE66-4034-A905-6E803914E9FE@gmail.com>
References: <62673661A504604B856269DAADA8BC2820C765D5@ILPTWPVEXMB02.ecitele.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MACHINE setting
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
X-List-Received-Date: Mon, 15 Jul 2013 16:44:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_883A7549-3394-46B5-B0DE-4A2F45A5DAE8"

--Apple-Mail=_883A7549-3394-46B5-B0DE-4A2F45A5DAE8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Jul 15, 2013, at 8:28 AM, Michael Fainstein =
<Michael.Fainstein@ecitele.com> wrote:

> Hi,
> =20
> I have several similar boards with different PPC CPUs.
> How can I build packages for different MACHINEs without changing =
local.conf?
> I tried setting MACHINE and/or MACHINEOVERRIDES in my recipe that =
lists all my other recipes in DEPENDS. However, MACHINE setting affected =
only the main recipe, all other packages were built according to MACHINE =
in local.conf.
> =20
> What am I missing?

you have to set it in env e.g

MACHINE=3Dx bitbake <image>
MACHINE=3Dy bitbake <image>
=85.

> =20
> Thanks,
> Michael F.
> This e-mail message is intended for the recipient only and contains =
information which is CONFIDENTIAL and which may be proprietary to ECI =
Telecom. If you have received this transmission in error, please inform =
us by e-mail, phone or fax, and then delete the original and all copies =
thereof.
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_883A7549-3394-46B5-B0DE-4A2F45A5DAE8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"><base href=3D"x-msg://570/"></head><body =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><br><div><div>On Jul 15, 2013, =
at 8:28 AM, Michael Fainstein &lt;<a =
href=3D"mailto:Michael.Fainstein@ecitele.com">Michael.Fainstein@ecitele.co=
m</a>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; ">Hi,<o:p></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; ">I have several =
similar boards with different PPC CPUs.<o:p></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; ">How can I build packages for different MACHINEs =
without changing local.conf?<o:p></o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; ">I =
tried setting MACHINE and/or MACHINEOVERRIDES in my recipe that lists =
all my other recipes in DEPENDS. However, MACHINE setting affected only =
the main recipe, all other packages were built according to MACHINE in =
local.conf.<o:p></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; ">What am I =
missing?</div></div></div></blockquote><div><br></div><div>you have to =
set it in env e.g</div><div><br></div><div>MACHINE=3Dx bitbake =
&lt;image&gt;</div><div>MACHINE=3Dy bitbake =
&lt;image&gt;</div><div>=85.</div><br><blockquote type=3D"cite"><div =
lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><div =
class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><o:p></o:p></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; =
">Thanks,<o:p></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; ">Michael =
F.<o:p></o:p></div></div><p>This e-mail message is intended for the =
recipient only and contains information which is CONFIDENTIAL and which =
may be proprietary to ECI Telecom. If you have received this =
transmission in error, please inform us by e-mail, phone or fax, and =
then delete the original and all copies =
thereof.</p>_______________________________________________<br>yocto =
mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" style=3D"color: =
purple; text-decoration: underline; ">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; =
">https://lists.yoctoproject.org/listinfo/yocto</a><br></div></blockquote>=
</div><br></body></html>=

--Apple-Mail=_883A7549-3394-46B5-B0DE-4A2F45A5DAE8--
