Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6ABC74C800A7
	for <yocto@yoctoproject.org>; Wed,  2 Feb 2011 12:10:19 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so225512iyb.35
	for <yocto@yoctoproject.org>; Wed, 02 Feb 2011 10:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:from:date:message-id:subject:to
	:content-type; bh=aJwKKFVU+Fvszvo0f3Exjepieesr6/21aGTUInc/Vmc=;
	b=iBejX8gz7qZyH69qgjXhEYGJBiCcU9Ehinixh0Q4CTwtj/0OrsGwKKPLUGUoKyvihj
	hR02e2uFQBn0EKHWHcfpPtaKBbCxw5WkN996KFd1I7OnAn+rEP9cVICctxNgtceQK10H
	7KV3XkMAtWMnGf2j27NR6eriRhP3bfv6EWZ5Q=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:from:date:message-id:subject:to:content-type;
	b=CxXgyVa73cuKxkk6j54uOWffwYFnx8932T9qICNuQ86Sr//8uL9k6Z6pl3OLZ47/vr
	tZwMo1VVT74IbqAqXKoC+Y4TyNcNew8u2R8rzC1MvPekXc45tD0jPs+h2mXU4JM366cI
	Qv6gB/zlddgVtbcZ+1ud4JBLeNcPQMentAetM=
Received: by 10.42.180.7 with SMTP id bs7mr11545438icb.297.1296670219035; Wed,
	02 Feb 2011 10:10:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.222.202 with HTTP; Wed, 2 Feb 2011 10:09:58 -0800 (PST)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 2 Feb 2011 16:09:58 -0200
Message-ID: <AANLkTi=WOdajvOf=yq2DwXj6VqSyx8t3BXzHPm-QCXMf@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Binutils compiling workaround
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
X-List-Received-Date: Wed, 02 Feb 2011 18:10:19 -0000
Content-Type: multipart/alternative; boundary=90e6ba613790cbe5d4049b508f7b

--90e6ba613790cbe5d4049b508f7b
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I was trying to get binutils (2.10.1 an 2.21) compiled but always getting
this error:

cc1: warnings being treated as errors
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binutils-2.21/gas/config/tc-arm.c:
In function 'parse_operands':
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binutils-2.21/gas/config/tc-arm.c:1895:27:
error: 'firsttype$defined' may be used uninitialized in this function
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binutils-2.21/gas/config/tc-arm.c:1895:27:
error: 'firsttype$index' may be used uninitialized in this function
make[4]: *** [tc-arm.o] Error 1
make[4]: Leaving directory
`/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binutils-2.21/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gas'
make[3]: *** [all-recursive] Error 1
make[3]: Leaving directory
`/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binutils-2.21/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gas'
make[2]: *** [all] Error 2
make[2]: Leaving directory
`/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binutils-2.21/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gas'
make[1]: *** [all-gas] Error 2
make[1]: Leaving directory
`/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binutils-2.21/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi'
make: *** [all] Error 2
FATAL: oe_runmake failed
Function 'do_compile' failed (see
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/temp/log.do_compile.26524
for further information)
ERROR: Function 'do_compile' failed (see
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/temp/log.do_compile.26524
for further information)


As the compiler was treating warnings as errors I put "--disabe-werror"
on EXTRA_OECONF inside the binutils.inc file.

I don't know if this is the best solution.
What is the root cause of this warning?



Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--90e6ba613790cbe5d4049b508f7b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Folks,<div><br></div><div>I was trying to get binutils (2.10.1 an 2.21) com=
piled but always getting this error:</div><div><br></div><div><div>cc1: war=
nings being treated as errors</div><div>/home/dev/yocto-repo/build/tmp/work=
/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binutils-2.21/gas/config/tc-arm=
.c: In function &#39;parse_operands&#39;:</div>

<div>/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils=
-2.21-r0/binutils-2.21/gas/config/tc-arm.c:1895:27: error: &#39;firsttype$d=
efined&#39; may be used uninitialized in this function</div><div>/home/dev/=
yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/binuti=
ls-2.21/gas/config/tc-arm.c:1895:27: error: &#39;firsttype$index&#39; may b=
e used uninitialized in this function</div>

<div>make[4]: *** [tc-arm.o] Error 1</div><div>make[4]: Leaving directory `=
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21=
-r0/binutils-2.21/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gas&#=
39;</div>

<div>make[3]: *** [all-recursive] Error 1</div><div>make[3]: Leaving direct=
ory `/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils=
-2.21-r0/binutils-2.21/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/=
gas&#39;</div>

<div>make[2]: *** [all] Error 2</div><div>make[2]: Leaving directory `/home=
/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/b=
inutils-2.21/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/gas&#39;</=
div>

<div>make[1]: *** [all-gas] Error 2</div><div>make[1]: Leaving directory `/=
home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-=
r0/binutils-2.21/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi&#39;</=
div>

<div>make: *** [all] Error 2</div><div>FATAL: oe_runmake failed</div><div>F=
unction &#39;do_compile&#39; failed (see /home/dev/yocto-repo/build/tmp/wor=
k/armv4t-poky-linux-gnueabi/binutils-2.21-r0/temp/log.do_compile.26524 for =
further information)</div>

<div>ERROR: Function &#39;do_compile&#39; failed (see /home/dev/yocto-repo/=
build/tmp/work/armv4t-poky-linux-gnueabi/binutils-2.21-r0/temp/log.do_compi=
le.26524 for further information)</div></div><div><br></div><div><div>
<br>
</div></div><div>As the compiler was treating warnings as errors I put &quo=
t;--disabe-werror&quot; on=A0EXTRA_OECONF inside the binutils.inc file.</di=
v><div><br></div><div>I don&#39;t know if this is the best solution.</div>

<div>What is the root cause of this warning?</div><div><br></div><div><br><=
/div><div><br clear=3D"all"><div>Regards,</div><div><br></div>--<br>*dS<br>=
Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br>
</div>

--90e6ba613790cbe5d4049b508f7b--
