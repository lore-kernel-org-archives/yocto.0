Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C89FE003D2
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 01:10:12 -0700 (PDT)
Received: by mail-pb0-f45.google.com with SMTP id mc17so1535018pbc.4
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 01:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=wy5SDOwt7En7xgEWi/ommb+8vbcKfTX7BF/iQAxH9Jg=;
	b=zkubGM+s31/Gb9oE3dfQTqZEf3ZgERtj2Q3zf9AkK5g73KbbkE/2jJ9710vml5IEPm
	Tj5eoVTjYGSkqgF6VjKiF5khkH7RTZ7CRrdDvSbVNci92qcAdcxI+3rWXxBmRt8ksBIR
	xyfnxoJJP+u6Mt6pHSJOMeZZPOEhklyJWp7Vv8Fym8Sejen01Ov+tnqHIoXur1P3k2iB
	xwPgycmho6BllPea+oZJiRMwoDNrzLelFzdDyyauuRQsJFQy/Phqy9+UlY/raotdC3fz
	AB6t1GmCLx+mYQmXIG/zgNMyDzapGYo/poX6i0kHM8rP9J9GIzkVUudN9IDaYgQ0ZpaG
	RWpw==
X-Received: by 10.68.164.1 with SMTP id ym1mr4119606pbb.33.1377331812313;
	Sat, 24 Aug 2013 01:10:12 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id kd1sm6057152pab.20.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 24 Aug 2013 01:10:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <1B0819AA-2F91-43E6-8199-5F0BC135BFDE@gmail.com>
Date: Sat, 24 Aug 2013 12:10:04 +0400
Message-Id: <C8BE43EC-6B9B-4015-A529-FFF928333958@gmail.com>
References: <1B0819AA-2F91-43E6-8199-5F0BC135BFDE@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1498)
Subject: Re: Installing yocto built qemu binaries and sdk toolchain to another machine
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
X-List-Received-Date: Sat, 24 Aug 2013 08:10:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 24, 2013, at 8:49 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:

> What should I do to relocate and install the qemu binaries and sdk =
toolchain built using yocto, to another machine?=20
>=20
> The target machine has a fresh Ubuntu 12.04 installation, and I'd like =
to be able to run the Yocto generated qemu binaries inside it.

I found the answer to this, the qemu images are located with the =
meta-toolchain-sdk, so copy over the generated kernel and rootfilesystem =
(ext3) images to the new machine, installing the toolchain SDK to /opt, =
and running the following commands on the target machine worked.

. '/opt/poky/1.4+snapshot/environment-setup-armv5te-poky-linux-gnueabi'
runqemu qemuarm zImage-qemuarm.bin =
core-image-minimal-qemuarm.rootfs.ext3

Best regards,

Elvis Dowson


