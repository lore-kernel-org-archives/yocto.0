Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F6801061B17
	for <webhook@archiver.kernel.org>; Mon, 30 Mar 2026 16:52:10 +0000 (UTC)
Received: from beige.elm.relay.mailchannels.net (beige.elm.relay.mailchannels.net [23.83.212.16])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.182.1774889522428514646
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Mar 2026 09:52:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rootcommit.com header.s=hostingermail-a header.b=rUrFIvln;
 spf=pass (domain: rootcommit.com, ip: 23.83.212.16, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 32FD77E2774;
	Mon, 30 Mar 2026 16:52:01 +0000 (UTC)
Received: from fr-int-smtpout23.hostinger.io (100-96-162-196.trex-nlb.outbound.svc.cluster.local [100.96.162.196])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 45F5B7E2DCF;
	Mon, 30 Mar 2026 16:52:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1774889520;
	b=0rEeCBcpu4TpfsrCqS8Yl7SVMwd4KPHaqK2BUpAEwWrPI3CWs6CE1YY/gceodvB9q581+L
	KfUwTBvSX8HSSmk59NiHEr/ZKpa4QpLPJy2of/X1OvjfFLRMsAmKa1pPmA9zv9sZ8Fwr9M
	ojS5FaNrJFWpcP1axKZrT/M0vl5Qq/5NCHgsqLunMx7SEhO0TMF4Mcx9QFByenxPeOWEc7
	bh7F/2436+DEhi+/hJ4RxkgJAKNtiL9JhlOvG8EMBksroGmoK6IqLJcS6yS4Zet98CyXam
	vSQJMzUS4c86kX4yYCAS3cSudIFTdPfzugIPzaJSlF2N8gADgdrWaZYshEtk6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1774889520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=bVkcUV+YhicFmcJFs5K2N93NQaBWsW48yerkdQaX5PI=;
	b=0MXjyJ33bAnq9C/TauOSzMLJQSTnjeDBHkiGxyxahxWAqX5bDAWE9vuHp2mz3XrD7fBDXX
	KEky3JEZsqpKl/qak2/DzuKfCZd/yGljIBZhRLo1PeygWFrBqrbDKpsszopNk6/FvRcr+7
	t74UYDchPktYi6jf5oeNdEgCs/927pMxGPiBQ2DaLfan5udjR1YXNbUcuSuYUuycdWNY/C
	+KRRWVylShre7gk4sW7pV/GCr+WBPwe1zovZDI/WRP4pxM41RhlK2UQfaa2mXdO2MXQ7+5
	/GaQnz1FWQZUGSJJ3T8aEmOvLMzzZvfxr6w+EnWKMdmraAP0ldJOXLBE0kzexg==
ARC-Authentication-Results: i=1;
	rspamd-db964497c-bv62x;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Lyrical-Lonely: 1a81929a500a1f54_1774889520960_2597335646
X-MC-Loop-Signature: 1774889520960:696927980
X-MC-Ingress-Time: 1774889520959
Received: from fr-int-smtpout23.hostinger.io (fr-int-smtpout23.hostinger.io
 [148.222.54.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.96.162.196 (trex/7.1.5);
	Mon, 30 Mar 2026 16:52:00 +0000
Received: from [IPV6:2001:861:4450:d360:b0d6:6de5:2341:e4d] (unknown [IPv6:2001:861:4450:d360:b0d6:6de5:2341:e4d])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4fky2F1wHQz1xnX;
	Mon, 30 Mar 2026 16:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1774889518;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bVkcUV+YhicFmcJFs5K2N93NQaBWsW48yerkdQaX5PI=;
	b=rUrFIvlnwK2/L32xlMp5jLmdThefUPsjwCAMBBupz8Q1Ef25Rbicpv8PtmSjd27B66Uklm
	vXyuLXPbqVBtBdtQlK/yapkKtjCXOrQNy/FFH9bmqEsOux9m2eelO/ZicsR8mU5mThEa+h
	MLS9+bzMajyutkFyzr53Rf2pVTO7l/GM/hTAJeRkYrhX9zOTrtI6ltQS5eiPE1wt6sWF/l
	HUvjJSHZHHAR2T6jTPDk5rYiYBNtVlBqBR/+I9dog3yA15T9yV4LmdqNFEeGAJaMJXylNs
	SgXoCTq95j4wHSHBvHwajZ4KnnW4bKJlsee+bgp6d6QcLKfWpoKY45pvgzECGw==
Message-ID: <7870f639-0573-4656-9daf-180ccb3541eb@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: overlayfs-etc on top of dm-verity?
To: Ayoub Zaki <ayoub.zaki@googlemail.com>
References: <CA+-BmJbrTDW9bgT_RN6uEirtGMq4i6euR3JzvnDEhKwPT3DLbQ@mail.gmail.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <CA+-BmJbrTDW9bgT_RN6uEirtGMq4i6euR3JzvnDEhKwPT3DLbQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Mon, 30 Mar 2026 16:51:33 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=UN2PHzfy c=1 sm=1 tr=0 ts=69caaa2e a=FT0VUgs27qAzLaga8IkHqQ==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=F0gFJxXvMn5UzwHHcC0A:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=NcxpMcIZDGm-g932nG_k:22
X-CM-Envelope: MS4xfOg4PaLKYd8Gw5piiGAXHdV22WnCWBC93KcJpSqu8MvuBTWO6s7hwPaMoNdz8TB/Q9VbJFi6eUfERsUC16a5s+Z5pDJk1S/r5PsShHFiRFDb90L3qBok uih9w2Z/J/GJcLqEQlQGU8vJFwL17p2ozTa+LP9czFR9LaZMaqBx4BIZNKubTRkz93LRUB0uyG60X9ZPbnYU68nh3eITeRvNuflfle7UX4/EWWvMLnFNIcFM a3k+LQmUMTAMqEm0Ed7/e4Ia8Cxf80f5ZxTRlrxXuU9oXOe1WH+Ai5BplM2V85OJ/e0+HKAtcRUqaTOiZkhtG/KACUUALyZeoOJhM7Xalv0EJa3rwUNYzI1d YD022901
X-AuthUser: michael.opdenacker@rootcommit.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Mar 2026 16:52:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66364

Hi Ayoub,

On 3/27/26 2:26 PM, Ayoub Zaki wrote:
> Hi Michael,
> From a security perspective I would strongly advise against overlaying 
> the entire /etc as it undermines the integrity provided by secure 
> boot. Instead only overlay the specific files that actually need to be 
> modified. In addition, consider enforcing integrity protection on the 
> upper layer and consider alternatively switch to bind mounts for those 
> files.
>
Thanks for the advice and reminder! This definitely makes sense and I'll 
review which /etc files we need to modify, if any. I initially suggested 
this to allow for changing root/user passwords at first boot, but we may 
be able to do without users and passwords after all.

Cheers
Michael.

-- 
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


