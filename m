Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77BABE01483
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 09:50:59 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 17 Jun 2013 12:50:58 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 17 Jun 2013 12:49:35 -0400
Thread-Topic: Creating a core-image-minimal image with package support
Thread-Index: Ac5reqXMouXSXAACQ3GZHVq38/P5RQ==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4013B910EC9FD@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 011A023700496A011A0384
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Creating a core-image-minimal image with package support
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
X-List-Received-Date: Mon, 17 Jun 2013 16:51:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I am working with the core-image-minimal image from poky/danny as a startin=
g point, but would like to include packaging support.  I have tried creatin=
g a separate recipe called core-image-opkg.bb which, from what I read in th=
e mega-manual, should include all the parts I need for opkg support.  Here =
is a copy of the image recipe so far:

DESCRIPTION =3D "A small image just capable of allowing a device to boot, w=
ith opkg support."

IMAGE_INSTALL =3D "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${C=
ORE_IMAGE_EXTRA_INSTALL} opkg opkg-collateral"

IMAGE_FEATURES +=3D "package-management"

IMAGE_LINGUAS =3D " "

LICENSE =3D "MIT"

inherit core-image

IMAGE_ROOTFS_SIZE =3D "8192"

The above recipe yields an image that is includes the opkg executable, but =
opkg support is incomplete.  Namely, calling opkg yields the error " * opkg=
_conf_load: Could not create lock file /var/lib/opkg/lock: No such file or =
directory."  I can see that the folder /var/lib/opkg was not created on my =
filesystem.  If I create this directory and then call "opkg list-installed"=
, I get an empty list back.

What more do I need to add to the image recipe so that the image knows what=
 packages were installed on it?  And what do I need to add so that the /var=
/lib/opkg directory is created?

Thanks,
Bryan

