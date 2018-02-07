Return-Path: <matetuske@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73436E00E0B; Wed,  7 Feb 2018 12:44:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matetuske[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 446D0E00D91
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 12:44:11 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id x127so2884389qkb.12
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 12:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=DnmNSUvaJsok/rSpmXHwAc3iPb8ODeaMVRyw1okSZ1Y=;
	b=YUQAGSZFNP79VEXsA4keLBP3WwPY1dUscdchvIj6AR6m3zaboYTQLQn4PlLS7UE6wk
	d8Z9rouBYmEDEUkpogUg18uJhJ/QWKEc5M7AEMfU8Vpik0CMRPbE8UyWCqElKS8LkuWa
	FtPM8vL4iEEpOyRtBikTy9dWyr1bJ/Q8cZjG6cI8E3H9d1Y2DZFKlWhdcFUTiLxwHsg/
	2M77s+qSYwWSQLgJ/QMXxhwNbtzIys0kXOI55FU+t6s9ytlUpCHoqPzJ1B61ii95j/VN
	TvaBsNeM/vtBAHikQ2zA++OB3YYQahbU4B2pilHF4h0fko8DrV9PA+mI0IG4k+7WNadP
	BsMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DnmNSUvaJsok/rSpmXHwAc3iPb8ODeaMVRyw1okSZ1Y=;
	b=MhLTVnaoSWMWRK94mZZpMXjwNO1xAT52ThfknOxVFDRl6v1CG7XyWSuOpz9o4lIvOP
	3IAp686MlXfKR4T0PWHeYDXR/tmdtJdFUkodB9/J1LaW0GXqKUIK1nuFgnF43L3pwzl+
	i4XyMf5ydVHESoyTHZWQ6hOBx//L1dvCRIJtfzRA2buCdZdMsrdCa5FG+cFX6r0x0JML
	6Rh97QV4ATj+yjG75hh9cuYShTnQj1LfJxtMuFUnsbg9KDalM5dbT2ruj7kWk3lXQUNj
	YD6vCYMVoytis7nWHUAc3+v3tlJky+oiV7eUKGG6oONy+9otvyOmLJ/kCPaXX0zlmNyy
	Y94Q==
X-Gm-Message-State: APf1xPD2X89s/XymFCbZhZtWNldXs0hp4sgxR1Laft/MbOOgGnku9gGl
	Jeknp/GPbxCZ/gwadgBULsXbrbDjw1nJyeyEmzUbgFW1
X-Google-Smtp-Source: AH8x224X+HObad9Mnu7frcre0CKkaGQ2T3JMHvFatNL6hma+7abgDfLItoRM3DwPq9hj/S1+Fqdyc3tyvgtwC9mbkKg=
X-Received: by 10.233.221.197 with SMTP id r188mr11276375qkf.107.1518036250843;
	Wed, 07 Feb 2018 12:44:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.173.91 with HTTP; Wed, 7 Feb 2018 12:43:40 -0800 (PST)
From: =?UTF-8?B?TcOhdMOpIFTDvHNrZQ==?= <matetuske@gmail.com>
Date: Wed, 7 Feb 2018 21:43:40 +0100
Message-ID: <CAMm5SjSds4Fs=4vu=owwfKpJo_EYbOe5MzAdNesgzzMhJ2ytxg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: mono build issue
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
X-List-Received-Date: Wed, 07 Feb 2018 20:44:13 -0000
Content-Type: multipart/alternative; boundary="94eb2c04429e7ce0e40564a55bcc"

--94eb2c04429e7ce0e40564a55bcc
Content-Type: text/plain; charset="UTF-8"

Hi,

I try to build custom image with mono. Previously I did it successfully,
but now I ran into some issue and I cannot solve it.

ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/3.5-api/Microsoft.Build.Engine.dll contained in package
mono-libs-3.5 requires mono(System.Xml), but no providers found in
RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/3.5-api/Microsoft.Build.Utilities.v3.5.dll contained in
package mono-libs-3.5 requires mono(System), but no providers found in
RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/3.5-api/Microsoft.Build.Engine.dll contained in package
mono-libs-3.5 requires mono(mscorlib), but no providers found in
RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configuration.Crypto.dll
contained in package mono-configuration-crypto requires
mono(mscorlib), but no providers found in
RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configuration.Crypto.dll
contained in package mono-configuration-crypto requires
mono(System.Xml), but no providers found in
RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configuration.Crypto.dll
contained in package mono-configuration-crypto requires mono(System),
but no providers found in RDEPENDS_mono-configuration-crypto?
[file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configuration.Crypto.dll
contained in package mono-configuration-crypto requires
mono(System.Configuration), but no providers found in
RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/mono-configuration-crypto/4.5/Mono.Configuration.Crypto.dll
contained in package mono-configuration-crypto requires
mono(Mono.Security), but no providers found in
RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.6-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.6 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.6? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.6.2-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.6.2 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.6.2? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.7-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.7 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.7? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/xbuild/Microsoft/NuGet/Microsoft.NuGet.Build.Tasks.dll
contained in package mono-xbuild requires mono(mscorlib), but no
providers found in RDEPENDS_mono-xbuild? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.6.1-api/Mono.Debugger.Soft.dll contained in package
mono-api-4.6.1 requires mono(Mono.Cecil), but no providers found in
RDEPENDS_mono-api-4.6.1? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/gac/Mono.Messaging.RabbitMQ/4.0.0.0__0738eb9f132ed756/Mono.Messaging.RabbitMQ.dll
contained in package mono-gac requires mono(mscorlib), but no
providers found in RDEPENDS_mono-gac? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.5/Microsoft.CodeAnalysis.Scripting.dll contained in
package mono-libs-4.5 requires mono(System.Runtime.Loader), but no
providers found in RDEPENDS_mono-libs-4.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA run found fatal errors.
Please consider fixing them.
ERROR: mono-5.4.1.6-r0 do_package_qa: Function failed: do_package_qa

Can you help me with this?


regards,

Matthew

--94eb2c04429e7ce0e40564a55bcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I try to build custom image with mo=
no. Previously I did it successfully, but now I ran into some issue and I c=
annot solve it.</div><pre id=3D"gmail-hterm:copy-to-clipboard-source" style=
=3D"color:rgb(0,0,0);font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;word-spacing:0px;text-decoration-style:i=
nitial;text-decoration-color:initial">ERROR: mono-5.4.1.6-r0 do_package_qa:=
 QA Issue: /usr/lib/mono/3.5-api/Microsoft.Build.Engine.dll contained in pa=
ckage mono-libs-3.5 requires mono(System.Xml), but no providers found in RD=
EPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Micro=
soft.Build.Utilities.v3.5.dll contained in package mono-libs-3.5 requires m=
ono(System), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Micro=
soft.Build.Engine.dll contained in package mono-libs-3.5 requires mono(msco=
rlib), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configur=
ation-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(mscorlib), but no providers found in RDEPE=
NDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configur=
ation-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(System.Xml), but no providers found in RDE=
PENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configur=
ation-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(System), but no providers found in RDEPEND=
S_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configur=
ation-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(System.Configuration), but no providers fo=
und in RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configur=
ation-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(Mono.Security), but no providers found in =
RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6-api/Mono.=
Debugger.Soft.dll contained in package mono-api-4.6 requires mono(Mono.Ceci=
l), but no providers found in RDEPENDS_mono-api-4.6? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.2-api/Mon=
o.Debugger.Soft.dll contained in package mono-api-4.6.2 requires mono(Mono.=
Cecil), but no providers found in RDEPENDS_mono-api-4.6.2? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.7-api/Mono.=
Debugger.Soft.dll contained in package mono-api-4.7 requires mono(Mono.Ceci=
l), but no providers found in RDEPENDS_mono-api-4.7? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/xbuild/Micros=
oft/NuGet/Microsoft.NuGet.Build.Tasks.dll contained in package mono-xbuild =
requires mono(mscorlib), but no providers found in RDEPENDS_mono-xbuild? [f=
ile-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.1-api/Mon=
o.Debugger.Soft.dll contained in package mono-api-4.6.1 requires mono(Mono.=
Cecil), but no providers found in RDEPENDS_mono-api-4.6.1? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/gac/Mono.Mess=
aging.RabbitMQ/4.0.0.0__0738eb9f132ed756/Mono.Messaging.RabbitMQ.dll contai=
ned in package mono-gac requires mono(mscorlib), but no providers found in =
RDEPENDS_mono-gac? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.5/Microsoft=
.CodeAnalysis.Scripting.dll contained in package mono-libs-4.5 requires mon=
o(System.Runtime.Loader), but no providers found in RDEPENDS_mono-libs-4.5?=
 [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA run found fatal errors. Please con=
sider fixing them.
ERROR: mono-5.4.1.6-r0 do_package_qa: Function failed: do_package_qa<br></p=
re><div><pre id=3D"gmail-hterm:copy-to-clipboard-source" style=3D"color:rgb=
(0,0,0);font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;word-spacing:0px;text-decoration-style:initial;text-d=
ecoration-color:initial"><span style=3D"font-family:arial,sans-serif;color:=
rgb(34,34,34)">Can you help me with this?</span>
</pre><pre id=3D"gmail-hterm:copy-to-clipboard-source" style=3D"color:rgb(0=
,0,0);font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;word-spacing:0px;text-decoration-style:initial;text-dec=
oration-color:initial"><span style=3D"font-family:arial,sans-serif;color:rg=
b(34,34,34)"><br></span></pre><pre id=3D"gmail-hterm:copy-to-clipboard-sour=
ce" style=3D"color:rgb(0,0,0);font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;word-spacing:0px;text-decoratio=
n-style:initial;text-decoration-color:initial"><span style=3D"font-family:a=
rial,sans-serif;color:rgb(34,34,34)">regards,</span></pre><pre id=3D"gmail-=
hterm:copy-to-clipboard-source" style=3D"color:rgb(0,0,0);font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wor=
d-spacing:0px;text-decoration-style:initial;text-decoration-color:initial">=
<span style=3D"font-family:arial,sans-serif;color:rgb(34,34,34)">Matthew</s=
pan></pre></div></div>

--94eb2c04429e7ce0e40564a55bcc--
