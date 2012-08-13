Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6AEEE0027E
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 10:32:30 -0700 (PDT)
Received: by yenm12 with SMTP id m12so4045394yen.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 10:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=XGgG9wm1Rx33YzbrXXaXTyuB+saegt/8/slMy9rqSos=;
	b=I1Wn2E8fEGUFZXmOi3FBwKTFTS+r+qzxAge867wru/ue7xPYjD75pn0Rs+KFUGwajL
	hm37+whwDRjG+m1mWCrS6RdaGpkHvez5IqPq7UaltePeU9mybo22t1F+SZnahTM/b/hO
	Lm2PM0m/RPo9+4bAbvj04VRO8zzwILZvvKgKY7Qt8lvjhamt58Ta1hs2M2WlzWuweFwz
	YK7mflfDngccQgnn7KKYrzROhpXn9DkijI3e091zD0kT9PAmRU/6+k4MJqcKF8JL6TkJ
	vVC7fj63BN+6MlmaoifWCihaC1VlXkT1pgpEGtK2/69G76Yk72UDPsUBDOR3k6ZcmuAg
	f7Ww==
Received: by 10.68.227.163 with SMTP id sb3mr34789493pbc.74.1344879149068;
	Mon, 13 Aug 2012 10:32:29 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id qp6sm51266pbc.55.2012.08.13.10.32.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 13 Aug 2012 10:32:28 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <95FCC856-D0D4-4DB8-8078-C4BBC4172410@gmail.com>
Date: Mon, 13 Aug 2012 21:32:24 +0400
Message-Id: <293366B8-D2D4-4027-9B4F-6FE2F40507B1@gmail.com>
References: <95FCC856-D0D4-4DB8-8078-C4BBC4172410@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
Subject: Re: poky: core-image-minimal cannot login
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
X-List-Received-Date: Mon, 13 Aug 2012 17:32:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Aug 13, 2012, at 9:12 PM, Elvis Dowson wrote:

> I've created a ramdisk with core-image-minimal for powerpc 440 =
soft-float, and find that I cannot login
>=20
> Yocto (Built by Poky 7.0) 1.2+snapshot-20120812 (none) ttyS0           =
                                        =20
>=20
> (none) login:
>=20
> I type root, but it doesn't do anything.

I should have been a bit more explicit..

if I type root as the user name, it doesn't do anything, and gives me a =
login prompt once again. It doesn't prompt me to enter a password (which =
I read somewhere was root as well).

Elvis Dowson=

