Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A1C47DDB
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 03:08:14 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web10.6316.1706670488575249849
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 19:08:09 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id D017740BE6;
	Wed, 31 Jan 2024 03:08:07 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qWBS2vFcG5e4; Wed, 31 Jan 2024 03:08:07 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-87-159.washdc.fios.verizon.net [100.15.87.159])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id F16BC40AB7;
	Wed, 31 Jan 2024 03:08:05 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id AD6CB163DF0; Tue, 30 Jan 2024 22:08:05 -0500 (EST)
Date: Tue, 30 Jan 2024 22:08:05 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Yi Zhao <yi.zhao@windriver.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-selinux][PATCH] rpm: update PACKAGECONFIG for
 CMake
Message-ID: <20240131030805.GB15614@denix.org>
References: <20240130205042.2641514-1-denis@denix.org>
 <8ddc0850-dcda-4c9a-a3f4-92763d6be27b@windriver.com>
 <20240131024316.GA15614@denix.org>
 <deccfd75-dc2d-4f57-b6bb-e761f3f3e134@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <deccfd75-dc2d-4f57-b6bb-e761f3f3e134@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 03:08:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62348

On Wed, Jan 31, 2024 at 10:49:25AM +0800, Yi Zhao wrote:
> 
> On 1/31/24 10:43, Denys Dmytriyenko wrote:
> >On Wed, Jan 31, 2024 at 10:18:19AM +0800, Yi Zhao wrote:
> >>On 1/31/24 04:50, Denys Dmytriyenko wrote:
> >>>Version 4.19 has migrated from autoconf to CMake, update PACKAGECONFIG
> >>>accordingly.
> >>>
> >>>https://git.openembedded.org/openembedded-core/commit/?id=38549d462b399e3a63335f60a44c8bbced98639a
> >>>
> >>>Signed-off-by: Denys Dmytriyenko<denis@denix.org>
> >>>---
> >>>  recipes-devtools/rpm/rpm_selinux.inc | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>>diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/rpm_selinux.inc
> >>>index b6e0e7c..29eefbf 100644
> >>>--- a/recipes-devtools/rpm/rpm_selinux.inc
> >>>+++ b/recipes-devtools/rpm/rpm_selinux.inc
> >>>@@ -1,2 +1,2 @@
> >>>  inherit enable-selinux
> >>>-PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
> >>>+PACKAGECONFIG[selinux] = "-DWITH_SELINUX=ON,-DWITH_SELINUX=OFF,libselinux"
> >>I see that PACKAGECONFIG[selinux] has been added to rpm recipe in
> >>oe-core. We can just remove this line.
> >Unfortunately, it doesn't have the required "libselinux" dependency in
> >oe-core.
> 
> We can send a patch to fix it :-)

Well, libselinux is not provided by oe-core, only by meta-selinux...

On the other hand, non-default external inter-layer PACKAGECONFIG dependencies 
is a grey area and can be tolerated these days.

Anyone has any preferences?

-- 
Denys

