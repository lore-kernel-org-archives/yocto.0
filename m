Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB78EE009A7; Thu,  8 May 2014 03:40:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 601F7E006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 03:40:39 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id lf10so213986pab.20
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 03:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=bNUJ3DQ2xLYtsOrsB4fwcL8qeJsaHHb/1j8/dXBC2Fg=;
	b=da8aJCE4BrRRWBGVrW33gDjuugiegbOZjBdegIpUU6aEbOza7ANIOgYAspiTIwKIjF
	pQRQpMAGUGZlnMqIDuyheO9yj1Bfryi822KDvZR8nVW6S+EaeOEl+c8hEx5QaG+kOjON
	CRvLW+7jKO+MtkDn60za22YnmRglfTDesBgSzpQ5D4E5mUGxvpktlNP771XAHA9yodBF
	JUEQq63cK4wC4VHdxTHRen43wbRHtKgEar0hB7FJVrbF6qmCCNTTkYwNZwutfjqFcrpU
	Yal+1lDmLH/9tTO6PWjzQtb3hVt0SG6N7c67SQRhL9vJFuwT2gS/uWL1WNxfYpv2f/HM
	Z4dQ==
X-Received: by 10.66.155.7 with SMTP id vs7mr6334966pab.42.1399545226545;
	Thu, 08 May 2014 03:33:46 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	ak1sm1280093pbc.58.2014.05.08.03.33.44 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 May 2014 03:33:45 -0700 (PDT)
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 8 May 2014 12:34:06 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Joe MacDonald <joe@deserted.net>
Message-ID: <20140508103406.GL30955@jama>
References: <1399492168-13096-1-git-send-email-joe@deserted.net>
	<1399492168-13096-10-git-send-email-joe@deserted.net>
MIME-Version: 1.0
In-Reply-To: <1399492168-13096-10-git-send-email-joe@deserted.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 9/9] linux-yocto: remove PRINC warning
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
X-List-Received-Date: Thu, 08 May 2014 10:40:42 -0000
X-Groupsio-MsgNum: 19443
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZrCu0B0FMx3UnjE2"
Content-Disposition: inline

--ZrCu0B0FMx3UnjE2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 07, 2014 at 03:49:28PM -0400, Joe MacDonald wrote:
> Convert PRINC to PR .=3D so as to not break package feeds.  Next time this
> won't be necessary at all.
>=20
> Signed-off-by: Joe MacDonald <joe@deserted.net>
> ---
>  recipes-kernel/linux/linux-yocto_3.10.bbappend |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/recipes-kernel/linux/linux-yocto_3.10.bbappend b/recipes-ker=
nel/linux/linux-yocto_3.10.bbappend
> index 159d63b..6686974 100644
> --- a/recipes-kernel/linux/linux-yocto_3.10.bbappend
> +++ b/recipes-kernel/linux/linux-yocto_3.10.bbappend
> @@ -1,4 +1,4 @@
> -PRINC =3D "1"
> +PR .=3D "1"

Does this one really help? PRINC increments first numeric part of PR, so
in linux-yocto case it would be INC_PR and you're appending 1 to last
part.

so from r6.5 you'll get r5.51 if I parse it correctly before morning
coffee.

>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> =20
>  # Enable selinux support in the kernel if the feature is enabled
> --=20
> 1.7.10.4
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ZrCu0B0FMx3UnjE2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlNrXZ4ACgkQN1Ujt2V2gBywSwCgtjgwCKzwapdE+0+fR6MmiS+w
X+MAniunENueoYlNnJjcglAvJ6pe7F0H
=5KAq
-----END PGP SIGNATURE-----

--ZrCu0B0FMx3UnjE2--
