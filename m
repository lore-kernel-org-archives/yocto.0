Return-Path: <rjiejie@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1302E01304
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 06:36:24 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so11876170pbb.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 06:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=d5FTNNGUDoiG8eUMXzvIV/lEFv9WN3LvEWKRwKRqsmU=;
	b=u7bh8h1sBuC5ecS1GjNeDfa9UZPrrF9Z331ZozNT31ogJZkpyI1+Uly46Ko79G0v6T
	I0t4GqbpZ3IvUxWjImV86wiZm1tm2p0GNYMcsOy/vOeFtBKUx8y8s98hth/B8xE84z8k
	U55rIoioZ81D3/rE8WDAaDwgyi0pUFhv7mRyBcYXNuAeOT3Iiue9f4QR/jfzTbzMMGc6
	CPxjPD+P1xE3w6l7obB9eDUJMN+z77NjTLLNS/pBFCaMa4M4PBXfJSzYkW8+KJScv3lY
	1lwlcZGuysT8tLIbrtB++leGw2z5MTEeIXZYpeTpfOloOaruAXdfTn5/OV2tQjDIZceV
	Rkzw==
Received: by 10.68.223.35 with SMTP id qr3mr66388518pbc.83.1340112984649;
	Tue, 19 Jun 2012 06:36:24 -0700 (PDT)
Received: from [192.168.0.2] ([115.195.142.170])
	by mx.google.com with ESMTPS id ru4sm27912476pbc.66.2012.06.19.06.36.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 19 Jun 2012 06:36:23 -0700 (PDT)
From: jojo <rjiejie@gmail.com>
Date: Tue, 19 Jun 2012 21:36:16 +0800
Message-Id: <73B7E6F2-BFF2-4BF9-854F-1DED0C62D08E@gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Help with configuring Yocto with an external toolchain except "csl"
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
X-List-Received-Date: Tue, 19 Jun 2012 13:36:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0E213CD3-3D31-4C84-A246-5AF44BBEA117"

--Apple-Mail=_0E213CD3-3D31-4C84-A246-5AF44BBEA117
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

@all,
	I google some information about this topic and then,
	i found the case is that jut support "CodeSourcery labs" =
toolchain.
=09
	I think my external toolchain is not standard of directory like =
"tcmode-externl-csl".
	I can use "buildroot" to use this toolchian that just use three =
variables following :
		BR2_TOOLCHAIN_EXTERNAL_PREFIX
		BR2_TOOLCHAIN_EXTERNAL_PATH
		BR2_TOOLCHAIN_EXTERNAL_SYSROOT_PATH

	so there are some solution in poky ? thanks for you attention :)

B.R.
-- jojo





--Apple-Mail=_0E213CD3-3D31-4C84-A246-5AF44BBEA117
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">@all,<br><span class=3D"Apple-tab-span" style=3D"white-space: pre; ">	=
</span>I google some information about this topic and then,<br><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	</span>i found =
the case is that jut support "CodeSourcery labs" toolchain.<br><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	</span><br><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	</span>I think =
my external toolchain is not standard of directory like =
"tcmode-externl-csl".<br><span class=3D"Apple-tab-span" =
style=3D"white-space: pre; ">	</span>I can use "buildroot" to use this =
toolchian that just use three variables following :<br><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	=
</span>BR2_TOOLCHAIN_EXTERNAL_PREFIX<br><span class=3D"Apple-tab-span" =
style=3D"white-space: pre; ">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space: pre; ">	=
</span>BR2_TOOLCHAIN_EXTERNAL_PATH<br><span class=3D"Apple-tab-span" =
style=3D"white-space: pre; ">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space: pre; ">	=
</span>BR2_TOOLCHAIN_EXTERNAL_SYSROOT_PATH<br><br><span =
class=3D"Apple-tab-span" style=3D"white-space: pre; ">	</span>so there =
are some solution in poky ? thanks for you attention :)<br><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Heiti SC'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; color: =
rgb(0, 0, 0); font-family: 'Heiti SC'; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div><br =
class=3D"Apple-interchange-newline">B.R.</div><div>-- =
jojo</div></div><div><br></div></div></span><br =
class=3D"Apple-interchange-newline"></span><br =
class=3D"Apple-interchange-newline">
</div>
<br></body></html>=

--Apple-Mail=_0E213CD3-3D31-4C84-A246-5AF44BBEA117--
