Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B8ACDB47E
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 06:55:46 +0000 (UTC)
Received: from a27-29.smtp-out.us-west-2.amazonses.com (a27-29.smtp-out.us-west-2.amazonses.com [54.240.27.29])
 by mx.groups.io with SMTP id smtpd.web11.49147.1697784936475088095
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 23:55:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=Jvp9TZz7;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=Nw9FZQn6;
 spf=pass (domain: automation.yoctoproject.org, ip: 54.240.27.29, mailfrom: 0101018b4bde33b6-a3fab4b0-bd55-4084-8c36-15407b954459-000000@automation.yoctoproject.org)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1697784935; h=To:Cc:Subject:Message-Id:Date:From;
	bh=HRiQUyNT7U7W57Vkjsxs2WwnUJ/FFG/Ui9r3JnFHb/o=;
	b=Jvp9TZz7Fq6Qf+qlU6GM2J5noZa8JbXOgD9+VS0FOxeBallONuZMauQYxH+k5NWl
	0QIkdRrXoH9k5N+U6QvBkXLdaXueS+A3PrgDkvpEXqrpl7sG/KnfgzoVsGlNLADTrnK
	Awe6iX04rkooakbVp3iHjy1VHPdRlISbEGJVtx5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1697784935;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=HRiQUyNT7U7W57Vkjsxs2WwnUJ/FFG/Ui9r3JnFHb/o=;
	b=Nw9FZQn6wu3TvhJth6sC1OyXAtKF+NImTfGYWwWTXL82mxod2QFx74bG+B6lViUJ
	aHkh9LjBQMs75FXt1GDzfdNDfHi4jBoyEVOG4wDAZ0JDI00xb7iSo1kuUJHbSrMwWHC
	meQijr+z4UNje/TOmetU5TdRr+uEVgck095cHtDs=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.3.rc2)
Message-ID: <0101018b4bde33b6-a3fab4b0-bd55-4084-8c36-15407b954459-000000@us-west-2.amazonses.com>
Date: Fri, 20 Oct 2023 06:55:35 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2023.10.20-54.240.27.29
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 06:55:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61428


    A build flagged for QA (yocto-4.3.rc2) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-4.3.rc2


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6080

    Build hash information: 

    bitbake: 5419a8473d6d4cd1d01537de68ad8d72cf5be0b2
meta-agl: 4063b4f9a712e32337c1d9678b2f2481dde2a346
meta-arm: 4bf3246b7b1147e29d42a835631c89279a6ce520
meta-aws: a30a2b66f1447dc5abdbca6c5de743e39c08b99b
meta-intel: 1bca60610c597571769edc4a057a04bfdbd2f994
meta-mingw: 65ef95a74f6ae815f63f636ed53e140a26a014ce
meta-openembedded: c66ec8776ec6f467937918a114bdefa28ac036a9
meta-virtualization: 827092c2ec925ea3a024dcda9ccfd738e351e6ba
oecore: 4c261f8cbdf0c7196a74daad041d04eb093015f3
poky: 15b576c4101231d248fda7ae0824e1780e1a8901


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

