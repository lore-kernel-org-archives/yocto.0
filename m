Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB1DBE002AC
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 10:52:12 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so3202393pbb.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 10:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=caVrSMpgaMh8IkuyHIF6iugctbsUOENEeckVGRRAZRc=;
	b=0MhHdYLRw4w/vIC8NT7zccmRkP4BNTVk9isDz6GLp29scv5w72OkhLjNOjPwxfnrHX
	CuP4O5ny2DvA/1lq95j0ATPYGMzJCRncb4TXLw/gbrU7sMeiFYjZTPBi0i+734hC/RzX
	1Nhz3rTYdqedLKwqOcZ0RBCQ+fT3TIXYLEqypm8778xpJhPxz2XxprHhjOy4gqsUtduU
	1nZwvrFEJ4pGHKeJQWJUZ1pBDJBsZ+UPkJ5bOkWNWsS8lrVqLa5QNFl13FP+bGR2HbAw
	H7g/XOx2kLlU57oUQ6NbyrHUgn+QbBLLJ+7FNAsSOOhChdj6OY+t8RVFh/bq39vYhWHL
	mLjQ==
Received: by 10.66.75.225 with SMTP id f1mr4343225paw.35.1346953932549;
	Thu, 06 Sep 2012 10:52:12 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id mu8sm1684657pbc.49.2012.09.06.10.52.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 06 Sep 2012 10:52:11 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <5048C1C2.1010903@mlbassoc.com>
Date: Thu, 6 Sep 2012 21:52:05 +0400
Message-Id: <9362ED2A-B401-40A3-8341-FA7873C822D8@gmail.com>
References: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
	<4865264.UZoJkHz8Ho@helios>
	<FA3A0E24-467D-45F1-9809-BED60472FB8C@gmail.com>
	<5048C1C2.1010903@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Procedure to setup icecc for performing a distributed build
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
X-List-Received-Date: Thu, 06 Sep 2012 17:52:12 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Gary,

On Sep 6, 2012, at 7:31 PM, Gary Thomas wrote:

> On 2012-09-06 09:23, Elvis Dowson wrote:
>>=20
>> Unfortunately no. I've got two machines, both with quad-core intel i7 =
processors, but I just couldn't
>> get icecc to work with yocto. I end up regularly perform fresh builds =
at least 5 to 6 times a day,
>> and it takes me 2 hours to build core-image-minimal.
>=20
> Just wondering the exact details of your system and why your =
performance is
> so very different from mine.
>=20
> I have a HP box with 8-way Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz & =
12GB RAM
> It will build a Yocto image from scratch in around 40 minutes.

I'm running Ubuntu 12.04 LTS virtualized on a 2011 Apple MacBook Pro =
15", with
VMware Fusion 5.0.1. The VMware disk image resides on a SSD drive with a =
3G
SATA interface.

The specs are 2.3GHz Intel quad-core i7-2820QM with 8MB L3 cache,=20
8GB 1333 MHz RAM for the host.

The Ubuntu 12.04 guest is configured with 4GB RAM, 8 virtual CPU cores.
During core-image-minimal builds, the memory usage doesn't exceed 2 to =
3GB.

A linux kernel 3.3.0 build for a powepc440 target takes 1 min 40 =
seconds, as
an additional data point.

Maybe next year, when the newer Mac Pros come out, I'll probably invest =
in
a 8-core or 10-core xeon configuration. The current Mac Pros are due for =
a refresh
then, so I'm waiting for the next hardware update.

I'm also considered buying an IBM Blade server, but haven't made up my =
mind yet.

Best regards,

Elvis Dowson=

