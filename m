Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F2DEE003FB
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2013 07:25:23 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id xb4so2426035pbc.8
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2013 07:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Q3YizK4b2rGg3n9Xg3HacneKrsTWtA5MRr1U3De8KIA=;
	b=l9ClEjS6Ib9Dkn0opN2ZiiVxvFjDJWgb6MRCo7nS5ewpXFnSJ4QWOaPDLhzdJttrQ5
	SGAL4r1i9Sb/D7JfqprSZOD59Hg6NsJEJdH9HQl1vhxbmzbwxJTQx8uHMmc0BY7G2MSt
	Lly2iiOWJQc4DLuQqzAvs0gTuwpuOX6fdPHE/QulJSOCWDUgEHcQEPoV3AgtMbyPXvzQ
	oWepCi6mcyUEsHt9pvIj/7kgXvnEu+RUL6sm60o5bFh3eY/5t88xxYlYqeyCyBZ9ftlR
	q0ZPUm6oHHo2qvFOiqk4ByiHs5vEXM9t2TXw4H/cRt3vTPcTeAeLe9CzBxupXy82DhGf
	982A==
X-Received: by 10.68.241.6 with SMTP id we6mr990923pbc.174.1377440723370;
	Sun, 25 Aug 2013 07:25:23 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id
	oc10sm12230372pbb.3.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 25 Aug 2013 07:25:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <521994A5.9060007@windriver.com>
Date: Sun, 25 Aug 2013 18:25:14 +0400
Message-Id: <53009902-3F9B-477F-ACA0-0DF7C43EBF27@gmail.com>
References: <A9C97D7F-9AB0-4F9A-B933-D09ED5B6748E@gmail.com>
	<F952BE32-0856-4531-962C-FC757917A8FE@gmail.com>
	<CADkTA4NtzNb4pqKazvnfjO_2WawzCm_Zec1Dr9SQiPaybx+ndg@mail.gmail.com>
	<6DD4027E-D34F-4211-92FD-1570F248D7F8@gmail.com>
	<521994A5.9060007@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.1498)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: linux-yocto defaulting to 3.4.52 for new qemuarmhf.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 25 Aug 2013 14:25:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7A8717E2-DAB6-4BE1-955C-AED36E95A975"

--Apple-Mail=_7A8717E2-DAB6-4BE1-955C-AED36E95A975
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi Bruce,

On Aug 25, 2013, at 9:22 AM, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:

>> Another quick question, why is it that when I create a new =
qemuarmhf.conf machine configuration, it doesn't automatically pick up =
the latest linux-yocto_3.8.bb recipe? Why does it attempt to use the 3.4 =
recipe?
>=20
> Are you working off master ?
>=20
> Since you set the compatibility, it should have been picked. But =
something
> else must be changed in your layers, since if you didn't add
> 3.4 compatibility via bbappends, it never would have been selected
> at all.


Yes, I'm currently working off master. If I add the following =
qemuarmhf.conf file, and apply the patch to linux-yocto_3.8.bb, it still =
tries to compile linux-yocto_3.4.bb recipe. You should be able to =
reproduce this fairly easily at your end, with the current poky master. =
I'm not using any additional layers, just the core yocto default layers.

Filename: qemuarmhf.conf

#@TYPE: Machine
#@NAME: qemuarmhf
#@DESCRIPTION: Machine configuration for QEMU ARM Cortex A9 hard float.

require conf/machine/include/qemu.inc
require conf/machine/include/tune-cortexa9.inc

KERNEL_IMAGETYPE =3D "zImage"

SERIAL_CONSOLE =3D "115200 ttyAMA0"


Patch for linux-yocto_3.8.bb

diff --git a/meta/recipes-kernel/linux/linux-yocto_3.8.bb =
b/meta/recipes-kernel/linux/linux-yocto_3.8.bb
index 790e3e3..787affe 100644
--- a/meta/recipes-kernel/linux/linux-yocto_3.8.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_3.8.bb
@@ -4,6 +4,7 @@ KBRANCH_DEFAULT =3D "standard/base"
 KBRANCH =3D "${KBRANCH_DEFAULT}"
=20
 SRCREV_machine_qemuarm ?=3D "aa76cc28408376814752bd36fb0dcf0e25aa5ba3"
+SRCREV_machine_qemuarmhf ?=3D =
"aa76cc28408376814752bd36fb0dcf0e25aa5ba3"
 SRCREV_machine_qemumips  ?=3D =
"aa0affda03c955678b26b2fb586f1d9505127871"
 SRCREV_machine_qemumips64 ?=3D =
"077bff22c9951db6b35470ba17b1df2f2a91fefb"
 SRCREV_machine_qemuppc ?=3D "698eada61d9385b42dd117858b943655b565084b"
