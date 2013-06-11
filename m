Return-Path: <Ben.Warren@spidercloud.com>
Received: from berg.int.copivia.com (mail.spidercloud.com [209.49.242.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A225E014F1
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 12:36:02 -0700 (PDT)
Received: from mailx.spidercloud.com ([10.1.1.225])
	by berg.int.copivia.com (8.13.8/8.13.8) with ESMTP id r5BJa2CR016090
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 12:36:02 -0700
Received: from sofia.us.spidercloud.com ([10.1.1.225]) by
	sofia.us.spidercloud.com ([10.1.1.225]) with mapi;
	Tue, 11 Jun 2013 12:36:02 -0700
From: Ben Warren <Ben.Warren@spidercloud.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 11 Jun 2013 12:36:00 -0700
Thread-Topic: SOLVED: How to get mkfs.ext4 in rootfs package
Thread-Index: Ac5m2udXtiVW3KmbQ6GjKaTX0BxOtw==
Message-ID: <CCC55643-4330-4AE6-B2D8-AD5E47E486DC@spidercloud.com>
References: <0E1D49D2-4C56-45AC-AB70-2EA8261EE4D8@spidercloud.com>
In-Reply-To: <0E1D49D2-4C56-45AC-AB70-2EA8261EE4D8@spidercloud.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: SOLVED: How to get mkfs.ext4 in rootfs package
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
X-List-Received-Date: Tue, 11 Jun 2013 19:36:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Sorry for the spam.  Still learning how this works=85

Turns out I needed 'e2fsprogs-mke2fs'

regards,
Ben

On Jun 11, 2013, at 10:51 AM, Ben Warren <Ben.Warren@spidercloud.com> wrote=
:

> Hi,
>=20
> I'm trying to get the 'mkfs.ext4' binary from e2fsprogs into my image, in=
 particular the '.ext3' rootfs image, and am obviously missing something fu=
ndamental.
> I'm using a custom image based on (copy/pasted from) 'kvm_image_minimal',=
 and have added 'e2fsprogs' to the IMAGE_INSTALL string in the image descri=
ptor file.
>=20
> I see that the library is compiling and the binary is in tmp/sysroots:
>=20
> ben@ubuntu-scw:/opt/scw-appscard-build$ ls tmp/sysroots/x86_64-linux/sbin=
/mkfs.*
> tmp/sysroots/x86_64-linux/sbin/mkfs.ext2  tmp/sysroots/x86_64-linux/sbin/=
mkfs.ext4     tmp/sysroots/x86_64-linux/sbin/mkfs.minix
> tmp/sysroots/x86_64-linux/sbin/mkfs.ext3  tmp/sysroots/x86_64-linux/sbin/=
mkfs.ext4dev
>=20
> but it's not making it to the rootfs images.
>=20
> I've tried to read the documentation but still am not quite sure about wh=
at defines the contents of the rootfs images.
>=20
> thanks,
> Ben
>=20
>=20


