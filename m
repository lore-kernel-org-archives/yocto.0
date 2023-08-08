Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32BE0C001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 23:35:03 +0000 (UTC)
Received: from a27-193.smtp-out.us-west-2.amazonses.com (a27-193.smtp-out.us-west-2.amazonses.com [54.240.27.193])
 by mx.groups.io with SMTP id smtpd.web11.76913.1691537696863624577
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 16:34:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=O+Xwqa3w;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=HJU1tdkC;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.193, mailfrom: 01010189d780e41f-1d695671-e532-44aa-8536-5470a6c0c916-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1691537695; h=To:Cc:Subject:Message-Id:Date:From;
	bh=ap+YUvKLLHNd3HWHcreX4HAanaV2Yoiu8zJIeYhXVHM=;
	b=O+Xwqa3wqhtqWtHHAEvbkrO40RY6dmgFr7w4q8CZK5pgG1uKvav5Zsk4YVvMa/FJ
	tUW1ky1QSL5IHDluk8REOvMDuct2wFCTlZpw509BzqiyIK61HKoB3CLbkEDdS/fgv2c
	SC04LSmsKG/rCG0U04ob0h2qn4rxS+GU7yQqNLks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1691537695;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=ap+YUvKLLHNd3HWHcreX4HAanaV2Yoiu8zJIeYhXVHM=;
	b=HJU1tdkCMbLWDDVu1cbsu0tyJUJGeCRkJDtlWA/afMK30f5Mjmr2tWnVY8Sqk3oL
	8zrlrJ79UtCavKqntzIuAiC+ih+FQZhkL/sVoJLt9wvfCfMehWZgfjMrJT8cHxyTgJv
	KG/j5SFkgGWEFVizZ6D5VgjV/nBozlIk9L1aM4mE=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.12.rc2)
Message-ID: <01010189d780e41f-1d695671-e532-44aa-8536-5470a6c0c916-000000@us-west-2.amazonses.com>
Date: Tue, 8 Aug 2023 23:34:55 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.08.08-54.240.27.193
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 23:35:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60755


A build flagged for QA (yocto-4.0.12.rc2) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.12.rc2


Build hash information: 

bitbake: 41b6684489d0261753344956042be2cc4adb0159
meta-agl: 45b1b63c35c52b8283e1893dfa099607baa0cdcc
meta-arm: c39bb4ce3b60b73d35c5fb06af012432e70d6b38
meta-aws: 723a8a04965af482fe65e8e56eabea858858bd88
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 1aacdb4ed1e639cc6e19c541b058264eb17eb093
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 4da92ed9be41734f6ced46b981958e2e868cbff2
meta-virtualization: af02908efda1580e77b3fdeed25b124a2b8d9482
oecore: e1a604db8d2cf8782038b4016cc2e2052467333b
poky: d6b8790370500b99ca11f0d8a05c39b661ab2ba6



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

