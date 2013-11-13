Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f54.google.com (mail-pb0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05005E0182A
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 23:05:19 -0800 (PST)
Received: by mail-pb0-f54.google.com with SMTP id ro12so5016960pbb.41
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 23:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=9WgSLFJl0ng2L/eviXwCDbYoF0rpCg6stGB1hnuIoOI=;
	b=l5+VPKSrVkWqed6XMIgBSEWCaM98XUKM+jx5Mi8Ach2+0Z4eNAfwVjQG5JiyTqYurm
	OuC7umgDnYhVCbY8/tsjZUMI3B6LiTJc5ZsCPQgCIRjXwneN6i0oSxjnXfWH1hv+62uM
	dS5YIrHNcONelfDeL7KGnsdlI6dV9/pqGYnrVsomeiLoZmgmlAbDB/fiKJF3CgqKuDCx
	vbgDDnr3ObweyTC8rBnKyWCtv8lcX4BdDee/CTkPweC9UfELb1HJFc7MYY7iDz7ebV/y
	7g82AVr/GvUdyYS6kiD359in9P3d6nKz+cIxnE02lGqqCMWNVKuCQeuXwyjAwl3phAkz
	RY1A==
X-Received: by 10.68.226.106 with SMTP id rr10mr25726241pbc.111.1384326319341; 
	Tue, 12 Nov 2013 23:05:19 -0800 (PST)
Received: from kraj-sslvpn-nc.jnpr.net ([66.129.239.14])
	by mx.google.com with ESMTPSA id
	dq3sm42199885pbc.35.2013.11.12.23.05.18 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 12 Nov 2013 23:05:18 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.0 \(1822\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAK18fxGCK4wk9gacSkyyFOdqi8zKGu_tEGGqyR8XdfSn=ykV6w@mail.gmail.com>
Date: Tue, 12 Nov 2013 23:05:16 -0800
Message-Id: <FF5FFA9A-1B00-4D9C-A3A3-8866CC0A258C@gmail.com>
References: <1384233151-21897-1-git-send-email-raj.khem@gmail.com>
	<CAK18fxGCK4wk9gacSkyyFOdqi8zKGu_tEGGqyR8XdfSn=ykV6w@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.1822)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] mesa: Match bbappend to OE-Core mesa version
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
X-List-Received-Date: Wed, 13 Nov 2013 07:05:23 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Nov 12, 2013, at 12:35 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

>=20
>=20
>=20
> On Tue, Nov 12, 2013 at 7:12 AM, Khem Raj <raj.khem@gmail.com> wrote:
> Remove PRINC now that we have a chance
>=20
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-graphics/mesa/{mesa_9.1.6.bbappend =3D> mesa_9.2.2.bbappend} =
| 2 --
>  1 file changed, 2 deletions(-)
>  rename recipes-graphics/mesa/{mesa_9.1.6.bbappend =3D> =
mesa_9.2.2.bbappend} (97%)
>=20
> diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend =
b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> similarity index 97%
> rename from recipes-graphics/mesa/mesa_9.1.6.bbappend
> rename to recipes-graphics/mesa/mesa_9.2.2.bbappend
> index 88e5eab..7d158f2 100644
> --- a/recipes-graphics/mesa/mesa_9.1.6.bbappend
> +++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> @@ -1,5 +1,3 @@
> -PRINC :=3D "${@int(PRINC) + 1}"
> -
>  #
>  # FIXME
>  # We may a way to disable EGL and GL ES2, these are provided by =
userland package
> --
> 1.8.3.2
>=20
>=20
> Thanks Raj. A similar patch was already merged

OK

> - expecting for the PRINC stuff which will be addressed in a separate =
commit for all recipes.

no you can not do it in a big swoop like that. You have to wait for =
opportunities where the base package
gets upgraded in base layer like this one and then reset it but this is =
gone now. Otherwise you are going to  mess up the PR
servers of folks who are using meta-raspberrypi

>=20
> ag


