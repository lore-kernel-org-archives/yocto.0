Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BDBDE0144B
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 13:15:04 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2193034pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 13:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=ryNlL41KXzE3RX1MbLUrv3i1hlD3AdTq+3zruH6bNaU=;
	b=u4iHj6YHmZHla7Seq5LtBEzk/PEjMHFGLZG7s0iVOAiU8dcQkOHwCrmJOYQBQpBDa3
	jvSAvGME65/TjU67XtWrXcTRlaByZ5iMm9Y1uo7EYvbmUFIbciahJPZWvljIDj8s2TrW
	9kA1EQVzMDCG/gEIAhw+u+NTMxnDBls6EJhn6JGxrzzvbee+FDQS40dAlCfHCcGa2T4k
	pahMmdIPnfir0NG+AEfnZuyMKKlUxYKd7xPjYc05HxWvJhXzS0rfSwfzNNeBfRbWf4Uy
	tMu29TtplfeelyMg0YAk6pOaA05IjimUMtTkynDvfKnMlgq5Td3EyR9J2sOOR7lDeSpG
	n7Jw==
Received: by 10.68.225.231 with SMTP id rn7mr177521pbc.13.1344024903576;
	Fri, 03 Aug 2012 13:15:03 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id ku7sm3528695pbc.31.2012.08.03.13.15.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 13:15:02 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Sat, 4 Aug 2012 00:14:57 +0400
In-Reply-To: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
Message-Id: <F4872568-00C0-4C3A-AEEF-28DED9500EE0@gmail.com>
X-Mailer: Apple Mail (2.1278)
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
X-List-Received-Date: Fri, 03 Aug 2012 20:15:04 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_CFB0F4C0-C518-4D3F-B2B9-E98EB56F87F3"

--Apple-Mail=_CFB0F4C0-C518-4D3F-B2B9-E98EB56F87F3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 3, 2012, at 11:07 PM, Elvis Dowson wrote:

> When I run bitbake meta-toolchain, I get the following error: =
rpm-createsolvedb.py: command not found
>=20
> NOTE: Running task 2060 of 2061 (ID: 7, =
/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk)
> NOTE: package meta-toolchain-1.0-r7: task do_populate_sdk: Started
> ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further information)
> ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334
> Log data follows:
> | DEBUG: Executing python function do_populate_sdk
> | DEBUG: Executing shell function populate_sdk_image
> | Generating solve db for =
/tool/yocto/poky/build/tmp/deploy/rpm/ppc440...
> | =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/run.populate_sdk_image.48334: line 610: rpm-createsolvedb.py: command =
not found
> | DEBUG: Python function do_populate_sdk finished
> | ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further information)
> NOTE: package meta-toolchain-1.0-r7: task do_populate_sdk: Failed
> ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2060 tasks of which 1293 didn't need to =
be rerun and 1 failed.
>=20
> Summary: 1 task failed:
>   /tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.
>=20
>=20
> the log is=20
>=20
> DEBUG: Executing python function do_populate_sdk
> DEBUG: Executing shell function populate_sdk_image
> Generating solve db for =
/tool/yocto/poky/build/tmp/deploy/rpm/ppc440...
> =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/run.populate_sdk_image.48334: line 610: rpm-createsolvedb.py: command =
not found
> DEBUG: Python function do_populate_sdk finished
> ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further information)
>=20

I also notice that if I run=20

bitbake core-image-minimal first, and then run bitbake meta-toolchain, I =
don't get an error.=20

What should be done to fix this, so that it runs correctly the first =
time, if I run bitbake meta-toolchain from a clean build?

Elvis Dowson


--Apple-Mail=_CFB0F4C0-C518-4D3F-B2B9-E98EB56F87F3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 3, 2012, at 11:07 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>When I run bitbake =
meta-toolchain, I get the following error:&nbsp;rpm-createsolvedb.py: =
command not found</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Running task =
2060 of 2061 (ID: 7, =
/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package meta-toolchain-1.0-r7: task =
do_populate_sdk: Started</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">ERROR: Function failed: populate_sdk_image =
(see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Log data =
follows:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| DEBUG: Executing python function =
do_populate_sdk</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| DEBUG: Executing shell function =
populate_sdk_image</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| Generating solve db for =
/tool/yocto/poky/build/tmp/deploy/rpm/ppc440...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/run.populate_sdk_image.48334: line 610: rpm-createsolvedb.py: command =
not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| DEBUG: Python function do_populate_sdk =
finished</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package meta-toolchain-1.0-r7: task =
do_populate_sdk: Failed</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk) failed with exit code '1'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Tasks =
Summary: Attempted 2060 tasks of which 1293 didn't need to be rerun and =
1 failed.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Summary: 1 task =
failed:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: There was 1 WARNING message =
shown.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Summary: There was 1 ERROR message shown, returning a =
non-zero exit =
code.</font></div></div><div><br></div><div><br></div><div>the log =
is&nbsp;</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEBUG: Executing python function =
do_populate_sdk</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEBUG: Executing shell function =
populate_sdk_image</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Generating solve db for =
/tool/yocto/poky/build/tmp/deploy/rpm/ppc440...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchai=
n-1.0-r7/temp/run.populate_sdk_image.48334: line 610: =
rpm-createsolvedb.py: command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DEBUG: Python =
function do_populate_sdk finished</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Function =
failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.48334 for further =
information)</font></div></div><div><br></div></div></blockquote><br></div=
><div>I also notice that if I run&nbsp;</div><div><br></div><div>bitbake =
core-image-minimal first, and then run bitbake meta-toolchain, I don't =
get an error.&nbsp;</div><div><br></div><div>What should be done to fix =
this, so that it runs correctly the first time, if I run bitbake =
meta-toolchain from a clean build?</div><div><br></div><div>Elvis =
Dowson</div><br></div></body></html>=

--Apple-Mail=_CFB0F4C0-C518-4D3F-B2B9-E98EB56F87F3--
