Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C568CCD193
	for <webhook@archiver.kernel.org>; Sun, 26 Oct 2025 11:55:15 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.8867.1761479705653696199
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Oct 2025 04:55:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=XuLGWztc;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mXq/m8+EBc0OadTDiW3LDZTuEKV+2VhHRy0KL/LDyP0=; b=XuLGWztcqCsmyUNx4ec0G6+7UY
	omEJrbEejNO+RltfybLOwGwqqF6NJ3K58GJiasTx46Oo6Vkj+2r3wNmwWLdAjgGSWd4FjQrtVQw52
	RhTJ2Ci/lg5dDr2rZQKVN4DWjNFpwDW5WuO6Sd3826SnjzhMlgiY2drs5Q6k+io2Th905qele2PxK
	tItSGYKkGy2vZNwKtMO1/orQ4cS+wjeSxQN3z+Ey3JWMy1nNQ++BDXbOr+AWZu2bAHD0kyPzch8c3
	jJiveBgs5ED9xe4rjJX2owpSz5jOu81PQzd5jrvusQBvQrsHV8nApAXZDiGfVc0ZbkCkn0mt0a+Nh
	IvkWKi7g==;
Received: from pool-174-115-41-146.cpe.net.cable.rogers.com ([174.115.41.146]:35722 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1vCzKu-00000005bYs-0B6B
	for yocto@lists.yoctoproject.org;
	Sun, 26 Oct 2025 07:55:00 -0400
Date: Sun, 26 Oct 2025 07:57:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: examples of erroneous use of FILESEXTRAPATHS:append in various
 layers
Message-ID: <ad70591c-d9eb-b901-fa61-36570460ca5f@crashcourse.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Oct 2025 11:55:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65967


  i ran across a single example of this, so i ran a simple search to
find other examples in the layers i have checked out -- looking for
examples of "FILESEXTRAPATHS:append" operator where the colon is on
the wrong end of the string (appropriate for prepending):

$ grep -r 'FILESEXTRAPATHS:append := "\$' *
meta-arm/meta-arm-bsp/dynamic-layers/meta-arm-systemready/recipes-test/arm-systemready-acs/arm-systemready-ir-acs-fvp-base.inc:FILESEXTRAPATHS:append
:= "${THISDIR}/files/${MACHINE}:"
meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv-6.inc:FILESEXTRAPATHS:append
:= "${THISDIR}/imx-gpu-viv:"
meta-security/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb:FILESEXTRAPATHS:append
:= "${THISDIR}/${PN}:"
meta-virtualization/recipes-networking/openvswitch/openvswitch_git.bb:FILESEXTRAPATHS:append
:= "${THISDIR}/${PN}-git:"
polarfire-soc/meta-polarfire-soc-yocto-bsp/meta-polarfire-soc-bsp/recipes-extended/pam/libpam_%.bbappend:FILESEXTRAPATHS:append
:= "${THISDIR}/${PN}:"
stm/meta-security/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb:FILESEXTRAPATHS:append
:= "${THISDIR}/${PN}:"
stm/meta-swupdate-boards/recipes-support/swupdate/swupdate_%.bbappend:FILESEXTRAPATHS:append
:= "${THISDIR}/${PN}:"
stm/meta-st-stm32mp/recipes-kernel/perf/perf.bbappend:FILESEXTRAPATHS:append
:= "${THISDIR}/files:"
xilinx/meta-virtualization/recipes-networking/openvswitch/openvswitch_git.bb:FILESEXTRAPATHS:append
:= "${THISDIR}/${PN}-git:"

  people are invited to do with this what you will.

rday

