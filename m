Return-Path: <eren@hambedded.org>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FDA4E005B4
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 09:20:18 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c41so361060eek.11
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 09:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
	:content-type:content-disposition:user-agent;
	bh=F1FvpO1obDS6RZAjPmN5uwpcmPzs3B6IL2ioLgYxZVk=;
	b=G2ZpII5JdoRIOAfvz6u/kuAuHhHFu1eBsHl9ITeNnt1WxpdvagD2l15zvFt//Bfh1b
	UjHfrHeopv/swDFEeAzxs5w1m/imwFLKDtpa1wFSpzCdQFpcwwwFmj/g/LPRk+JVwgJs
	qokX1IGS0R2Fknp8KpxiSAMJCfdA7MpFt/p1m2SjtDk6s7B5M1Bzn4zj0X8elGvgXl0o
	jkGtizl7ol1LDa8HoFPNPr7ANuYTkDxuZOu+3HLGQ4Onelf2GFKFYbAACq5ymCIPtupO
	ygfZOwMwNBCS4aJiyIGADKuANUyovYTBrmxxFFeeo5izE6x2QIwiiSfVRMPsVZDizhjk
	5+kA==
X-Gm-Message-State: ALoCoQm6A4RRHMiF5CP3y9uySp/sUzWv3C6U/i332WmVC/3S/tkPo/GhRuzePMz1qY2nklvnz1tX
X-Received: by 10.14.223.134 with SMTP id v6mr127255eep.88.1377793217996;
	Thu, 29 Aug 2013 09:20:17 -0700 (PDT)
Received: from localhost ([132.231.11.113])
	by mx.google.com with ESMTPSA id p5sm47363873eeg.5.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 29 Aug 2013 09:20:17 -0700 (PDT)
Date: Thu, 29 Aug 2013 18:20:14 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: openembedded-devel <openembedded-devel@lists.openembedded.org>
Message-ID: <20130829162014.GA52370@airo.local>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Partitioned Image Creation and Initramfs Problem for ALIX3D3
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
X-List-Received-Date: Thu, 29 Aug 2013 16:20:22 -0000
X-Groupsio-MsgNum: 15758
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline

--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello all,

As you may already know, I have been working on a BSP for ALIX3D3[0]. I
enabled specific kernel configurations and reached to the point of
booting the board with its features enabled. I can boot the board with
"live" image type. However, what I want to have is a direct partitioned
hdd image which we can dd it into CF Card. So, /dev/sda1 will contain
kernel and initrd, /dev/sda2 will contain extracted rootfs. I expect /
to be mounted to /dev/sda2.  Currently, live image extracts the rootfs
to /dev/ram0 and the configuration is gone after reboot.

I looked at the existing solutions and found out that
"boot-directdisk.bbclass", which is inherited by image-vmdk, does a
similar job.  However, it does not include initramfs image and it looks
like it was specifically written to enable vmdk image, not for this
purpose.

The possible solution that came to my mind is to get
"boot-directdisk.bbclass", add initramfs installation, put the code
in a seperate bbclass, rename the function as IMAGE_CMD_alix-hddimage,
and add "alix-hddimage" to IMAGE_FSTYPES. The same technique is used by
meta-raspberrypi layer [1]

However, the problem with this is that "core-image-minimal-initramfs"
includes "initramfs-live-boot" by default. This script tries to find
rootfs.img and if it cannot find, it fails to boot the board. In this
case, we will have extracted rootfs in /dev/sda2, so rootfs.img will not
be there.

I looked at "initramfs-framework" recipe and it seems to fit for it. For
initramfs problem, should I create "alix3d3-minimal-initramfs" recipe,
add "initramfs-framework-base initramfs-module-udev" to IMAGE_INSTALL
and make "IMAGE_CMD_alix-hddimage" depend on
"alix3d3-minimal-initramfs"? Would it be a proper solution?

I am stuck here. Any help is appreciated especially on partitioning the
image and copying.

My best regards,
Eren

[0] https://github.com/eren/meta-alix3d3
[1] http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--LZvS9be/3tNcYl/X
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJSH3S+AAoJEOM7bMm6HhcTdSoP/3qgxbw8Pld0c536rmJwCWIm
v1sScPsGED9v4Vb5TulXsJMqf3HJeljsRLtDdd62igJRWgG5UnqI+8EZ0Ip7aUtd
SNNA6FKl4jZ2bHI0oLqAaIPQxqYUhpUvqXQW2gWasuuBMJuAYsNSiwfMPNP7E6MG
qJ2QmCW6BEI9xrjdk/lRW2EVpdLvavzNBspgUi9FGw6i6kY7nZxrqOvikD0lalV6
3KPgi+FFLdZTw27xN5/YLlBMO0TfC8jYj8eXBcJJFPxs/qdF3auLvJhNRoeP5SP0
F/2v+aXa23kveSEi0Lpe13I7qK7EAGJlmmXIFmfXHQpYVNWeEYAskPFCt5FUgqMH
2XD3did+xZLSPWo3jjgPioAwsH5L+3SYBeu+C/CBbZ59C0dYUiyIAr7gN+/IQAt8
OtLYhFGhVERfFxVga4dLKKVRo8kYXgbBRgGu9TrYLuPqxwO4fOZlnd3b9Z1qO8R9
0phc9UMRlreoqsL3W+pKqkarjvoe7mDR2fL02fPy4RROatcDheijqHHdkXiwXwxj
u+XwhiYcONjAlQ1Sv7ONR8s7WCPlz4MfTjBk9p0V38CgsugE9qvVQWB/xBJJTMLr
pq+PKCZCVTn4d0GI9dJj/g1GFTz6nl72l5TjayITdrW4sJdtcUuc14EVM4RLpKHq
rH3CwsZ+WtEk+1ez/Wbt
=8Nuj
-----END PGP SIGNATURE-----

--LZvS9be/3tNcYl/X--
