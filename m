Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2D19E00281
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 12:52:26 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so6007820yhf.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 12:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=eseG8scNuKHxf6RO7WggRrxqLtRBtJ4vCo4VV+WjYQk=;
	b=H1MxgR9R7z8t48rdPtvDjLeejlRRLjxwVy2Aqf9kfIhD65dXYz8HN1fW9eGHefuspo
	pAAK1jMj1pOO3HgtOXXzZuTQIz0aPKDFJQeESp4+LzNq5qkaSqRnmK9jIQa4+GCK94IZ
	c/KDctkgC3oyqQz9rtwGKsjLOovP8eLM031U5k+08A2EZPv8AevHAIEpf6w8JrmO+VE2
	lvyTuV6Fd07vtkPXdCn1y9Nhll2Btf46o7gBm3qc4K0aD352opaTsDBXLhqNNdjgBGrh
	mhxU3/+NNrYZWgVCw7YRl3DPYoBems0VDsgXa4kDk040aXQlkXvg55enNgyyYb4WcFsm
	onjA==
Received: by 10.66.9.2 with SMTP id v2mr26903785paa.65.1343677945904;
	Mon, 30 Jul 2012 12:52:25 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id of1sm8494785pbb.15.2012.07.30.12.52.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 12:52:25 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <12219656.pCAnqchrzT@helios>
Date: Mon, 30 Jul 2012 23:52:18 +0400
Message-Id: <3BC10996-751B-4657-8F1D-848C0FD88C88@gmail.com>
References: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
	<1441563.jsPnjQvs5m@helios>
	<02EF9496-6BB6-473A-8C55-0BB42CA96FFC@gmail.com>
	<12219656.pCAnqchrzT@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1278)
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, do_populate_sdk) failed with exit code '1'
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
X-List-Received-Date: Mon, 30 Jul 2012 19:52:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On Jul 30, 2012, at 9:18 PM, Paul Eggleton wrote:

> FYI, we do do this already for most significant changes, and it was =
done for=20
> this one. The trouble with this specific issue is, if you happened to =
build a=20
> normal image prior to building meta-toolchain or indeed any other user =
of=20
> do_populate_sdk, the error will not occur because rpmresolve-native =
would=20
> already have been built; hence why this was missed.

Ah, I see. I normally alway build meta-toolchain, so that I get the =
cross compiler
built first, before trying to build core-image-minimal.

Best regards,

Elvis Dowson=

