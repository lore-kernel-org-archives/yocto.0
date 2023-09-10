Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F20CEE57CD
	for <webhook@archiver.kernel.org>; Sun, 10 Sep 2023 12:55:08 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web10.35366.1694350506318439955
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 05:55:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=bnDoYiz0;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=PBOR/+8I;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.29, mailfrom: 0101018a7f28f453-79784df8-0deb-4534-b9f8-1b3c60fd1100-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1694350505; h=To:Cc:Subject:Message-Id:Date:From;
	bh=MBinuCsrFSSpWYbU/yu139lHyzdx+X68gqI+KphDk+k=;
	b=bnDoYiz0EKgyLSzeQ9Ruz/s9UDZ7cz96hNu4gkc04vzjnHPZkaH123VVWBe3lshE
	v2NhSxDkrKBoAXE5dEgouHAUPX0kwAidt6+72vQ0lXSNO4eGx7s7NlatkqDZ5ZLB1VG
	fZSmGqEkWwh1EgMMSj7DCcIr4TcpmBdVuqL0v+VI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1694350505;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=MBinuCsrFSSpWYbU/yu139lHyzdx+X68gqI+KphDk+k=;
	b=PBOR/+8I9oER+Ef987ECFB76uQdkom4NLzalJceTNtcBERReeDOBafH/huhbMxKG
	0uLicHmodINjSLaOfSnTxMISN0TgSTkHWcuZpKgLMP6Be6thV2eQWsApJ72EtADFjqo
	pVs+jTM5gVkT5XHKZBrIrjnVHoGqh7bymHoyVedk=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3_M3.rc1)
Message-ID: <0101018a7f28f453-79784df8-0deb-4534-b9f8-1b3c60fd1100-000000@us-west-2.amazonses.com>
Date: Sun, 10 Sep 2023 12:55:05 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.09.10-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 12:55:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60956


    A build flagged for QA (yocto-4.3_M3.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3_M3.rc1


    Build hash information: 

    bitbake: 033896da8daaff69df3c2adb4ad5fee29121e831
meta-agl: e654a050a3a2f2e780b35f90e6be7a453bb0c305
meta-arm: a262d308e78b9ad5c0f92c77714c7a354c5ddcfb
meta-aws: 3095240fb84be8fc78facdd2cdb91f77abf4e62d
meta-intel: 0ccbd5e710b827a1cc73acf0ac75c395edc57b59
meta-mingw: 65ef95a74f6ae815f63f636ed53e140a26a014ce
meta-openembedded: 7554afa9b38c12a066b5970e18c1a7d60584f47e
meta-virtualization: 113af45b75d2a19726d3e084e9ba05826128097b
oecore: 03d37854b1dacbecd2c522821c59ef01d9bd305c
poky: 61531cd3956c56644fc1c4cc77f130e60db1a771


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

