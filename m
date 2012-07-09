Return-Path: <pcjegan@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAD7CE006EA;
	Sun,  8 Jul 2012 22:45:30 -0700 (PDT)
Received: by wibhn17 with SMTP id hn17so2150230wib.11
	for <multiple recipients>; Sun, 08 Jul 2012 22:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=SMzSFA+JL1oIbOAtPXbmu2VYcg8UGU6yRvPmVGQdKTU=;
	b=fQGbsLqSNnqrsTUSLK/OwDr/aV+UaBmQPEO9ItCPsqUDRIfdeO8pAMR2MUnGQ3qpPa
	f8vo6YkcLGVurTF1syya5x8gnFaouA/I8ane9T7ejPzyRuKzW3/Ojx4ebKDhKMkUoEKl
	j6Md3oGcgnu1TxUsTlc9P/YzVAHEALj1K4wQdAncjX8WIEy0JIAzIFXSk3aCjMpNT/nn
	IIPDQ7FKXqY4n1zv/K696JRXsLcZ6pdgyAF+twCL+WQNDpuN5owOsQbsqDodMaBaoyq2
	RbB2xnsok0SS3NBAsmpbQHoZwssoFELZdrdn0PzRcEiy2+yp1GaNB4g/VdNwSMNEy1zf
	TCUg==
Received: by 10.180.20.239 with SMTP id q15mr26516953wie.13.1341812729248;
	Sun, 08 Jul 2012 22:45:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.1.131 with HTTP; Sun, 8 Jul 2012 22:45:09 -0700 (PDT)
From: Jegan Chandru <pcjegan@gmail.com>
Date: Mon, 9 Jul 2012 11:15:09 +0530
Message-ID: <CAAA4K6LKt0Lqmsp0BLwnQbKmgChN4jE2D53Y0TaietxXux1iZQ@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: poky-request@yoctoproject.org
Subject: meta-toolchain - python not populated properly in sdk
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
X-List-Received-Date: Mon, 09 Jul 2012 05:45:31 -0000
Content-Type: multipart/alternative; boundary=bcaec53d5ac914fb5304c45f1f3e

--bcaec53d5ac914fb5304c45f1f3e
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have a little trouble while building meta-toolchain for my distro. This
is for arm architecture on 64 bit ubuntu 12.04 machine. I use default
"bitbake meta-toolchain" to create sdk. It created ok, but when I check for
python, it doesnt include everything from build dir. I tried to execute
some scripts using this sdk, but it fails due to some modules missing like
shutils, optparser etc.. I checked the build dir, its all there but not
populated in sdk. I tried to add those by some methods, one of those being
defining my own meta-toolchain-mydistro, but couldnt get full python to get
populated in sdk. Any help with this will deeply appreciated.  what am i
missing?

JC

--bcaec53d5ac914fb5304c45f1f3e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,
<div><br></div><div>I have a little trouble while building meta-toolchain f=
or my distro. This is for arm architecture on 64 bit ubuntu 12.04 machine. =
I use default &quot;bitbake meta-toolchain&quot; to create sdk. It created =
ok, but when I check for python, it doesnt include everything from build di=
r. I tried to execute some scripts using this sdk, but it fails due to some=
 modules missing like shutils, optparser etc.. I checked the build dir, its=
 all there but not populated in sdk. I tried to add those by some methods, =
one of those being defining my own meta-toolchain-mydistro, but couldnt get=
 full python to get populated in sdk. Any help with this will deeply apprec=
iated. =A0what am i missing?</div>

<div><br></div><div>JC</div>

--bcaec53d5ac914fb5304c45f1f3e--
