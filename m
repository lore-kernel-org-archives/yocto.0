Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7282FCCF9E5
	for <webhook@archiver.kernel.org>; Mon, 27 Oct 2025 20:31:04 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.1713.1761597063077120478
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Oct 2025 13:31:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=0iU0Hh20;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VnH+2EJQH4PCfgD9BVWIBttWLVv3eLpOLjS5vao5YMk=; b=0iU0Hh20hPcz9mlhAKG/02JiKI
	JT8ZGeMOV+WDN+4cONdRtVkOtyVgEow69qqjV5na6mMLttjyje8ZYpWelL870ZvhprOJ+aTtH1Nr/
	b7gSLX4rlz6RP2mdv7q7PaYc1fSuzHopzIUo2oK3xxK9QtAIgb3K0n7IMJEfyEw3HHdlTDv1Gx5ew
	ojrImUDX4aqm3lserScfp3MU6TUVJwhQSorpLGW0dDegKeX3ccXHgdDJqfnm1XEvGvviQ2lyeuABP
	moywezdsIyebKSAac43g+IdYG9GqaWS8qX2JvOUFA47BPREYHP5YHaBbSvo48JU8QW+6BZ7QVzl40
	iZZiErRw==;
Received: from pool-174-115-41-146.cpe.net.cable.rogers.com ([174.115.41.146]:47150 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1vDTrk-0000000AKjt-48Lx;
	Mon, 27 Oct 2025 16:31:01 -0400
Date: Mon, 27 Oct 2025 16:33:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Ross Burton <Ross.Burton@arm.com>
cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] examples of erroneous use of FILESEXTRAPATHS:append in
 various layers
In-Reply-To: <DC998F5B-C78C-4A83-A8AC-0A411856973C@arm.com>
Message-ID: <dd3fa7f6-72df-51d7-7c99-e88152e61791@crashcourse.ca>
References: <ad70591c-d9eb-b901-fa61-36570460ca5f@crashcourse.ca> <DC998F5B-C78C-4A83-A8AC-0A411856973C@arm.com>
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
 <yocto@lists.yoctoproject.org>; Mon, 27 Oct 2025 20:31:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65969

On Mon, 27 Oct 2025, Ross Burton wrote:

> On 26 Oct 2025, at 11:55, Robert P. J. Day via lists.yoctoproject.org <rpjday=crashcourse.ca@lists.yoctoproject.org> wrote:
> >
> >
> >  i ran across a single example of this, so i ran a simple search to
> > find other examples in the layers i have checked out -- looking for
> > examples of "FILESEXTRAPATHS:append" operator where the colon is on
> > the wrong end of the string (appropriate for prepending):
> >
> > $ grep -r 'FILESEXTRAPATHS:append := "\$' *
> > meta-arm/meta-arm-bsp/dynamic-layers/meta-arm-systemready/recipes-test/arm-systemready-acs/arm-systemready-ir-acs-fvp-base.inc:FILESEXTRAPATHS:append
> > := "${THISDIR}/files/${MACHINE}:"
>
> Fix posted for meta-arm, thanks.

  no problem. reminder that here are the other fundamental layer
examples of the same issue:

$ grep -r 'FILESEXTRAPATHS:append := "\$' *
meta-freescale/recipes-graphics/imx-gpu-viv/imx-gpu-viv-6.inc:FILESEXTRAPATHS:append
:= "${THISDIR}/imx-gpu-viv:"
meta-security/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb:FILESEXTRAPATHS:append
:= "${THISDIR}/${PN}:"
meta-virtualization/recipes-networking/openvswitch/openvswitch_git.bb:FILESEXTRAPATHS:append
:= "${THISDIR}/${PN}-git:"

rday

