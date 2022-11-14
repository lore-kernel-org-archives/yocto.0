Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77611C4332F
	for <webhook@archiver.kernel.org>; Mon, 14 Nov 2022 23:00:28 +0000 (UTC)
Received: from a27-31.smtp-out.us-west-2.amazonses.com (a27-31.smtp-out.us-west-2.amazonses.com [54.240.27.31])
 by mx.groups.io with SMTP id smtpd.web12.1944.1668466821872247635
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Nov 2022 15:00:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=Amrjokl5;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.31, mailfrom: 01010184785f4742-33e68fde-a27c-4430-8b2f-3c0899f0ac52-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1668466821; h=To:Cc:Subject:Message-Id:Date:From;
	bh=jdUO1FJ+0D7hqh22j7TDVIMhbV+lHlB8NSfcHwi3YeQ=;
	b=Amrjokl5ZvIxfphLUugVKLzXDwXzpfXtuyDBFWdT8LZGVJFknRl7pxDVgF+SraHK
	bVtIbxzGJyInMIRtpHVl9RaKCmiOtXTzkIJPYg3ykzT5LiYKQfh98Xd80mfa8EyZ734
	GCWuP/dsWYWTKihA40UMj97+ZUqR0twlz9TO4Lyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1668466821;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=jdUO1FJ+0D7hqh22j7TDVIMhbV+lHlB8NSfcHwi3YeQ=;
	b=BrdCITTbjHTCqoSLii9zS5WyjW22cGKC4xQdGBnQXpcAGWTEOrWtwBGknm9mwLuZ
	eBIvq7Qt6P3LOTSvQ6L0/5zev/VChf9c/FjD6yzFtdbh8ttGa+ZKxUYB6ktSbOdMuMn
	A/7n4fqAvMFJFI7qX9qnLN55anIJ7vCY1HwfVve8=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.1.1.rc1)
Message-ID: <01010184785f4742-33e68fde-a27c-4430-8b2f-3c0899f0ac52-000000@us-west-2.amazonses.com>
Date: Mon, 14 Nov 2022 23:00:21 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.11.14-54.240.27.31
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Nov 2022 23:00:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58563


A build flagged for QA (yocto-4.1.1.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.1.1.rc1


Build hash information: 

bitbake: 138dd7883ee2c521900b29985b6d24a23d96563c
meta-agl: e5dd276442a8c9268a8818a638b07ee96383b657
meta-arm: ff9b6f29bf4a6e3fcead5c1025a413cffee7bc53
meta-aws: 8537180c8645455ee2b57c696389df21fc17f63a
meta-intel: f70cf173dc40131e5ed3955a4a459fff3aa010ed
meta-mingw: b0067202db8573df3d23d199f82987cebe1bee2c
meta-openembedded: c5668905a6d8a78fb72c2cbf8b20e91e686ceb86
meta-virtualization: 8857b36ebfec3d548755755b009adc491ef320ab
oecore: 9237ffc4feee2dd6ff5bdd672072509ef9e82f6d
poky: d3cda9a3e0837eb2ac5482f5f2bd8e55e874feff



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

