Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95642E002AB
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 09:49:58 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2045450dad.35
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 09:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=NPEOVR61FgKOHrg5f4eT28vo73mvKEImmutHbkSQfV8=;
	b=JYV4nr492U0MaYpINfbMpmYpbSS74xAWY6LMOeO1PXxuSM/nPci6Sn0CSxvHsFUNJL
	XBj3KTGBMCrJzLpeqtBasonkSnaohKQ/lkK6iQDQO3C9+wNln7TkGVZ3+yP2U/P5Oduv
	jjy9q4ZR5svZ86Ay+KbQK7aiRnGsNoyYn9cKicHRVZFE3SqZRFMF3dZlW2xeeQr68Q6Q
	aeTeYaS6giKKVoQDrZU5ft/Y1XWoINv9a6b3AvJEaR/09Lk6pESDHrj9rxYxMBJoYWPE
	HfQVfCIAAEEV+e80AsGoTz8XJ7nnXn4i78PU3qBhQ2uIOods/MUx+H8UlgkuERWznOB4
	2dTg==
Received: by 10.68.202.193 with SMTP id kk1mr16944934pbc.136.1347814184287;
	Sun, 16 Sep 2012 09:49:44 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.108.162])
	by mx.google.com with ESMTPS id uu10sm5330745pbc.2.2012.09.16.09.49.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 16 Sep 2012 09:49:42 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <B9672221-8331-49D3-B853-E284CBCCA0B5@gmail.com>
Date: Sun, 16 Sep 2012 20:49:38 +0400
Message-Id: <A158BAD0-6C2D-4724-B13A-AAB54992904C@gmail.com>
References: <B9672221-8331-49D3-B853-E284CBCCA0B5@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
Subject: Re: All kernel modules being built and shipped in images/modules-*.tgz
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
X-List-Received-Date: Sun, 16 Sep 2012 16:49:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Sep 15, 2012, at 7:29 AM, Elvis Dowson wrote:

> I just noticed that with the recent poky master updates, my =
images/modules-3.3.1-r00-virtex5.tgz file has grown from 33.1 MB to =
668.5MB. When I looked in the package, I saw that the kernel/drivers =
folder inside that package was nearly 1.5GB uncompressed!!
>=20
> My kenel defconfig was tuned so that I only used a bare minimum of =
kernel modules, and nearly all except for 2 groups (one related to =
filesystem and the other for networking) was built as a module. The rest =
were all built into the kernel.
>=20
> Isn't this a regression or an error?=20
>=20
> Also my build time has gone up from 40 minutes to 67 minutes, probably =
as a result of the increased number of kernel modules being built and =
shipped.

Is there any way to prevent all the kernel modules from being built, =
when 99% of my kernel defconfig settings are set to 'y' and not to build =
any modules?

Elvis=

