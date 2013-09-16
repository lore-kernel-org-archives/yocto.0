Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DD2FE014EA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 10:06:48 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id ma3so4295989pbc.7
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 10:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=1LeRUUXhqdl8M8ghqNZrjrF0Ihx4tXkdvPayXF+5mkg=;
	b=00+2Ja3gC4f44kF1ovlYkB3saFe8zkK0eQ7+5lpqp6fLC6+fSiEV5mrkuqk3YeLfdn
	Ig2wFcYfMoqS2GN1MogvmzklD3o1YGtk+Qj2CDlQoBTR5TCXUgGhDsebAYkZl6PSfP43
	5xp/GTIqvrjHADAXUYwnMTCN1A6hviApbZ0XBa1XVaBKrrV4RvweiJBNjPT3D4wztwYd
	jbmGbdFJoJlvMoDf5VSZ9rVa0cXaQS+q2w9m1xAFee/YcqvOJLp9PvqQVJ4Tmtvu/62Z
	Trsb6xLqu/pRolHcHskNExnR7w28K8o6wM8gqkvFHXK9AWnjEK+vk4ux7RucMpMP0vcR
	0psQ==
X-Received: by 10.68.178.227 with SMTP id db3mr1729065pbc.202.1379351208198;
	Mon, 16 Sep 2013 10:06:48 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	ct4sm32384691pbb.41.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 16 Sep 2013 10:06:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <loom.20130916T125631-411@post.gmane.org>
Date: Mon, 16 Sep 2013 10:06:50 -0700
Message-Id: <F333D337-0522-4164-9704-6B56C20F7AC9@gmail.com>
References: <loom.20130916T112434-834@post.gmane.org>
	<CAAA4K6KgpiL+Y1U2Ui3YGm8nV_Y+2bvCjAocw3j=CHQTRhTyvA@mail.gmail.com>
	<loom.20130916T125631-411@post.gmane.org>
To: Jack <jackrubby2010@gmail.com>
X-Mailer: Apple Mail (2.1510)
Cc: yocto@yoctoproject.org
Subject: Re: Add nfs package to image minimal for atom-pc
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
X-List-Received-Date: Mon, 16 Sep 2013 17:06:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Sep 16, 2013, at 4:04 AM, Jack <jackrubby2010@gmail.com> wrote:

> I have already tested it. But I got error again. Error is :
>=20
> Computing transaction...error: Can't install nfs-utils-1.2.7-r0@core2: =
no
> package provides /bin/bash
>=20
> What can I do?=20

well, you can add bash to your image using IMAGE_INSTALL or something =
however that might
hide potential problem where may be there is one script in nfs-utils =
wanting bash which
can be split into a package of its own. If you can file a bug in yocto =
bugzilla to track it as well


>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


