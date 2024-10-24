Return-Path: <philip.lorenz@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C960CCE8E9B
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 17:26:52 +0000 (UTC)
Received: from esa9.hc324-48.eu.iphmx.com (esa9.hc324-48.eu.iphmx.com [207.54.69.27])
 by mx.groups.io with SMTP id smtpd.web10.2224.1729790804109791575
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 10:26:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=fijcmRlD;
 spf=pass (domain: bmw.de, ip: 207.54.69.27, mailfrom: prvs=020f968a7=philip.lorenz@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1729790803; x=1761326803;
  h=message-id:date:mime-version:to:from:subject:
   content-transfer-encoding;
  bh=JNGOFXhzYzX3J03p3lrmUk9KzoFarl6TYawHkLX9Xm0=;
  b=fijcmRlDRdb10eYRXcVWAfjIzNqW+I9vgIq9Jr5+jSD06xF+MRKqCbMa
   XclEblo+2pVW4A97lRUBYjm98ZpYi+vsLgZBsYHb+wx8uZZP1dP9szyZd
   8Osp6Wv/6TqU/ZEalonnlGH9wAjNe7oGt+9wWmCq48kuGJob9TqkALSuy
   E=;
X-CSE-ConnectionGUID: nKrh78i7Tn6o5uixf/VSSw==
X-CSE-MsgGUID: XX6buiV0SmSEIcPOUdsjPw==
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa9.hc324-48.eu.iphmx.com with ESMTP/TLS; 24 Oct 2024 19:26:41 +0200
Received: from esabb1.muc ([160.50.100.31])  by esagw6.muc with ESMTP/TLS;
 24 Oct 2024 19:26:42 +0200
Received: from smucmp10e.bmwgroup.net (HELO SMUCMP10E.europe.bmw.corp) ([10.30.13.87])
 by esabb1.muc with ESMTP/TLS; 24 Oct 2024 19:26:42 +0200
Received: from [10.242.8.6] (10.30.85.200) by SMUCMP10E.europe.bmw.corp
 (2a03:1e80:a15:58f::2027) with Microsoft SMTP Server (version=TLS;
 Thu, 24 Oct 2024 19:26:40 +0200
X-CSE-ConnectionGUID: dyUbY85JSy6ss/8h3qjKNg==
X-CSE-MsgGUID: MwkaBrjTSZGPuhSKiwiETg==
X-CSE-ConnectionGUID: zVwDYBDvQ1i7I7mXqrhrQQ==
X-CSE-MsgGUID: OWC6pglSTsuvCIlMP6WseA==
Message-ID: <96c0c00e-7d19-4c27-a7cb-f4f98cfca732@bmw.de>
Date: Thu, 24 Oct 2024 19:26:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: <yocto@lists.yoctoproject.org>
From: Philip Lorenz <philip.lorenz@bmw.de>
Subject: version-going-backwards issues with shared sstate cache
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SMUCMP07G.europe.bmw.corp (2a03:1e80:a15:58f::22aa) To
 SMUCMP10E.europe.bmw.corp (2a03:1e80:a15:58f::2027)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 17:26:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64115

Hi all,

we're currently in process of setting up a shared sstate stream between 
our workers and have recently run into issues with 
`version-going-backwards` package_qa errors being raised by builds 
consuming the shared sstate.

In our setup all builders contribute to the shared sstate cache and the 
builders are using a local PRserv database that is updated whenever 
changes are merged to the mainline branch. Similarly a the buildhistory 
is updated whenever commits are merged to the mainline branch and shared 
with the builders.

We've been able to pinpoint the root cause to the following scenario:

Consider a sequence of builds consisting of two commits (named #1 and 
#2) . Both commits affect some recipe R.

1. In the first build both commits are included. The PR allocated to the 
packages of R is r0.1. The resulting sstate cache is uploaded to a 
shared location so it can be used by subsequent builds.
2. Commit #1 is merged. The build is run again, this time without commit 
#2. The PR allocated to the packages of R is r0.2. The resulting sstate 
cache is uploaded to a shared location so it can be used by subsequent 
builds.
3. The first build is repeated after merging in the latest branch 
content. Given that this build includes both #1 (from the branch) and 
#2, the task hashes are the same as in step 1. and the sstate entry is 
reused causing a version-going-backwards error.

Unfortunately, this scenario is fairly common in our setup (we typically 
bundle commits for validation and pick the ones which pass so future 
validation bundles end up combining merged and unmerged commits) and 
we're now looking for ways to mitigate this.

So far we've come up with the following options to mitigate this issue
1. Stop using PRserv: This isn't our preferred option as we'd like to 
judge from package names whether content has changed / might be different.
2. Stop using sstate for the packagedata task: We haven't evaluated this 
yet but the general idea is that an up-to-date PR number is allocated 
from PRserv in `packagedata`. Given that we do not have a global PRServ 
at play a new PR would be allocated in the third build and the version 
would no longer be going backwards. This would not work if a global 
PRserv database was used but this is not something that we are planning 
to do.

Is this issue generally known and are there any other recommendations on 
how to deal with this?

Thanks,

Philip

-- 
Philip Lorenz
BMW Car IT GmbH, Software-Plattform, -Integration Connected Company, Lise-Meitner-Straße 14, 89081 Ulm
-------------------------------------------------------------------------
BMW Car IT GmbH
Management: Chris Brandt and Michael Böttrich
Domicile and Court of Registry: München HRB 134810
-------------------------------------------------------------------------


