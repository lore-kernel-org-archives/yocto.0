Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 090994C80FAD
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 16:05:02 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn4 with SMTP id 4so30299iwn.35
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 14:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=n9tQcYEJxvNLSn6cortqEB+Ieq3pbgtCG/OmwZALrYI=;
	b=bWaxykEkLmTu9dmj7vnQyULWtTm7DPSruybKVzdK7tYbTM/AK4+vwZLQu+OnX1/e8e
	g/q4RSkU8lpYSaQVOTg1LxPQlNghNgkP9oYpvlwQ7TxnnVC/73pwwb5Vg8ki7EevgNvH
	V+94t9CBpVZdEYVn9ejhAQzJKcmFrm1VPVHkU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=feiGUgxahiB/dxcYPGZPqyLCeY8ITgp0y9/p+UIDw/7zHAXRXT5dIsPBnhbRE3rhXS
	sthtxj2B1JkgfiFpNnn2frz4M3URB4w7mQJdSyvklRK6zRpR3zW6o7F/SKpe17/KUmBA
	BrZUyyCik6vT/eA/iMOQBYBqlHm3uj17+0N6o=
MIME-Version: 1.0
Received: by 10.231.15.136 with SMTP id k8mr9997781iba.51.1290636302625; Wed,
	24 Nov 2010 14:05:02 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Wed, 24 Nov 2010 14:05:02 -0800 (PST)
In-Reply-To: <4CED75A2.6060907@windriver.com>
References: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>
	<4CED6ED4.8020609@windriver.com>
	<AANLkTimueKS2Vay1h4tM9ENFogONmuNZrET5waqG+7YM@mail.gmail.com>
	<4CED75A2.6060907@windriver.com>
Date: Wed, 24 Nov 2010 23:05:02 +0100
Message-ID: <AANLkTinGX58oee599rpH8V=+tnYVG8LCU03OoDBkSDDd@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: poky-image-minimal-1.0-r0:Unable to find package rpm!
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
X-List-Received-Date: Wed, 24 Nov 2010 22:05:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2010/11/24 Mark Hatle <mark.hatle@windriver.com>:

> The files in question would be tmp/deploy/rpm/mips/rpm-5.1.10-r7.mips.rpm=
 (or
> similar)
>
> That should exist.. =A0If it doesn't something went wrong with the build =
of the
> package.
>
> If it does, look in the directory (that has the RPM package) for a direct=
ory
> called "solvedb". =A0Assuming that exists.. then the solver should be set=
up/loaded
> and the package should be available.
>
> But the actual failure is rpm unable to find a package called "rpm" withi=
n the
> resolver databases that are being consulted.
>
> The other thing to look at is the tmp/deploy/rpm =A0.. there is a solvedb=
.conf and
> solvedb.macro
>
> Both of those should list out the solvers that it consults. =A0If the dir=
ectory
> that the rpm package is in, is not in that list.. then something went wro=
ng
> during that setup.
>
> --Mark

Thanks, that was a good help.
There was no solvedb dir.
My machine.conf file was missing
PACKAGE_EXTRA_ARCHS =3D "armv4 armv4t armv5te"
(maybe the omission of this var could be considered as an error).

But that almost immediately brought me to the next issue:
rpm and zypper install fine, but I get an eglibc error
| error: Failed dependencies:
| 	eglibc >=3D 2.12 is needed by sysvinit-2.88dsf-r1.armv5te

and I do not see an eglibc package (but I do have
eglibc-pic-2.12-r12.armv5te.rpm as well as quite a lot of subpackages,

eg.
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-gconv-hp=
-greek8-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-binary-l=
ocaledata-es-pa.iso-8859-1-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-localeda=
ta-iso14651-t1-pinyin-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-charmap-=
viscii-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-localeda=
ta-gl-es-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-gconv-ib=
m1124-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-binary-l=
ocaledata-or-in-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-gconv-ec=
ma-cyrillic-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-localeda=
ta-cv-ru-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-binary-l=
ocaledata-id-id.iso-8859-1-2.12-r12.armv5te.rpm
manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-localeda=
ta-lt-lt-2.12-r12.armv5te.rpm

Guess it'll be tomorrow before I get to that.

Frans

