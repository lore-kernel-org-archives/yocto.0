Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0EF7E0144B
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 13:35:11 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2221053pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 13:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=85PEJnaMQF9FM2cW758X5bbZBRJqKJpGgeholPsWFuM=;
	b=aCH8zuw23q75DllpvGkSiBmeydUQrJX9TCPK5y6nAQBXXkouB8gB1E43x2DvTQsWIo
	D+AhvsGZ3tY3lVJ1aQPGTUX5IITbH29NWEDYuuLa9jSpPrshyHNWKHlqbK5ypQKdasZA
	cwSvhW5/3HiFbNYv3ZPL1LvW5stfFL3q2DlYq5Mn8oKRq3B7OsogPj5O0kIfVau7/hR1
	Y8rqQwRBGweqxxjrjXNkyxn5qdiWkdpcy7vKt31ppJfoTnkxpOGuVZ/DUH3GtiaVUGt0
	jYH9Kz9gA/FU1KUfVBYIQpmoRNIchy12GHzqr35RlCWJhdfxpoTRVkh+4baDCX+LFynp
	+tOw==
Received: by 10.68.136.68 with SMTP id py4mr279603pbb.151.1344026111604;
	Fri, 03 Aug 2012 13:35:11 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id
	hw6sm3543802pbc.73.2012.08.03.13.35.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 13:35:10 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <9CE15441-360F-4C37-919A-7677FF4FAF40@gmail.com>
Date: Fri, 3 Aug 2012 13:35:07 -0700
Message-Id: <BF2DA1C6-07F9-400C-B50D-1D79F5C41FBC@gmail.com>
References: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
	<CB6BA0F1-3C99-4A6A-84F6-6EFE4CCADAA4@gmail.com>
	<9CE15441-360F-4C37-919A-7677FF4FAF40@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1485)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-toolchain error with latest gcc commit: rpm-createsolvedb.py: command not found
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
X-List-Received-Date: Fri, 03 Aug 2012 20:35:11 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_38AAA85D-D5DA-455A-A914-448531490415"

--Apple-Mail=_38AAA85D-D5DA-455A-A914-448531490415
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Aug 3, 2012, at 1:25 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:

> The following patch appears to attempt to fix this issue. I think it =
should be included into oe-core master branch.=20
>=20
> =
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/026949.=
html

on the contrary it creates the problem. Did you read my last reply=

--Apple-Mail=_38AAA85D-D5DA-455A-A914-448531490415
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Aug 3, 2012, at 1:25 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">The following patch appears to attempt =
to fix this issue. I think it should be included into oe-core master =
branch.&nbsp;</div><div style=3D"font-family: Helvetica; font-size: =
medium; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><br></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><a =
href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August=
/026949.html">http://lists.linuxtogo.org/pipermail/openembedded-core/2012-=
August/026949.html</a></div></blockquote></div><br><div>on the contrary =
it creates the problem. Did you read my last reply</div></body></html>=

--Apple-Mail=_38AAA85D-D5DA-455A-A914-448531490415--
