Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69821E013B2
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 07:55:54 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so113073pbb.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 07:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=h3A9B3DA3zkVyY+pp5j7QT2/6YV9FNUFgRP39Q+THeE=;
	b=yyXWNdojXsU1O2+KSQv80r/Z8GybpvnfSQanbPCDPSmp0/ucTrOmR0luu7JIzWkdIL
	vsYyjvwX7nuffOa5+EV9wdbOU/wTaFxfSUqxO3csHXN5yjgSCLU3cnrKhAieandEk8EZ
	AmSk+VB1A3zhXutPiSncjV8H3ZxkL2kAjXbGK+kxAZ0aA+5vgbsjOzOQEjoaXYozRwO0
	QLZNPjhHWKBpj+Xh+KmdC3WQP0JT0gW7rC14zFcfNBX7ybXyBhOKaMx+hZtvnmwgAkUs
	YpCnF/XgAqwkVaGdJN0MXO1HAOCB7A94JtHHzsDGqcqgOuUFmZucPBPrQdoLB9UkMM07
	Hbuw==
Received: by 10.68.216.136 with SMTP id oq8mr4853227pbc.68.1344524154222;
	Thu, 09 Aug 2012 07:55:54 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rd7sm1277933pbc.70.2012.08.09.07.55.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 07:55:53 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Thu, 9 Aug 2012 18:55:48 +0400
In-Reply-To: <5023CE44.4060406@windriver.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <B35EAA35-E64A-42AE-A168-1F60424BE999@gmail.com>
	<5023CE44.4060406@windriver.com>
Message-Id: <D67422E7-DD4C-432B-97EE-A15487BCCB46@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: Incorrect warning: preferred version linux-libc-headers_3.3 of linux-libc-headers not available (for item linux-libc-headers)
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
X-List-Received-Date: Thu, 09 Aug 2012 14:55:54 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_25B59A02-477A-40BD-BF1C-FB3491014550"

--Apple-Mail=_25B59A02-477A-40BD-BF1C-FB3491014550
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi Bruce,

On Aug 9, 2012, at 6:50 PM, Bruce Ashfield wrote:

> On 12-08-09 10:48 AM, Elvis Dowson wrote:
>> Hi,
>>=20
>> In my local.conf I have set the following variable
>>=20
>> PREFERRED_VERSION_linux-libc-headers =3D "linux-libc-headers_3.3"
>=20
> Have you tried dropping the "linux-libc-headers" ?
>=20
> i.e. PREFERRED_VERSION_linux-libc-headers =3D "3.3"
>=20

Ahh, ok, that worked.=20

Along similar lines, if I had to explicitly set the gcc version, is it =
correct to specify the following variables?

PREFERRED_VERSION_gcc =3D "gcc_4.6"
PREFERRED_VERSION_gcc-cross =3D "gcc-cross_4.6"
PREFERRED_VERSION_gcc-cross-initial =3D "gcc-cross-initial_4.6"
PREFERRED_VERSION_gcc-cross-intermediate =3D =
"gcc-cross-intermediate_4.6"
PREFERRED_VERSION_gcc-cross-canadian =3D "gcc-cross-canadian_4.6"
PREFERRED_VERSION_gcc-crosssdk=3D "gcc-crosssdk_4.6"
PREFERRED_VERSION_gcc-crosssdk-initial=3D "gcc-crosssdk-initial_4.6"
PREFERRED_VERSION_gcc-crosssdk-intermediate=3D =
"gcc-crosssdk-intermediate_4.6"
PREFERRED_VERSION_gcc-runtime =3D "gcc-runtime_4.6"
PREFERRED_VERSION_libgcc =3D "libgcc_4.6"

Best regards,

Elvis Dowson


--Apple-Mail=_25B59A02-477A-40BD-BF1C-FB3491014550
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Bruce,<div><br><div><div>On Aug 9, 2012, at 6:50 PM, Bruce Ashfield =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>On 12-08-09 10:48 AM, Elvis Dowson =
wrote:<br><blockquote type=3D"cite">Hi,<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">In my =
local.conf I have set the following variable<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_linux-libc-headers =3D =
"linux-libc-headers_3.3"<br></blockquote><br>Have you tried dropping the =
"linux-libc-headers" ?<br><br>i.e. PREFERRED_VERSION_linux-libc-headers =
=3D "3.3"<br><br></div></blockquote><br></div><div>Ahh, ok, that =
worked.&nbsp;</div><div><br></div><div>Along similar lines, if I had to =
explicitly set the gcc version, is it correct to specify the following =
variables?</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_VERSION_gcc =3D =
"gcc_4.6"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_VERSION_gcc-cross =3D =
"gcc-cross_4.6"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_VERSION_gcc-cross-initial =3D =
"gcc-cross-initial_4.6"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_VERSION_gcc-cross-intermediate =3D =
"gcc-cross-intermediate_4.6"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-cross-canadian =3D =
"gcc-cross-canadian_4.6"</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">PREFERRED_VERSION_gcc-crosssdk=3D =
"gcc-crosssdk_4.6"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_VERSION_gcc-crosssdk-initial=3D =
"gcc-crosssdk-initial_4.6"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-crosssdk-intermediate=3D =
"gcc-crosssdk-intermediate_4.6"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-runtime =3D =
"gcc-runtime_4.6"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_VERSION_libgcc =3D =
"libgcc_4.6"</font></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div></div><br></div></body></html>=

--Apple-Mail=_25B59A02-477A-40BD-BF1C-FB3491014550--
