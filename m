Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40A78C61D9B
	for <webhook@archiver.kernel.org>; Wed, 22 Nov 2023 17:24:51 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
 by mx.groups.io with SMTP id smtpd.web10.25677.1700673881134477879
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Nov 2023 09:24:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GM22rjoR;
 spf=pass (domain: gmail.com, ip: 209.85.166.50, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-7b35d476d61so16014639f.0
        for <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 09:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700673880; x=1701278680; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QV2WMDKTpnCp6YDWuV8X2etyoDYDOZJOoyg8n/WNeIY=;
        b=GM22rjoR7uTVBJRWvCTY8Ry/NCx99ODaS8AkjjvciMRSN0UrOVIyN23ys5Y82/SD2N
         G4SrqDLPMBuf/y+atlKJB4kovpPS3ASBlu2go8oyXYYrFIWyXm5EHAwBUzq1ZMSlqYj7
         qwM/xoZ/yT+uz2O91iyb2aNu7m55LH6zzEpoiBfM0hn5ZuIuWJVht+JDyAYQL/6K3mrA
         IwOmFDHHTLQ2MVh8JNStwOQAynqtnFgvS9KHq6CF7uBeBrXj+wlFB1I0b57Y93m6Hyqc
         y4qPXe3qHokMia+/vTnpyYQbwYu3h+YsxB92mADdn7o5r3Q3BeDdSbkQhgNsEuZnTkk6
         SFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700673880; x=1701278680;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QV2WMDKTpnCp6YDWuV8X2etyoDYDOZJOoyg8n/WNeIY=;
        b=U6jtrcFvTJLL7J+5CsAtn8/x5OnUN26FuUlNnsKmw5ieV65k1sjYl43mBlfEq2HqcK
         xalxHyKGgF8CAsrz4+xBCpE5QetYvuLW5yWi7Q6ozwSCJsVBUYvcdnaHEaBJ5HXY61nc
         LsSb7qFSxnw3vnl4/HLn+VDYymmZqtdH3atmMQXguUwIrrnyxpNN5lOLbXR3yitL/kCB
         FNLGAB5Wkp49l1aTAw5ODTtv2F2HDybr/mIt4CFrZPRszUO3P0dUEL4OJOyhPzGM15Qd
         XQmUD5Lugu04y6CNBy4Xr+p2TYNcfVl+cE0kJj8X7/uF8GXsweLbgxY+NL+eWRyYrNK6
         KigQ==
X-Gm-Message-State: AOJu0YyjAjOmGXxTbFw6MVVXIzv07Il6zIeUQG9ZpaOYv3ul3+lDl+w9
	vX+/fVfMwXNB5kIgCzOtC24=
X-Google-Smtp-Source: AGHT+IHs2JH/wfFmm11J3DQFb2MxgedUtcD9bHaSNAAmQ+a8a/bUmpz0x6CqcOTX4P5ZhbPNmlYy0g==
X-Received: by 2002:a05:6602:1c9:b0:79f:a25b:51c with SMTP id w9-20020a05660201c900b0079fa25b051cmr2658677iot.11.1700673880209;
        Wed, 22 Nov 2023 09:24:40 -0800 (PST)
Received: from ?IPv6:2a02:169:59a6:0:5488:f785:9061:cf6c? ([2a02:169:59a6:0:5488:f785:9061:cf6c])
        by smtp.gmail.com with ESMTPSA id fh11-20020a056638628b00b0046661a9ef61sm1494734jab.59.2023.11.22.09.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 09:24:39 -0800 (PST)
Message-ID: <ffed07294c1a72f89962129eaa427451c4f92215.camel@gmail.com>
Subject: Re: [yocto][meta-yocto][poky][eSDK] builtin eSDK recipes generate
 wrong environment file
From: adrian.freihofer@gmail.com
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>, yocto@lists.yoctoproject.org
Cc: alex.kanavin@gmail.com
Date: Wed, 22 Nov 2023 18:24:37 +0100
In-Reply-To: <CAH=B7vfOzgqFWBKCRa-BpoOSwFGEB73W=kH92AYM3y_7DqOCEw@mail.gmail.com>
References: 
	<CAH=B7vfOzgqFWBKCRa-BpoOSwFGEB73W=kH92AYM3y_7DqOCEw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 17:24:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61730

> I found the following RFC and I apply that and seems to be fine
> https://lore.kernel.org/all/20220622103312.1098389-3-alex@linutronix.de/T=
/#m7eadf6c722410f5b233ebba9fc700a895af9f052
> How can we proceed?

We also picked just these patches back to kirkstone. This works without
negative impact.

So I think it is possible to cherry-pick the patches from master or to
revert the doc changes as proposed by Alex:
https://lists.yoctoproject.org/g/docs/message/4642

Adrian

