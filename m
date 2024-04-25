Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC8E1C4345F
	for <webhook@archiver.kernel.org>; Thu, 25 Apr 2024 08:21:38 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web10.11952.1714033288879291712
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Apr 2024 01:21:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z59aQzFM;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2db6f5977e1so7414241fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 01:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714033287; x=1714638087; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PWccfizy4s7wWbT4hRW3dcFDm0NX5JBqT41Uc0Ce78o=;
        b=Z59aQzFMOuDdgLaNcJfjdeKyTitJiASbbk7B1cxv+3R/xB6zCeIKDiRskDKjBZXLuF
         8kzglvIjW2tLNwuLIOeEeHfXZfo9TmKAumqiMC8th5KKqhXhr3B/LX7u4aCLAZ2uAnFY
         xy/kb/ZhWxf7Bl4YbGz0x8uDyRLoywxtjYCG4DIzbrBG11znQmnwv2vXTjOezkmyHajy
         dS6/fsmdwNwAe04KoySYmcK6cODFSAFNqw3gxdScIemWX737LQ+ZxZsbcggTMAbPcLk7
         8kOzA5FTLuJ9S/BuQM+RvnGHJzU/UnQWGOIbdEcsv11nHhXcYTSAUPSiOZmr7wPpbGXc
         Kasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714033287; x=1714638087;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PWccfizy4s7wWbT4hRW3dcFDm0NX5JBqT41Uc0Ce78o=;
        b=IVIzwqj8gw8VzLTmZtrqHv0kasqY8ma5HA803LF04V6ptZ0YOF6yB+600PtKOVPrSe
         Q4CejEU9rsU7lglDtPH3koFweXwtQyf8tPh4tC8cMVFu2JbPf5QdB8Ikgwfd91MOoDXk
         SWWj2XxQz9NqthSg1QzCaxD5Yt+u7UWYPWVcpfRqTpVaghWRePMAMm4Sv7pEp0hW/1yH
         2f1QoudIsWNutDTaNmMipuOhRLMMKi7PkR8knbRgUXPADx3LsIKVlR+fCsmC1+J64MM7
         qHmopPZJK4+8AAnHOkSOilMDVvRRD1OI98a8z9a7ufoOIXqS95t05o6TI3kRHumC2fFZ
         2z+Q==
X-Gm-Message-State: AOJu0YyvWmuFqxVknLgPN5j0Ze6wdcOzKoWWq/5v4KzBKd61RqjYuaSU
	CK9F4F005g7T/+yMMh1V+6uvGGlkZfVASyzCqzToLq2bdkHqGSAZLNRHwvsKKyZvVt4NKtruGUZ
	IjjuYb2jwPqAWsqNLmAB5Vmc8YfE=
X-Google-Smtp-Source: AGHT+IGE5hIDm+HqBZE7YGi56UMb08I21ZxaqzbDZ63GGK9z2QdeAQ8btpe1PH3JC57nElNxQkz9zJq3TsM/A755ziA=
X-Received: by 2002:a2e:b619:0:b0:2de:fbfa:4872 with SMTP id
 r25-20020a2eb619000000b002defbfa4872mr527186ljn.18.1714033286730; Thu, 25 Apr
 2024 01:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj__fSRwHRNhg8pL3wr8C7GK5RHxMymLgvzBXyOobVocbQ@mail.gmail.com>
 <25936.1714032993891718853@lists.yoctoproject.org>
In-Reply-To: <25936.1714032993891718853@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 Apr 2024 10:21:15 +0200
Message-ID: <CANNYZj-jpR_nynmp69D5rsYaOaiCMxHWAOMj7QxjmX-eWc92qw@mail.gmail.com>
Subject: Re: [yocto] Installing Multiple Versions of the Same Library with a
 single recipe
To: Salahaldeen.Altous@leica-camera.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 08:21:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63001

On Thu, 25 Apr 2024 at 10:16, Altous, Salahaldeen via
Lists.Yoctoproject.Org
<Salahaldeen.Altous=leica-camera.com@lists.yoctoproject.org> wrote:
> the reason behind that, that this company have one external module which development in the past with an early version of this library and currently there is a new module which developed with the new version.
>
> I know the right way is to rewrite the old module with the new lib version but for some reasons (no access to source code/no resources!!) this company want to reuse the old module as it is.

You can of course create multiple recipes, but if those recipes
install different files into same locations, you're setting up a
situation where both versions may need to be present at the same time,
and that will error out with conflicts.

Alex

