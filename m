Return-Path: <afenkart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E5E9E00BD5; Tue, 13 Jun 2017 05:18:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (afenkart[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C34DE00BD5
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 05:18:16 -0700 (PDT)
Received: by mail-ot0-f169.google.com with SMTP id i31so86267158ota.3
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 05:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=l31Tz4/Z5TsnYNifKiunkE9PcDwYD/Db0uLR0WwFkl0=;
	b=nVGkHRYAwP5UXLjEuYbRHhLW0Bx+NZLupryhG9jtLG/1cOM34Hn5pqw7j9x1A/PoCh
	WdSczLYBpeqfImG0vNFyPU2qre1boh4TKRhLGLgNu5fOIAMRwVBaPSJagMCkMvh9kPxn
	5j48B/YiOn+du8GkigGowv+aMe6t4KM2Bdettb7GRyWCcJEkv5nN0ToOPoQpbgNXiSg+
	DVwvsJQg01dXh0zT2WJPZHm4lKKsKTEQHvDUmrnQ7fBMNQwYS0ml10neYSkyd3cVa88T
	52XO0Oxex+TxDBCEyy8oOJ5z8afZQeW0RmC3k7n0WbYmMo2CgaNMguOcoIjgloXb+yMb
	+83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=l31Tz4/Z5TsnYNifKiunkE9PcDwYD/Db0uLR0WwFkl0=;
	b=pmiItyIn87z43+kuCQdl6RSX60nYwgZj+JYMy7KefHefaf6N2k7BVn4nMeaVHMqbfS
	IYooZo1rtBjotMLE97ERKHbYzOfckMnWnpQ1Gq1gaWNNKB2Pph1OUiJ5SnbkUS+9brpb
	bSvTj2sQ7ozvPGxZacJiwOdAqJH7o5Njazd3n8NMxLT5Ag/JM0EstRAfXjok5kif9fSj
	Ds9oSb4FhgRcGmQFrZlkvysSuJVBS6621PNRVo1Im5MSThK0lY/yAAi1fSm0pRj8R9Dv
	dKTk/f5pW00sUlij7j+NPnLtYlbBg6bXB6Rx8XYsD5UPfe65RWM20Zdhl/WK9O2Lek7Y
	OcwA==
X-Gm-Message-State: AODbwcCCbOWTsqlliNv6heH3w9V3UEvU3dqj7UiprM9Vq3fB8YsHoy/D
	V5xfrh9XxEKtuVGyCs7PlxwrCSBJ1uof
X-Received: by 10.157.24.51 with SMTP id b48mr25533875ote.143.1497356295871;
	Tue, 13 Jun 2017 05:18:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.14.241 with HTTP; Tue, 13 Jun 2017 05:18:15 -0700 (PDT)
From: Andreas Fenkart <afenkart@gmail.com>
Date: Tue, 13 Jun 2017 14:18:15 +0200
Message-ID: <CALtMJEDs_oFkifuHe8gahxS25UEqP-gKCLfkH3HbZqsB8T8DPQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: swupate.bblcass dependencies not triggering rebuild
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
X-List-Received-Date: Tue, 13 Jun 2017 12:18:39 -0000
Content-Type: text/plain; charset="UTF-8"

Hi list,

I want to create a swupdate file, which is a cpio file with rootfs and
some metadata to control software update. My problem is, that it is not
rebuilt everytime the rootfs changes. I checked in the cooker log.

NOTE: recipe swupdate-image-1.0-r4: task do_populate_sysroot_setscene: Succeeded
NOTE: Running noexec task 5475 of 5478 (ID: 27,
meta-devel/recipes-core/images/swupdate-image.bb, do_build)

I generated the dot files with bitbake -g swupdate, and while do_swuimage
has to run before do_build, do_build does not depend directly on do_swuimage:

swupdate-image.do_createlink -> swupdate-image.do_swuimage
swupdate-image.do_install -> swupdate-image.do_createlink
swupdate-image.do_populate_sysroot -> swupdate-image.do_install
swupdate-image.do_build" -> swupdate-image.do_populate_sysroot

$ bitbake-diffsigs -t swupdate-image do_build
ERROR: No sigdata files found matching swupdate-image do_build

$ bitbake-diffsigs -t swupdate-image do_populate_sysroot
Unable to find matching sigdata for ....
recipes-core/images/swupdate-image.bb.do_install with hashes
c0bc8039e8dbe8d70939dd3db2ceb922 or e9d7b242613f323d4d6adff3d6d4881b

$ bitbake-diffsigs -t swupdate-image do_install
ERROR: No sigdata files found matching swupdate-image do_install

$ bitbake-diffsigs -t swupdate-image do_createlink
Hash for dependent task imagesswupdate-image.bb.do_swuimage changed
from cec64d7e21b0375ff641427d5d631254 to
45510576a402839f4c4d4ac9b9eff578
  Hash for dependent task imagesrootfs.bb.do_build changed from
876eb436b444f84efd355c0294b871bf to fabbabdd000427cdf5e721b59784d5c4
  Unable to find matching sigdata for
meta-devel/recipes-core/images/rootfs.bb.do_build with hashes
876eb436b444f84efd355c0294b871bf or fabbabdd000427cdf5e721b59784d5c4

The dependency on rootfs is added here:
https://github.com/sbabic/meta-swupdate/blob/master/classes/swupdate.bbclass#L64
with IMAGE_DEPENDS="rootfs"

Is it correct to 'depend' on :do_build? It seems rather uncommon.

I checked the latest swupdate-image.do_populate siginfo in sstate, which is
pretty large, so adding just the task-dependencies:
..
Tasks this task depends on:
['..-devel/recipes-core/images/swupdate-image.bb.do_install']
This task depends on the checksums of files: []
Hash for dependent task
./meta-devel/recipes-core/images/swupdate-image.bb.do_install is
e9d7b242613f323d4d6adff3d6d4881b
Computed Hash is d8b1d389351c25e0c4a519fb8fe9ddda
..

Which makes me wonder, since bitbake-diffsig said do_install has no sigdata

I must admit that I feel pretty lost here.

/Andreas

