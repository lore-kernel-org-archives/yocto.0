Return-Path: <joaohf@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B40B64C810B6
	for <yocto@yoctoproject.org>; Tue, 28 Dec 2010 18:54:54 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so11374663iwn.35
	for <yocto@yoctoproject.org>; Tue, 28 Dec 2010 16:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=oNlEh8LRUTCkFTE+4wjx1nAOTrSHyUwUVNOHqsejbBQ=;
	b=khNYuN/Xjmmuv/IFKVWRmABOQN2Xm5hiqhV4QE4DClD0mKjVZ+GkfOlHH8lA76Xv8Y
	xvgKmPFW2fmBqJJzDmiz3/azMAK2KIzdEw0/qjG1nJx+9UPe0oeIujkf1LBHPPX1tnMj
	ugYEE49dhuTmObzhA9+x+6gPSecnS5FpcligQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=XswUWlbeaKfF5HUFBmk1tfLu3v0YG/tasl4C0Eq3gHkXcDgxSHADCMn32lqgWulh4Z
	gSRYhKFRTt5Dw7v8X3WurbWylwO1t74tFBJkUKpY9oDBOh44ZVDHyhAgYzLBOkk08Xmx
	WM8JhP3K6EQh0JZh+CC23ipGINONuFPEZBl9U=
MIME-Version: 1.0
Received: by 10.42.230.137 with SMTP id jm9mr14115111icb.282.1293584094261;
	Tue, 28 Dec 2010 16:54:54 -0800 (PST)
Received: by 10.42.178.66 with HTTP; Tue, 28 Dec 2010 16:54:54 -0800 (PST)
Date: Tue, 28 Dec 2010 22:54:54 -0200
Message-ID: <AANLkTimHq1JGQCUfsPcc4DdBYWxDdGmtBzgV0ObvJDZ-@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: linux yocto private branch
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
X-List-Received-Date: Wed, 29 Dec 2010 00:54:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

This question is about how I can track linux yocto and maintain a
private kernel.

I am tracking the yocto master on git.

My target is to use linux-yocto kernel and with my personal machine
(IBM and HP blade servers x86-64 or x86).
Probably I need to setup some special driver like disk controller or
network device, but it's not the case now.

I want to track linux-yocto kernel. To accomplish it, I created a
linux-yocto_git.bbappend with:

SRC_URI =3D "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=3Dgit;full=
clone=3D1;branch=3D${KBRANCH};name=3Dmachine
\
           git://git.pokylinux.org/linux-yocto-2.6.37;protocol=3Dgit;noclon=
e=3D1;branch=3Dmeta;name=3Dmeta
\
           file://defconfig"

KMACHINE_mpg =3D "yocto/standard/common-pc/base" <---- it's right?
COMPATIBLE_MACHINE =3D "mpg" <--- my kernel config

My doubt: KMACHINE_mpg can be "yocto/standard/mpg" or it need to be a
strict branch on yocto git?

In other words, Can I have a private branch and track a default
yocto/standard/common-pc/base?

I read kernel-manual_9.pdf, section 3.4.4 but I believe it's a bit outdate =
now.

Currently I can build linux-yocto and create a full image to be use
with VirtualBox and with real hardware.

Thanks.

PS:

I think that yocto can be use to build and runs in big machines too,
not only in small devices.

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

