Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E44BE00307
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 01:57:37 -0800 (PST)
Received: by pbcc11 with SMTP id c11so3547878pbc.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 01:57:36 -0800 (PST)
Received: by 10.68.216.227 with SMTP id ot3mr16650147pbc.18.1328263056189;
	Fri, 03 Feb 2012 01:57:36 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id t5sm11930758pbn.3.2012.02.03.01.57.33
	(version=SSLv3 cipher=OTHER); Fri, 03 Feb 2012 01:57:35 -0800 (PST)
Message-ID: <1328263050.2658.57.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
Date: Fri, 03 Feb 2012 15:27:30 +0530
In-Reply-To: <CANJvwR99LRR99Ro_VtrZcyyOMQbbcyj2+h3SFA-oYyKw01gfRg@mail.gmail.com>
References: <1327993829.2696.18.camel@babel.joshhome>
	<CANJvwR_Zk8YwH6EyyoM8siMPxYgZFbyiFa04tVh4ubGXSETQnA@mail.gmail.com>
	<1328096562.2628.16.camel@babel.joshhome>
	<1328256282.2658.23.camel@babel.joshhome>
	<CANJvwR99LRR99Ro_VtrZcyyOMQbbcyj2+h3SFA-oYyKw01gfRg@mail.gmail.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: forcing a task to run while building an image
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
X-List-Received-Date: Fri, 03 Feb 2012 09:57:38 -0000
X-Groupsio-MsgNum: 4639
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-3+HhfVEi7+ymi8eOzCEf"

--=-3+HhfVEi7+ymi8eOzCEf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Sathishkumar,

On Fri, 2012-02-03 at 14:21 +0530, Sathishkumar Duraisamy wrote:
> The following is the scenario, you are in. If I wrong, please correct
> me.
> " You have your development program/application in some place. You
> want to build and include it in your rootfs. And you don't want to
> edit the recipe/other things for each build of rootfs."=20

Let me explain (though I've mentioned in many places in bits and
pieces). At present situation, when we build an image (say
'core-image-minimal') everything goes under one partition. But, for my
use-case I am trying to generate two sets of images denoting different
partitions as I already mentioned in
https://lists.yoctoproject.org/pipermail/yocto/2012-January/006611.html
So, in order to do that, I've to identify the different partitions in my
etc/fstab file. This is done by denoting filesystems by their uuids.=20

So, every time I build my custom-image I have to construct
the /etc/fstab file with the generated uuids (by using uuidgen) and set
the same uuids in the generated images using tune2fs. Setting the uuid
to generated images is done by overriding image_types.bbclass file.=20

Similarly constructing the fstab file is done by adding
base-files_3.0.14.bbappend in my custom layer.

So, I have to force the base-files:do_install task to run whenever we
build the custom-image. Otherwise the uuids in the /etc/fstab will be
the older ones and the uuids set to the generated images will be the
newer ones. They will not match thereby defeating the whole purpose of
building partition based images.

In this context, I was trying to create a global variables to store the
uuids in order to be shared across multiple packages (i.e base-files
and image_types) But that too doesn't look like a piece of cake.

Am I trying something too weird?

Sorry for bombarding the list over and over again with the same issue.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-3+HhfVEi7+ymi8eOzCEf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8rr4oACgkQWw85XwuSFMJ4CQCgzc2F/0p/4I++Nb88fjQR3WMP
L1cAoKy8nL8Tqi/XPBibnV6O0XprJUWW
=LuFD
-----END PGP SIGNATURE-----

--=-3+HhfVEi7+ymi8eOzCEf--
