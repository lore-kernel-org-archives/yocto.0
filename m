Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36925C4725D
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 01:33:53 +0000 (UTC)
Received: from a27-23.smtp-out.us-west-2.amazonses.com (a27-23.smtp-out.us-west-2.amazonses.com [54.240.27.23])
 by mx.groups.io with SMTP id smtpd.web11.12079.1705714423368617454
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jan 2024 17:33:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky header.b=McPb8WOs;
 dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=TtDpOfln;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.23, mailfrom: 0101018d248092a6-f128af5b-9439-4c8b-ba88-4a9311ae7b42-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=lvjh2tk576v2ro5mi6k4dt3mc6wpqbky; d=yoctoproject.org;
	t=1705714422; h=To:Cc:Subject:Message-Id:Date:From;
	bh=7jUKECKZ4YNZrXE/ZvsE5qmB+8G1K8IlkcOxDfCsj3Q=;
	b=McPb8WOsysZb91R5Zp9KB1mVWkXMeBRTawgsv8XICMOQCVqgLRE/eK3zl9NBW5P1
	ae3V+w1jvsmUnOutpu7nsSCUSYMKNvQjYXXroN6rgAuGw8CKUJ4fqO4bQB5fmJYp8Xv
	46b9BPCLKQcU7xSM2FGZrAe5Q1xm93z9CKuGIGc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1705714422;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=7jUKECKZ4YNZrXE/ZvsE5qmB+8G1K8IlkcOxDfCsj3Q=;
	b=TtDpOflnttKrbJ7mccY1bqI9IvAaC+w0r6u+5BKSUJuJqweWDRncQlwVT65AXTkq
	80rnp9YXp+D1169Iythlt3iz8cx6MpXxFPqpinsy2DmCo8l0lgFgiK7Jl0UBwd6jUfb
	v1F317zpRflZrR6rZP9AYhjSoYukpLUW9BTlbfM4=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-5.0_M2.rc1)
Message-ID: <0101018d248092a6-f128af5b-9439-4c8b-ba88-4a9311ae7b42-000000@us-west-2.amazonses.com>
Date: Sat, 20 Jan 2024 01:33:42 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2024.01.20-54.240.27.23
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 01:33:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62199


    A build flagged for QA (yocto-5.0_M2.rc1) was completed on the autobuilder and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0_M2.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6470

    Build hash information: 

    bitbake: 5c2e840eafeba1f0f754c226b87bfb674f7bea29
meta-agl: 6c2b8fbd7ed3e85f03b44e774de5b41099694d29
meta-arm: c538ae49eea67a7ebcc9d77137a459a4b68edcf8
meta-aws: 3c5f873a3d32a1017f2381509601f3e104518957
meta-intel: 2d8d97f295df21e1654e77b7c396ca6522392f39
meta-mingw: 9595f44230fd6e5ca88df874706d69c0160188b8
meta-openembedded: 4dbbef7a39ad18206ca6cebf7a1e08aebe5b5a65
meta-virtualization: fb67ee2b7ae76e315711bc6d1ff587f7f0f729c2
oecore: 38dbede9a49195d6faeda61e30f098996e6713f5
poky: 7af374c90c349af2c7ae9cf7d4fa14eeeb23b108


    
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


     

