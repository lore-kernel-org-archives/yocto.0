Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3733BC369BD
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 11:22:44 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.16472.1744802556329019813
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 04:22:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DS04x4GR;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e5e34f4e89so4665058a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 04:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744802554; x=1745407354; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7ww3Z6A/mc0r2MedMdvkvge8SJ7RDnPc22n3HizzuVw=;
        b=DS04x4GRqaRsTFV/aOD4R1jw3EmW0jPpMQXyHZ8hNZOh5xchTxT5ndbcutaXoFvHfg
         81vxa+vk2Ei4PZSUlORsiaR7E20QaxF3QCXyYxn25MTGbmOBNH3eQeFwouHpb3qGi4Da
         3P5vBWPwBV82UDB8gM7QBRhPGeGnA2mJVfzZEsnz4FO6SBLzPhff7G2a6IdUekf3Oytr
         ZdOABf0a9wqJUQwXzVoLcqoD0OB2a64AzmaLbQKnIm1sBFWKCFOCurfV1Y4PMdpLLixq
         buClmTh2q7x+CtACr2XIoa8sspbj6oKQqRq5OO+YLAXysZbdMi6TrO60M3NnvjOqMJW9
         ztyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744802554; x=1745407354;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7ww3Z6A/mc0r2MedMdvkvge8SJ7RDnPc22n3HizzuVw=;
        b=U5Ep9XegMnmGZRQwgNPvGXn+zDKh32j6Ck4NTR0g5xuV1SidlSjhwdIR72rD4Ugt/d
         upPmMVniOBa1VY1fNhUBoSzOFV6Sev92Q1rriWQgnPAGxLjJRvVhHsECDy4gFPM0/6E0
         HuVMo0HpQxjVLWDeJvv87d48OdPn6bNLv7If8x3mWyG767Z/K2PbSSLqVCRalzW7SF+s
         KKBM99wqmW8XyWk8fL3LdverzObUa+ED6cnXstThXN7NssTFcCXu0tOoh2TU7eFJ2PgE
         Wo6p/3gwcFYdApPhtNmWuTCHyANP6MjrTAqKzsrvzibPT2BDBCLqRKFMyFNSOOyj+PJV
         9xWw==
X-Gm-Message-State: AOJu0Yw/rhO+rLnB2AxHrdFeoRLtIrPwyKZ+vwShrzcSvPEgsYTgs5xE
	/F1Y0Y3xGzD6Kshu12vcPc4Lfkvn5YBE4oGkvDThZjGXf9I2RaOgcYadBQ==
X-Gm-Gg: ASbGncuW9afZT3DmgcQzHxGFq6JgCTknihYUFUVupRO2cb+nfUHChSpotHHd4yBzZAD
	GyCJBL4Q232yiplLTtJrd8QHdEwwOeCkZQhwkD88w/ZwH2PHboACRn+t4l6dqwFY94usH3uevmR
	DNf9/5E+DzWNT2v7VhP/sV+53tX83UKdWinrm7IkhRt04hqsFXCTDVw5z1EO0f4U46MGtStkCAS
	bKtj2N7K9nq5yRMdwJfcAKSE0Mo+e8tJ7Rvj/44RNun5C4Wxy5W0TYfF0fYcfHvhG7M7FOcv1JV
	o+pGQG1bDwktwFu+ZXuFwouPbN4NsTA7pcI3fJ2iaFZ7bbKL
X-Google-Smtp-Source: AGHT+IH/DmPtYmcZ7spoBKpo6mcuh9oqfyx+I9e1qbnaz6QH0Xl6fuq/5PxU0JvQCUEHcH65nn5/ow==
X-Received: by 2002:a17:907:7250:b0:ac7:b8d8:62c3 with SMTP id a640c23a62f3a-acb42c17940mr111838266b.51.1744802554052;
        Wed, 16 Apr 2025 04:22:34 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3d12894dsm106572566b.120.2025.04.16.04.22.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 04:22:33 -0700 (PDT)
Message-ID: <06bfb359-54ec-46fb-8ae5-5aa402ffcc4e@gmail.com>
Date: Wed, 16 Apr 2025 13:22:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Reseive a HTTP Error 500 when send error report
To: yocto@lists.yoctoproject.org, thomas.perrot@bootlin.com
References: <2e9cf6ffee73d3e37142c09a39b2f712bf29dc4d.camel@bootlin.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <2e9cf6ffee73d3e37142c09a39b2f712bf29dc4d.camel@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 11:22:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65185

Rendering[1] the error message shows a bit more details. The error seems
to come from here[2].

1. You could send a patch to fix the error (I think nowadays it should
be "urllib.parse.unquote_plus"), and wait till it's deployed

2. It's a guess: have you changed the "version" attribute of the
send-error-script? The error indicates that the user agent is
"send-error-report/0.4", which seems to trigger the outdated codepath,
and the user-agent is composed using the version variable of this
script, which is 0.3, in master-next too[3].

[1]: https://sarvari.me/deleteme.html (temporary link)

[2]: https://git.yoctoproject.org/error-report-web/tree/Post/views.py#n60

[3]:
https://git.openembedded.org/openembedded-core/tree/scripts/send-error-report?h=master-next#n25

On 4/16/25 12:14, Thomas Perrot via lists.yoctoproject.org wrote:
> Hello,
>
> I would like to share the results of my CI jobs, so I am trying to send
> error reports using the send-error-report command, but they are
> receiving an HTTP Error 500:
> https://termbin.com/pq28
>
> Could you please advise me on how to resolve this issue?
>
> Kind regards,
> Thomas Perrot
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65184): https://lists.yoctoproject.org/g/yocto/message/65184
> Mute This Topic: https://lists.yoctoproject.org/mt/112292345/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

