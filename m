Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D4DDC433F5
	for <webhook@archiver.kernel.org>; Sun, 27 Feb 2022 10:05:04 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.38.119.136])
 by mx.groups.io with SMTP id smtpd.web11.7693.1645956302052456452
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 02:05:03 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it
 header.s=20210817 header.b=gjNdvFnk;
 spf=pass (domain: faresoftware.it, ip: 93.38.119.136,
 mailfrom: mauro@faresoftware.it)
Message-ID: <4692fe3a-ab34-6a48-3afc-8d93c8eb7e32@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1645956268;
	bh=13QDZkXsHRWdle2AW5lS96E+R8FRGbDN9i3TktApTBA=;
	h=Date:To:From:Subject;
	b=gjNdvFnkhOKNc+MIpL4T7VQ3ucWAx1M3r+dmwyX96YENGAnCEaKEqIs+oDR+QyheV
	 OGMGznWxhi6weoqxPjZ8oI8v9Ir6VKwavncgQ+6pVFEmJUA2w0xveJOrJQ5r2QSNl/
	 EPUhuFkr1nabfmjXT7oE71hMKKEbiIwvHO+Za8A4=
Date: Sun, 27 Feb 2022 11:04:57 +0100
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: features_check and IMAGE_FEATURES or EXTRA_IMAGE_FEATURES
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.101, required 5, FROM_HAS_DN 0,
 TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, TO_DN_NONE 0, RCPT_COUNT_ONE 0,
 RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0,
 MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Feb 2022 10:05:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56297

Hi all.

With he class features_check is it possible to check the content od=20
IMAGE_FEATURES or EXTRA_IMAGE_FEATURES too?


Thanks all

 =C2=A0 MZ


