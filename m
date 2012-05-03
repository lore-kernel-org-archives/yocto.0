Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35DD1E00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 09:52:50 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so1579496wgb.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 09:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=GzLwatMPJyL7R91RGoZG+fHfiXVxacHyoXuorIj0qOA=;
	b=efq7C0Ez8YZznxwKdzbZTaHto/EUHJ19U/gZ3a4GblGa4xYHHhpwF62iYKER7FpyK7
	qxbzwUJUl3FtYrz9KOSSEjUdX7qtLPN3uJHULbJL62xkkwVNIIoUyPH8M+Vp2cQIJhlj
	00Mcq/6YtbVF3HniPXb/Y3NUTHOyt6fj+gZHZThfCkkBw4d6xqQdol9yeSBlXXyDVtLw
	P7WpXZd5hvyqEhLQLkNlqP5rIBfZmFUTAZYiKE1giKzwmsqTimuxwEh97EbMcqkwMzJg
	3ZC5j+NEgmlLXhK0+hRxzl8FBvwjicn5Oe3G+kNFjkUo2pK+dckV8sp911vaK5qIkbnE
	X6sQ==
Received: by 10.216.135.199 with SMTP id u49mr1994358wei.7.1336063969029;
	Thu, 03 May 2012 09:52:49 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id ff9sm840920wib.2.2012.05.03.09.52.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 09:52:48 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 18:52:45 +0200
Message-Id: <1658FA66-CEFA-4D13-8410-F3E63449D44F@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: Failed to fetch URL http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2
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
X-List-Received-Date: Thu, 03 May 2012 16:52:50 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E385B031-B39D-4D0A-9F02-2C5092BF2405"

--Apple-Mail=_E385B031-B39D-4D0A-9F02-2C5092BF2405
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      When I try to run bitbake -c fetchall core-image-minimal, it fails =
to fetch libcgroup-0.37.1

NOTE: Running task 139 of 305 (ID: 264, =
/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.3=
7.1.bb, do_fetch)
NOTE: package libcgroup-0.37.1-r1: task do_fetch: Started
WARNING: Failed to fetch URL =
http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libcgroup=
-0.37.1.tar.bz2
ERROR: Fetcher failure: Fetch command export HOME=3D"/home/elvis"; =
export SSH_AGENT_PID=3D"2259"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-UEXJTh/ssh"; export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; =
/usr/bin/env wget -t 5 -nv --passive-ftp --no-check-certificate -P =
/tool/yocto/poky/build/downloads =
'http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libcgrou=
p-0.37.1.tar.bz2' could not be run:
None
ERROR: Function failed: Fetcher failure for URL: =
'http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libcgrou=
p-0.37.1.tar.bz2'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libcgro=
up-0.37.1-r1/temp/log.do_fetch.15867
NOTE: package libcgroup-0.37.1-r1: task do_fetch: Failed
ERROR: Task 264 =
(/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.=
37.1.bb, do_fetch) failed with exit code '1'


Summary: 1 task failed:
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.3=
7.1.bb, do_fetch


Best regards,

Elvis Dowson=

--Apple-Mail=_E385B031-B39D-4D0A-9F02-2C5092BF2405
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>Hi,</div><div>&nbsp; &nbsp; &nbsp; When I try to run&nbsp;bitbake =
-c fetchall core-image-minimal, it fails to fetch =
libcgroup-0.37.1</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Running task =
139 of 305 (ID: 264, =
/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.3=
7.1.bb, do_fetch)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package libcgroup-0.37.1-r1: task =
do_fetch: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">WARNING: Failed to fetch URL <a =
href=3D"http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/l=
ibcgroup-0.37.1.tar.bz2">http://downloads.sourceforge.net/project/libcg/li=
bcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2</a></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Fetcher =
failure: Fetch command export HOME=3D"/home/elvis"; export =
SSH_AGENT_PID=3D"2259"; export SSH_AUTH_SOCK=3D"/tmp/keyring-UEXJTh/ssh"; =
export =
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconf=
ig"; export =
PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/armv7a-vf=
p-neon-poky-linux-gnueabi:/tool/yocto/poky/build/tmp/sysroots/overo-fire-c=
hestnut43/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/t=
ool/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build=
/tmp/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/=
bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/=
sbin:/usr/bin:/sbin:/bin:/usr/games:/tool/yocto/poky/scripts"; =
/usr/bin/env wget -t 5 -nv --passive-ftp --no-check-certificate -P =
/tool/yocto/poky/build/downloads '<a =
href=3D"http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/l=
ibcgroup-0.37.1.tar.bz2'">http://downloads.sourceforge.net/project/libcg/l=
ibcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2'</a> could not be =
run:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">None</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function failed: Fetcher failure for =
URL: '<a =
href=3D"http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/l=
ibcgroup-0.37.1.tar.bz2'">http://downloads.sourceforge.net/project/libcg/l=
ibcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2'</a>. Unable to fetch URL from =
any source.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libcgro=
up-0.37.1-r1/temp/log.do_fetch.15867</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: package =
libcgroup-0.37.1-r1: task do_fetch: Failed</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Task 264 =
(/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.=
37.1.bb, do_fetch) failed with exit code =
'1'</font></div></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: 1 task =
failed:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.3=
7.1.bb, =
do_fetch</font></div></div><div><br></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_E385B031-B39D-4D0A-9F02-2C5092BF2405--
