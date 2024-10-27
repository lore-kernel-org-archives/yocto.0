Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFAD13580
	for <webhook@archiver.kernel.org>; Sun, 27 Oct 2024 20:01:25 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.36529.1730059282939243022
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Oct 2024 13:01:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FBz2nBU7;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5c9428152c0so4153465a12.1
        for <yocto@lists.yoctoproject.org>; Sun, 27 Oct 2024 13:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730059281; x=1730664081; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jmru3cDwDlNrNLwsKdBFi0Nloz6plQMhhsNPkPX5Lp0=;
        b=FBz2nBU7kFVD2KSOLkImmZlYieyCDTxYLDsjOr53YZLOFkQC+ZVg3f/8JI67hmO7Z3
         +AsyXxG4xKsda9aFA7+P/auhXs8qWpdDgiXjImOz7bwZPk+FbYk9sJeO194Riv3Tpes/
         1lx9lGhz5pZqsWvHi8HItYBVZXzPS2p7YoxD7S6Qi0yTC05qwOVSISfW8tjkqnoFKRNI
         B66Xg16IjKQ1UOaTwii06cGbt/tvrHrL7GGdIiYjgFQoX+qte82x/g1lzqU+zQb07OCA
         RH252/8ptzyrF8f4PVKByZbAels6YzgkqsOEI3QnCRuBb2lEhxq1X4cqdlRKRhgKNCGw
         lbDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730059281; x=1730664081;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jmru3cDwDlNrNLwsKdBFi0Nloz6plQMhhsNPkPX5Lp0=;
        b=D4POLAGtMNvO0Pt6T8JMxq7t+m4GHb2qBtNPrlbIxQT+fwszj7CS1N1aeJhOTwGYMh
         ccR2Vpw0Dl2B027vHaDY/Z0sGba0oul662vOVwGxz86ChFjkFgELDtKDnaJXVirCqkWw
         Mu0ptnaZWIwZXA+G+ZZuH5e+jTYF4NmtsLKhlcyCb0Z0jdPknPPztmn04OqM82r4GH4L
         UdChzlHQh1YLnUE+aIMGVC7oeFufkVXWnnqXzn+1opuiZt8mrXQ/6Qt1o49M23mVoBT4
         5Jfsl7uyQ4b3NbodnqfOYfEUsiWf7WwnHzzUFDohlXMCjU8KLha1annrnJLug9m8kU6f
         JoDg==
X-Forwarded-Encrypted: i=1; AJvYcCWJs1R1s7Xwpet4HBGMoWr5CErJ3MZaiagaNZ6dbZpdNIpbdzKr5LSrgizkj5r+OYTYg/h9bg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzfBpi44rw0WDJmIcCSAG7PxKIItnHQznAdWdHvIf+PPx7cOo7Y
	Mv5P80l6iNxzaUxVBx/Qjz2rNGj2P/uWSRGxIaFQwU19dpyIVF5S
X-Google-Smtp-Source: AGHT+IFAYE/VqC1YnZ2qskigXy7HRmAOIvhj6yP+IXJhhmwrrJ6D5zSHDxusq2e5gGtqq/lVbmY9yQ==
X-Received: by 2002:a17:907:7245:b0:a99:f8e2:edec with SMTP id a640c23a62f3a-a9de5d6f21cmr625083766b.21.1730059280877;
        Sun, 27 Oct 2024 13:01:20 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b3099ddf1sm314056466b.149.2024.10.27.13.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2024 13:01:20 -0700 (PDT)
Message-ID: <10024079-1e1e-4613-9d31-ccdf134f789c@gmail.com>
Date: Sun, 27 Oct 2024 21:01:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to set real time patch correctly? #honister
To: haimbachar2008@gmail.com, yocto@lists.yoctoproject.org
References: <d8d28f79-8b34-4309-8778-49bae8267cf8@gmail.com>
 <27982.1729962606213889652@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <27982.1729962606213889652@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Oct 2024 20:01:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64145

Based on some random googling[0], the RT patch is not supported 
officially by the Xilinx kernel - and there is a not too nice unofficial 
way, which doesn't look something that can be done nicely without hacks 
using Yocto at the first sight.

Personally I would just prepare the source manually along some update 
script, and host it on my local server to fetch it from... but possibly 
the folks at meta-xilinx mailing list[1] could be a better help? It's 
their kernel, most likely they have more hands-on experience.

[0]: 
https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18842435/Real-Time+Linux
[1]: https://lists.yoctoproject.org/g/meta-xilinx


