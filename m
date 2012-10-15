Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 747EBE002AB
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 00:00:10 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id wy7so5848129pbc.35
	for <yocto@yoctoproject.org>; Sun, 14 Oct 2012 23:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=SfVbhJiN2LoENosZ/tAznxjxxAs8qEePwsuvihOpsE8=;
	b=ik0YuexDKWc+ogK+90AyzdAl0gobhj33rRi4dwQ3S13jHCa/JAZncbtVm6CSQQlqn/
	M+6sxi+/S18I4u9pqnobMRNKr8alcfxMp4ySawUXjWTEVdjP/BnUvv1PPR5qXOjLB7bH
	9pAsuRSxQRuTjPeEg2Ngusgqvp2LB0wXXqrX8pxb05sk0Kwg6w/OMwGEBGPQmYrXyXbK
	kjYYMYEgp2WHuyct8i9j45gs4ibSeUBCEsq2LEqYNCeSkjrC4l0RKOZKCHjladg493pR
	mvYlfxYmsXeEoZwGmeb++Q8RmOA8L5VisxslmcLlE0HGboKYk2cs1yXAmHiud7FQN6LJ
	MDDA==
Received: by 10.68.197.71 with SMTP id is7mr10067077pbc.79.1350284396234;
	Sun, 14 Oct 2012 23:59:56 -0700 (PDT)
Received: from [192.168.10.204] ([59.99.251.45])
	by mx.google.com with ESMTPS id qb2sm8623104pbb.15.2012.10.14.23.59.53
	(version=SSLv3 cipher=OTHER); Sun, 14 Oct 2012 23:59:55 -0700 (PDT)
Message-ID: <1350284380.4115.18.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Date: Mon, 15 Oct 2012 12:29:40 +0530
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmFCSmC3fUPTnCspLJutlZdztlwXFm4EdN+I7Cri4oz0evlTZxJ4wdi4WbYeFkQ4G6ImfU4
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple partitions in drive image
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
X-List-Received-Date: Mon, 15 Oct 2012 07:00:10 -0000
X-Groupsio-MsgNum: 10075
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-kkN006S8sZfD4KOD9zpR"

--=-kkN006S8sZfD4KOD9zpR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Jonathan,

On Fri, 2012-10-12 at 21:42 +0000, Jonathan Haws wrote:
> What I am trying to do is have Poky build me an image that I can just
> 'dd' to a SSD and hook up to the system to boot.  Since that image
> will also only be only ~250MB or so, I would like to have Poky
> generate an image containing multiple partitions - a small one
> containing the boot files, then the rest of the image dedicated to
> storage.  Is that possible?

Yes. It is possible. I have done the following in order to generate
image with multiple partitions.=20

     1. I wrote a custom image_types.bbclass in order to generate
        multiple partition images (say /, /var etc)
     2. Wrote a bbappend for base-files recipe to generate custom fstab
        file with required partition's mount options
     3. Extended grub-native recipe to generate core.img and boot.img
        using grub-mkimage for target platform
     4. Wrote a python task to join all these generated images (boot,
        core and filesystem images) and embedded the partition table
        structure into it.
     5. Added this task to my image recipe after the 'do_rootfs' task

This way we can generate a custom image with the required partitions.
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-kkN006S8sZfD4KOD9zpR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAlB7tFwACgkQWw85XwuSFMLXBwCdFLUUApw853mvCBu0l6rzkA9w
S7sAoID5xav18LUEtKzlfc/0I/C+7TLc
=ovkx
-----END PGP SIGNATURE-----

--=-kkN006S8sZfD4KOD9zpR--
