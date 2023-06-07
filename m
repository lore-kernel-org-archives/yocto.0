Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6568CC7EE25
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 12:20:57 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.7007.1686140450166082637
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 05:20:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=YGYpZXB2;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 3FAF240266;
	Wed,  7 Jun 2023 14:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1686140447;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ybv9lhC1Z6VjsVXF0BPbaEmVwOuOlv3cFk1hwMzIb4o=;
	b=YGYpZXB2GpLsr52L+sFckoa2Kzjvqw75+IFGC6u6BzEW9wK+QB/d//Ci4xQlTgRLsqzSWz
	JdKcsdV34Z3AAQRlZuwyVB3AUicP2bmU4U0TPgCZOyyOCXY6cLoEZvmBfdyGe5/xVNplco
	KNlv1o0r9wIVUioifzZtD0oT6j4b23c=
Date: Wed, 7 Jun 2023 14:20:45 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Remove kernel image from IMAGE_BOOT_FILES for WIC boot
 partition
Message-ID: <ZIB2HUdm4J7PN5gT@aglaia.inside-m2m.de>
References: <ZIBziarHeT1v16Bk@aglaia.inside-m2m.de>
 <CANNYZj9SDRVPiafkzEAnOaH92M6QR2ayGpezLspe0gDw1X3N_A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj9SDRVPiafkzEAnOaH92M6QR2ayGpezLspe0gDw1X3N_A@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:20:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60206

On Wed, Jun 07, 2023 at 02:16:34PM +0200, Alexander Kanavin wrote:
> I don't have a ready solution, but you could grep for the error
> message, see where it happens and what can be done to 'not make it

I am still searching for this like you suggested :-D


