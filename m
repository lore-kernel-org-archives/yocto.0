Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85816E005B3; Mon, 30 Nov 2015 08:11:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8725E00343
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 08:10:57 -0800 (PST)
Received: by wmuu63 with SMTP id u63so136265156wmu.0
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 08:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=q0cVm5Hhqs3UG96jtnyxnHCUR9cJtoXRZ/bCmMaMbY4=;
	b=kIKVTT2DYf6K5T0zZUwRjql6dIYdEMRPYjj6ClfD9prWJfiivfCPFOcKP7UAaPAg4a
	PyGGii71rbpHzRaJX6ntCMOmWdNeq/mTMM74UPQGStkAehAMG9GuufPA8a+8+OxwuTLY
	bqPAZM+6Fj8A9HmSd2GFp8tShruCk3YF4LZSjNDX+VrXbLYk+BuclWKakad3SckytnRG
	1TiVY+SKjB/gkOPD11LtyoJbbKVl9KRfnhqzbeXTaZ64L/87F/RTBviTwsPDY7OXhcgI
	RmqamF03z9qF4XVzkSDPLKDU6rN/opHTxfnJ8jyuDMZv95BaTFExW23T2jUDd1ZzDo5g
	+OJA==
X-Received: by 10.194.76.41 with SMTP id h9mr37721282wjw.57.1448899857224;
	Mon, 30 Nov 2015 08:10:57 -0800 (PST)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	z13sm46865924wjr.47.2015.11.30.08.10.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Nov 2015 08:10:56 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <56538201.1020802@intel.com>
Date: Mon, 30 Nov 2015 17:10:55 +0100
Message-Id: <48CC80AE-4DC5-4631-81E3-8E6D781B7B3A@gmail.com>
References: <56538201.1020802@intel.com>
To: Mariano Lopez <mariano.lopez@intel.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: RFC: Reference updater filesystem
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
X-List-Received-Date: Mon, 30 Nov 2015 16:11:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> Am 23.11.2015 um 22:15 schrieb Mariano Lopez =
<mariano.lopez@intel.com>:
>=20
> There has been interest in an image based software updater in Yocto =
Project. The proposed solution for a image based updater is to use =
Stefano Babic's software updater (http://sbabic.github.io/swupdate). =
This software do a binary copy, so it is needed to have at least two =
partitions, these partitions would be the rootfs and the maintenance =
partition. The rootfs it's the main partition used to boot during the =
normal device operation, on the other hand, the maintenance will be used =
to update the main partition.
>=20
> To update the system, the user has to connect to device and boot in =
the maintenance partition; once in the maintenance partition the =
software updater will copy the new image in the rootfs partition. A =
final reboot into the rootfs it is necessary to complete the upgrade.
>=20
> As mentioned before the the software will copy an image to the =
partition, so everything in that partition will be wiped out, including =
custom configurations. To avoid the loss of configuration I explore =
three different solutions:
> 1. Use a separate partition for the configuration.
>  a. The pro of this method is the partition is not touched during the =
update.
>  b. The con of this method is the configuration is not directly in =
rootfs (example: /etc).
>=20
> 2. Do the backup during the update.
>  a. The pro is the configuration is directly in rootfs.
>  b. The con is If the update fail most likely the configuration would =
be lost.
>=20
> 3. Have an OverlayFS for the rootfs or the partition that have the =
configuration.
>  a. The pro is the configuration is  "directly" in rootfs.
>  b. The con is there is need to provide a custom init to guarantee the =
Overlay is mounted before the boot process.
>=20
> With the above information I'm proposing to use a separate partition =
for the configuration; this is because is more reliable and doesn't =
require big changes in the current architecture.
>=20
> So, the idea is to have 4 partitions in the media:
> 1. boot. This is the usual boot partition
> 2. data. This will hold the configuration files. Not modified by =
updates.
> 3. maintenance. This partition will be used to update rootfs.
> 4. rootfs. Partition used for normal operation.

That's what we currently have implemented and running in field for a =
while with a small difference:

1) We don't use Stefano Babic's software updater, but an own script =
which deals with initial software flash and later update similar - =
https://github.com/rdm-dev/meta-jens/tree/jethro/recipes-rdm/prd
2) We have integrated the updater with an update-service which can =
download the new image and install based on a manifest (signature =
support comes with next update) - =
https://github.com/rdm-dev/meta-jens/tree/jethro/recipes-rdm/system-image =
// http://www.netbsd.org/~sno/talks/nrpm/Moo-at-System-Image-Update.pdf
3) We use

boot
rootfs
maintfs
data

This layout allows us to extend data to fit the entire storage with know =
sizes for boot, rootfs and maintfs

4) Overlayfs with all serices is implemented (Update-wise, when coming =
from 3.10 to 3.18 or coming from 3.0 with unionfs to overlay ...) - =
https://github.com/rdm-dev/meta-jens/tree/jethro/recipes-core/initoverlay

Feel free to use that solution if you want.

Cheers
--=20
Jens Rehsack - rehsack@gmail.com


