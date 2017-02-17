Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F8DEE0095F; Thu, 16 Feb 2017 23:35:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2786E00924
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 23:35:46 -0800 (PST)
Received: by mail-oi0-f41.google.com with SMTP id u143so20560232oif.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 23:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1zGNb3todrRn2P9FH+gssZsQmnJJIdrgE1hnaWSC46s=;
	b=ZdeJyIimOxURikrhC8vXzpGdnurijXGYoJTV/gZLGTrPG+eO5VGkzdm3wthwyLmE2O
	mrSsqKdSOoSenbQblQnPnzaBsfP7WhcUyREHrjWyZ4Ixp3w/Qu9EHthCwuOr9BXt18a0
	BELauh/zBiC4jeJ8Xprw0o2EVaXxNRlxOocQzAlhmJdYyJcRAcm2zypKxZ7v3z6syNvH
	WjsIR3Kz81yDJvgrjHUq7baxbGAF4y6jQgHNma4qw5tQ3ebMvQVd6lm2+cv++Rdaxu3o
	Y46hhYGRv3I7kanIwkT+DWmbI+M82Tl3sPpy79NjjdP2XpHXe1iE5VGgtqvs10ulh5A6
	ojyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1zGNb3todrRn2P9FH+gssZsQmnJJIdrgE1hnaWSC46s=;
	b=GtQzzpPhgfzOUg67mDFOz9ic9SJfmXQSH5KrN/ogpJBzYuTVaKFOvHYATeUxhGdr0+
	5Blmt/6ALNPxFs1S/3Vg1o59VIwCF4SZUFr0+z0FhzrITjYdaeMsxfFXoqpVFhekKW4V
	ZvdAGj2plDsH+5eChoG8GjIYNHnQYRhg840rClX1iDe3P10yn4lqfrMwJEE2YyXNU5d9
	UcsoRsEt85BM4yOUVZ/o4JJTluoiqZ53Fktg/RLvCRToBUQRpyjcumAkvmRBafY4JF7+
	cP7BMYIZck9aLIdxdc40xF2EzQ/ps/HbcbF11ozNJkW1WIZ3ABSM/HaYapyxrT7iEbwn
	aoGA==
X-Gm-Message-State: AMke39kcJ/UjGbu0vl+jIOTz4xa79wDdKo4MgIxmw6u8Npx83eE7T0eB1ZTJAAyE70mEZlWCs8pRN8e8xvN7lw==
X-Received: by 10.202.244.22 with SMTP id s22mr3729529oih.190.1487316945418;
	Thu, 16 Feb 2017 23:35:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.145.200 with HTTP; Thu, 16 Feb 2017 23:35:45 -0800 (PST)
From: Paulo Neves <ptsneves@gmail.com>
Date: Fri, 17 Feb 2017 08:35:45 +0100
Message-ID: <CAJO0J4jVF5wL1LmXTmyP40MLxT3R53QzQp5BVT5uFZ00iEF5ug@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: (No subject)
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
X-List-Received-Date: Fri, 17 Feb 2017 07:35:48 -0000
Content-Type: text/plain; charset=UTF-8

Hello Yocto list from time to time my builds are getting this error
and I can't understand why is this happening. Every package is in
local IO, only the sstate cache i think is in an NFS mount.

Can you hint me at why this error could come up in yocto do_rootfs?

ERROR: lfs-release-full-x86-64-build-pc-linux-gnu-1.0-r0 do_rootfs:
Unable to install packages. Command
'/workspace/builds/yoctobuild/tmp/sysroots/x86_64-linux/usr/bin/opkg
--volatile-cache -f
/workspace/builds/yoctobuild/tmp/work/x86_64_build_pc_linux_gnu-poky-linux/lfs-release-full-x86-64-build-pc-linux-gnu/1.0-r0/opkg.conf
-o /workspace/builds/yoctobuild/tmp/work/x86_64_build_pc_linux_gnu-poky-linux/lfs-release-full-x86-64-build-pc-linux-gnu/1.0-r0/rootfs
 --force_postinstall --prefer-arch-to-version   install run-postinsts
fullsysroot all-vcf-wmp' returned 255:
Collected errors:
 * opkg_install_pkg: Failed to download fullsysroot. Perhaps you need
to run 'opkg update'?
 * opkg_install: Cannot install package fullsysroot.
 Installing run-postinsts (1.0-r0) on root.

....

Best regards
Paulo Neves

