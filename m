Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C2BE0070B
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 12:39:15 -0700 (PDT)
Received: by dadz8 with SMTP id z8so3266132dad.35
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 12:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=noQ+po6XUQVskBGdLUU9dT7cgee955+3HSVj35xoZS8=;
	b=NWLp5els/fxca3qxg+Fe8uPhfBCo+pDL4h2/cVXw4kDjsIyeUDT+uPuwPc/+3mIMbo
	iZ8CWrQLG2Kj05V8x6kXlMX2a7oDY2wlohwcIfI8q5hCLAAa5R/pBQuPrnEw8yS0VLuU
	fRPDdE8CWcjLueNXm+2mwSH1oOwk0IVqmA0gPK5IWcqRaSJp5OLdWoiMuGqVBxVxOoqP
	mMYUIjOuJPNODXSSB5i+Tup79J7ehDl6uTIzFu+f+KNMjstmnbK51Gmhw1zPVDtLg3xp
	eS6zwPr4gV/aUYCxak1r4pZJl024UDx33BR1tN7WxjehRjgTQ4iB1Qbr71Uusk8mw3rj
	IPgg==
Received: by 10.68.136.229 with SMTP id qd5mr13792380pbb.2.1340393955471;
	Fri, 22 Jun 2012 12:39:15 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id ms1sm39786115pbb.63.2012.06.22.12.39.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 22 Jun 2012 12:39:14 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <A8AE73E3-EC64-4E7F-9209-489762F48CFA@gmail.com>
Date: Fri, 22 Jun 2012 23:39:10 +0400
Message-Id: <3DE355D9-B6B2-4EE0-9AF9-E3073B59036D@gmail.com>
References: <A8AE73E3-EC64-4E7F-9209-489762F48CFA@gmail.com>
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
X-List-Received-Date: Fri, 22 Jun 2012 19:39:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      Even though I specify a specific value for SRCREV, as follows, =
SRCPV is always set to the latest commit it. The generated package =
folder gets the latest commit id appended because of SRCPV. So what =
should I do, append SRCREV or SRCPV for recipes that fetch from a git =
repository?

For example, for the linux-xilinx_git.bb recipe, I have the following

SRCREV =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8"

SRC_URI =3D =
"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3D${KBRANCH} =
\
           file://defconfig"

LINUX_VERSION =3D "2.6.37"

PR =3D "r17"
PV =3D "${LINUX_VERSION}+git${SRCPV}"
     =20
NOTE: package =
linux-xilinx-2.6.37+git1+ed63a4d76efadcb68f5776e4244766ffea226cc4-r17: =
task do_fetch: Started

The package folder name that gets generated is as follows (SRCPV). I =
notice that nearly all the recipes that fetch from git use SRCPV. In my =
specific case, should I be using SRCREV instead? I would like to know =
when to use SRCPV and SRCREV, while working with recipes that fetch from =
git repositories.

Best regards,

Elvis Dowson=

