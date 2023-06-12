Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A032CC88CB2
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 15:08:43 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.61873.1686582516217557612
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 08:08:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=nD957pyS;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 790794048F;
	Mon, 12 Jun 2023 17:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1686582507;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vcGX0pmss+w4vHbMFLQFTfIWGLDwxJhMf1DkrWOFNHU=;
	b=nD957pySkKfTbHXo/4Ilgo/cYWnlMBdh1KXsT+oDRklTj05O+gwwkB2AwWSreDeGPCxlhE
	r1LB+I9EAp9EbJGosrIHbRg2GZST2y5rCP+/xN6Jc+l/UCBLIfkjU8pIsXNaCBzUzusXrq
	uNwnXbn2cGw/JDw1zJfRuPx+2HPARUU=
Date: Mon, 12 Jun 2023 17:08:26 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Approach for generating two WIC files at once
Message-ID: <ZIc06pFWS4DDn2Cd@aglaia.inside-m2m.de>
References: <ZIB0W0oQNaSQ7oxi@aglaia.inside-m2m.de>
 <CANNYZj_qehN1O+wCswYOhgQGrZGAaf1bBkHGQAkv7gynMRykVA@mail.gmail.com>
 <ZICaghNXJaxmdIIZ@aglaia.inside-m2m.de>
 <CANNYZj99EbfjLjVg8p_jOMpCHZNPRJNagomyTBZv-Eagt-_LkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj99EbfjLjVg8p_jOMpCHZNPRJNagomyTBZv-Eagt-_LkQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 15:08:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60261

Meanwhile I tested my proposed approach and it works well...

On Mon, Jun 12, 2023 at 11:35:59AM +0200, Alexander Kanavin wrote:
> sdcard-base.inc is better, because sdcard-base.bb is a recipe in
> itself, but you don't want to build that (or others to get confused
> about its purpose).

... but this is a nice hint! Thank you very much!

I was bothered colleagues trying to build the base
"image" indeed :-)



