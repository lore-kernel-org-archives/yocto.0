Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2AB2CCD187
	for <webhook@archiver.kernel.org>; Tue, 14 Oct 2025 05:50:38 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web11.8445.1760421031612177048
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Oct 2025 22:50:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=sPgT5Ung;
 dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=Ve7BveVl;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 01010199e1452afe-32ecec07-e05c-46e5-adfb-fd30263242f7-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1760421030; h=To:Cc:Subject:Message-Id:Date:From;
	bh=kqEigOK8Ak82nPwDhOvdLKr+bpU+1jGjCH5pLDgIr08=;
	b=sPgT5Ung6J7CqRARczoulmc1w6sYDcAyJnyS/VgDMMVVittDWh2Zcyk7iuJTJOc5
	TAmWSbhKPc6baWEaEnvDtmunwgyr9b2tZwvcvkOotrJwlY+IympaDggXFwpu8JlyLEV
	VFEwtir23RbI56xwjb1h3YlCd+A1ovWN0I3LFQag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1760421030;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=kqEigOK8Ak82nPwDhOvdLKr+bpU+1jGjCH5pLDgIr08=;
	b=Ve7BveVl6YjknSQf3LuaAFh1IsDivfv8TlGY3Jy6kMX/FDpxcEmx2FKTSIz/ThEh
	KykTT9Chg5ytVHiEzTKlEqPYFH2UDzT9I4Fm+AxC5akFY05L9QgJ3rtl6ddojDZgrNx
	xmn8TrldDVkPljGPzjCngY9eU/2J8Q98tRQVHreM=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.13.rc2)
Message-ID: <01010199e1452afe-32ecec07-e05c-46e5-adfb-fd30263242f7-000000@us-west-2.amazonses.com>
Date: Tue, 14 Oct 2025 05:50:30 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.10.14-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 05:50:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65924


    A build flagged for QA (yocto-5.0.13.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.13.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/2579

    Build hash information: 

    bitbake: 1c9ec1ffde75809de34c10d3ec2b40d84d258cb4
meta-agl: 07a44280ecb27c3cc794a79cd46c53caf7da925d
meta-arm: 0f1e7bf92c89759f0ab74cfa5be4ee47b092ad46
meta-aws: 446379f6892ce2145e68d9b95dbc7a208e9558d2
meta-clang: 731488911f55ebfe746068512b426351192f82f2
meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
meta-openembedded: e621da947048842109db1b4fd3917a02e0501aa2
meta-virtualization: af1db2042caf8021d767dce1b26c08b59b96f3d1
meta-yocto: 3ff7ca786732390cd56ae92ff4a43aba46a1bf2e
oecore: 7af6b75221d5703ba5bf43c7cd9f1e7a2e0ed20b
poky: f16cffd030d21d12dd57bb95cfc310bda41f8a1f
yocto-docs: 6f086fd3d9dbbb0c80f6c3e89b8df4fed422e79a


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

