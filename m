Return-Path: <hector.oron@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 49FF14C80287
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 04:17:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywp4 with SMTP id 4so4443779ywp.35
	for <yocto@yoctoproject.org>; Tue, 02 Nov 2010 02:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=BHfKBQf4h/wShDkgsZWaV/PnGr/wGwJ3v+yP0B1Ybkk=;
	b=H6Q8LKSb8RJJlW5wQ2e+9KNnsE0XR6XG4nvI0Rjbrg70kNplQmNzZmz3kjcjhgmBdx
	QxMUuQHiSV5VzGNk/NSqDnnenopGeAmLm26cWGxoaM3lAA9b69XmqRrKGScqq2Qbw5wP
	wrXL8m2VAl5ptnrGRWVRN1D2iZRcJd7wReOMs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	b=iyMajkL+UTp4XZT3rpczmEzABfGFdHrqWt8nEqvHYYnbs0FTCEHIszkLNqx1NYn6ac
	fdOLbi1HeDx7DDcD6v05+odA+v6TOFqCJsmdOLxjZWTD63vq/VPbEr9gDNpNvRBG8W2e
	MJPxYOyhC/4t0o5mGSt2umInv0zQv59QJWBL4=
MIME-Version: 1.0
Received: by 10.229.235.4 with SMTP id ke4mr2592671qcb.201.1288689436274; Tue,
	02 Nov 2010 02:17:16 -0700 (PDT)
Received: by 10.229.105.142 with HTTP; Tue, 2 Nov 2010 02:17:16 -0700 (PDT)
In-Reply-To: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
References: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
Date: Tue, 2 Nov 2010 09:17:16 +0000
Message-ID: <AANLkTik7jWT2WiQJbAYNQKyN+ywGW9xG5soW2ms5AeVa@mail.gmail.com>
From: Hector Oron <hector.oron@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Build failures on yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 09:17:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

2010/11/1 Hector Oron <hector.oron@gmail.com>:
> #! /bin/sh
>
> # Hello,

> =C2=A0case $Debian_build_system in
> =C2=A0unstable_amd64)
> cat <<EOF
> =C2=A0Still building......

NOTE: package libtool-cross-2.2.10-r1: task do_package_write: Succeeded
NOTE: Running task 1448 of 1529 (ID: 433,
/srv/build/builds/menuconfig2-test/build/rootfs/yocto/laverne-4.0/meta/reci=
pes-kernel/linux/linux-dummy.bb,
do_package_write_ipk)
NOTE: package linux-dummy-1.0-r1: task do_package_write_ipk: Started
ERROR: Task failed: opkg-build execution failed
NOTE: package linux-dummy-1.0-r1: task do_package_write_ipk: Failed
ERROR: Task 433
(/srv/build/builds/menuconfig2-test/build/rootfs/yocto/laverne-4.0/meta/rec=
ipes-kernel/linux/linux-dummy.bb,
do_package_write_ipk) failed with 1
Waiting for 1 active tasks to finish:
1: perl-5.8.8-r20 do_package_write_ipk (pid 6797)
NOTE: Not creating empty archive for perl-module-cgi-eg-make-links-5.8.8-r2=
0
NOTE: package perl-5.8.8-r20: task do_package_write_ipk: Succeeded
ERROR: '/srv/build/builds/menuconfig2-test/build/rootfs/yocto/laverne-4.0/m=
eta/recipes-kernel/linux/linux-dummy.bb'
failed
make: *** [/srv/build/builds/menuconfig2-test/build/rootfs/yocto/laverne-4.=
0/foo]
Error 1


> EOF

Best regards,

