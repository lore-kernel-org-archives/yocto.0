Return-Path: <philip.lorenz@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9931BE7718B
	for <webhook@archiver.kernel.org>; Fri, 27 Dec 2024 15:13:21 +0000 (UTC)
Received: from esa3.hc324-48.eu.iphmx.com (esa3.hc324-48.eu.iphmx.com [207.54.68.121])
 by mx.groups.io with SMTP id smtpd.web11.14019.1735312398690793012
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2024 07:13:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=qw3BC3Tu;
 spf=pass (domain: bmw.de, ip: 207.54.68.121, mailfrom: prvs=08442283a=philip.lorenz@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1735312398; x=1766848398;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=fkwvyj+1zsN3e7asotzoebFUBnY3iahA7d5oSDve8Dc=;
  b=qw3BC3TuvvAxw3I3+de2NvQm4Ft5FNirTQ3wt8TM7rf8oDUxQIP20/md
   rkW26rSjgtHQIIelC5u/uN+DeUIcJYUIeoWeacLFN+MiYuDQFlztqIoWV
   fUXjY2VwHheHDvGTFJrmZ8SFB1nOHG6LBe1Bxikxm6AQ8kbfMV/mRurUJ
   s=;
X-CSE-ConnectionGUID: v3p748bASJCo9uoQ2eme4w==
X-CSE-MsgGUID: a7yYhqLySQCHStsA6WbYJg==
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa3.hc324-48.eu.iphmx.com with ESMTP/TLS; 27 Dec 2024 16:13:16 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw6.muc with ESMTP/TLS;
 27 Dec 2024 16:13:16 +0100
Received: from smucmp07b.bmwgroup.net (HELO SMUCMP07b.europe.bmw.corp) ([10.30.13.60])
 by esabb4.muc with ESMTP/TLS; 27 Dec 2024 16:13:16 +0100
Received: from [10.130.71.25] (10.30.85.204) by SMUCMP07b.europe.bmw.corp
 (2a03:1e80:a15:58f::220b) with Microsoft SMTP Server (version=TLS;
 Fri, 27 Dec 2024 16:13:16 +0100
X-CSE-ConnectionGUID: fNISb53XSCuYDJWulo57uQ==
X-CSE-MsgGUID: gjC0ZWAfSN6YYaElRxVfWQ==
X-CSE-ConnectionGUID: ARb1hSQjRmygYJctFYMotA==
X-CSE-MsgGUID: 3m0PxmYsQEqRygeCq/PTlA==
Message-ID: <18d8f668-1cd0-4882-8130-c4d8c254ef11@bmw.de>
Date: Fri, 27 Dec 2024 16:13:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] version-going-backwards issues with shared sstate cache
To: Alexander Kanavin <alex.kanavin@gmail.com>,
	<michael.opdenacker@rootcommit.com>
CC: <yocto@lists.yoctoproject.org>
References: <96c0c00e-7d19-4c27-a7cb-f4f98cfca732@bmw.de>
 <CANNYZj_-NX_k09uLbbzVrvZWNNV0v+Rae1h=USZPW0w_a71g9A@mail.gmail.com>
 <4dd48c42-f36b-4fa1-b1c9-1b6a914c1f85@bmw.de>
 <CANNYZj-V37gZ+rU2z+gM9ZVbCo+SKFuau9YhSfXe76O22DvoYQ@mail.gmail.com>
From: Philip Lorenz <philip.lorenz@bmw.de>
In-Reply-To: <CANNYZj-V37gZ+rU2z+gM9ZVbCo+SKFuau9YhSfXe76O22DvoYQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: smucmp10d.europe.bmw.corp (2a03:1e80:a15:58f::2005) To
 SMUCMP07b.europe.bmw.corp (2a03:1e80:a15:58f::220b)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2024 15:13:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64482

Hi Alex, hi Michael,

On 25.10.24 18:20, Alexander Kanavin wrote:
> On Fri, 25 Oct 2024 at 15:59, Philip Lorenz <philip.lorenz@bmw.de> wrote:
>> Wouldn't we then see version-going-backwards errors in the validation
>> builds (as the "mainline" builds which contribute to the shared
>> buildhistory will have higher PRs from PRserv)? We'd like to maximize
>> our cache reuse so in a perfect world even the write_package_* tasks
>> could be reused between the builds (which I believe we could do if we
>> combine hash equivalence with a non-cached packagedata task).
> Right. Then I don't know.
>
> Like I said, I don't know much about PR side effects. When I was
> working at a certain car company (that likes to put rotating logos on
> buildings), we never enabled PR server, as there was no real need for
> it, or for package management on target images for that matter.
> Perhaps Michael can chime in, he's the real expert.

I'd like to come back to this as disabling PRserv has turned up another 
issue for us (at least when combined with the version-going-backwards QA 
check). Recipe updates which only touch SRCREV now (such as [1]) now 
lead to `version-going-backwards` issues being raised as without PRserv 
AUTOINC always gets replaced by a static value of 0:

ERROR: nativesdk-glibc-2.39+git-r0 do_packagedata: QA Issue: Package 
version for package nativesdk-glibc-src went backwards which would break 
package feeds (from 0:2.39+git0+e8f5217097-r0 to 
0:2.39+git0+84f6bfce2c-r0) [version-going-backwards]

After digging around I found that this is expected behaviour ([2]) 
although now I'm wondering whether `version-going-backwards` without 
PRserv is something that is supported at all. I see several ways to work 
around this but I am interested in other opinions whether these are 
worthwhile and would be accepted upstream:

* Add INSANE_SKIP for recipes where the issue is raised (notably 
version-going-backwards is currently not handled by INSANE_SKIP as the 
QA check happens in buildhistory.bbclass rather than insane.bbclass and 
INSANE_SKIP is never checked there)
* Maintain a manual allocation of AUTOINC assignments for recipes 
triggering the QA check. The general idea is that instead of hardcoding 
AUTOINC to 0 when PRserv isn't available another value can be used. 
There is some overlap with PRSERV_LOCKDOWN although adaptations would 
certainly be required as we'd only want to provide a static PR for some 
recipes (and based on the code I am not sure whether PRSERV_LOCKDOWN 
currently handles the AUTOINC in PKGV at all).

I am honestly not too fond of either of these but 
version-going-backwards is a QA check which in our context rightfully 
triggers every once in a while and as such is something we'd like to 
keep around.

Thanks,

Philip

[1] 
https://git.yoctoproject.org/poky/commit/meta/recipes-core/glibc?h=scarthgap&id=2186202022d16e73f76596bb85c07223d63e61e3
[2] https://www.mail-archive.com/yocto@yoctoproject.org/msg46225.html


-- 
Philip Lorenz
BMW Car IT GmbH, Software-Plattform, -Integration Connected Company, Lise-Meitner-Straße 14, 89081 Ulm
-------------------------------------------------------------------------
BMW Car IT GmbH
Management: Chris Brandt, Michael Böttrich, Christian Salzmann
Domicile and Court of Registry: München HRB 134810
-------------------------------------------------------------------------


