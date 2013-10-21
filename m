Return-Path: <joe@deserted.net>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29088E0170E
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 13:15:18 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id d51so1655498eek.25
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 13:15:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=c7MDTl6TLXp/oq2EU0Lg5aKzSYiwPx7vkv2Nf4SWY9U=;
	b=HYpmRhf3lUd4r8XAWS6ujP2BVMWgYf2o9tSgTzRn/NlYEcv7FxPbYNAqHA0Xu0UAzv
	aGxr6ejtJn29oTisMjaSkEUfwyHg/Sv5UdYjINrSE6SXNMC/v92u69H8VfH++eghrD1g
	K27Yhp+QvA/g0W8NxsY6L/nYcP21hPJCBjNgVhwrtA8BKj611PXeyOxPVkSGzljfGfo6
	famQ4FjUDAKtBzSABiW9jVQAjQ74UTXI66xXcojpvD+70LcEmKzEcXa/Gi4tYtF+FUGA
	xxVQJlu2I85N7AlTVRmvCg5r4DVjA+IhW4hEckZJP9YfLB/D9FGmVhzOZlab87r8HmzL
	vSxQ==
X-Gm-Message-State: ALoCoQnulYpC2dKNBAGGchUL2TeKCvFqIyaVCWT684qF+Pk11qcMbxCYpuXiAPdHwArgUCrB60aC
X-Received: by 10.15.111.202 with SMTP id cj50mr4071220eeb.71.1382386517627;
	Mon, 21 Oct 2013 13:15:17 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id h45sm47751309eeg.5.2013.10.21.13.15.15
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 21 Oct 2013 13:15:16 -0700 (PDT)
Date: Mon, 21 Oct 2013 16:15:12 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20131021201510.GB27412@deserted.net>
References: <1382378812-6742-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1382378812-6742-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}
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
X-List-Received-Date: Mon, 21 Oct 2013 20:15:23 -0000
X-Groupsio-MsgNum: 16631
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4SFOXa2GPu3tIq4H"
Content-Disposition: inline

--4SFOXa2GPu3tIq4H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}] On 13.10.=
21 (Mon 18:06) Philip Tricca wrote:

> The 'semodule' utility can operate on compresed modules so the only
> cost of this change is a slower module load time when invoking
> 'semodule -i' on a running system (increased CPU load due to bzip2).
> That said my tests show more than 100M reduction in ext3 image size
> of core-image-selinux. This last metric is a bit skewed as the image
> includes two policies. Still, a reduction in the size of the refpolicy
> package by 1/2 is significant.

This is included in the batch of updates I've merged and are currently
staging in my tree.  FWIW, on my build I saw a similar reduction in size
to what you've reported, ~110MB, with a minor hit at load time.  As
expected there's also an increase in memory requirements at load time,
so I'm poking around a bit to see what this does to the lower-end
configurations I've got kicking around.  It'd be really nice if this was
an option rather than an on/off thing.

-J.

>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-security/refpolicy/refpolicy_common.inc |    9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-se=
curity/refpolicy/refpolicy_common.inc
> index 873d887..0ca0b9d 100644
> --- a/recipes-security/refpolicy/refpolicy_common.inc
> +++ b/recipes-security/refpolicy/refpolicy_common.inc
> @@ -12,7 +12,7 @@ SRC_URI +=3D "file://customizable_types \
>  S =3D "${WORKDIR}/refpolicy"
> =20
>  FILES_${PN} =3D "${sysconfdir}/selinux/${POLICY_NAME}/ \
> -	${datadir}/selinux/${POLICY_NAME}/*.pp"
> +	${datadir}/selinux/${POLICY_NAME}/*.pp.bz2"
>  FILES_${PN}-dev =3D+ "${datadir}/selinux/${POLICY_NAME}/include/"
> =20
>  DEPENDS +=3D "checkpolicy-native policycoreutils-native m4-native"
> @@ -67,11 +67,12 @@ EOF
>  	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
>  	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
>  	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_cont=
exts.local
> -	bzip2 -c ${D}${datadir}/selinux/${POLICY_NAME}/base.pp  > \
> -		${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
>  	for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
> +		bzip2 $i
>  		if [ "`basename $i`" !=3D "base.pp" ]; then
> -			bzip2 -c $i > ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active=
/modules/`basename $i`;
> +			cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/m=
odules/`basename $i`
> +		else
> +			cp ${i}.bz2 ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/`=
basename $i`
>  		fi
>  	done
> =20
--=20
-Joe MacDonald.
:wq

--4SFOXa2GPu3tIq4H
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJli04ACgkQwFvcllog0XxSogCfXBpbDAYffn9jNwQQzBprGv/X
42AAn1vrP5L6f8FZ/jCeRVRPFD1qfw6M
=arQT
-----END PGP SIGNATURE-----

--4SFOXa2GPu3tIq4H--
