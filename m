Return-Path: <joe@deserted.net>
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6392E00B76
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 12:06:56 -0700 (PDT)
Received: by mail-qa0-f44.google.com with SMTP id dc16so2074068qab.31
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 12:06:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=7VwthFWgGNV1i6GQ719N+2Nbi7FufC8plXWf4M0gs2g=;
	b=HhcW5rWbGy8pP4+MLzEJCnmdrCr1tEaXkpgg+TR+EBnevhwu6JP1KwySDlZKDcZkfk
	kqv8nPq9PdcKCjQ8812Vpud5lNLxvT0D28C4KLs0JAl3uW/1hmyqgzTmZ7SSlwOsLi0p
	97jgy/6jJvZUWp1dS43DO01GnmIvsB94YnwUsZUBb+drnwizyKnxyO6PNvBfB+BVB4Ea
	Z2qq7nlchRe8Eo3PtYCAerU+ECzR3tfeH4voOFwuGnM1pP8Ls/9nhw09yGoYdEWnel7w
	2PBmdkVHBW5KkW/T+G2yLEM/lKMVU3bYtLTKkF19rbBLfrrY7mAMYJw+xWtLRhZ1ZqYM
	OGQQ==
X-Gm-Message-State: ALoCoQntl73/3ydht4nEXbt7NHXAljf5v/vSPpv1N0cYArCSBva0IWPNaTu5kHd2ArF86YDL5WUo
X-Received: by 10.224.3.5 with SMTP id 5mr9385457qal.45.1396552015659;
	Thu, 03 Apr 2014 12:06:55 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id f3sm11648136qag.7.2014.04.03.12.06.54
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 12:06:54 -0700 (PDT)
Date: Thu, 3 Apr 2014 15:06:52 -0400
From: Joe MacDonald <joe@deserted.net>
To: jackie.huang@windriver.com
Message-ID: <20140403190650.GK4075@deserted.net>
References: <1394691979-12021-1-git-send-email-jackie.huang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1394691979-12021-1-git-send-email-jackie.huang@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] policycoreutils: drop the patch for old refpolicy
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
X-List-Received-Date: Thu, 03 Apr 2014 19:06:56 -0000
X-Groupsio-MsgNum: 18841
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="9a9Vq1BJdYBEXpLG"
Content-Disposition: inline

--9a9Vq1BJdYBEXpLG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH] policycoreutils: drop the patch for old refp=
olicy] On 14.03.13 (Thu 14:26) jackie.huang@windriver.com wrote:

> From: Jackie Huang <jackie.huang@windriver.com>
>=20
> The patch policycoreutils-revert-run_init-open_init_pty.patch
> is only for refpolicy version older than 2.20120725, now the
> refpolicy is updated to 2.20130424 so drop the patch or it
> will make run_init fail to start some init scripts.
>=20
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  ...cycoreutils-revert-run_init-open_init_pty.patch |   40 --------------=
------
>  recipes-security/selinux/policycoreutils_2.2.5.bb  |    1 -
>  recipes-security/selinux/policycoreutils_git.bb    |    1 -
>  3 files changed, 42 deletions(-)
>  delete mode 100644 recipes-security/selinux/policycoreutils/policycoreut=
ils-revert-run_init-open_init_pty.patch
>=20
> diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-rev=
ert-run_init-open_init_pty.patch b/recipes-security/selinux/policycoreutils=
/policycoreutils-revert-run_init-open_init_pty.patch
> deleted file mode 100644
> index aedae21..0000000
> --- a/recipes-security/selinux/policycoreutils/policycoreutils-revert-run=
_init-open_init_pty.patch
> +++ /dev/null
> @@ -1,40 +0,0 @@
> -From 0b2d9e47c759bf2d0842f20d6af5c4e678e9c34c Mon Sep 17 00:00:00 2001
> -From: Xin Ouyang <Xin.Ouyang@windriver.com>
> -Date: Tue, 4 Jun 2013 17:04:44 +0800
> -Subject: [PATCH] policycoreutils: Revert "run_init: If open_init_pty ..."
> -
> -This reverts commit d46e88abb6e1f7b0228c30c98ba4fb739e63cda3.
> -
> -In d46e88ab, run_init will not use open_init_pty as Redhat did. Our
> -old refpolicy still does no work well with this, and make init scripts
> -fail to start so revert it.
> -
> -This patch should be dropped while refpolicy is upreved to 2.20120725+.
> -
> -Upstream-Status: Inappropriate [for old refpolicy]
> -
> ----
> - run_init/run_init.c | 7 -------
> - 1 file changed, 7 deletions(-)
> -
> -diff --git a/run_init/run_init.c b/run_init/run_init.c
> -index 92034be..9db766c 100644
> ---- a/run_init/run_init.c
> -+++ b/run_init/run_init.c
> -@@ -406,13 +406,6 @@ int main(int argc, char *argv[])
> - 			new_context);
> - 		exit(-1);
> - 	}
> --	if (! access("/usr/sbin/open_init_pty", X_OK)) {
> --		if (execvp(argv[1], argv + 1)) {
> --			perror("execvp");
> --			exit(-1);
> --		}
> --		return 0;
> --	}
> - 	/*
> - 	 * Do not execvp the command directly from run_init; since it would run
> - 	 * under with a pty under sysadm_devpts_t. Instead, we call open_init_=
tty,
> ---=20
> -1.8.1.2
> -
> diff --git a/recipes-security/selinux/policycoreutils_2.2.5.bb b/recipes-=
security/selinux/policycoreutils_2.2.5.bb
> index d851f74..64cb495 100644
> --- a/recipes-security/selinux/policycoreutils_2.2.5.bb
> +++ b/recipes-security/selinux/policycoreutils_2.2.5.bb
> @@ -9,7 +9,6 @@ SRC_URI[md5sum] =3D "a2963d7024c5c4ce89f2459d48f91ec8"
>  SRC_URI[sha256sum] =3D "bbf850a8c3c2f371f439d6525663eecdd3a737acd594d2f2=
7f8d8f3a07830cc4"
> =20
>  SRC_URI +=3D "\
> -	file://policycoreutils-revert-run_init-open_init_pty.patch \
>  	file://policycoreutils-fix-sepolicy-install-path.patch \
>  	file://policycoreutils-make-O_CLOEXEC-optional.patch \
>  	file://policycoreutils-loadpolicy-symlink.patch \
> diff --git a/recipes-security/selinux/policycoreutils_git.bb b/recipes-se=
curity/selinux/policycoreutils_git.bb
> index 9a6425b..92f6c26 100644
> --- a/recipes-security/selinux/policycoreutils_git.bb
> +++ b/recipes-security/selinux/policycoreutils_git.bb
> @@ -7,7 +7,6 @@ include ${BPN}.inc
>  LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
> =20
>  SRC_URI +=3D "\
> -	file://policycoreutils-revert-run_init-open_init_pty.patch \
>  	file://policycoreutils-fix-sepolicy-install-path.patch \
>  	file://policycoreutils-make-O_CLOEXEC-optional.patch \
>  	"
> --=20
> 1.7.9.5
>=20
--=20
-Joe MacDonald.
:wq

--9a9Vq1BJdYBEXpLG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9sUoACgkQwFvcllog0XxplgCfXSNvsEgS5/hbTdVHZbkjQvdb
yTIAn1BaVHF/k7AHl4t9gFkYUaXdXBUz
=X2aA
-----END PGP SIGNATURE-----

--9a9Vq1BJdYBEXpLG--
