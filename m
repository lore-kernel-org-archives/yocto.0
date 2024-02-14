Return-Path: <perceval_arenou@trimble.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23ADDC48BC4
	for <webhook@archiver.kernel.org>; Wed, 14 Feb 2024 09:54:41 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.38419.1707904475457261661
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Feb 2024 01:54:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@trimble.com header.s=google header.b=sP69su4c;
 spf=pass (domain: trimble.com, ip: 209.85.208.171, mailfrom: perceval_arenou@trimble.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d0c7e6b240so72000331fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 01:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trimble.com; s=google; t=1707904473; x=1708509273; darn=lists.yoctoproject.org;
        h=mime-version:message-id:to:subject:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T3e7HYpW60sZhWAynEUyhZHVlFL+z73IIGmZlvbRfas=;
        b=sP69su4cgnEiq++DQWx0SLCPzrRr/YRCmz12mJUds0dWO1XQzq/2vSsxkETVsY3Geq
         3DIcw2GEXRTbhMi4qTqvS75DacD6ZDGXv5S+xDfuIK008zAa32X+Jb384uJiKqBGEj+N
         RrMxFjWLayFfUzu3mURzBON1SwT1vkcVz/ZXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707904473; x=1708509273;
        h=mime-version:message-id:to:subject:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T3e7HYpW60sZhWAynEUyhZHVlFL+z73IIGmZlvbRfas=;
        b=oOj3JAmdthqEwUw18Xvp2MT+3h9Uu4W71DctDC2t7xin4/xYnxYJK1QBWKceLo6yc9
         CcgQlcgT1IkgGoKrVcPusAchS8OGKx8YY0x8TX+3/p0FRbTXYO16COUfKxbmyvsQciKB
         j3rrH2tMvRk7htMDGdUNMkxx/hyahlaDJMrfiold/KJDU7jSID3xfo8wnPhQ2+KyLmJq
         UoI0IVuZS/arUXeYcKpCAA+ITNWX5HlgQi2qGIVKIc+wGVKKZVhTHBxV5hOVLI8MVMeu
         Vw6JSucTR52/oKgFI4GIEaOQ5qM+la+U4TrCsEp7Uea8f7WwzTTIXleeZXfsXjDq7z9g
         Z7EA==
X-Gm-Message-State: AOJu0YxniObAR3WXfluj87c8QogZmrzF8q+QScdCub7eRG99SVyIfm+w
	zQvVNPcXMk72NxNVV2CGo1LqLWcUNAIIrqeRO6+R1f7PL0RrxnPsQcogsz49sDs7WLf/x/hS9Sf
	4OquDdQUSlhpaxBSRkNoAn47dn25uGulIPIdyjogrXjRI7I/rZQPCzZNnGWPVJtxhV8kppkNOgF
	moLzeTsP3JRgvFKesuFEz5Y9C0/RyyIw1e3V8UqU0++rNDKDYn65Q6Wg==
X-Google-Smtp-Source: AGHT+IFc4SCqj4yvBbwCc/R/+mR6d8mqrGM9lC6hCL5t62Pw5HxO64MpqtCXXCmM3bLqLMuxW1pIuA==
X-Received: by 2002:a05:6512:1185:b0:511:93c1:a142 with SMTP id g5-20020a056512118500b0051193c1a142mr1436622lfr.25.1707904472612;
        Wed, 14 Feb 2024 01:54:32 -0800 (PST)
Received: from [10.2.86.194] (lputeaux-658-1-190-18.w80-11.abo.wanadoo.fr. [80.11.239.18])
        by smtp.gmail.com with ESMTPSA id k1-20020a05600c1c8100b00410e638357asm1516644wms.10.2024.02.14.01.54.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 01:54:32 -0800 (PST)
Date: Wed, 14 Feb 2024 10:54:26 +0100
From: Perceval <perceval_arenou@trimble.com>
Subject: extend python3 manifest to add a module
To: yocto@lists.yoctoproject.org
Message-Id: <QIBU8S.RL2ZWWVWX0423@trimble.com>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-ZjZJSR+G6chQWIsdaPux"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 09:54:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62487

--=-ZjZJSR+G6chQWIsdaPux
Content-Type: text/plain; charset=us-ascii; format=flowed

Hello,

I'm building an image on the dunfell branch.
I would like to add dataclasses module in python3. For that I know that 
I should add it to the python3-manifest.json.
I tried to add my new manifest file in SRC_URI using a bbappend. It 
didn't work as the manifest file is red by a anonymous python function 
on parsing:

filename = os.path.join(d.getVar('THISDIR'), 'python3', 
'python3-manifest.json')

What should I do to add dataclasses to my python3 installation? What is 
the suggested method or best practice for that operation?
I would like to avoid forking openembedded-core just for that.

Thank you

Perceval


--=-ZjZJSR+G6chQWIsdaPux
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">Hello,<div><br></div><div>I'm building an image on the dunfell branch.</div><div>I would like to add dataclasses module in python3. For that I know that I should add it to the python3-manifest.json.</div><div>I tried to add my new manifest file in SRC_URI using a bbappend. It didn't work as the manifest file is red by a anonymous python function on parsing: <br><br>filename = os.path.join(d.getVar('THISDIR'), 'python3', 'python3-manifest.json')&nbsp;<br><br>What should I do to add dataclasses to my python3 installation? What is the suggested method or best practice for that operation?&nbsp;</div><div>I would like to avoid forking openembedded-core just for that.</div><div><br></div><div>Thank you</div><div><br></div><div>Perceval</div></div>
--=-ZjZJSR+G6chQWIsdaPux--


