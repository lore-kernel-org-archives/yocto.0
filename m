Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94E5DE0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 08:37:30 -0700 (PDT)
Received: by yenm12 with SMTP id m12so1994349yen.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 08:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=nXt6VuP2xTQmLbkY63XKUXBGRNQQ/6/WhXkzInLdOUo=;
	b=lPb5n9MkEzyREfcqUwJVtD/553c7q+gcRaOeevhkSwbF6EVBBtq/vE0hEEKnGUCqja
	wGgXpX8+Aq8JuaVxqmdRhhnI9fhI1vOmFdm5R56kvJRRM88pPieaiAaqyccMzk1Ek+Kf
	XPIMF6uyv5iD7gWFpgYznWTtQk1W5HYSBvQ1qWzCuxC6BeCUY4jm+Xd7nImuPJK8y7g1
	+w5uOrux6pdyKH01pMwTXPW0ifNBE0JEWmFW5vU92GCLQHhwXpGdG5CT/5czqZqGhLQL
	T5RDtj6U+OZ8thvzzs19sWIqGiIed5vZOd2cPmtWw1Ivt/5De+9l48ZFZK0qCEsGrl9J
	Pbgg==
Received: by 10.66.75.133 with SMTP id c5mr7186417paw.24.1344613049597;
	Fri, 10 Aug 2012 08:37:29 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id nv6sm3546340pbc.42.2012.08.10.08.37.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 08:37:28 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 10 Aug 2012 19:37:24 +0400
Message-Id: <84E45B3C-7D63-4FC7-8819-C5D5D53CB710@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: external-sourcery-toolchain: ERROR: Function failed: do_install
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
X-List-Received-Date: Fri, 10 Aug 2012 15:37:30 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A2177F0F-8354-4D44-B284-BDBB2CB0B72A"

--Apple-Mail=_A2177F0F-8354-4D44-B284-BDBB2CB0B72A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       I cloned the meta-sourcery repo, added it to my bblayers.conf

$ cd /tool/yocto
$ git clone git://github.com/MentorEmbedded/meta-sourcery.git

I specified the following variables in my local.conf:

# Set the toolchain.
TCMODE =3D "external-csl"
EXTERNAL_TOOLCHAIN =3D "/tool/mentor/csl-2011.03-39"
CSL_TARGET_SYS_powerpc =3D "powerpc-eabi"

I get the following error, when I try to run bitbake core-image-minimal:

ERROR: Function failed: do_install (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646 for further information)
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646
Log data follows:
| DEBUG: Executing shell function do_install
| cp: target =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolc=
hain-2011.03-39-r12/image/lib' is not a directory
| ERROR: Function failed: do_install (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646 for further information)
NOTE: package external-sourcery-toolchain-2011.03-39-r12: task =
do_install: Failed
ERROR: Task 41 =
(/tool/yocto/meta-sourcery/recipes/meta/external-sourcery-toolchain.bb, =
do_install) failed with exit code '1'
Waiting for 3 running tasks to finish:
0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
1: openssl-native-1.0.0j-r15.3 do_unpack (pid 31503)
2: zlib-native-1.2.7-r0 do_compile (pid 31632)
NOTE: package attr-native-2.4.46-r4: task do_fetch: Started
Waiting for 4 running tasks to finish:
0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
1: openssl-native-1.0.0j-r15.3 do_unpack (pid 31503)
2: zlib-native-1.2.7-r0 do_compile (pid 31632)
3: attr-native-2.4.46-r4 do_fetch (pid 31843)
NOTE: package attr-native-2.4.46-r4: task do_fetch: Succeeded
Waiting for 3 running tasks to finish:
0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
1: openssl-native-1.0.0j-r15.3 do_unpack (pid 31503)
2: zlib-native-1.2.7-r0 do_compile (pid 31632)
NOTE: package openssl-native-1.0.0j-r15.3: task do_unpack: Succeeded
Waiting for 2 running tasks to finish:
0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
1: zlib-native-1.2.7-r0 do_compile (pid 31632)
NOTE: package zlib-native-1.2.7-r0: task do_compile: Succeeded
Waiting for 1 running tasks to finish:
0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
NOTE: package ncurses-native-5.9-r10.1: task do_configure: Succeeded
NOTE: Tasks Summary: Attempted 97 tasks of which 63 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
  /tool/yocto/meta-sourcery/recipes/meta/external-sourcery-toolchain.bb, =
