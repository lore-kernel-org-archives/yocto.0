Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28860E00288
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 23:55:25 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1994078eek.35
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 23:55:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=DVzREMCavfB2ThCu/PiLNxRzWiNzy5EG5knUuWq8Xcc=;
	b=O2uGh8Fdk5JyV8nUkJDgygkfxZdx41U8zIoCRQP8fH7BIJJjIx8SQbbRIPVcrIkDVH
	yvqFs39aV4UA/DRlrr7fdFyidwbeV6RabNJ9GklEVIZRxKOEct7Dlg9DaR/61E0SQlhZ
	TTt7PcbOTtdY5kC9GpPd8T1Kd/2Ds1SJrfeoaYxpGD33p3A8gJPLdq9uRU3s5byN0YrZ
	phBFsBdgLqr2EiAq5rMsc6yKfev+HKprt7scTmLroXiigLYbmf5ecp0Rqr2ulTjSvaff
	zTF//kMUSMWNHAWco4+lasI05KaYvILrCUCSd301vb+76za96CDKiludmaHiIJjidRkV
	Abfw==
Received: by 10.14.210.194 with SMTP id u42mr21309299eeo.11.1343804124812;
	Tue, 31 Jul 2012 23:55:24 -0700 (PDT)
Received: from ?IPv6:2001:610:612::a1b9:594:e8d9:e8db?
	([2001:610:612:0:a1b9:594:e8d9:e8db])
	by mx.google.com with ESMTPS id q3sm2892487eeo.4.2012.07.31.23.55.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 31 Jul 2012 23:55:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1343766958-5092-1-git-send-email-sidebranch.openembedded@gmail.com>
Date: Wed, 1 Aug 2012 08:55:28 +0200
Message-Id: <74172ECC-6F8E-46A7-9336-C3D92046107C@dominion.thruhere.net>
References: <1343766958-5092-1-git-send-email-sidebranch.openembedded@gmail.com>
To: sidebranch.openembedded@gmail.com
X-Mailer: Apple Mail (2.1485)
X-Gm-Message-State: ALoCoQlpUr34TR0473it8Il/IYpb+36zEdVnik/TAgWS6khPyoSij9nLaOWomHrz5GWLwOLaZC/2
Cc: yocto@yoctoproject.org, Leon Woestenberg <leon@sidebranch.com>
Subject: Re: [for denzil] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
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
X-List-Received-Date: Wed, 01 Aug 2012 06:55:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Shouldn't this be sent to the oe-core list?!?!?

Op 31 jul. 2012, om 22:35 heeft sidebranch.openembedded@gmail.com het =
volgende geschreven:

> From: Leon Woestenberg <leon@sidebranch.com>
>=20
> Linux 2.6.x kernels did not (all) have the bounds.h file, so copy
> only iff exists.
>=20
> (See OE-Core 02ac0d1b65389e1779d5f95047f761d7a82ef7a4)
>=20
> Signed-off-by: Leon Woestenberg <leon@sidebranch.com>
> ---
> meta/classes/kernel.bbclass |    5 +++++
> 1 files changed, 5 insertions(+), 0 deletions(-)
>=20
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index c21ab96..5f6ff66 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -183,6 +183,11 @@ kernel_do_install() {
> 		cp arch/powerpc/lib/crtsavres.o =
$kerneldir/arch/powerpc/lib/crtsavres.o
> 	fi
>=20
> +	# Necessary for building modules like compat-wireless.
> +	if [ -f include/generated/bounds.h ]; then
> +		cp include/generated/bounds.h =
$kerneldir/include/generated/bounds.h
> +	fi
> +
> 	# Remove the following binaries which cause strip errors
> 	# during do_package for cross-compiled platforms
> 	bin_files=3D"arch/powerpc/boot/addnote =
arch/powerpc/boot/hack-coff \
> --=20
> 1.7.0.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


