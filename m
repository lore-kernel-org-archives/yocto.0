Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AF11C4167D
	for <webhook@archiver.kernel.org>; Mon, 30 Oct 2023 16:27:03 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web11.153828.1698683218014833369
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Oct 2023 09:26:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=WXHDbhE/;
 spf=pass (domain: baylibre.com, ip: 209.85.219.50, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-66d264e67d8so31111056d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 09:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698683217; x=1699288017; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fjcNXCIbf1kdwPErIqq5jSJCUgDr7fOc1Oof+jrtVAQ=;
        b=WXHDbhE/9MvpmcL4FB286Cijf2OCWS9fAYXN6A1OZriJa/Qo5LeOWVZH9pPM5j38xA
         C/l9fesjpigg9LfN0kEERyVbvP12rDILy3mAdmsdStfTzOYsA82tphp9/mpqxGvO7J0M
         WdIqRK8+hBrCFzhnbsT/MPFh08RkLIASXsWCiaywA+BQiH9DtODhis89EqMYVRLVWWh4
         FFdFwJHoguQCfNcr42kmx70LsOyTe4vgj5y3I1Wc9H0To4yP1lwdm09nzTEPdhzw0jkE
         +y5tUD5NqbY6fDxgfRzKABkc1VsnHZJBhlMwvKm/M+O7QwKNM0fovDztwjh7+tV6HTCt
         ITcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698683217; x=1699288017;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fjcNXCIbf1kdwPErIqq5jSJCUgDr7fOc1Oof+jrtVAQ=;
        b=QQNs9EAsRM21OnQtE7m25XixrvTD9saFB+TeeKH5L7FLv2hf2UfIKWLnIQZlxJW+4S
         o9JDXQnGoj3ys0jRicJk5ZVZeubkaOErplBuSDYBiiOYb0uNEGaSu0DBPeS2qKXEpWhB
         2jF9LZEeMdb/u8CLDEFMmBS9qe+7k9c55L+qOIwKJXVRUg90wiMS4haPR5KiEpwLRZo1
         lPq4WhTEfSSQEAVT7Nb++GF7Jwfj+fNicFEmmZR+OBMC3uzNSgQBz6C9JUq+UjwQHvVL
         YlZUKzllltIzAeXx1ifekOfE2LhwD6XYvAtS7OVnBViIJEll+7rh7WM/dEjsVtQi8ey3
         EQ4g==
X-Gm-Message-State: AOJu0Yy079vpD4ik63vOUbD+jrRM8KWL9CBmxIqYKliY5owQTmFaaP75
	n5mGvp5w+naNH79C8OEBT03F61EbQz0w5YtEQNlANQ==
X-Google-Smtp-Source: AGHT+IEF10YtVFGQ3dO7Z2ZxWXtHydolNqgMGSkWT/yFRyveCCyZdgMORTpJlOntdSahYkFgkvf6nA==
X-Received: by 2002:a05:6214:246b:b0:66d:1d92:c694 with SMTP id im11-20020a056214246b00b0066d1d92c694mr14840386qvb.58.1698683216668;
        Mon, 30 Oct 2023 09:26:56 -0700 (PDT)
Received: from ?IPV6:2001:1970:5b1f:ab00:d875:6297:4e81:e577? ([2001:1970:5b1f:ab00:d875:6297:4e81:e577])
        by smtp.gmail.com with ESMTPSA id mi8-20020a056214558800b0066d05ed3778sm3548507qvb.56.2023.10.30.09.26.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 09:26:56 -0700 (PDT)
Message-ID: <5a4f2512-1ff4-45f6-8327-e7eb0533fdf8@baylibre.com>
Date: Mon, 30 Oct 2023 12:26:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: openembedded-core <openembedded-core@lists.openembedded.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: Trevor Gamblin <tgamblin@baylibre.com>
Subject: [yocto][OE-core] Notification: Patchtest service going live
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 16:27:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61522

Hello all,

This is to notify the community that the Patchtest service will be going 
live today to provide patch feedback. For now, this is exclusive to 
submissions related to the openembedded-core mailing list, but support 
for other lists is planned in the future. If/when the service detects 
issues with a submission, a reply will be sent to the submitter (CCing 
the openembedded-core list) with a list of failing, passing, and skipped 
tests. If you have feedback or suggestions for patchtest, please submit 
an issue via Bugzilla (https://bugzilla.yoctoproject.org/) under the 
"Yocto Project Subprojects" -> "Patchtest" category.

For more information on patchtest, see the READMEs or the Wiki page:

1. 
https://git.openembedded.org/openembedded-core/tree/scripts/patchtest.README

2. https://git.yoctoproject.org/meta-patchtest/tree/README.md

3. https://wiki.yoctoproject.org/wiki/Patchtest

- Trevor



