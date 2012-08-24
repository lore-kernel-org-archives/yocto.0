Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4A82E011AD
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:44:53 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so4393438pbb.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=O4SWqEAd95bWhAnWqWPZU9V8eOTrWs10hvBbrb5p7zk=;
	b=j6c82O6aH8EYSktjmQH0dDzVlm3qkkc3fipCaWQ+6hfrQbdk9g9kSVhxpphCTnm5gE
	QFIm2TsFK4/rbW08ve9NhusAomoEB38zsktqgNja76/wLh1kTg8msaD+iR1vEwlrd6aY
	MfU+KpnDVxrEb+hu3bdhsIL6RHQ0souJHZEj63LH5MehKxKs74I5teL5Xw41mmN5v3pg
	x+UygMkGgln004hfq1rTvHgVSWzdVhFId7ghax6UjeT0IpbrAHbzcm5FpAL9tQMi/F6N
	rhUdNrXn0RrKvHmhYnyEAAhdDpEKTbHeNlt9CqIJGGMfENXppHi8/6uJFj5HiH8AhBCP
	R1+A==
Received: by 10.68.223.164 with SMTP id qv4mr13895986pbc.20.1345823093526;
	Fri, 24 Aug 2012 08:44:53 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id jz4sm8552414pbc.17.2012.08.24.08.44.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Aug 2012 08:44:52 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <940C4F71-39E0-43FF-90A0-D0802345B6C8@gmail.com>
Date: Fri, 24 Aug 2012 19:44:47 +0400
Message-Id: <AC824268-7CF6-474B-90A2-0AD554E01A8F@gmail.com>
References: <940C4F71-39E0-43FF-90A0-D0802345B6C8@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
Subject: Re: Errors while creating a new PowerPC 405e tune file
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
X-List-Received-Date: Fri, 24 Aug 2012 15:44:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6A361433-F93F-480C-B0B0-3D6B1F14401D"

--Apple-Mail=_6A361433-F93F-480C-B0B0-3D6B1F14401D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
          =20
On Aug 24, 2012, at 7:39 PM, Elvis Dowson wrote:


> TUNE_PKGARCH_tune-ppc440e =3D "ppc405e"

My bad, it was a typo, I should have been written as follows:

TUNE_PKGARCH_tune-ppc405e =3D "ppc405e"

> And in my machine, should I be defining TARGET_CPU =3D "405fp" or =
"405e" ?
>=20
> TARGET_CPU  =3D "405fp"
> #tune for the 405e cpu
> require conf/machine/include/tune-ppc405e.inc

The only question I have now is, should I be defining TARGET_CPU as =
405fp or 405e ?

Best regards,

Elvis Dowson=

--Apple-Mail=_6A361433-F93F-480C-B0B0-3D6B1F14401D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br><div><div>On Aug =
24, 2012, at 7:39 PM, Elvis Dowson wrote:</div><br =
class=3D"Apple-interchange-newline"><br><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">TUNE_PKGARCH_tune-ppc440e =3D =
"ppc405e"</font></div></div></div></blockquote><div><br></div><div>My =
bad, it was a typo, I should have been written as =
follows:</div><div><br></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_PKGARCH_tune-ppc405e =3D =
"ppc405e"</font></div><br><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div>And in my machine, should =
I be defining TARGET_CPU =3D "405fp" or "405e" =
?</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TARGET_CPU &nbsp;=3D =
"405fp"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">#tune for the 405e cpu</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">require =
conf/machine/include/tune-ppc405e.inc</font></div></div></div></blockquote=
><br></div><div>The only question I have now is, should I be defining =
TARGET_CPU as 405fp or 405e ?</div><div><br></div><div>Best =
regards,</div></div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_6A361433-F93F-480C-B0B0-3D6B1F14401D--
