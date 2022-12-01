Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF0EC43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 12:46:21 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.41980.1669898778677650389
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 04:46:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Wlt2Ea8c;
 spf=pass (domain: gmail.com, ip: 209.85.221.43, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id m14so2512038wrh.7
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 04:46:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eBKPkJt4MMcG/ytrNfBiuyez4ieVXOOeZbV2WOQIc0o=;
        b=Wlt2Ea8cAPoKXi2ArjTdUK0C7hPwdNLxNSxsWk75JVgK2JirX1iXPoHyNQ4NPZBN6+
         9Cf48O6xYmHcwJN6mt8hRnz8zw9vN1f2cBqacqW52IHZwtmNOXdMRUgQngge9qn92rFv
         c853ThH6Z0EnOkWHx7v2wE+cztlst7v/a5V5Uv4h5IAV7EYixz7FmsbOTX7F10xZsjDy
         JGs7BvAs4QeQ3jz4+gsXHnFRP+BHlnYqIsCpaLaK+g1IAQ4AtynUZJ9Z2BX8fo+hPPnh
         ql+7Kh8RTmQGDM6iZc2Fz8AJhPjDc2eZx84Ne3gmqH6VRYTk0quwboAXnU78lTzWRWia
         HsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBKPkJt4MMcG/ytrNfBiuyez4ieVXOOeZbV2WOQIc0o=;
        b=JW0mhwUAKwouEekk5fwTI9K6OX1ItcT9Ln9GfYBGyevu6gKCvL5frMpSuln+IWsmih
         3azFeUeqzJCVb+7o5J+n2CZkgVTgAjArfdaI0LC5Q7SF99eSVIMgcaf219RQpVX0PylV
         Si9bRK/hQy5nKHYWnsNs3VAsCfnnuDDo5wabWol43P+lXwCxc/Se0rsC0E9BaIw20/Cm
         RumYUY/tFdt4uFCVZSuAqtc3aJPRCTpHmZb6oi8XX1wyVDzJ7HpxPJj63TjyTN/5sBij
         Ir87vGeG7GK3i8eUjVwkdNVXoEvq/VWd+1kOckv+7EblONNOrksm8fxT+xSjCVwnHk5a
         3Bvg==
X-Gm-Message-State: ANoB5pmBtcXtlS76huUqmYrgntABlb92qssJgBEptren+ya0ypmIqXIA
	hqx2lX5GcXIZIfV1ZsvT+qr/LEzvMs2Xg6tlkI4=
X-Google-Smtp-Source: AA0mqf4Bc/MlmQSZRfJ2BQYazA101mz6IhbPpAm4p48FTbf5CTsd/wUwiq6kDQad6I7uGDQ7/eXw3fQFtm285rVqaZk=
X-Received: by 2002:a5d:6b0c:0:b0:241:c595:9f05 with SMTP id
 v12-20020a5d6b0c000000b00241c5959f05mr37851194wrw.439.1669898776978; Thu, 01
 Dec 2022 04:46:16 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <9D944DA0-C890-4E71-A82A-3E30892E8684@arm.com> <CA+chaQcbVjpF79hRgQYE=RSBCr4-4=+2XYv+TviUdZuOMbkTxw@mail.gmail.com>
In-Reply-To: <CA+chaQcbVjpF79hRgQYE=RSBCr4-4=+2XYv+TviUdZuOMbkTxw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Dec 2022 13:46:05 +0100
Message-ID: <CAGAf8LzJbxMrZQWjjqD3zhrTD4xgcHc2v_eMxaqe-G711KHEUA@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Ross Burton <ross.burton@arm.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 12:46:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58702

Martin, U R too fast. Speedy Gonzales. ;-)

I do agree that this is the bad practice to change licences for the
known recipes. For the can-utils and socketcand. I'll revert this back
to GPLv2.

But, could you, please, allow me to have my own original cannelloni
recipe (yes, I developed it with some help from this community) on my
own terms? I DID not copy it from anywhere. It is an ORIGINAL.

Please, check. Do NOT overspeed. Please.

Thank you for your advice.

Zee
_______

On Thu, Dec 1, 2022 at 12:18 PM Martin Jansa <martin.jansa@gmail.com> wrote:
>
> On Thu, Dec 1, 2022 at 12:09 PM Ross Burton <ross.burton@arm.com> wrote:
>>
>> On 1 Dec 2022, at 04:27, Zoran via lists.yoctoproject.org <zoran.stojsavljevic=gmail.com@lists.yoctoproject.org> wrote:
>> > I do not understand why we need to explicitly name releases for such
>> > simple generic layers?!
>>
>> The compatibility is because over time things change: override syntax has changed, classes get added or removed, functionality may appear in bitbake.  Sometimes the breakage is subtle, and a layer may parse and appear to build fine, but be broken.
>>
>> Your meta-socketcan layer is broken in honister onwards despite claiming compatibility, for example.
>
>
> And here is another example why nobody should be using meta-socketcan:
> https://github.com/ZoranStojsavljevic/meta-socketcan/commit/cefd86cd1def9ad2e63be527f8ce36a076d7e17c#
>
> You cannot change the declared LICENSE of the components, just because you wish them to use the same license as the layer metadata, especially when those components clearly declare different LICENSE in the source code, e.g.:
> https://github.com/linux-can/socketcand/commit/a7ab9878d11ac187b92dcf48b6331c228f4f4b92
>
> Using COMMON_LICENSE_DIR in LIC_FILES_CHKSUM is another anti-pattern which just disables whole purpose of LIC_FILES_CHKSUM and this is acceptable only for "pure-metadata" recipes like packagegroups or image recipes.

