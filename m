Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D667E00D16; Fri,  5 Feb 2016 07:39:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AC71E00D0E
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 07:39:27 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 4CE523F064;
	Fri,  5 Feb 2016 10:39:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	+59RxEiOB6T5j23Fw4JWs/XJI68=; b=or8qO73pWbjnnnibjXWMaCm7A0XPnkIo
	mm/ojCHLb+j5fZh9SxaAck6CzS5e+HAM8JOr+9/cQ0xmntsBNmrdRmFgY7do8C1V
	hsB2EXR+r1O4UlbWQ9lBGOeKF/znwfZxELOS2Dp9iHbHAZc2Wsv0IjmFBudG6tGt
	pkW7BkQM7ek=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 44E9F3F063;
	Fri,  5 Feb 2016 10:39:24 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id E5CF73F05F;
	Fri,  5 Feb 2016 10:39:22 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
Date: Fri, 5 Feb 2016 16:24:15 +0100
Message-Id: <2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: A1AD1E7A-CC1E-11E5-8053-79226BB36C07-96844961!pb-smtp0.pobox.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 15:39:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thank you Burton and Tanu. The upshot here seems to be that there is a =
platform dependency on whether one links to libgcc_s.a or libgcc_s.so.1:

"libgcc.a or libgcc_s.so.1 on some platforms=E2=80=9D.

I suspect that my test program, which was supplied to me as a .deb =
package, was compiled on Ubuntu, and so links to libgcc_s.so.1. I =
can=E2=80=99t see any obvious way to get libgcc_s.so.1 on Yocto. I =
already have:

IMAGE_INSTALL_append =3D " gcc g++ binutils libgcc libgcc-dev libstdc++ =
libstdc++-dev libstdc++-staticdev \
autoconf automake ccache chkconfig glib-networking glibmm \
packagegroup-core-buildessential pkgconfig  \
boost cmake zlib glib-2.0 net-snmp \ =E2=80=A6=E2=80=9D

That leads me to think that the program I am testing needs to be =
compiled specifically on Yocto also. That conclusion seems a bit unusual =
to me in a Linux context, though obviously not unheard of.

Regards

Nathan

> On 5 Feb 2016, at 12:59, Burton, Ross <ross.burton@intel.com> wrote:
>=20
>=20
> On 5 February 2016 at 11:40, Nathan Sowatskey <nathan@nathan.to> =
wrote:
> Is there a way to get the libgcc_s library on a Yocto image? Is that =
even the right thing to do?
>=20
> It's fairly likely that your binary is actually linking to =
libgcc_s.so.1 (which by default is in /lib, part of libgcc).  =
libgcc_s.so is the development-time-only symlink so that's packaged into =
libgcc-dev.  You'll only need that on your target if you want to compile =
on it.
>=20
> Ross


