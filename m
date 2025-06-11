Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64AC71136
	for <webhook@archiver.kernel.org>; Wed, 11 Jun 2025 18:42:28 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.51.112.187])
 by mx.groups.io with SMTP id smtpd.web10.3103.1749667346133581581
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Jun 2025 11:42:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@faresoftware.it header.s=20210817 header.b=WNspVb1g;
 spf=pass (domain: faresoftware.it, ip: 93.51.112.187, mailfrom: mauro@faresoftware.it)
Message-ID: <e8b3ebf1-1636-4edb-af41-421464ff71b2@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1749667340;
	bh=sRDWnTqtttbOT/p3aUwdtdiSXAvHayrdr49Hb+FINSM=;
	h=Date:To:From:Subject;
	b=WNspVb1g/Luu6QxnOtYqjfHxltVBqhPgKCNHVP4ryFoalM3W+MUqvqlfLfydU/2y9
	 Af9KLD1Z0NwhC250CFXAYQayTOt/x1/b76P03/DZZmvBzqiUlsKsaTQRCmIv9f05Xq
	 RDYZ+3T2+NGxzWSz2lE3mlTVqBd+mJkQdZdsCY2k9324iUI3HTC2d7xCaRV8Vi0R4M
	 mEnL5VaRLkavkogYVYuAOLBLhp9cnnKYt1fZXCfyG0lom1khouZxZV1TNdJme0KBtH
	 hpn6xGh53xrXE3EAQzG0gc8pNdWCXFsdwmPRLpy/hyTqYCTi6DtYwHIZ7JBlLvWmOy
	 Wu12cSdWKJLew==
Date: Wed, 11 Jun 2025 20:42:08 +0200
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: How to manage linux-firmware recipe
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-3.101, required 8, autolearn=ham, FROM_HAS_DN 0, FROM_EQ_ENVFROM 0, TO_DN_NONE 0, MIME_GOOD -0.1, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, RCVD_COUNT_ZERO 0, MISSING_XM_UA 0, BAYES_HAM -3, TO_MATCH_ENVRCPT_ALL 0, ARC_NA 0, RCPT_COUNT_ONE 0, MIME_TRACE 0, __NOT_SPOOFED 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Synology-MCP-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Jun 2025 18:42:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65505

Hi all.

I'm working with kirkstone on ibase ib200 board (amd ryzen).

When I build a core-image-minimal image, I get an iso of 1,3GB.

1.0GB cames from linux-firmware recipe. I don't need al linx-firmware fil=
es.


How can I select some of all packages installed by linux-firmware?


I try with NO_GENERIC_LICENSE :=3D "" but this doesn't work


Thanks all

 =C2=A0 MZ


