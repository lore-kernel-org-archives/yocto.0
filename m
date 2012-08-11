Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FD51E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 09:42:59 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so4400076pbb.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 09:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=vLWj4iHI5xRGKBy5Sg2BmicaalV5Briu/JsPGfiNzo8=;
	b=Ty9i9aPYyeYofnUFj7SH+Uh3CNahRdx06mQn9eRYwH8jGXpZ5z/HFkUSAwujy6uCKN
	Y5e6WWcoQK7uLRR0U26mwzGY6ucSzuE9K9w1pofw/s1ZnL2CTdMgn4DhS677Og8As8jg
	nH5pGnAc1/FWofd6+oio9HUvvy4pQ4Q5GvNNjtqAMa4mfWAqlv0+tIuLAHafm8kGmoDi
	XD2xg6ipY6CO0QqLZpsM//dkICVbuwx/UKu/I6vhtPdRA6Wt0pXjzQKTOSxYy5i72agh
	ffelITnbU3zlCA2bipKlxm9RDE2W0Dteh1K4uTtY6eCGnBZzsA+Y/U8gcXv4UqYQzpoM
	JuLA==
Received: by 10.68.197.168 with SMTP id iv8mr6649398pbc.61.1344703378299;
	Sat, 11 Aug 2012 09:42:58 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id st6sm1662882pbc.58.2012.08.11.09.42.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 11 Aug 2012 09:42:57 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 11 Aug 2012 20:42:49 +0400
Message-Id: <979CA88D-E2FD-4F71-B41B-D7F71934DC7C@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: gnutls_2.12.20: Incorrect location for header file
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
X-List-Received-Date: Sat, 11 Aug 2012 16:42:59 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C65AB76E-FB62-4E21-B283-B2A67D01330B"

--Apple-Mail=_C65AB76E-FB62-4E21-B283-B2A67D01330B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      While trying to build gnutls_2.12.20.bb recipe, with gcc-4.5, =
using the current poky master, I get the following error:

| In file included from gnutlsxx.cpp:5:0:
| ./includes/gnutls/gnutlsxx.h:4:21: fatal error: exception: No such =
file or directory

The header file is located under the following folder

=
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gnutls-2.12.20-r8.3/gnut=
ls-2.12.20/lib/includes/gnutls

how do I modify the recipe, so that it prefixes the lib folder, to the =
patch so that it can properly locate it under

./lib/includes/gnutls/

instead of=20

./includes/gnutls/

Best regards,

Elvis Dowson=

--Apple-Mail=_C65AB76E-FB62-4E21-B283-B2A67D01330B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; While trying to build gnutls_2.12.20.bb =
recipe, with gcc-4.5, using the current poky master, I get the following =
error:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| In file included from =
gnutlsxx.cpp:5:0:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./includes/gnutls/gnutlsxx.h:4:21: fatal =
error: exception: No such file or =
directory</font></div></div><div><br></div><div>The header file is =
located under the following folder</div><div><br></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gnutls-2.12.2=
0-r8.3/gnutls-2.12.20/lib/includes/gnutls</font></div><div><br></div><div>=
how do I modify the recipe, so that it prefixes the <font =
class=3D"Apple-style-span" color=3D"#ff221b">lib</font> folder, to the =
patch so that it can properly locate it =
under</div><div><br></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">./<font class=3D"Apple-style-span" =
color=3D"#ff221b">lib</font>/includes/gnutls/</font></div><div><br></div><=
div>instead of&nbsp;</div><div><br></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">./includes/gnutls/</font></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_C65AB76E-FB62-4E21-B283-B2A67D01330B--
