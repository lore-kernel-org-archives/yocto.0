Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C30DE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 13:05:04 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so3687739lbo.35
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 13:05:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tb64Wukm6ACD1Sw+dT/84RES47n6VUoRRf43tuNyWPI=;
	b=O/mMKp+WMDXQqt4hTt5lOdDvhxbIBhe824F8qags/4YJYmBaf7VJ8vsXeE4rNResfr
	BRR65s7ZOZ1yeFgmqQbMNgh0q6EsvJPwLtplNLKJZXcQiAV/KJ7nQWZOUD8RhshhHk/b
	jTIfh2RCNS7+EWfOUn3KEslnsoP/YZklqaQGoVxdYDNgZNnj8mw9NL+anYPUUeVVudFB
	IWqdw4b5bgnRF97WW2DbbrIdAtjOXaBasBJmeSxPncBnwuL35Jn43pVT44GpHR9DgP6T
	37mhkaRKCIeuCuPk+6oFZZ+3/Meqb/30tpRLwvgzD0ODbJmbLhg2nj7Ee7SYhLdb4BwH
	6CqA==
MIME-Version: 1.0
Received: by 10.152.148.40 with SMTP id tp8mr18576215lab.30.1355259902869;
	Tue, 11 Dec 2012 13:05:02 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Tue, 11 Dec 2012 13:05:02 -0800 (PST)
Date: Tue, 11 Dec 2012 16:05:02 -0500
Message-ID: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: per-image ROOTFS sizes
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
X-List-Received-Date: Tue, 11 Dec 2012 21:05:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Are per-image ROOTFS sizes (i.e. IMAGE_ROOTFS_SIZE_<image>) still
supported? From this:

http://patches.openembedded.org/patch/4671/

it would appear not. However
poky-extras/meta-kernel-dev/conf/machine/example.conf contains
IMAGE_ROOTFS_SIZE_ext3 (which would make it appear as though they
are).

Best regards,
    Trevor

