Return-Path: <sdorigotti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02BDC52D54
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 11:18:17 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.40664.1722424694761347548
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 04:18:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BBBxmKa9;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: sdorigotti@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42808071810so35890085e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 04:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722424693; x=1723029493; darn=lists.yoctoproject.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ol2Qlsj85nWkfl0PjSjizHmuyUmAKxQ+1EbyDCl2y+U=;
        b=BBBxmKa9DYsIjLr773YdyJCL8GHXdKXSl1nTidBIbFQceiP/Sw6ad/rLGpkLlYV9sG
         HJWKJPaeEn490SI4jIaFvpP+yW5nIr1qQi4/t44I0zNrMvxYTkIbHFAhQaaq9iYmfo98
         UvK0Uaw95a/V4xssZbqelNqKfPANW3nZH+WYNA2iTnGgr3NGbLN6ZH83QIOXFx7C3rx2
         KtSJfNRi7MikxPDWnWdaXNZ4LQ0cbb56kQ/NT8vyuhQroHMghyq+vpZxNDui/Jztx7FG
         +O2mcyeVDsZkrPnoc9aNjiIhHi9DnZtcFRhvrZTL4JA5ATSrAJX68czNIlzY4qBu+Yb7
         iKoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722424693; x=1723029493;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ol2Qlsj85nWkfl0PjSjizHmuyUmAKxQ+1EbyDCl2y+U=;
        b=tQ6XKL2SysDeWid0rNUyNcz4rpGFo8a1RUeZRqd9wnUdHUClkdFNMlN85soW10bCBh
         jXOmacBucZk2TT4INzFKvVEIzKVw/RIsuur1KodHs+uRLRPdff/nE3EZg3Aueb7yTPhY
         Cgfwtf5tCEYvWtEV6xIjjeeH3kI5cIeT4agituIRbmROZwg9SVZV+BbGInAX834zDXM3
         g6KIXtdgI4+Vs8LyILSS0HBArQWngaq9de0DfJj+HhFJGxdCS5xXnepqunaYm0xhBtDw
         g00kjWiOaUcRX3odC7pTK2A6ZrxvlSp4BrVWImNEyjBWYYJbGcXBdIwGeWs6Fa1X15WE
         3Z4A==
X-Gm-Message-State: AOJu0YzybHVPSxMcgD3xob8gjww3gsTmID7rf7Jpgh9g2PS+z440SoPt
	8cJJYM0QVZlo0qznjeV8lC9Myq9kfJEQ8NwzNpWchy+s4rr/tR18
X-Google-Smtp-Source: AGHT+IEMngKjs3FNGtBSoGYyzIYmlz+R05wL9OoFIGLYtWt7cg94I7YOTdv3maZdg2PIqtG4KXOmQg==
X-Received: by 2002:adf:ce89:0:b0:367:9625:bd06 with SMTP id ffacd0b85a97d-36b5d073fbcmr8629401f8f.42.1722424692434;
        Wed, 31 Jul 2024 04:18:12 -0700 (PDT)
Received: from smtpclient.apple ([37.186.164.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b367d98aasm16856889f8f.30.2024.07.31.04.18.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2024 04:18:12 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: [yocto] CVEs and OSS info for nested dependencies
From: Steven Dorigotti <sdorigotti@gmail.com>
In-Reply-To: <CAApg2=Q5a_ZKgVkhbMUfGZwe3rx_TN2A-Pu4upoDCokfUBsxcw@mail.gmail.com>
Date: Wed, 31 Jul 2024 13:18:01 +0200
Cc: yocto@lists.yoctoproject.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <B2731B5E-B418-4887-81B3-4837A2B4D10B@gmail.com>
References: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
 <CAApg2=Q5a_ZKgVkhbMUfGZwe3rx_TN2A-Pu4upoDCokfUBsxcw@mail.gmail.com>
To: Marta Rybczynska <rybczynska@gmail.com>
X-Mailer: Apple Mail (2.3731.500.231)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 11:18:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63628


> On 31 Jul 2024, at 10:56, Marta Rybczynska <rybczynska@gmail.com> =
wrote:
> If nghttp2 is a normal dependency (dependency to a different recipe), =
this will work just fine. The CVE entry for this vuln has nghttp2 well =
marked.
> However, if the nghttp2 code is just copied in, without a trace in the =
OE build system, then it's another story

Yes, this is the case because nodejs is the only explicit dependency in =
my image, and the only references to nghttp2 are related to shared =
library compile flags - otherwise it's internal/static and I get no =
CVE/OSS reporting.

I have also found several other cases in which there is no shared =
library alternative at all.

Many thanks,
Steven


