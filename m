Return-Path: <rjiejie@gmail.com>
Received: from mail-da0-f47.google.com (mail-da0-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7246BE00498
	for <yocto@yoctoproject.org>; Mon,  6 May 2013 01:08:35 -0700 (PDT)
Received: by mail-da0-f47.google.com with SMTP id k13so1705763dae.34
	for <yocto@yoctoproject.org>; Mon, 06 May 2013 01:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:content-type:subject:message-id:date:to
	:mime-version:x-mailer;
	bh=rhiSR0PpFUbIZ60LExbYUa6ji00fMz8xeQZ1TPk+Ujc=;
	b=qHPmNQmtWfPmCnqN5sw5qkhhQu0iEBHjMJqbsFC9fm55RQlTFhT3GV2+yYGWyIa2cz
	tEvK9wEZRUXLHfRIzhWp380tLmw9fE5Y8gATwmRoMzCrLpS92ZLxPopwn6f/yOj+bXL7
	16vfGzG/RA+NRbSrS8d8AO/C3VmUe6yzRSo0FuOMaAx/c08ewWt7RaFDyaeOlAbFC2NG
	Xt7NrtXNv1+gRyF5Qf/rAJz1Y3AnZR4gXJvQXegAAxuH+JzZUJXKWzfIieczaOY7Xx+b
	kTTgkA3L8Yz/5ouUu/D+RrW/eqI3jHtUdfZGBAPeiOhh917OjCFKmdu0oG3RpXOXG0E7
	YM6w==
X-Received: by 10.66.145.134 with SMTP id su6mr24960796pab.198.1367827715167; 
	Mon, 06 May 2013 01:08:35 -0700 (PDT)
Received: from [192.168.1.148] ([122.235.137.153])
	by mx.google.com with ESMTPSA id
	lq5sm24754770pab.19.2013.05.06.01.08.22 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 06 May 2013 01:08:34 -0700 (PDT)
From: jojo <rjiejie@gmail.com>
Message-Id: <26FE63BB-04B6-4226-8921-FE6D4DA9029F@gmail.com>
Date: Mon, 6 May 2013 16:08:13 +0800
To: Yocto list discussion <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
X-Mailer: Apple Mail (2.1503)
Subject: how to enable DFB with cairo
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
X-List-Received-Date: Mon, 06 May 2013 08:08:35 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5791666C-3069-4492-ADDD-73A8589AA117"

--Apple-Mail=_5791666C-3069-4492-ADDD-73A8589AA117
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

	I am not familiar with yocto project, and i want to enable DFB =
render backend in cairo,

	du to the patches =
"http://lists.linuxtogo.org/pipermail/openembedded-core/2011-November/0130=
37.html",

	i know about first need to disable X11 feature in my system by =
default, but i do not know about how to disable X11,

	Someone can point me out any clue to enable DFB with cairo in =
yocto ?=20

Thanks,
- Jojo





--Apple-Mail=_5791666C-3069-4492-ADDD-73A8589AA117
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space: pre; ">	</span>I am not familiar with yocto =
project, and i want to enable DFB render backend in =
cairo,</div><div><br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space: pre; ">	</span>du to the patches "<a =
href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2011-Novemb=
er/013037.html">http://lists.linuxtogo.org/pipermail/openembedded-core/201=
1-November/013037.html</a>",</div><div><br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	</span>i know =
about first need to disable X11 feature in my system by default, but i =
do not know about how to disable X11,</div><div><br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	=
</span>Someone&nbsp;can point me out any clue to enable DFB with cairo =
in yocto ?&nbsp;</div><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px; "><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
'Heiti SC'; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div><br =
class=3D"Apple-interchange-newline">Thanks,</div><div>- =
Jojo</div></div><div><br></div></div></span><br =
class=3D"Apple-interchange-newline"></span><br =
class=3D"Apple-interchange-newline">
</div>
<br></body></html>=

--Apple-Mail=_5791666C-3069-4492-ADDD-73A8589AA117--
