Return-Path: <clopez@igalia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2782C43458
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 15:16:42 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.176.1783696594691645785
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jul 2026 08:16:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@igalia.com header.s=20170329 header.b=NFovYxi6;
 spf=pass (domain: igalia.com, ip: 213.97.179.56, mailfrom: clopez@igalia.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uxFXCB2PVLlAV69G7OpTv+OqJIo8skufBNfBqDNIVGQ=; b=NFovYxi6+YiCCk4NYUKnzC9Hf5
	qkInNbdfox/wxfRA+zQMeRrgFiC7v90W1Gg43026KuQT9H8Uhcue3ICTyyi3PCPNeZ2YdkOi+an4i
	hT1Fzl4+FBhci1OXloIeVF9ehVe9CYBQvFhkMGsEjZFgLShFIsybjXHYkypFialDgODOehhpOA3BR
	Ik/rGd9kGaZrhc5UBjiDf3Jq5184B2/MThed7awxoBtXQs1XKbK/I6IaHYcqVLzySK1Mqtl+pXvVu
	zHKKbujU3XSzxuJE9z0H80tTdW/F/Id/mgMG7Eeq8XG+fW3mBhaf/oQMZY63KaLFfrRcU+7xPDcMt
	80t4edng==;
Received: from 102.90.219.87.dynamic.jazztel.es ([87.219.90.102] helo=[192.168.1.38])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wiCxq-00CjWX-Pv; Fri, 10 Jul 2026 17:16:30 +0200
Message-ID: <7f24e4a4-1c56-49f7-8bfa-5ea337725060@igalia.com>
Date: Fri, 10 Jul 2026 17:16:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Add redirect git.y.o/git/... -> /...
To: Duane Ellis <duane@duaneellis.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 "joerg.sommer@navimatix.de" <joerg.sommer@navimatix.de>
References: <akNglndfCzY7BdSw@navimatix.de>
 <846ae9fc-1aa8-4c21-878e-e9a8c41c3a44@igalia.com>
 <PH0PR05MB8478EEE8764B1AB6B1D96DEBCAFD2@PH0PR05MB8478.namprd05.prod.outlook.com>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Content-Language: es, en-GB
Organization: Igalia S.L.
In-Reply-To: <PH0PR05MB8478EEE8764B1AB6B1D96DEBCAFD2@PH0PR05MB8478.namprd05.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 15:16:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66634

On 10/07/2026 16:04, Duane Ellis wrote:
> I agree with you - it is painful when things break.
> 
> Meanwhile you might check out the “git-instead-of” feature of git.
> Google the term: “git url replacement” or “git insteadOf”
> 
> We do this to repoint URLS from an external un-controlled site to an internal company controlled mirror.
> 

Thanks for the suggestion.

Unfortunately that won't help for my use case, which is using the "repo"
tool with a xml manifest on a uncontrolled environment to fetch a set of
repos containing Yocto layers and then automatically build a SDK.

I already fixed it by updating the xml files to point to the new URIs,
but things were broken until I noticed the breakage and did the update.

I have worked as sysadmin in the past and is not that hard to add some
redirections on Apache or Nginx to keep the old URIs working.
By not doing that, the result is that some third-party CIs broke and
several users got annoyed. I really hope next time this can be avoided.

Thanks.


