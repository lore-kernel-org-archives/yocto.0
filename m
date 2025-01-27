Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C119C0218D
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 01:32:27 +0000 (UTC)
Received: from a27-191.smtp-out.us-west-2.amazonses.com (a27-191.smtp-out.us-west-2.amazonses.com [54.240.27.191])
 by mx.groups.io with SMTP id smtpd.web11.42546.1737941537417862948
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2025 17:32:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx header.b=PTKM/VQ2;
 dkim=pass header.i=@amazonses.com header.s=7v7vs6w47njt4pimodk5mmttbegzsi6n header.b=MUIoDIK/;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.191, mailfrom: 01010194a5634f05-e6e0d901-d559-4bfc-9eaa-2ed66dbf896e-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=rnkzp2s7ci3kogmesvov2nwn7wcc2dgx; d=yoctoproject.org;
	t=1737941536; h=To:Cc:Subject:Message-Id:Date:From;
	bh=osntlnvL4NpQjtd7SHwFfjJWd3/iIpikR8ptNMdlZWU=;
	b=PTKM/VQ2ZW3mp5sbcxE96eg2+XCqv4Uz9aYCl15P6St66FfTazv7Ud5wKGqKDSkn
	R63+6p8TuZsu8v4eIo75rV+iDYnYYS1bz4hExzvEeIPghz9kqBKQtytcibWb7KOP2Vz
	kXnSGI05S8WpNUhZkF2vN3eWG+PbWSIfxi3D178E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1737941536;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=osntlnvL4NpQjtd7SHwFfjJWd3/iIpikR8ptNMdlZWU=;
	b=MUIoDIK/VaaJf48ncG1kvzh5jETHfgEYKLwWRpSTLdrL5lBbAHjo+Zwkl2plYFYo
	8ITHDs2igHz78oOoKU5aUoJOJxlNJlEzE347RkJJnpt4Jf3v2IOpVBRUSBUlygcYsFq
	bEBRTOijo70vj3YZnsyeeSG+VfSB2zQggKcHkMGk=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0.7.rc2)
Message-ID: <01010194a5634f05-e6e0d901-d559-4bfc-9eaa-2ed66dbf896e-000000@us-west-2.amazonses.com>
Date: Mon, 27 Jan 2025 01:32:16 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: ::1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2025.01.27-54.240.27.191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 01:32:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64629


    A build flagged for QA (yocto-5.0.7.rc2) was completed on the autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.0.7.rc2


    Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/893

    Build hash information: 

    bitbake: aa0e540fc31a1c26839efd2c7785a751ce24ebfb
meta-agl: 45428e8d626b06a809686fa0db8a3892498b96a4
meta-arm: a8fe9d22eaefc294f91096c6a32663e2f4ab3b10
meta-aws: 4f45b4b2a940577bef4301a69dcafe743af1826b
meta-clang: 8c77b427408db01b8de4c04bd3d247c13c154f92
meta-intel: 0be954e82f09d235d2b5e5ea01bb62ffa8d0b5f7
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: dda0d53326017d6758ec6bdfdaf2f484c089d13f
meta-virtualization: 2ec66285d050ef3cd29a5ea57c71341e6b17b36f
oecore: 62cb12967391db709315820d48853ffa4c6b4740
poky: 7dad83c7e5e9637c0ff5d5712409611fd4a14946


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

