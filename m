Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18142E0044D
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 23:20:15 -0800 (PST)
Received: by dadv6 with SMTP id v6so4555846dad.28
	for <yocto@yoctoproject.org>; Sun, 04 Mar 2012 23:20:15 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.220.105 as permitted sender) client-ip=10.68.220.105; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.220.105 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.220.105])
	by 10.68.220.105 with SMTP id pv9mr29839089pbc.109.1330932015615
	(num_hops = 1); Sun, 04 Mar 2012 23:20:15 -0800 (PST)
Received: by 10.68.220.105 with SMTP id pv9mr25830636pbc.109.1330932015547;
	Sun, 04 Mar 2012 23:20:15 -0800 (PST)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id f5sm5446520pbq.43.2012.03.04.23.20.12
	(version=SSLv3 cipher=OTHER); Sun, 04 Mar 2012 23:20:14 -0800 (PST)
Message-ID: <1330932003.2746.33.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 05 Mar 2012 12:50:03 +0530
In-Reply-To: <4F50EFFA.7080809@linux.intel.com>
References: <CA452391058F6D4E9715FB2C29D9312A0113E694@039-SN2MPN1-021.039d.mgd.msft.net>
	<4F50EFFA.7080809@linux.intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQl+BbBOC/IGCcq/Hr2j2jL6h1gRsGiLRBAtt5JUSLzxDBz4UGu4J3Y52MQCALDrrbi+VkUY
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: initramfs support in Yocto
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
X-List-Received-Date: Mon, 05 Mar 2012 07:20:16 -0000
X-Groupsio-MsgNum: 5142
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-eEFfBAmkSfnk+S3QlDxr"

--=-eEFfBAmkSfnk+S3QlDxr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Darren,

On Fri, 2012-03-02 at 08:06 -0800, Darren Hart wrote:
> Can you be more specific about what you are looking for? When you
> build an image with the cpio.gz image type, you can boot that as an
> initramfs=20

I find that the cpio.gz image is created by running the following
command inside ${IMAGE_ROOTFS} directory

	find . | cpio -o -H newc | gzip -c -9 > <name>.rootfs.cpio.gz

Which means that the initramfs contains the entire rootfs filesystem
including the user space applications and its related libraries. In my
case, the size of initramfs comes to 158 MB gziped to 66 MB. Most of the
files in that are not needed for initramfs.

Is there any other way of reducing the initramfs size?

Moreover, I find in the bootimg.bbclass file that it uses the INITRD and
ROOTFS variables to generate the final hddimage. And these variables
usage is seen in image-live.bbclass. So, I guess I have to point the
INITRD variable (in my custom-image.bb recipe and inherit bootimg) to
core-image-minimal-initramfs generated file in deploy images directory.

The problem with this method is=20

     1. It uses syslinux bootloader by default. I have to override this
        class (bootimg.bbclass) if I want to use something else like
        grub.
     2. I have to point the INITRD variable directly to the initramfs
        file in the deploy directory. (like
        ${DEPLOY_DIR_IMAGE}/core-image-minimal-initramfs-${MACHINE}.cpio.gz=
). But the cpio.gz extension is based on machine configuration. It can be c=
pio, cpio.gz, cpio.xz or cpio.lzma

This is what I inferred from the existing code. Am I completely in the
wrong direction?

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-eEFfBAmkSfnk+S3QlDxr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9UaSQACgkQWw85XwuSFML9gQCgzydZ7+Rhu2wBi/8MtzIKT4p4
AzYAn0ynb8SY4ryiD6ITMNvONzHBc89y
=Jdgi
-----END PGP SIGNATURE-----

--=-eEFfBAmkSfnk+S3QlDxr--
