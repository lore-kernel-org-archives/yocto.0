Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 448F9E01373
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 10:36:48 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 21 Mar 2012 10:36:47 -0700
Received: by lahi5 with SMTP id i5so918298lah.25
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 10:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=O0gmzRNS6u4YAbw9ptjAE4pQv/94AOPahkgcL8cmTkQ=;
	b=Tz/4CvacU+j7YCKxzJuPVe0SKBShIjhWWvkU/UsbuzcpJaJR/lvoVEI/ddPUmu4f6z
	RVI8jOkv6qad5UDhzlewJ6SbmXVsCQwl4C7s1VTSFtjGRGLMG601FWOWQNEXtyMM6uBs
	DK2tEUZ0GLzbnfKdCAK6cpfZzYw0h/M+2RPasgKx++gQTVmrwDnm+N1kEMFFWhXcokdI
	5xSWKdFvLsLyGJuaiodQW7CBHEYhn5cKJ2ezbsgbsZzOdxdSxODaEUQaIigo15zkQ7mh
	cwyEt3BoMvCiPrjMArJDUD50tle8bMwGZpgQt270pEctXbuPWu3gOEirHXefKOva7U8h
	GdyA==
MIME-Version: 1.0
Received: by 10.152.102.145 with SMTP id fo17mr3493402lab.2.1332351405463;
	Wed, 21 Mar 2012 10:36:45 -0700 (PDT)
Received: by 10.112.98.133 with HTTP; Wed, 21 Mar 2012 10:36:45 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1203181228540.18084@oneiric>
References: <alpine.DEB.2.02.1203181228540.18084@oneiric>
Date: Wed, 21 Mar 2012 10:36:45 -0700
Message-ID: <CAPhnLPDH9DPpgRJRQtd-Ne_mWfH8B=EsvM33hj_DSeQYWucL_A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQmCSaLDqDSULWo/0OX/fZd69uY9SZU3M0BkXVIy+Fyhh6SDXQZezMsELkoNwAM3BJWZxDv9
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] Documentation: Update poky.ent file to reflect new release.
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
X-List-Received-Date: Wed, 21 Mar 2012 17:36:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 18, 2012 at 9:31 AM, Robert P. J. Day <rpjday@crashcourse.ca> w=
rote:
>
> Update poky.ent to reflect:
>
> =A0DISTRO =3D 1.1.1
> =A0POKYVERSION =3D 6.0.1
>
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Actually, the edison branch doesn't support poky.ent.

A few quick notes about poky.ent as this will be the first release
with some of the documentation changes being taken care of in the
release process. Which I flip DISTRO, SDK_VERSION, etc in preparation
for release, the poky.ent file is now on my checklist. So, for 1.2,
all the pathing and such will get changed during the release process.
In fact, what the plan is, is that when I create the 1.2 release
branch, I will do all the flipping then to enable some more exact QA
testing.

-b

>
> ---
>
> diff --git a/documentation/poky.ent b/documentation/poky.ent
> index e3f73aa..5de5511 100644
> --- a/documentation/poky.ent
> +++ b/documentation/poky.ent
> @@ -1,7 +1,7 @@
> -<!ENTITY DISTRO "1.1">
> +<!ENTITY DISTRO "1.1.1">
> =A0<!ENTITY DISTRO_NAME "edison">
> =A0<!ENTITY YOCTO_DOC_VERSION "latest">
> -<!ENTITY POKYVERSION "6.0">
> +<!ENTITY POKYVERSION "6.0.1">
> =A0<!ENTITY YOCTO_POKY "poky-&DISTRO_NAME;-&POKYVERSION;">
> =A0<!ENTITY COPYRIGHT_YEAR "2010-2012">
> =A0<!ENTITY YOCTO_DL_URL "http://downloads.yoctoproject.org">
>
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0http://crashcourse.ca
>
> Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 http://twitter.com/rpjday
> LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 htt=
p://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

