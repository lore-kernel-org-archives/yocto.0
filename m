Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3E0DC43334
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 11:47:43 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com
 (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web11.10427.1656503259221861008
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 04:47:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org
 header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=ALoXaPqU;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191,
 mailfrom: 01010181af49cc59-7fa1b027-722d-4360-9ca4-4894f160087e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1656503258; h=To:Cc:Subject:Message-Id:Date:From;
	bh=i0S3L8JLGcArBUdKHeRpVUBHsADesLDvwzjaAr1hmc0=;
	b=ALoXaPqUz0AqQslWXZwBoDdK75o/r6dLuaY+Sh7b/mcXyk68reZGnv+4DxBUgx6D
	ASoRvBcMo4wFO2a3JjZoxFefNEvwoe3WwOX/mpKq624bo8b3b0J1qW3EVkeRdxcQclt
	jPPY//hqNNHKTBVZTa4qgWestz7ANukLlDNULS1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656503258;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=i0S3L8JLGcArBUdKHeRpVUBHsADesLDvwzjaAr1hmc0=;
	b=iraRpVr2UpUkHQVucDJos0rTorR0u+wSTS//0aPZ/DgU1keCTuu8hDHC1aZcYp0r
	C2tsgF+cbgxMufDn9YxkoDgUzc+2P2dZajd5+yo9pis5p3W6fZzJxMt0yDFtU0m7gIB
	A1TsbgtJKm/0ju65snlaS4sejkrTqZQDtoXP4JjY=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.0.2.rc1)
Message-ID: 
 <01010181af49cc59-7fa1b027-722d-4360-9ca4-4894f160087e-000000@us-west-2.amazonses.com>
Date: Wed, 29 Jun 2022 11:47:38 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 
 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 11:47:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57417


A build flagged for QA (yocto-4.0.2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.2.rc1


Build hash information: 

bitbake: b8fd6f5d9959d27176ea016c249cf6d35ac8ba03
meta-agl: c4cc627f4d65da8c3b0860c791d9b9687ba8f5d6
meta-arm: af928569b421431347c84f5941cee7aaa9f0ac74
meta-aws: 8b8eec4bde3b1ff00783503bd77b3a5fb7d904ec
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: ef3aa3064b9bbfa19f600eafb1e7d3473f62af74
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: fcc7d7eae82be4c180f2e8fa3db90a8ab3be07b7
meta-virtualization: 320f44c6e9af463a85b58e0d87ca70273c6b87f6
oecore: eea52e0c3d24c79464f4afdbc3c397e1cb982231
poky: a5ea426b1da472fc8549459fff3c1b8c6e02f4b5



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

