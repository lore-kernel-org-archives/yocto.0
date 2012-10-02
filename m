Return-Path: <jonas.l.jonsson@ericsson.com>
Received: from mailgw1.ericsson.se (mailgw1.ericsson.se [193.180.251.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6820CE002AC
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 02:23:14 -0700 (PDT)
X-AuditID: c1b4fb2d-b7fea6d000002ccb-99-506ab2800caa
Received: from esessmw0247.eemea.ericsson.se (Unknown_Domain [153.88.253.125])
	by mailgw1.ericsson.se (Symantec Mail Security) with SMTP id
	67.0F.11467.082BA605; Tue,  2 Oct 2012 11:23:13 +0200 (CEST)
Received: from ESESSCMS0355.eemea.ericsson.se ([169.254.1.103]) by
	esessmw0247.eemea.ericsson.se ([153.88.115.93]) with mapi;
	Tue, 2 Oct 2012 11:23:10 +0200
From: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
To: "Yocto Mailinglist (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Date: Tue, 2 Oct 2012 11:23:09 +0200
Thread-Topic: Howto add TIPC-support into kernel?
Thread-Index: Ac2gf4nDi17a6C4ZSLqIrFdagEYJ7g==
Message-ID: <C1024C359E9D4C4EBC664A0111A52A3F7CFB32F185@ESESSCMS0355.eemea.ericsson.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: sv-SE, en-US
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrELMWRmVeSWpSXmKPExsUyM+JvrW7jpqwAg7/bWSwmvVzD5sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoErY+3sDUwFp/krjj7oY2pgnMPbxcjJISFgIvHn93dWCFtM4sK9
	9WxdjFwcQgKnGCWO79rGAuEsYJR4u/QHC0gVG1DHhJU3GbsYOThEBDwlrjzQBQmzCKhINP58
	BDZIWEBHovfxFyYQW0TAUGLd9x/sELaexJen0xlBbF6BcIljP16B1TAKyErc/34PbDyzgLjE
	rSfzmSAOEpBYsuc8M4QtKvHy8T9WiHoZiVOL/rNC1OdLrDy3nR1ipqDEyZlPWCYwCs1CMmoW
	krJZSMog4joSC3Z/YoOwtSWWLXzNDGOfOfCYCVl8ASP7Kkbh3MTMnPRyQ73Uoszk4uL8PL3i
	1E2MwHg4uOW37g7GU+dEDjFKc7AoifNyJe33FxJITyxJzU5NLUgtii8qzUktPsTIxMEp1cCY
	rCRkeenmlL3eQrwqtiGOUslzRQL+i+xjCPj8Jvl21B3Rb4fSuPh8UxnMJc/eufFIwGa60FPt
	+YKXXWeqPWp+s6vZlv/Otx/7X+gfWrzV49AMbuHnqVZK4iyrWLfJTbjoMU9Wc2KwY9ANiwdL
	D86cnp3uu+tAQVRWYXq/RTC7nXSnarZOjZcSS3FGoqEWc1FxIgBvTDjIVQIAAA==
Subject: Howto add TIPC-support into kernel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Oct 2012 09:23:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB32F185ESESSCMS0355e_"

--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB32F185ESESSCMS0355e_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi!

I'm writing a recipe for a piece of software that requires TIPC support in =
the kernel.  I've tried to figure out a way to accomplish this within my bb=
-file, but with no success.  Is there a way to do such thing with Yocto, cu=
rrently I run 'bitbake -c menuconfig linux-yocto' (or is it yocto-linux, ca=
n't recall) and then I add 'kernel-modules' to IMAGE_INSTALL_append in my '=
local.conf'-file?  I would like to have this dependency some-how contained =
within my recipe.

Thanks!

Best regards,
Jonas Jonsson


--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB32F185ESESSCMS0355e_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Arial, sans-serif" size=3D"2">
<div>Hi!</div>
<div>&nbsp;</div>
<div>I'm writing a recipe for a piece of software that requires TIPC suppor=
t in the kernel.&nbsp; I've tried to figure out a way to accomplish this wi=
thin my bb-file, but with no success.&nbsp; Is there a way to do such thing=
 with Yocto, currently I run 'bitbake -c menuconfig
linux-yocto' (or is it yocto-linux, can't recall) and then I add 'kernel-mo=
dules' to IMAGE_INSTALL_append in my 'local.conf'-file?&nbsp; I would like =
to have this dependency some-how contained within my recipe.</div>
<div>&nbsp;</div>
<div>Thanks!</div>
<div>&nbsp;</div>
<div>Best regards,</div>
<div>Jonas Jonsson </div>
<div>&nbsp;</div>
</font>
</body>
</html>

--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB32F185ESESSCMS0355e_--