do_install
Summary: There were 5 ERROR messages shown, returning a non-zero exit =
code.

How can I resolve this error?

Best regards,

Elvis Dowson=

--Apple-Mail=_A2177F0F-8354-4D44-B284-BDBB2CB0B72A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;I cloned the meta-sourcery repo, =
added it to my bblayers.conf</div><div><br></div><div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; ">$ cd =
/tool/yocto</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">$ git clone <a =
href=3D"git://github.com/MentorEmbedded/meta-sourcery.git">git://github.co=
m/MentorEmbedded/meta-sourcery.git</a></div></div><div><br></div><div>I =
specified the following variables in my =
local.conf:</div><div><br></div><div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># Set the toolchain.</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">TCMODE =3D "external-csl"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">EXTERNAL_TOOLCHAIN =3D =
"/tool/mentor/csl-2011.03-39"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">CSL_TARGET_SYS_powerpc =3D =
"powerpc-eabi"</div></div><div><br></div><div>I get the following error, =
when I try to run bitbake =
core-image-minimal:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Function =
failed: do_install (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Log data =
follows:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| DEBUG: Executing shell function =
do_install</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| cp: target =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolc=
hain-2011.03-39-r12/image/lib' is not a directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: Function =
failed: do_install (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package =
external-sourcery-toolchain-2011.03-39-r12: task do_install: =
Failed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">ERROR: Task 41 =
(/tool/yocto/meta-sourcery/recipes/meta/external-sourcery-toolchain.bb, =
do_install) failed with exit code '1'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Waiting for 3 =
running tasks to finish:</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">0: ncurses-native-5.9-r10.1 do_configure =
(pid 31329)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1: openssl-native-1.0.0j-r15.3 do_unpack (pid =
31503)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">2: zlib-native-1.2.7-r0 do_compile (pid =
31632)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package attr-native-2.4.46-r4: task do_fetch: =
Started</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Waiting for 4 running tasks to finish:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">0: =
ncurses-native-5.9-r10.1 do_configure (pid 31329)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1: =
openssl-native-1.0.0j-r15.3 do_unpack (pid 31503)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">2: =
zlib-native-1.2.7-r0 do_compile (pid 31632)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">3: =
attr-native-2.4.46-r4 do_fetch (pid 31843)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: package =
attr-native-2.4.46-r4: task do_fetch: Succeeded</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Waiting for 3 =
running tasks to finish:</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">0: ncurses-native-5.9-r10.1 do_configure =
(pid 31329)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1: openssl-native-1.0.0j-r15.3 do_unpack (pid =
31503)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">2: zlib-native-1.2.7-r0 do_compile (pid =
31632)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package openssl-native-1.0.0j-r15.3: task do_unpack: =
Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Waiting for 2 running tasks to =
finish:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">0: ncurses-native-5.9-r10.1 do_configure (pid =
31329)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">1: zlib-native-1.2.7-r0 do_compile (pid =
31632)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package zlib-native-1.2.7-r0: task do_compile: =
Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Waiting for 1 running tasks to =
finish:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">0: ncurses-native-5.9-r10.1 do_configure (pid =
31329)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package ncurses-native-5.9-r10.1: task do_configure: =
Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Tasks Summary: Attempted 97 tasks of =
which 63 didn't need to be rerun and 1 failed.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: 1 task =
failed:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
/tool/yocto/meta-sourcery/recipes/meta/external-sourcery-toolchain.bb, =
do_install</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: There were 5 ERROR messages shown, =
returning a non-zero exit =
code.</font></div></div><div><br></div><div>How can I resolve this =
error?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_A2177F0F-8354-4D44-B284-BDBB2CB0B72A--
