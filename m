Return-Path: <matthias.schoepfer@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10E0CCCFA13
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 07:56:05 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.37472.1727337355816316394
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Sep 2024 00:55:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20230601 header.b=N0nzSiDg;
 spf=pass (domain: googlemail.com, ip: 209.85.167.47, mailfrom: matthias.schoepfer@googlemail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5356bb55224so898711e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 00:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1727337354; x=1727942154; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a4RjXjU9CQzQCdRKry55VSW/fEaGI6Y8Fmzmyl4xnbc=;
        b=N0nzSiDgbexjburP19vLbsyBOnBJXIXoPW9MwujpsrlpnZuKMa4crl1g2O7jvwSWMX
         tXZVXVi/MkBjta8EiMji5qVrdQOevar7E/Rx+jyRyEDMoUZMpUfe4gdT/trAYecvhywf
         XKWmPD874e488TddAwJeIs5tyLnpI9GeYJ7EpJbTJmDa6fuqSX0kHy+P18kxb7XPnLqt
         NfSfYl2O7NYeQDtYiMxHnouKJzoKTBuh05j8o0HSDHdmsKaDkSEvxzL2r0N3dLQbzDHR
         IZ5T7r1bvbgiEaKAKHsaGr+DoLZ3l3i+At67aklqngg6OAn7eZdb4OghE0PKNgvqqdNn
         1+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727337354; x=1727942154;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a4RjXjU9CQzQCdRKry55VSW/fEaGI6Y8Fmzmyl4xnbc=;
        b=bLU3amCzpWxE9IpEh1Ts/SbQkuexFP6GXnLpClJxV+1HiH1z5gNzak7nG23b7ymReJ
         oNw7ECntLBx377iA5IKUAh1/5xGG4qLX10VWtv51gMv729v9KDbT4441+9N5HgMlfQt4
         0XzslqQnpCABnPMxDcpw5RimiKTvFS1RQ9RJ7H3T5PTeUg/g0Ss/2xHVMNys3t3wdtRW
         rUx+Wf1xa94xnXdH7d6D+dV4IcC8gpdI1bcyeR19TxAHj4Jknl4BAgWNyzySn3tdFpM4
         zJLlS3CiTVk7I8OVc0vAEKCuY/NgWf5kv1AXcrFhqY4m/3RhSsgKeXOQrVu1nqbgcP75
         N04A==
X-Gm-Message-State: AOJu0Yzsz5S9mpDrDcRvCyBTZyaY0mqFjsuW8mfJaom9tEazysEcxgIs
	DJAXomwGiYg5Tlt2I6m3P9OdUPv3vz9g9b11OZdycEzCCvPDxrqi7ewcP+de
X-Google-Smtp-Source: AGHT+IG/HQDct/Ah2DWyURViQzESkyHxu5X8C58/2DmaDeAYlQEFUdCNpFHvYNpcYVVRQilynalJhg==
X-Received: by 2002:a05:6512:3a89:b0:534:543e:1895 with SMTP id 2adb3069b0e04-5387755cc46mr3371463e87.39.1727337353355;
        Thu, 26 Sep 2024 00:55:53 -0700 (PDT)
Received: from [192.168.82.66] ([46.140.210.162])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c5cf49dbbdsm2836205a12.57.2024.09.26.00.55.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2024 00:55:52 -0700 (PDT)
Message-ID: <c1537f5c-f217-4d03-a71f-8908ad104201@googlemail.com>
Date: Thu, 26 Sep 2024 09:55:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Question on the sequence conf file parsing. #yocto
To: yocto@lists.yoctoproject.org
References: <jSFp.1727320167454925028.4fOt@lists.yoctoproject.org>
Content-Language: en-US, de-DE
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
In-Reply-To: <jSFp.1727320167454925028.4fOt@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 07:56:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63891

Hi May,

maybe dynamic layers are a solution to your problem:

https://docs.yoctoproject.org/ref-manual/variables.html?highlight=bbfiles_dynamic#term-BBFILES_DYNAMIC

Regards,

    Matthias

On 9/26/24 05:09, Guo, Yanmei via lists.yoctoproject.org wrote:
> Hi Yoctoers,
> Trying to understand the sequence of conf file parsing when bitbake is 
> running a build.
> As a typical yocto project, we generally have local.conf, 
> bblayers.conf, multiconfig/xxx.conf and distro.conf etc,
> serving for different purposes. Is there a defined sequence in terms 
> of which conf file is parsed first, which is last?
> Especally, I am interested to know if `BBLAYERS` can be appended 
> conditionally depending on a variable defined in a multiconfig file.
> Thanks very much!
> -May
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63887): https://lists.yoctoproject.org/g/yocto/message/63887
> Mute This Topic: https://lists.yoctoproject.org/mt/108661552/3618420
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [matthias.schoepfer@googlemail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

