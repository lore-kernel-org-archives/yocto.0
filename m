Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9907FC77B7A
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 14:56:15 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.269.1686149767732431264
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 07:56:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=jtA37vdK;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id ACAC640344;
	Wed,  7 Jun 2023 16:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1686149763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3MS8KjpoKkX2Z4B8XaURo5Zkd5wMAPGUcx04L7HPMUo=;
	b=jtA37vdKFHxDRkkC4I8AtphY9E4OSCZUUfHOktxxlpVXCUjkYfNi9U2wM+9PCPtv37BbNN
	xvbZHFlFclQ7YAVx7PgIaSc0eOeOXh5qzojHa5DqB1BqK1dQWGtCpfw3mNXZVIhquhkJFN
	mjYwQ3igIYUYKe1mxF20AVYw8opCdw4=
Date: Wed, 7 Jun 2023 16:56:02 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Approach for generating two WIC files at once
Message-ID: <ZICaghNXJaxmdIIZ@aglaia.inside-m2m.de>
References: <ZIB0W0oQNaSQ7oxi@aglaia.inside-m2m.de>
 <CANNYZj_qehN1O+wCswYOhgQGrZGAaf1bBkHGQAkv7gynMRykVA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj_qehN1O+wCswYOhgQGrZGAaf1bBkHGQAkv7gynMRykVA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 14:56:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60210

On Wed, Jun 07, 2023 at 02:15:30PM +0200, Alexander Kanavin wrote:
> The easiest is probably to make two image recipes pointing to
> different wic files, but sharing everything else via .inc.

You mean moving my current meta-insidem2m/recipes-core/images/sdcard.bb
to something like meta-insidem2m/recipes-core/images/sdcard_base.bb,
creating two new ones like sdcard_d.bb and sdcard_y.bb among the
sdcard_base.bb, require the sdcard_base.bb from sdcard_d.bb and sdcard_y.bb
and having the latter files overwrite the variable WKS_FILE with
different ones?

According to preliminary tests the search path for wks files also
include meta-insidem2m/recipes-core/images where the sdcard*.bb are
located and could ne put right there.

This way? I will test, that sounds convenient.

Kind Regards
Konstantin

