Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9FB3E0144B
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 13:15:35 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2193764pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 13:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=MmKPTiX3BNVxjHs1s2X4RjscvgKnzsA9kOi2GLymxzs=;
	b=lYL6+1RVkbIQUCPHti81Dc4dQdlNSv95RaVH0gTbiid++fu4yaUbr92jCwmxRJQC6b
	JOWP9FHndwJ0dZosIE0/MpW1tGjdOS6JhndIvpj9NnfrehXnAGGRhIdpM/SPrgKRwThq
	toyGXIftLJwvW7bwTES7JzSqw1S9iN0ykwdt2ri1vXTRhA5Fo1RdiOnf04W0fop4h9Ul
	s4Rpc5cPr8H98mzfZnjgno6CyPpqtYwqw9bS8QbulcMSeH6Mg4yW/mMuQdlwKB5xExfp
	ZLNfeaNZ5PIslUZr3A5VpWACSLe0vpes7FLXo43e8slEmUjiAUUivCZsmgA9UBnGie2X
	mfdg==
Received: by 10.68.232.103 with SMTP id tn7mr180052pbc.86.1344024935439;
	Fri, 03 Aug 2012 13:15:35 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id tq4sm106556pbc.11.2012.08.03.13.15.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 13:15:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
Date: Fri, 3 Aug 2012 13:15:32 -0700
Message-Id: <CB6BA0F1-3C99-4A6A-84F6-6EFE4CCADAA4@gmail.com>
References: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
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
X-List-Received-Date: Fri, 03 Aug 2012 20:15:35 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B981211C-217E-4A07-827A-F93DA9B8E39E"

--Apple-Mail=_B981211C-217E-4A07-827A-F93DA9B8E39E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Aug 3, 2012, at 12:07 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:

>=20
> When I run bitbake meta-toolchain, I get the following error: =
rpm-createsolvedb.py: command not found
>=20
>=20


yes I have similar problems. see

=
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027214.=
html=

--Apple-Mail=_B981211C-217E-4A07-827A-F93DA9B8E39E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Aug 3, 2012, at 12:07 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><br =
class=3D"Apple-interchange-newline">When I run bitbake meta-toolchain, I =
get the following error:&nbsp;rpm-createsolvedb.py: command not =
found</div><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><br></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><br =
class=3D"Apple-interchange-newline"></div></blockquote></div><br><div><br>=
</div><div>yes I have similar problems. see</div><div><br></div><div><a =
href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August=
/027214.html">http://lists.linuxtogo.org/pipermail/openembedded-core/2012-=
August/027214.html</a></div></body></html>=

--Apple-Mail=_B981211C-217E-4A07-827A-F93DA9B8E39E--
