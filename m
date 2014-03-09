Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 643E4E00A71
	for <yocto@yoctoproject.org>; Sun,  9 Mar 2014 05:08:15 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id uy5so5932438obc.20
	for <yocto@yoctoproject.org>; Sun, 09 Mar 2014 05:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1gQ8yBoBKqV8zFr42fk3vqPepb5FGj1zF+0LEh6pQM8=;
	b=v4/RtJj02gRoxo87yuwI6rErikJReVqSfaQ9PHqndzPtTY6dDrkf+u30TQ5p9vToAU
	G7ZI/XqyZwJFoMoERquQ9Pp1bktVgzEBHrH27CUkNUf59aXOWgn2xV5q/g5+kFsiQ11n
	RpQkLbe9CEduPaQsQK86kA/VC7YjgXMT0CiRm9O6ME/BZti4KGe/y40YafvAr15wxUTy
	x5ixYIe9mnQcF6yhzdtfhwlsDaKDL9jgyKk3ZflIpM60wG4JtUqP7x38LxLoQGefgsS/
	ruguxou8J7cSIU4LGAsYCF1U8VwZEg2U4v36hSoYop1PD9yCi1jk25FWWvskw66vM0qH
	G3qQ==
MIME-Version: 1.0
X-Received: by 10.182.33.35 with SMTP id o3mr24026534obi.15.1394366895005;
	Sun, 09 Mar 2014 05:08:15 -0700 (PDT)
Received: by 10.76.101.11 with HTTP; Sun, 9 Mar 2014 05:08:14 -0700 (PDT)
Date: Sun, 9 Mar 2014 13:08:14 +0100
Message-ID: <CAD78y+7r_2_nyzizGccLkyFj1PL2q3TBn4czTGsJr5dp6vos5Q@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Problem building core-image-sato-sdk
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
X-List-Received-Date: Sun, 09 Mar 2014 12:08:18 -0000
Content-Type: multipart/alternative; boundary=001a11c1fbba76ab2c04f42b578a

--001a11c1fbba76ab2c04f42b578a
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

I've succesfully build core-image-sato for raspberry pi, but when I try to
build the sdk version I obtain the following error:

ERROR: Multiple .bb files are due to be built which each provide
virtual/libgles2
(/home/vitalife/yocto/poky/meta-raspberrypi/recipes-graphics/userland/
userland_git.bb /home/vitalife/yocto/poky/meta/recipes-graphics/mesa/
mesa_git.bb).
 This usually means one provides something the other doesn't and should.
ERROR: Multiple versions of mesa are due to be built
(/home/vitalife/yocto/poky/meta/recipes-graphics/mesa/mesa_9.1.6.bb/home/vitalife/yocto/poky/meta/recipes-graphics/mesa/
mesa_git.bb). Only one version of a given PN should be built in any given
build. You likely need to set PREFERRED_VERSION_mesa to select the correct
version or don't depend on multiple versions.

What could be the problem?

Thank you in advance

Federico

--001a11c1fbba76ab2c04f42b578a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;ve succesfully build=
 core-image-sato for raspberry pi, but when I try to build the sdk version =
I obtain the following error:</div><div><br></div><div><div>ERROR: Multiple=
 .bb files are due to be built which each provide virtual/libgles2 (/home/v=
italife/yocto/poky/meta-raspberrypi/recipes-graphics/userland/<a href=3D"ht=
tp://userland_git.bb">userland_git.bb</a> /home/vitalife/yocto/poky/meta/re=
cipes-graphics/mesa/<a href=3D"http://mesa_git.bb">mesa_git.bb</a>).</div>
<div>=A0This usually means one provides something the other doesn&#39;t and=
 should.</div><div>ERROR: Multiple versions of mesa are due to be built (/h=
ome/vitalife/yocto/poky/meta/recipes-graphics/mesa/<a href=3D"http://mesa_9=
.1.6.bb">mesa_9.1.6.bb</a> /home/vitalife/yocto/poky/meta/recipes-graphics/=
mesa/<a href=3D"http://mesa_git.bb">mesa_git.bb</a>). Only one version of a=
 given PN should be built in any given build. You likely need to set PREFER=
RED_VERSION_mesa to select the correct version or don&#39;t depend on multi=
ple versions.</div>
</div><div><br></div><div>What could be the problem?=A0</div><div><br></div=
><div>Thank you in advance</div><div><br></div><div>Federico</div><div><br>=
</div></div>

--001a11c1fbba76ab2c04f42b578a--
