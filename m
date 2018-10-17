Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E77FE00ABE; Wed, 17 Oct 2018 16:00:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE968E00A94
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 16:00:57 -0700 (PDT)
Received: from [10.80.45.152] (unknown [71.69.156.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 80F5A20869
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 23:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1539817257;
	bh=it7JL8mh44VmWIkSP8CFxgdX9qhbvu/nel6X34VKyzY=;
	h=To:From:Subject:Date:From;
	b=ILWk7A53G8alEY6V2heR8fEU1wNINGElChJlHp58T+iFAk5Apy+FpMIPJ7cHxXLlI
	WiifUii9iTpCVpL+hllDHKvE9DlTNzLrEZ3CPvlPJW1AmhOCs6TqCHhPp/B02It9d8
	dZIqU1h0jK+3aBqxMtom7oUq9q2hMbomNwXtKe30=
To: yocto@yoctoproject.org
From: Sinan Kaya <okaya@kernel.org>
Message-ID: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
Date: Wed, 17 Oct 2018 19:00:56 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: [selinux] sumo compilation
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
X-List-Received-Date: Wed, 17 Oct 2018 23:00:58 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

We realized today that SELinux does not compile on sumo branch.

Is it possible for someone to branch the last working version to a sumo branch?

http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/

NOTE: Running task 352 of 2707 
(virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch)
NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started
NOTE: Running task 1413 of 2707 
(/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch)
NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started
ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt --quiltrc
Applying patch misc_create_inode.c-label_rootfs.patch
patching file misc/create_inode.c
Hunk #1 FAILED at 979.
Hunk #2 FAILED at 987.

Sinan

