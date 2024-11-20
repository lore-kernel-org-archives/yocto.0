Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87DEDD743C6
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 19:08:56 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.23229.1732129726562608218
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 11:08:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DUgPTFjN;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3824446d2bcso19154f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 11:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732129725; x=1732734525; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Suowxi7TkQnjqOxfsqkD46tGDjKZMJvtdmQGuMQ+eec=;
        b=DUgPTFjNRJv9in255V7/XezUk8GrmJaxBDyde+C6J8serU0b9A5DY7U7MsOSEtOzaQ
         HKhPU+dwwnoiJeAfyVckZ/coq6b1huU1e+3O6Ws4syZKzDxwKqraggvJJPocu2Gy/Y19
         5B+16ekxlfe6UCejVv8lY3ooO4b/NXMyI4yLrr32TW5toOTpNzOWNIovYUTblncYmY+D
         6IKKFtgrN5jVLQf+Zq8g4ClMz1pm9ULiwYYhetEFmKoseeQ5dIyDOQjnFR5FrXZg3/54
         KsUakenWf5G6ulR5wyBFsHLHraty8Zx14e2BYJmlOXg8p0EbI6nwTr6yX+TBww3TJWMW
         o0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732129725; x=1732734525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Suowxi7TkQnjqOxfsqkD46tGDjKZMJvtdmQGuMQ+eec=;
        b=BU4U6LGnHN1FJkhHqYaBfTiHDSgOyyYkT6BUAUf31FjMHBIbWA56K225hEgv8uWK8J
         FRMpJM/qhOFxWkG52EKUmKRaB3LGbTm995Q8YjvDRhd/rXAJpbIJlaGRAR7jA/f3TnXl
         tZNPXojfhj4T95n2W4lsv4KPFDlHeUnVnwNW96ecZ3oEfMWL5khCTSeiaVljLyFZYnYw
         H7odZjKb3oot6SZVr0zr+LlmDFNYpxGCFtsZuBYt7irpNNlYHMZGJ+b6pH21JaCholtZ
         x46QgTaXS3+1/fxDXu2quM+WncA0Zi+ZGmHbiljytY4Kr/M8MPcE6JG7iA0USsklV9oa
         gdUg==
X-Gm-Message-State: AOJu0Yy87LAgA+iLwtAzcERsNJIQ1flteCLYNTMYBwqn2TefglrHFaPT
	hl0ATO+H5pEA7YeaKysp45Mb/F1cYxhCpWGYUenG3r0Om9bNuFMRlCiXvQ==
X-Google-Smtp-Source: AGHT+IH48f0Csr9XKuE9RAUMR/xQ+hy4F4LoMX/H8ncAvp56B27scQ/dbvfj2pBNdomvaruC6qGMaQ==
X-Received: by 2002:a05:6000:23c3:b0:382:51ae:755c with SMTP id ffacd0b85a97d-38254b140d2mr2991661f8f.46.1732129724898;
        Wed, 20 Nov 2024 11:08:44 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e080a90sm802212866b.174.2024.11.20.11.08.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 11:08:44 -0800 (PST)
Message-ID: <584263dd-5a14-401f-af8c-1c78955ce7a0@gmail.com>
Date: Wed, 20 Nov 2024 20:08:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] python3-ctypes pulls in ldconfig when no DISTRO_FEATURE
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
References: <binf5wyli6frlazzgmotontazgt3isp4jmkbsdgr2yeoaxhkqj@nxde6f7dfkuj>
 <1809C2298C25E3AB.29057@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <1809C2298C25E3AB.29057@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 19:08:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64317

On 11/20/24 19:56, Gyorgy Sarvari via lists.yoctoproject.org wrote:
> Isn't ldconfig a must for python3-ctypes? It[0] seems to call the 
> ldconfig binary directly. I'd expect the package to break (at least for 
> some usecases) without ldconfig.
> 


Actually looking at it a bit more, it seems to recover from missing 
ldconfig, and it tries other ways. Sorry for the spam, please ignore.

