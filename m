Return-Path: <paul.betafive@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBE64E0071F
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 08:19:48 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id m15so8990012wgh.35
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 08:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=72yxlNigL177ac7Humj3R3lA+3FElS9PGLfvvdxWdq8=;
	b=QX7SKYmAcUNUKNxmYZrhN32WllbfS2h5r7+ZhaAXwWU6K5pPwo6gEpNk3tLazntloe
	GkWKk5osy/aJUqdLFLlRqHzl5ihnsq1CR7sPilL0UY5LPWZYZ4Ew+NuI4E7OCnyXRqG3
	Og8PqSN5lpQu/fU46mmhTiF/j9rsN+AzXgHecZ85JVYU2KqduNMuROu/EkGPOnFheDwE
	7mIBUu59H7E8slxFIPRHuxvaIGHH6bCMB8soCcQoxJChoM56mCQCf6pogoqO2+rzXLJj
	D/OeWXfgHfk4nleyb73qHCUPhEutDIBoSY5BTEBRmnVcTLxAWqor16n652hghdbsGPjP
	gmBg==
X-Received: by 10.194.22.41 with SMTP id a9mr26224074wjf.16.1373728787019;
	Sat, 13 Jul 2013 08:19:47 -0700 (PDT)
Received: from desktop.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id em10sm9415902wid.1.2013.07.13.08.19.45
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 13 Jul 2013 08:19:46 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sat, 13 Jul 2013 16:19:04 +0100
Message-Id: <1373728745-15435-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.3.2
Subject: [meta-yocto][dylan][PATCH] linux-yocto: Fix SRCREVs in linux-yocto_3.2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 Jul 2013 15:19:50 -0000

As very recently discussed with Bruce Ashfield.

This isn't intended for the master branch as linux-yocto_3.2 isn't present
there.

I'm going to build for Beagleboard this evening and give it a spin tomorrow on
my board but that's about the extent of the testing I can do.

Paul Barker (1):
  linux-yocto: Fix SRCREVs in linux-yocto_3.2

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.2


