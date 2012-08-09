Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 863DAE013B2
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 07:48:47 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so582979yhf.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 07:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=utdfQ517yT3eteVv2w/oLbn0kvhuEdMqx6wJQwGZcJk=;
	b=Qn6f9KGL2ejHx4L/qPj9Vbn/8c2F3UXNkwVgZvBm1EehoLk9BqOGL5EKOAMnFNRxRc
	zvDumu0/cLwY56e3kUOLxXs13SL6WQyM0W+u/UNa+9SDZmTZWjFlYSqri/tMldErO8P3
	g36yv8e5bKBHqCTZ1ONna0/zM+hjVhRx//5CoKo/SggrF+4FyrY7Kai/blJqbFKLUG+Q
	ynxq8jwt0Yi9AgMV5YFP1uIc4eSC4oH3poIJJMnd7d3bqZC5X0WrARMzWEiKn++Bdi4B
	jONaTbqAKsn8UoColTrF1PleFTDzkfjIfAN4u+arboOGXcANdtgOBTP5FYlMNwJM5vpB
	kqZA==
Received: by 10.66.83.161 with SMTP id r1mr42263933pay.69.1344523726648;
	Thu, 09 Aug 2012 07:48:46 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rz10sm1277469pbc.32.2012.08.09.07.48.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 07:48:45 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 9 Aug 2012 18:48:40 +0400
Message-Id: <B35EAA35-E64A-42AE-A168-1F60424BE999@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Incorrect warning: preferred version linux-libc-headers_3.3 of linux-libc-headers not available (for item linux-libc-headers)
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
X-List-Received-Date: Thu, 09 Aug 2012 14:48:47 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0B70F5B9-4507-4543-A102-4C5BD0A716F7"

--Apple-Mail=_0B70F5B9-4507-4543-A102-4C5BD0A716F7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

In my local.conf I have set the following variable

PREFERRED_VERSION_linux-libc-headers =3D "linux-libc-headers_3.3"

However, when I run bitbake linux-libc-headers -c fetchall, it complains =
that the preferred version is not available, even though I've created a  =
linux-libc-headers_3.3.bb recipe and set the preferred version in my =
local.conf

NOTE: preferred version linux-libc-headers_3.3 of linux-libc-headers not =
available (for item linux-libc-headers)
NOTE: versions of linux-libc-headers available: 3.0.8 3.2 3.3 3.4.3
NOTE: Resolving any missing task queue dependencies
NOTE: preferred version linux-libc-headers_3.3 of linux-libc-headers not =
available (for item linux-libc-headers-dev)
NOTE: versions of linux-libc-headers available: 3.0.8 3.2 3.3 3.4.3
NOTE: Preparing runqueue
NOTE: Executing RunQueue Tasks
NOTE: Running task 2 of 3 (ID: 0, =
/tool/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-headers=
_3.3.bb, do_fetch)
NOTE: package linux-libc-headers-3.3-r0: task do_fetch: Started

Why is this so?

Best regards,

Elvis Dowson=

--Apple-Mail=_0B70F5B9-4507-4543-A102-4C5BD0A716F7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>Hi,</div><div><br></div><div>In my local.conf I have set the =
following variable</div><div><br></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_linux-libc-headers =3D =
"linux-libc-headers_3.3"</font></div><div><br></div><div>However, when I =
run bitbake&nbsp;linux-libc-headers -c fetchall, it complains that the =
preferred version is not available, even though I've created =
a&nbsp;&nbsp;linux-libc-headers_3.3.bb recipe and set the preferred =
version in my local.conf</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version linux-libc-headers_3.3 of linux-libc-headers not available (for =
item linux-libc-headers)</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">NOTE: versions of linux-libc-headers =
available: 3.0.8 3.2 3.3 3.4.3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Resolving =
any missing task queue dependencies</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version linux-libc-headers_3.3 of linux-libc-headers not available (for =
item linux-libc-headers-dev)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
linux-libc-headers available: 3.0.8 3.2 3.3 3.4.3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Preparing =
runqueue</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">NOTE: Executing RunQueue Tasks</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Running task =
2 of 3 (ID: 0, =
/tool/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-headers=
_3.3.bb, do_fetch)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package linux-libc-headers-3.3-r0: task =
do_fetch: Started</font></div></div><div><br></div><div>Why is this =
so?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_0B70F5B9-4507-4543-A102-4C5BD0A716F7--
