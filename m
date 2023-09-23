Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 206ECCE7A89
	for <webhook@archiver.kernel.org>; Sat, 23 Sep 2023 23:50:16 +0000 (UTC)
Received: from a27-33.smtp-out.us-west-2.amazonses.com (a27-33.smtp-out.us-west-2.amazonses.com [54.240.27.33])
 by mx.groups.io with SMTP id smtpd.web11.31839.1695513012535178737
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Sep 2023 16:50:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=TukN0EEN;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=gmORitnM;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.33, mailfrom: 0101018ac4736511-46b8f424-257c-4e7f-a253-0d7d2e27be7b-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1695513011; h=To:Cc:Subject:Message-Id:Date:From;
	bh=iAhpoTOZZvD4G9oxq/d+UupHOkOYsVfoFp2GhZnkwp4=;
	b=TukN0EEN+bg7ktenBY40j822XsXXnFvrtWSkro2sNoN6Ni44lZAoSU+wwlJxPYxY
	vCYLr+RwH611T11v8ywfhY4/WPB/bPimN7/hoYEu4S1fsrrQpx/DWONWtB2MSJPGES3
	8+mRvsf4thRJhM3Ouk+sfIFBPbVb9i1xXtthyB10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1695513011;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=iAhpoTOZZvD4G9oxq/d+UupHOkOYsVfoFp2GhZnkwp4=;
	b=gmORitnMLMD/H5LJj/yAabnvQPcuOqokjxYsLglj6bUO5jaCqiY3+dmZNHk7Y2Df
	+ym8Gu3Kh/wBY80amAjTXjTwZrTtqrE35BqI6NxFsjnYl7JMLVEQE8OnL+TjHF2qDQy
	Q0AmUntPy8zH8uXGnQWyalW8bnH0hFvI4W2hh6YI=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.13.rc1)
Message-ID: <0101018ac4736511-46b8f424-257c-4e7f-a253-0d7d2e27be7b-000000@us-west-2.amazonses.com>
Date: Sat, 23 Sep 2023 23:50:11 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.09.23-54.240.27.33
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Sep 2023 23:50:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61090


A build flagged for QA (yocto-4.0.13.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.13.rc1


Build hash information: 

bitbake: 41b6684489d0261753344956042be2cc4adb0159
meta-agl: 666f141563fd7fc12b7638479d5c0cd38dae5006
meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
meta-aws: 60891e535ce219b3c473a89d8ae89cdba1d396f4
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 1342bcdc5bfc6620737e7d195e7d9bd744348577
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: a88cb922f91fda95e8a584cee3092083d5ad3e98
meta-virtualization: 2d8b3cba8ff27c9ec2187a52b6a551fe1dcfaa07
oecore: 6c7fef37d4286f6bfc7b1dcb2d1e543a110a7f6f
poky: 64242e2844ff2015ffa9391152681d7c05a186af



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

