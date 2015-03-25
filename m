Return-Path: <ben.randall.2011@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8291E0095D; Wed, 25 Mar 2015 16:45:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ben.randall.2011[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.170 listed in list.dnswl.org]
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69915E00959
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 16:45:17 -0700 (PDT)
Received: by obbgg8 with SMTP id gg8so32835582obb.1
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 16:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Z1D4hQbL6AapX4vZJQdV0LzIW60qo0HRjTzj2neemYs=;
	b=zmnJILLbjfs9ShLc3UOt5JyVCBAP5LgkIS1gOfsSK8BAUJFpVNhUIvTM5UUHw6+HKT
	ORhHsX03fpQ0bvWP792uNtYqyE8MEcZlnpNvbJlZJ0oWZ8B9qQin3R5setgRGBRwcSfb
	hxDn9XpJW/IKt/+3T1d9ipByVu7TgoA1s5tsQfuz92BMCiwwEMH8MAmQ5uy4LKIfp5NM
	LarYtSARDNl+MAJEhWcVEr7y5Nbld4iX23PifKXvCn1U8xdDHZ9bVUev5u4Zvu7ZZsyH
	hqwP02w3NNWkIz4LNy/5rk4+JIdwxTT7iRATbsmxz+c76dpvko8hNhEHyh+ANJkN+vIO
	2mtg==
MIME-Version: 1.0
X-Received: by 10.60.58.137 with SMTP id r9mr9621026oeq.1.1427327117125; Wed,
	25 Mar 2015 16:45:17 -0700 (PDT)
Received: by 10.202.174.67 with HTTP; Wed, 25 Mar 2015 16:45:17 -0700 (PDT)
Date: Wed, 25 Mar 2015 19:45:17 -0400
Message-ID: <CAE2pAdsPL_P2L7nDRGLqBo-i9-1EGxkNC_Bab4y9TgK6SsH_3A@mail.gmail.com>
From: Ben Randall <ben.randall.2011@gmail.com>
To: yocto@yoctoproject.org
Subject: do_rootfs failure: no package provides [required library].so()(64bit)
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
X-List-Received-Date: Wed, 25 Mar 2015 23:45:21 -0000
Content-Type: text/plain; charset=UTF-8

Hello friends,

I'm trying to put together a recipe for the Ceph stack since I
couldn't find one in the wild.  Right now I have Ceph and all of its
dependencies compiling, however the build process fails during
do_rootfs.  Here is the relevant build output:

Warning during do_package_write_rpm:
"WARNING: QA Issue: ceph requires libcryptopp.so()(64bit), but no
providers in its RDEPENDS [file-rdeps]"

Error during do_rootfs:
"ERROR: Unable to install packages. Command [path]/smart --quiet
--data-dir=[path]/smart install -y [packages listed in
IMAGE_INSTALL]@[core2_64 OR genericx86_64] returned 1:
error: Can't install ceph-0.93-40@core2_64: no package provides
libcryptopp.so()(64bit)"

I believe the issue involves Ceph not identifying or linking against
the required library libcryptopp/crypto++.  I'm including libcryptopp
via a recipe found here:
https://github.com/coldnew/meta-coldnew/tree/master/recipes-support/cryptopp.
I added additional pkg-config .pc files and aliases to cryptopp's
RPROVIDES to accommodate the variety of naming conventions that
surround it (cryptopp, crypto++, libcryptopp, libcrypto++), but other
than that the recipe is stock.

I can confirm that libcryptopp is being built and staged (in
package/usr/lib/, packages-split/libcryptopp/usr/lib/,
sysroot-destdir/usr/lib/, and image/usr/lib/).  Also, I will note that
this package and its dependencies are building for core2_64 while my
MACHINE target is genericx86_64.  I don't think that should be a
problem though...

Thanks for your time!

Ben

