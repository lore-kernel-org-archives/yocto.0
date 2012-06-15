Return-Path: <thomas.petazzoni@free-electrons.com>
Received: from mail.free-electrons.com (mail.free-electrons.com [88.190.12.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05C9BE013EB
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 00:05:49 -0700 (PDT)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id AB16A16D; Fri, 15 Jun 2012 09:05:33 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=ALL_TRUSTED,AWL,BAYES_20
	shortcircuit=no autolearn=ham version=3.3.1
Received: from skate (humanoidz.org [82.247.183.72])
	by mail.free-electrons.com (Postfix) with ESMTPSA id AD935148;
	Fri, 15 Jun 2012 09:05:23 +0200 (CEST)
Date: Fri, 15 Jun 2012 09:05:35 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Message-ID: <20120615090535.3516e5a5@skate>
In-Reply-To: <4FDAD6D1.4050605@r-finger.com>
References: <4FD93175.7070202@linux.intel.com> <4FD98EA6.1050403@r-finger.com>
	<4FDA530E.3090508@linux.intel.com> <4FDAD6D1.4050605@r-finger.com>
Organization: Free Electrons
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.10; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Fri, 15 Jun 2012 07:05:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Le Fri, 15 Jun 2012 07:31:45 +0100,
Tomas Frydrych <tf+lists.yocto@r-finger.com> a =C3=A9crit :

> Hi Darren,
>=20
> On 14/06/12 22:09, Darren Hart wrote:
> > This solution improves the kick-the-tires
> > experience with poky-tiny, without pulling in all of init,=20
>=20
> I think you really should quantify what 'all of init' means, without
> this you are addressing a problem that is merely perceived. Just a
> quick look shows that the sysvinit package is about 120KB unpacked,
> for that you get a solution that is tested, robust, and supported
> across Yocto.

FWIW, Busybox comes with its own implementation of a very simple and
basic init, which only takes a few KB of space inside the Busybox
binary. That's what we use by default in Buildroot, and it works just
fine. It's a really good trade-off between no init at all, and a
full-blown sysvinit system.

Best regards,

Thomas
--=20
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

