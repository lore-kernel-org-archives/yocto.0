Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6054E003BF
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 11:06:18 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lj1so1887565pab.1
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 11:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=cdL0Efq643GWKBnpT9tPsWzod2Zi7Sp5vmh7vEQfMHM=;
	b=ULr5C38TQRdOLXpj2pQ0Xu/4hH0IkfkA7qEdnsiBQ9inaG7lz9BgoVUkaeNVybqMjq
	5MydgmdWY5H5LT5q5gyMxEBL5rVWniptCoF8l4+cmpPh2uStAnF32L/7Q2b2FXETb/g0
	FlNtNqzS1Aa/RYyXnDBHFLy39fFleCrxMFjBavyG+0/joumwPTi3CuCOYvu0G5ViiW05
	zktS9gAwqLRQ7E6SqK3/1pZ8cPNPtSEXK4Z3mETkwTMyKcQa+tA+vY1RojE37BVHIr8l
	RxnfzHSL3pRnBxUJJoK7PsR44rjAdmZn0WDbgwZQd/lmMjik9t2NJ0UiG+O1+lL0yAwl
	OvEg==
X-Received: by 10.66.192.132 with SMTP id hg4mr5459758pac.84.1377367578549;
	Sat, 24 Aug 2013 11:06:18 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id ai6sm8993318pad.15.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 24 Aug 2013 11:06:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <A9C97D7F-9AB0-4F9A-B933-D09ED5B6748E@gmail.com>
Date: Sat, 24 Aug 2013 22:06:13 +0400
Message-Id: <F952BE32-0856-4531-962C-FC757917A8FE@gmail.com>
References: <A9C97D7F-9AB0-4F9A-B933-D09ED5B6748E@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1498)
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
X-List-Received-Date: Sat, 24 Aug 2013 18:06:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 24, 2013, at 10:00 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:

> I created a new qemuarmhf.conf, to build using armv7a vfp and neon.=20
>=20
> In the linux-yocto_3.8.bb recipe, I explicitly specified =
SRCREV_machine_qemuarmhf and added qemuarmhf to the list of =
COMPATIBLE_MACHINES.
>=20
> For some reason, it still refuses to build using kernel 3.8, and keeps =
defaulting to 3.4.52.
>=20
> I know I can over-ride it in my local.conf by setting a =
PREFERRED_VERSION_virtual/linux =3D"3.8" , but I'd like to know what =
I've missed, to get it to work by default, without setting the over-ride =
in my local.conf.

Weird, even after setting PREFERRED_VERSION_virtual/linux =3D"3.8", it =
still picks up linux-yocto_3.4.bb recipe!

What am I failing to set or configure additionally to get it to work, as =
intended?

Best regards,

Elvis Dowson=

