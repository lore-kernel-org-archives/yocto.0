Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FB9FE00723
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 12:45:07 -0700 (PDT)
Received: by dadz8 with SMTP id z8so3273330dad.35
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 12:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=u/X0ngD0YF/K+Ai4LfNTgU7uBHD4XRp+Rv4b65hEzX0=;
	b=sgot4qJDrzT6vZUWN+Vh27l2eHiVvpDCfo/1DTdRIEQf0rhCirUq7Sn9KRIObgukSL
	QYOMbBp8T0jHThq/RAdneLvgMrivWwY0gFuzfrtWfxOaK+9gLZTB6UBiMxG9OtLWvsQR
	MUvVYpIaTQiDpce0i654+ZEigBp9hbhNLHf7zwvJLZomeAGb1XtZe7S5r5OVWCzAO1de
	GpyKkN9kmavsgxa707OoouLJ5Y1v3jGDmeG1XToehL/Jti0534RixSCz/zZUSXQpAM4c
	g/2+esugCpiOClOVR9LlK4vTQ4xn51xfqx4P/g45qb7OOtphIbzFloOtlsLgpFZNE3TT
	YB2A==
Received: by 10.68.222.40 with SMTP id qj8mr12773934pbc.139.1340394306932;
	Fri, 22 Jun 2012 12:45:06 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id rd7sm39785004pbc.70.2012.06.22.12.45.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 22 Jun 2012 12:45:06 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <3DE355D9-B6B2-4EE0-9AF9-E3073B59036D@gmail.com>
Date: Fri, 22 Jun 2012 23:45:01 +0400
Message-Id: <BEA91523-FFC9-4F14-A6B8-D20C617AA250@gmail.com>
References: <A8AE73E3-EC64-4E7F-9209-489762F48CFA@gmail.com>
	<3DE355D9-B6B2-4EE0-9AF9-E3073B59036D@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
Subject: Re: linux-xilinx: SRCPV, SRCREV, LINUX_VERSION and the actually generated kernel version
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
X-List-Received-Date: Fri, 22 Jun 2012 19:45:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jun 22, 2012, at 11:39 PM, Elvis Dowson wrote:

> Even though I specify a specific value for SRCREV, as follows, SRCPV =
is always set to the latest commit it. The generated package folder gets =
the latest commit id appended because of SRCPV. So what should I do, =
append SRCREV or SRCPV for recipes that fetch from a git repository?
>=20
> For example, for the linux-xilinx_git.bb recipe, I have the following
>=20
> SRCREV =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8"
>=20
> SRC_URI =3D =
"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3D${KBRANCH} =
\
>           file://defconfig"
>=20
> LINUX_VERSION =3D "2.6.37"
>=20
> PR =3D "r17"
> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>=20
> NOTE: package =
linux-xilinx-2.6.37+git1+ed63a4d76efadcb68f5776e4244766ffea226cc4-r17: =
task do_fetch: Started
>=20
> The package folder name that gets generated is as follows (SRCPV). I =
notice that nearly all the recipes that fetch from git use SRCPV. In my =
specific case, should I be using SRCREV instead? I would like to know =
when to use SRCPV and SRCREV, while working with recipes that fetch from =
git repositories.
>=20

The weird thing is if I try to use SRCREV to append to the PV, it adds =
gitAUTOINC to the folder name , which is very weird.=20

SRCREV =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8"

SRC_URI =3D =
"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3D${KBRANCH} =
\
           file://defconfig"

LINUX_VERSION =3D "2.6.37"

PR =3D "r17"
-PV =3D "${LINUX_VERSION}+git${SRCPV}"
+PV =3D "${LINUX_VERSION}+git${SRCREV}"

NOTE: package linux-xilinx-2.6.37+gitAUTOINC-r17: task do_fetch: Started

So, I'm not sure what the correct thing to do is. In the end, the =
generated package folder name is incorrect because it doesn't correctly =
reflect the correct commit id , as specified by the SRCREV.

Best regards,

Elvis Dowson