@@ -21,7 +22,7 @@ PV =3D "${LINUX_VERSION}+git${SRCPV}"
=20
 KMETA =3D "meta"
=20
-COMPATIBLE_MACHINE =3D =
"qemuarm|qemux86|qemuppc|qemumips|qemumips64|qemux86-64"
+COMPATIBLE_MACHINE =3D =
"qemuarm|qemuarmhf|qemux86|qemuppc|qemumips|qemumips64|qemux86-64"
=20
 # Functionality flags
 KERNEL_EXTRA_FEATURES ?=3D "features/netfilter/netfilter.scc"

Best regards,

Elvis Dowson=

--Apple-Mail=_7A8717E2-DAB6-4BE1-955C-AED36E95A975
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Bruce,<div><br><div><div>On Aug 25, 2013, at 9:22 AM, Bruce Ashfield =
&lt;<a =
href=3D"mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com<=
/a>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><blockquote type=3D"cite">Another quick question, why is =
it that when I create a new qemuarmhf.conf machine configuration, it =
doesn't automatically pick up the latest linux-yocto_3.8.bb recipe? Why =
does it attempt to use the 3.4 recipe?<br></blockquote><br>Are you =
working off master ?<br><br>Since you set the compatibility, it should =
have been picked. But something<br>else must be changed in your layers, =
since if you didn't add<br>3.4 compatibility via bbappends, it never =
would have been selected<br>at =
all.<br></blockquote></div><div><br></div><div>Yes, I'm currently =
working off master. If I add the following qemuarmhf.conf file, and =
apply the patch to linux-yocto_3.8.bb, it still tries to compile =
linux-yocto_3.4.bb recipe. You should be able to reproduce this fairly =
easily at your end, with the current poky master. I'm not using any =
additional layers, just the core yocto default =
layers.</div><div><br></div><div><b><u>Filename:&nbsp;qemuarmhf.conf</u></=
b></div><div><br></div><div>#@TYPE: Machine<br>#@NAME: =
qemuarmhf<br>#@DESCRIPTION: Machine configuration for QEMU ARM Cortex A9 =
hard float.<br><br>require conf/machine/include/qemu.inc<br>require =
conf/machine/include/tune-cortexa9.inc<br><br>KERNEL_IMAGETYPE =3D =
"zImage"<br><br>SERIAL_CONSOLE =3D "115200 =
ttyAMA0"<br><br></div></div><div><br></div><div><b><u>Patch for =
linux-yocto_3.8.bb</u></b></div><div><br></div><div>diff --git =
a/meta/recipes-kernel/linux/linux-yocto_3.8.bb =
b/meta/recipes-kernel/linux/linux-yocto_3.8.bb<br>index 790e3e3..787affe =
100644<br>--- a/meta/recipes-kernel/linux/linux-yocto_3.8.bb<br>+++ =
b/meta/recipes-kernel/linux/linux-yocto_3.8.bb<br>@@ -4,6 +4,7 @@ =
KBRANCH_DEFAULT =3D "standard/base"<br>&nbsp;KBRANCH =3D =
"${KBRANCH_DEFAULT}"<br>&nbsp;<br>&nbsp;SRCREV_machine_qemuarm ?=3D =
"aa76cc28408376814752bd36fb0dcf0e25aa5ba3"<br>+SRCREV_machine_qemuarmhf =
?=3D =
"aa76cc28408376814752bd36fb0dcf0e25aa5ba3"<br>&nbsp;SRCREV_machine_qemumip=
s &nbsp;?=3D =
"aa0affda03c955678b26b2fb586f1d9505127871"<br>&nbsp;SRCREV_machine_qemumip=
s64 ?=3D =
"077bff22c9951db6b35470ba17b1df2f2a91fefb"<br>&nbsp;SRCREV_machine_qemuppc=
 ?=3D "698eada61d9385b42dd117858b943655b565084b"<br>@@ -21,7 +22,7 @@ PV =
=3D "${LINUX_VERSION}+git${SRCPV}"<br>&nbsp;<br>&nbsp;KMETA =3D =
"meta"<br>&nbsp;<br>-COMPATIBLE_MACHINE =3D =
"qemuarm|qemux86|qemuppc|qemumips|qemumips64|qemux86-64"<br>+COMPATIBLE_MA=
CHINE =3D =
"qemuarm|qemuarmhf|qemux86|qemuppc|qemumips|qemumips64|qemux86-64"<br>&nbs=
p;<br>&nbsp;# Functionality flags<br>&nbsp;KERNEL_EXTRA_FEATURES ?=3D =
"features/netfilter/netfilter.scc"</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_7A8717E2-DAB6-4BE1-955C-AED36E95A975--
