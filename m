Return-Path: <cbing@cybernetics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5E7EC54EBE
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 14:26:05 +0000 (UTC)
Received: from mail.cybernetics.com (mail.cybernetics.com [72.215.153.18])
 by mx.groups.io with SMTP id smtpd.web11.87975.1673619959966250370
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 06:26:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cybernetics.com header.s=mail header.b=WKef+q/F;
 spf=pass (domain: cybernetics.com, ip: 72.215.153.18, mailfrom: btv1==377bec7b149==cbing@cybernetics.com)
X-ASG-Debug-ID: 1673619958-1cf43916c2430cd0001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with ESMTP id JpmAhSFxDdAbnIlv for <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 09:25:58 -0500 (EST)
X-Barracuda-Envelope-From: cbing@cybernetics.com
X-ASG-Whitelist: Client
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cybernetics.com; s=mail;
	bh=/G0JmB5yiDK9jnlpkPdOj0n7HJK3hYkyv45smvqRzvM=;
	h=Content-Transfer-Encoding:Content-Type:Subject:From:To:Content-Language:
	MIME-Version:Date:Message-ID; b=WKef+q/F5chKPSPH+lbq9CDRBz458aWACA3TpaJguW0I5
	ZdAmXCluUCPoNqvFrfSG2Q1RUS54npl4pRMiqJ4hC8cHdnRx76GCBhtvPR/7IXcyFCmRthSpq45nM
	leamTYRG04v860/cUCIaIHTZSVsm/s0rI+twxerjlZjY+SCRI=
Received: from [10.157.1.18] (HELO [192.168.184.100])
  by cybernetics.com (CommuniGate Pro SMTP 7.1.1)
  with ESMTPS id 12414449 for yocto@lists.yoctoproject.org; Fri, 13 Jan 2023 09:25:58 -0500
Message-ID: <a91c44ce-038e-f36a-d831-59c659008b35@cybernetics.com>
Date: Fri, 13 Jan 2023 09:25:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: yocto@lists.yoctoproject.org
From: Claude Bing <cbing@cybernetics.com>
Subject: [yocto][langdale] dropbear recipe fails to parse without pam in
 DISTRO_FEATURES
Content-Type: text/plain; charset=UTF-8
X-ASG-Orig-Subj: [yocto][langdale] dropbear recipe fails to parse without pam in
 DISTRO_FEATURES
Content-Transfer-Encoding: 7bit
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1673619958
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 791
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 14:26:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58974

Good day everyone.

We are in the process of upgrading to langdale, and I ran across a small
problem when building dropbear. The order of external assets in SRC_URI
seems to cause an issue when PAM is not available in DISTRO_FEATURES.

ERROR:
/home/****/yocto/poky-next/build-cyber-v/../meta/recipes-core/dropbear/dropbear_2022.82.bb:
Unable to get checksum for dropbear SRC_URI entry
0007-Fix-X11-build-failure-use-DROPBEAR_PRIO_LOWDELAY.patchfile: file
could not be found

When we move the following entry to the bottom of SRC_URI in
meta/recipes-core/dropbear/dropbear_2022.82.bb, the recipe parses
successfully:

${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)}

Is this a good fix? Am I missing a larger issue?

-- 
Regards,

Claude Bing

