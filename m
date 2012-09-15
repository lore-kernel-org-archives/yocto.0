Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BD40E011B9
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 10:59:23 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so9067019pbb.35
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 10:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=RbYkakuZ5OPJMOOQHVyBPbExJYLkhXkqz4hQQhzMshE=;
	b=sLRCSGC6IEK9fvXTuwLGJ7NEixHcZCZAe2LHEe0TzgiJyCycnO9Tv0cU9DUFf/F3VY
	+UxLun3eh9XKo/YFfmc3z7Kpka3SJGviWAUA0cMgkIr/sMwXnryNRgA3568FKP0RRiNg
	hOmeMkHGSHtBR0MPjQ6JxA1O4JCYgnq4R/13GKAAS0ScjMxNeC3Z5gylscGsGZ7AWFrc
	w088UjAzhJj1C120ssosnufEqusOJBlOop0oTG+dH9uIdrHnAUFY3CJsVxdrqIgkJDO2
	C2TVztb17dLoMNZH5LU/VySd8UI/sENaoKK96r/Y/S9O5u4SYod5NANa5SL7b31VFZP1
	n8bw==
Received: by 10.66.89.138 with SMTP id bo10mr10022559pab.35.1347731949040;
	Sat, 15 Sep 2012 10:59:09 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.108.162])
	by mx.google.com with ESMTPS id ox5sm3345194pbc.75.2012.09.15.10.59.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 15 Sep 2012 10:59:08 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 15 Sep 2012 21:59:04 +0400
Message-Id: <0937D44A-6DDB-49BD-B8E3-14873C5D8839@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Dependency walk for busybox recipe
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
X-List-Received-Date: Sat, 15 Sep 2012 17:59:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      How can I do a dependency walk for the busybox recipe?=20

I've added gcc-4.5 recipe support and eglibc-2.13 support against the =
latest poky master branch. The core-image-minimal image works for my =
powerpc440 soft-float target, from an older commit id, prior to the gcc =
toolchain rework, and it worked correctly with gcc-4.5 and eglibc-2.13.

So, as a next step after getting the image to boot correctly, I updated =
the recipes to work against the latest poky master.=20

The resulting image crashed with a kernel init, when I passed =
init=3D/bin/sh.

The size of the /bin/busybox or /bin/sh (soft-link) executable was =
600.1kb for the older commit id, with busybox-1.19.4. The size of the =
busybox-1.20.2 executable a bit larger(around 608kb) but that did't work =
with gcc-4.5 and eglibc-2.13, and caused a kernel panic.

So I added busybox-1.19.4 recipe back into my poky master branch, and =
the resulting size of the busybox-1.19.4 /bin/busybox or /bin/sh =
executable is 604.2 kb.

Same gcc-4.5, eglibc-2.13 and busybox-1.19.4 recipes and srcrevs, but =
different executable sizes.=20

How can I find out which packages might be contributing the extra 3.2kb =
to the /bin/busybox executable?=20

I'm hoping that if I can progressively replace each recipe in the =
dependency chain, till I get to the original size, I might be able to =
atleast narrow it down to the recipe that i causing the kernel panics =
for the powerpc440 target. Once I do that, then I can try with a newer =
gcc and eglibc version.

Best regards,

Elvis Dowson=

