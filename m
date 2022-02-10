Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 781F9C433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 10:45:29 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web09.8500.1644489927797942584
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 02:45:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OljgnI55;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id
 d14-20020a05600c34ce00b0037bf4d14dc7so2959986wmq.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 02:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=OddzXajdEZgXjDk821vvcWgBMAHDop2Jm18nnvfLBv0=;
        b=OljgnI55KiucElxqG0CLPhnww1XGALsUiD6Hf3qpVAzcaRueUeukLKIF5PIJdVddJN
         MwHx+XsKJRJw8XTU7lF+fLv5YUKJkIcQFdf6lUf2Auc2nCH3sN7OZeX4POe2YZtKUEfC
         VYhxo+gJVD6QBgJ4B5QtzwB6MVm2KwnpqvlCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=OddzXajdEZgXjDk821vvcWgBMAHDop2Jm18nnvfLBv0=;
        b=GD/vQAyPd6H+fuiHpaLn0vjt1iXJWZDBdFrR/NK/qmA6EFmHDvzBOeW0gyc/+fUA4X
         BYdq/2b7ldSh4cvEUHPsdlze1JJFCIPn6AWLJ5vsSOS0oUbG1D8g4Z1fdC9HBS7quV7j
         3VPdiWW6CKYZqYYR6PzMMFp3GWSLMHuGlqD57xFbUPkOtQxtwSu/cXzZgycov9wFX6uA
         92g4oE02Mi+ej1NnCjWGMbBZ9igZpEPbeJtGLbuQrN+CttINrJY6DxmEvr3aHTEmiU0Q
         41GMQoYL4axCgPzFkh4J0rL8Xea9NhCajaZuzxnoKhGYBhyVixpELH0bn+FBRr2EgIFW
         LwfQ==
X-Gm-Message-State: AOAM5315KwU8hycmiOnMSsiJgh8cNFCi0fGEW6uKlQxR/w0KTYQ4i6v2
	SFmB4a69v2mGJDXUDS+Lo4Zb1w==
X-Google-Smtp-Source: 
 ABdhPJyDpic+dgBxt4jJzib5uSob8UIu3xpMCIrhAaBoFCNynGtFHdwY+alxJT+nuN+4gpORMeJHYg==
X-Received: by 2002:a05:600c:4e93:: with SMTP id
 f19mr1600773wmq.195.1644489926150;
        Thu, 10 Feb 2022 02:45:26 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:7dcb:9837:5409:449e?
 ([2001:8b0:aba:5f3c:7dcb:9837:5409:449e])
        by smtp.gmail.com with ESMTPSA id
 t187sm1110320wma.22.2022.02.10.02.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Feb 2022 02:45:25 -0800 (PST)
Message-ID: 
 <8a5f2620473c2663bcf372c2967b25624ae29724.camel@linuxfoundation.org>
Subject: 3.4.2 rc1 QA
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification <qa-build-notification@lists.yoctoproject.org>,
	Yocto TSC <tsc@lists.yoctoproject.org>, "<yocto@lists.yoctoproject.org>"
	 <yocto@lists.yoctoproject.org>
Cc: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>, "Mittal, Anuj"
 <anuj.mittal@intel.com>, Michael Halstead <mhalstead@linuxfoundation.org>,
 Jan-Simon Moeller <dl9pf@gmx.de>, Scott Murray <scott.murray@konsulko.com>
Date: Thu, 10 Feb 2022 10:45:21 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 10:45:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56143

3.4.2 rc1 was built on the autobuilder. It didn't send the QA email as that is
broken. I haven't sent it manually as we need to decide what to do with this
build. There was one failure and 8 warnings.

The failure was with meta-agl. As far as I know agl doesn't support honister and
the next branch has moved on for kirkstone. There is therefore an open question
about what we configure the autobuilder to do there.

The warnings all look to be from SDK testing with sstate server networking
issues. They shouldn't break the release and I don't believe there is any code
side issue beyond the server one.

Thoughts?

[Yes, we need to get these things fixed, I know. They are being worked on. I'm
resorting to merging master stuff blind at this point too as the issues affect
that as well.]

Cheers,

Richard


