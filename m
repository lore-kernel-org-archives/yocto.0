Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69654E00748
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 21:28:19 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iapp10 with SMTP id p10so42906380iap.35
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2012 21:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=uX0b27s6ht8IwQuOrBy09VYgqT66FvzGP2K5ySftNJw=;
	b=IetEukR1LFFMR4WrlLs9inv9ymOoMmlwKzrxzR2CGnbeFmjby0Hyd2IdwJo5N595Iz
	G1ycNtFbzsuryKcbqBw0pCPOBeXM6QFqqzH6LiCvqxFtLv7qCcxhDyuu4X/QMH0wnXJF
	zMZL6UJuNElE/U5Qsat79VN0D16SgVsfj+2gk=
Received: by 10.43.45.137 with SMTP id uk9mr56675573icb.52.1325654898698;
	Tue, 03 Jan 2012 21:28:18 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id lu10sm93433131igc.0.2012.01.03.21.28.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 21:28:17 -0800 (PST)
Date: Tue, 3 Jan 2012 21:28:39 -0800
From: Khem Raj <raj.khem@gmail.com>
To: "Wang, Shane" <shane.wang@intel.com>
Message-ID: <20120104052839.GJ31275@sakrah.homelinux.org>
Mail-Followup-To: "Wang, Shane" <shane.wang@intel.com>,
	"omxil-devel@lists.sourceforge.net" <omxil-devel@lists.sourceforge.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <3AB6CE7F274E534CAFD089D127A8A1FC011724@SHSMSX102.ccr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC011724@SHSMSX102.ccr.corp.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "omxil-devel@lists.sourceforge.net" <omxil-devel@lists.sourceforge.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/2] Fix Makefiles
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
X-List-Received-Date: Wed, 04 Jan 2012 05:28:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On (28/12/11 14:54), Wang, Shane wrote:
> This patch is to remove DESTDIR in docdir.
> Otherwise, when users install by running `make install DESTDIR=3D/alterna=
te/directory' specified in the file INSTALL, the doc will go into /alternat=
e/directory/alternate/directory, which is not expected.

DESTDIR is supposed to relocate the install dir why is this wrong ?

>=20
> Signed-off-by: Shane Wang <shane.wang@intel.com>
>=20
> diff -r 30b597e4e70d Makefile.am
> --- a/Makefile.am	Wed Dec 28 15:38:35 2011 +0800
> +++ b/Makefile.am	Wed Dec 28 15:39:25 2011 +0800
> @@ -7,7 +7,7 @@
>  pkgconfigdir =3D $(libdir)/pkgconfig
>  pkgconfig_DATA =3D libomxil-bellagio.pc
> =20
> -docdir =3D $(DESTDIR)$(prefix)/share/doc/@PACKAGE@
> +docdir =3D $(prefix)/share/doc/@PACKAGE@
>  doc_DATA =3D README \
>  	   ChangeLog \
>  	   TODO
>=20
> --
> Shane
>=20
> http://www.yoctoproject.org/=20
> It's not an embedded Linux distribution -
> It creates a custom one for you.

> =1B[0;0mThis patch is to remove DESTDIR in docdir.=1B[0;0m
> =1B[0;0mOtherwise, when users install by running `make install DESTDIR=3D=
/alternate/directory' specified in the file INSTALL, the doc will go into /=
alternate/directory/alternate/directory, which is not expected.=1B[0;0m
> =1B[0;0m=1B[0;0m
> =1B[0;0mSigned-off-by: Shane Wang <shane.wang@intel.com>=1B[0;0m
> =1B[0;0m=1B[0;0m
> =1B[1;32mdiff -r 30b597e4e70d Makefile.am=1B[0;0m
> =1B[1;31m--- a/Makefile.am	Wed Dec 28 15:38:35 2011 +0800=1B[0;0m
> =1B[1;34m+++ b/Makefile.am	Wed Dec 28 15:39:25 2011 +0800=1B[0;0m
> =1B[1;35m@@ -7,7 +7,7 @@=1B[0;0m
> =1B[0;0m pkgconfigdir =3D $(libdir)/pkgconfig=1B[0;0m
> =1B[0;0m pkgconfig_DATA =3D libomxil-bellagio.pc=1B[0;0m
> =1B[0;0m =1B[0;0m
> =1B[1;31m-docdir =3D $(DESTDIR)$(prefix)/share/doc/@PACKAGE@=1B[0;0m
> =1B[1;34m+docdir =3D $(prefix)/share/doc/@PACKAGE@=1B[0;0m
> =1B[0;0m doc_DATA =3D README \=1B[0;0m
> =1B[0;0m 	   ChangeLog \=1B[0;0m
> =1B[0;0m 	   TODO=1B[0;0m

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
-Khem

