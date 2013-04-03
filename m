Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f53.google.com (mail-pb0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77C02E01514
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 23:44:01 -0700 (PDT)
Received: by mail-pb0-f53.google.com with SMTP id un15so679695pbc.12
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2013 23:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=P87Hcp415t57NDP8JyA72g2Q7biAVkfQ2b7AAjJ94d8=;
	b=M+8x2700jA3h/oeA+viOoQXgMUyk8j3CtkikazrJ+t0QCb8y6eng9Tq5BB2cY7h2Gi
	sttfAQ2ctvzjSYHjowxohI1yG4l16R8IED33jVQmzBbaz08MVex37OyO/XlA7pZiF8X7
	nf3Sn34qWrRAo2nvYovNfx5Fw0NH0lDZlEQt2XqqXCNYr3ZperkQRywg3PVxxfw7mJXx
	rLfbAkea+CobaYGh0HokDRpzE/ZUUC14kDoftUFZ1I6PCwghbMYJzVKAz6l1yI9DxWmH
	GZ9GkSMkBliibuxeFTu0RNlN7mDNXejYls1pRB9/ZOs/4aIigrkqUYdRsuNuYQYGYp1G
	WhaQ==
X-Received: by 10.66.221.226 with SMTP id qh2mr1458225pac.62.1364971441229;
	Tue, 02 Apr 2013 23:44:01 -0700 (PDT)
Received: from vspringer-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id qe3sm4815416pbb.0.2013.04.02.23.43.59
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 02 Apr 2013 23:44:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1991749.pLqSkOTN3J@helios>
Date: Tue, 2 Apr 2013 23:44:06 -0700
Message-Id: <60D429A1-E760-4284-90E9-151A76521FBC@gmail.com>
References: <1364965911-17324-1-git-send-email-raj.khem@gmail.com>
	<1991749.pLqSkOTN3J@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-yocto][PATCH] poky.conf: Use weaker assignment for PREMIRROR
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
X-List-Received-Date: Wed, 03 Apr 2013 06:44:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Apr 2, 2013, at 11:41 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:

> I'm not sure this is a path we should be going down; potentially we =
could end=20
> up having to use ??=3D for just about everything.
>=20

whats is downside of using ??=3D instead of ?=3D

> Wouldn't you be better off using your own separate distro config =
(perhaps=20
> copying poky.conf instead of "require"ing it) and then the user can =
just set=20
> it with "=3D" ?

yes. however you are then always on lookout for changes happening in =
poky policies then
you need to mimic in your distro config


