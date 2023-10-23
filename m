Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F8ECDB474
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 08:13:39 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.115721.1698048811838933676
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 01:13:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CPtxZsDi;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2c3e23a818bso34592421fa.0;
        Mon, 23 Oct 2023 01:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698048809; x=1698653609; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=myDIutfrua7UqrqptgMZ9QuHS6dduq0QI5ZRgGhrhfg=;
        b=CPtxZsDioCQCQtFWx0Flrpiys63Y9XglbpH2PFf7dMDj8W7xAM6AUOa11fLiCWuC8h
         GotKza4B12hGkC++QBwZV7tSe09LXms3ILjj652H0C2G8s12fEe5eivIn6/nXgSCvEHd
         6gVq86Je2XbkCu1PSGvYCwoSI1LHcQCpOa46YDARU855GeFt7uyDhnqRr+lxQBu0DJLF
         KGHD8KiFckxbRDkoWoagglvNLZj6CaEBdSH5GB40hF7bDFRvhNg1O4y/fiMUiqL2oE6y
         Q+9iuoPlW4OOD4x/0QkVyv7lPFDcbmu8RMJnB3GjIzjQ37gfBwByvS2SPbbUmsfZHOSG
         GWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698048809; x=1698653609;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=myDIutfrua7UqrqptgMZ9QuHS6dduq0QI5ZRgGhrhfg=;
        b=Wle/WrTbg+YB7sYlKC6+kr9TL7QtgatNRGHY3kR2BhLMq+SksMZKPkBexm36VNl30r
         iaaIhBZ39yuaVXR+cFbCew3+JCY8R1P1E9CXZ9SH9vaD79q6PvGiu+zdqQUdGL0YmXPC
         mVEerUIMJui7EY/1OIH0n/ZKQDHFqq7DF1qMQJEpr8PeiBP9MM9Z3XUqOdX2zt4X+pxQ
         XsRCh2u9xIQhwa4IOqDKBhw2LyA0nvh4XUOwIt67yXCk4oyXi1KhwZbwRSeBs1E/bdAl
         kC7L84JIY++yeiOdXLkrz3UOxlQxhhI346GtqCdDM+bGDXmxOd7mlYUWn3wa2RUbz2o0
         qqLw==
X-Gm-Message-State: AOJu0YwpsT89HGw8xRl4iRDn23m/FtgAdLmYb2u8nAEBcMs9a9mOB7Zd
	xHUI9Ss2YhX66bSoN2Mua/Kh2NE2maKn/ccLz8dPj8H/VxI=
X-Google-Smtp-Source: AGHT+IH31Y1S9O4BuWyS+8A1Uv9r+nf3fAMlzYwsXkqE4mF472vDhXHut6Ztf3QlK3mWCK821Tpln7q3ugaD0X8+GxA=
X-Received: by 2002:a2e:7d07:0:b0:2c5:332:f18d with SMTP id
 y7-20020a2e7d07000000b002c50332f18dmr3678946ljc.2.1698048808796; Mon, 23 Oct
 2023 01:13:28 -0700 (PDT)
MIME-Version: 1.0
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Mon, 23 Oct 2023 10:13:16 +0200
Message-ID: <CAApg2=SQYQY8wop_UyZpjws9K0J5iXuA-tCgX+yNY0Sp7v+TJA@mail.gmail.com>
Subject: CVE management and SRTool test update
To: yocto-security@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: "Reyna, David" <david.reyna@windriver.com>, Alex Stewart <alex.stewart@ni.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, Steve Sakoman <steve@sakoman.com>, 
	"MacLeod, Randy" <Randy.MacLeod@windriver.com>, Ross Burton <ross.burton@arm.com>, 
	Sriram Chadalavada <chsriram@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 08:13:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61446

Dear all,
Here's the update on our CVE management research work for YP.

Contest: a frequent request is to be able to answer "is YP affected by
this particular CVE". We have a part of an answer in the cve-check,
but not the triage of issues YP is not affected at all.

This research includes two elements:
Manual CVE triage tests
SRTool investigation

Manual CVE triage tests
===================
Marta has done manual triage of two sets of two days: one manual
(download from CVE JSON5 database) and one via SRTool.

Manual triage: 2h
SRTool triage: 1.5h (but manual triage was done earlier)

Take-aways:
- a huge majority of issues does not affect YP
- those that do are most of the time already listed in cve-check results
- the effective procedure to check was "git grep" to find if we have a
recipe (Layer index could be used too), then checking a "world" run of
cve-check. Only rarely manual verifications are needed.
- found some CPE mismatches etc (patches will come)
- if we want to set up triage, we need to clearly define which layers
we take care of. For example, in one of the sets there were numerous
Java runtime issues. Also other issues in packages from various
layers.

To sum up, the triage takes around 1h/day without automation. However,
it should be way sgorter if pre-triaged with cve-check result and
package list from supported layers.

Open questions: who will be willing to participate in the effort?

SRTool investigation
================

We have had a call on October 19th (people present in CC).

Subjects discussed:
1. Installing SRTool
Marta has a running instance, Alex plans to set up one
2. Workflow
David explained how the investigation is done at WR. "Vulnerability"
describes a problem, can link to multiple CVEs (for example from
multiple researchers). From Vulnerabilities they create Investigations
(1:1 for each product - in our case YP releases).
Defects are handles in the bug tracker.

A proposal of David was to integrate Bugzilla and trace CVE entries,
import them into investigations. This would mean to use bugs to
populate CVE statuses.

However, we could not use that approach with YP right now, as CVE
entries aren't managed in Bugzilla. There's another subject on CVE
patches synchronization work, see
https://lists.yoctoproject.org/g/yocto-security/message/964

We have information on what version is affected/not affected from the cve-check.

Then David has shown the "Audit" functionality. It can be populated
from cve-check. Agreed to do a PoC implementation (David will work on
it).

When CVEs are filled from cve-check, only a certain number of CVEs
will be left with unknown status. Marta hopes they will be easy to
handle.

3. Result sharing

We discussed how triage results from YP can be used by other vendors.
It seems possible to do that via "audit" sources.

Next meeting planned on Nov 2nd.

Everyone willing to participate is welcome (send me or David a message
to be added to the invitation).

Kind regards,
Marta

