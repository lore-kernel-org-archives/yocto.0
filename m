Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F986CCD1AB
	for <webhook@archiver.kernel.org>; Tue, 21 Oct 2025 06:48:42 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web11.5347.1761029314601353010
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Oct 2025 23:48:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=JCl104Hn;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.214.179, mailfrom: jester@theyoctojester.info)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-273a0aeed57so77722535ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 20 Oct 2025 23:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1761029314; x=1761634114; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cvqaVoQF1ZUFci9r95yWAvneKHeajbpGEOXKYJm5orw=;
        b=JCl104HnbLz8+gowDK9NTVL5+3PL/04Xtjhg2yUI8n86+GuJtCJIIG87l/jaiFeTLh
         ULDrRSPzj//29mNYK2n9bSYB0KMx+uOE/rV+e3y8L+RcGv1Fy8aA43P1s/jJqAGifyR6
         qn9pzi77CpnsjJxxTiOhnI8PHfgMirsfH4lquLFWUlAAIEfC7KBtgeoK47Fn2sNjo9yp
         2Eb0QNcGVxmH4dyuV2vQlMGKR4Gxi5/aSL9LQHNvOMuAuGqHjTIG/M5L/vpCOrZl/KJ9
         cJE5JL8unjWcDH18mrUEUWD8uo5XduuD36tDH9BKYlPd/tbmVDJFaSdPLTAWGARlq6Vc
         MA7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761029314; x=1761634114;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cvqaVoQF1ZUFci9r95yWAvneKHeajbpGEOXKYJm5orw=;
        b=Ha5zC5uIb6TJ9rd45IKqIIoGFHaMk19rjs+vzchIQruqRs1dTGZPRVGrt9bbVbX+66
         Z9y/UDykW3HVYY8f9ar4G/PqERrg6IEkbEf5MzvtG7zwff1rdRBRQ480jKmWynhGZyH2
         RsUDq2iyElxLZa5Y9ltPOJSpEh+ydEh2xt2z+5duxpXGI//nUpXWXx73x2HJ4XIb6XmJ
         BUHp3DS6VC9KozuQ8g3w0sPmOsZe5SoQVBBv+y1ggqr4bEGSLEXPC4O0+dc72CAgmxXk
         y66LbK2YIeZZFZdxr0zvdTQsDwHukxm2RjtYV6xbuBCoGcXTUf7WdL1TYl1kfpjpdbxm
         MY9g==
X-Forwarded-Encrypted: i=1; AJvYcCVUxmVzEdIDlP+5O7sQqwY22sr7upMZE7hlMB2qVUGOuqZ86b9/G5uMxI/mNzqbOyB+7VE4Qw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxBxUeI4v5p2pxvhSi0r9RSI9Teb/0/Bu+411G/FpVwHIGJ0drH
	828YQzjrxzgDwvZBDrcRaY7XdsyWmL4XGpqNUOShhnnc1fzRFD683GyDmP+BS6BmKjXv5sd1YFG
	lMfNAjkbWPQtb92jX9dKXDMQSsXjcVRakRpC3FSlNVg==
X-Gm-Gg: ASbGncu2eCIVZ/tY0QXpcv7F27QKlm67XSeW8HJFn8o/oMIprR1wu97OJvrcGd+p/m+
	NNYAokdUyzp1gIE1d9cu79E7zEoahPv09nAYNJrtiVxuMfz2COaTUHeR3YhWd5jjM8mYdnTsxaR
	1DRz1Cc38DeH4ejtaSEh1uMz4q5WWuufblIV5Qxc/hLUfBBnyMw35nLTALorwhalyY+bqUa7HtF
	ihvyb0144ueGr0LuO8hgXltci6bCtQtuIgOYXlX8WPhLL8zFe9uPxtq420rsOB8BXMUnzhwYPfO
	3YBH
X-Google-Smtp-Source: AGHT+IHYgHU+NSyIkack+OKOos2WKaJuT+Vv9S3Vfvg9ohlz3sfem6Z45spzdHopWQnHKvEuPqI2vOEqPImL5nELuDw=
X-Received: by 2002:a17:903:1a23:b0:271:9b0e:54c7 with SMTP id
 d9443c01a7336-29091af3a9cmr270259095ad.11.1761029314019; Mon, 20 Oct 2025
 23:48:34 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Tue, 21 Oct 2025 08:48:07 +0200
X-Gm-Features: AS18NWDQ1ICZC2NQxyj7po85yviO0GwpDt736hA59chTbFoo4i62CGvOZF0eewU
Message-ID: <CAEt6NwpsO3gbHLJWs8mW7T7_4-GZKvxsDAs4m9R+8E8afxDSog@mail.gmail.com>
Subject: =?UTF-8?B?8J+rtSBXZSB3YW50IHlvdSAob24gRmVicnVhcnkgMikg8J+rtQ==?=
To: openembedded-members@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Oct 2025 06:48:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65958

What are you counting the days down to? Christmas? New Years Eve?
FOSDEM? The OE Workshop on February 2nd?

We're counting the days until *YOU* submit your learning, war story,
experience, plans for world domination to your wonderful group of
fellows.

Let us know at https://pretalx.com/openembedded-workshop-2026-2025/cfp

Josef

