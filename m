Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 315324C810B1
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 13:36:50 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn5 with SMTP id 5so101289iwn.35
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 11:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=ERSQ/fNdrWXZWjzdoEgfgHEcKUYkzA7uSV/D+A7o0Uo=;
	b=VfMmiuzzdZlrRkby34L5JYYvPMrFSaUrXUQ5EKolpGJG/YiygEoLKL0bMOpIMd4HFi
	MxdgVXsRIRIbzVPSVOgEDUTuM6zOB7/GfELTlBGQgD6++hxm5mHfhLSlmNJiIEBWkCtG
	/tHqcifwh5QpWKaSLeCSAjMicdBVXPt2dKhgE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=NLNLbjiTblG9iUCNDkKcQ7Li2XMIbpdexKRe8uCozDpPpZJQX1UQ+tXB2DWrzScaRK
	5hNki+6ImKBngZ41EyfFbJlQNAEJc+Den7e3GmWWdXvfg7IP3qhKpxMjNaNU+SHLA/qc
	zh2P6F7YfB5kIh1Mh+o+rfgDB44ApveSLg0S0=
MIME-Version: 1.0
Received: by 10.231.144.21 with SMTP id x21mr8720843ibu.126.1290627408731;
	Wed, 24 Nov 2010 11:36:48 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Wed, 24 Nov 2010 11:36:48 -0800 (PST)
Date: Wed, 24 Nov 2010 20:36:48 +0100
Message-ID: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: poky-image-minimal-1.0-r0:Unable to find package rpm!
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
X-List-Received-Date: Wed, 24 Nov 2010 19:36:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

I was trying to build poky-image-minimal (git head of nov 20).
Host: opensuse 11.2
target: sheevaplug (I added the machine config and kernel from openembedded)

However creating the rootfs fails because it is unable to find package rpm
| Generating solve db for /home/frans/poky/poky/build/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.040881 secs
|    order:               1      0.000000 MB      0.001868 secs
|    fingerprint:         8      0.000012 MB      0.005083 secs
|    install:             6      0.000000 MB      0.019365 secs
|    dbadd:               6      0.000000 MB      0.011130 secs
|    dbget:              42      0.002104 MB      0.000201 secs
|    dbput:              36      0.010632 MB      0.000211 secs
|    readhdr:            61      0.026472 MB      0.000086 secs
|    hdrload:           117      0.120676 MB      0.001023 secs
|    hdrget:           2165      0.000000 MB      0.002120 secs
| Generating solve db for
/home/frans/poky/poky/build/tmp/deploy/rpm/sheevaplug...
|    total:               1      0.000000 MB      1.254377 secs
|    order:               1      0.000000 MB      0.219998 secs
|    fingerprint:       636      0.011898 MB      0.162803 secs
|    install:           324      0.000000 MB      0.406294 secs
|    dbadd:             324      0.000000 MB      0.195005 secs
|    dbget:           13518      1.836616 MB      0.032052 secs
|    dbput:            7569      3.166056 MB      0.044126 secs
|    readhdr:          3241      2.832352 MB      0.005657 secs
|    hdrload:        263898    377.876436 MB      1.761324 secs
|    hdrget:        5288960      0.000000 MB      5.243508 secs
| Processing task-poky-boot...
| Processing rpm...
| Unable to find package rpm!
| ERROR: Task failed: ('function do_rootfs failed',
'/home/frans/poky/poky/build/tmp/work/sheevaplug-poky-linux-gnueabi/poky-image-minimal-1.0-r0/temp/log.do_rootfs.6436')
NOTE: package poky-image-minimal-1.0-r0: task do_rootfs: Failed
ERROR: Task 10 (/home/frans/poky/poky/meta/recipes-core/images/poky-image-minimal.bb,
do_rootfs) failed with 1
ERROR: '/home/frans/poky/poky/meta/recipes-core/images/poky-image-minimal.bb'
failed

rpm is installed on the host
packaged rpm and rpm-native build so it does not seem to be a missing
dependency.

Anyone an idea?

BTW: I feel that building poky-image-minimal takes quite long.
I don't have a very high end PC (D920, core2 duo at 3Ghz or so, with
4GB DDR2), but  when I tried to build poky-image-minimal a second
time, no work needed to be done, apart from do_rootfs.
Yet running the 1839 (of 1842) tasks took 11min25.

Frans

PS: this is with otherwise out-of-the-box settings, so I did not
modify conf files or so.

