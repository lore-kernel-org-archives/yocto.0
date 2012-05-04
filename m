Return-Path: <elvis.dowson@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 467FFE0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 16:50:54 -0700 (PDT)
Received: by werc1 with SMTP id c1so338248wer.35
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 16:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=Te33znkvYSTHlZBOJijKJl4CS8oAoFvz3ZDmIdRoBH4=;
	b=VOmTi4L3xXf7r2npTwtZHlIzo47N5xTMY9d87Zmw9ABU0OD6xDvWhkqkMrJTw4SchR
	FXGBjA2ZhutDdUQK45cWFLLt4tX1Vw5n7Lgn4ZhuMgIYsOHGg7kgluMWkQUCuxDaUyHE
	mKzLhV1qpAifm8+S/0HjnogtXbv18xra4aukojLPdfoYo8+kOAAIl6LVW+4oNDhZe57M
	8Ia5uxLdl8sy+nNZlPDymiU0CDaki1SbUjSP1VpuUW2Kz7nNuaZcGkgT0lJ5pNqrx2XN
	EubMmb8JC4DEmusvF3gNFPXNtp/FWgE+QB+mJ4Yq5YWQRp+QY9s+VtnBK03kbJJy242X
	W6fg==
Received: by 10.180.101.65 with SMTP id fe1mr16904924wib.21.1336175453224;
	Fri, 04 May 2012 16:50:53 -0700 (PDT)
Received: from [192.168.1.34] (5.Red-83-49-41.dynamicIP.rima-tde.net.
	[83.49.41.5])
	by mx.google.com with ESMTPS id f19sm1897930wiw.11.2012.05.04.16.50.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 May 2012 16:50:52 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1257)
Date: Sat, 5 May 2012 01:50:50 +0200
In-Reply-To: <EE9DD0E6-24C8-4F2A-936D-27F6153EE6F5@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <4A8D5C4F-3A9B-4171-9254-2DC2E273396C@gmail.com>
	<4FA45D23.8040905@mlbassoc.com>
	<EE9DD0E6-24C8-4F2A-936D-27F6153EE6F5@gmail.com>
Message-Id: <155473BC-ACC4-498F-B343-A50DAE172C38@gmail.com>
X-Mailer: Apple Mail (2.1257)
Subject: Re: How to fix unpack errors
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
X-List-Received-Date: Fri, 04 May 2012 23:50:54 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D70C1F46-A2DC-422A-84D7-D323A3E387C9"

--Apple-Mail=_D70C1F46-A2DC-422A-84D7-D323A3E387C9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On May 5, 2012, at 1:32 AM, Elvis Dowson wrote:

> git checkout b2a449a98ee17df64fecf5b4770d74b04e21d2cd could not be =
run:

The above message gave me the clue as to why it wasn't working. It =
probably couldn't find that particular commit id.

What I did is do a local checkout of the exact same branch, and updated =
the SRCREV to the latest for the omap-3.2 branch in steve's kernel, and =
it was able to go past the unpack errors.

SRCREV =3D "33128932803c3f8c35fe8dae257901deb60db2aa"
SRC_URI =3D =
"git://www.sakoman.com/git/linux-omap-2.6.git;branch=3Domap-3.2;protocol=3D=
git \
	   file://defconfig \
           file://${BOOT_SPLASH} \
           "

Best regards,

Elvis Dowson


--Apple-Mail=_D70C1F46-A2DC-422A-84D7-D323A3E387C9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On May 5, 2012, at 1:32 AM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; =
"><div><div><div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">git checkout =
b2a449a98ee17df64fecf5b4770d74b04e21d2cd could not be =
run:</font></div></div></div></div></div></div></blockquote><br></div><div=
>The above message gave me the clue as to why it wasn't working. It =
probably couldn't find that particular commit =
id.</div><div><br></div><div>What I did is do a local checkout of the =
exact same branch, and updated the SRCREV to the latest for the omap-3.2 =
branch in steve's kernel, and it was able to go past the unpack =
errors.</div><div><br></div><div><div>SRCREV =3D =
"33128932803c3f8c35fe8dae257901deb60db2aa"</div><div>SRC_URI =3D "<a =
href=3D"git://www.sakoman.com/git/linux-omap-2.6.git;branch=3Domap-3.2;pro=
tocol=3Dgit">git://www.sakoman.com/git/linux-omap-2.6.git;branch=3Domap-3.=
2;protocol=3Dgit</a> \</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span> &nbsp; <a =
href=3D"file:///defconfig">file://defconfig</a> \</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///${BOOT_SPLASH}">file://${BOOT_SPLASH}</a> =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;"</div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><br></div></body></html>=

--Apple-Mail=_D70C1F46-A2DC-422A-84D7-D323A3E387C9--
