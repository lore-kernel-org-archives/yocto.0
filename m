Return-Path: <dedekind1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 348CDC46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 12:01:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web10.20791.1706097694287107438
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 04:01:34 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=softfail (domain: gmail.com, ip: 192.55.52.115, mailfrom: dedekind1@gmail.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="401485033"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="401485033"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jan 2024 04:01:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="735911013"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="735911013"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jan 2024 04:01:10 -0800
Received: from abityuts-desk1.ger.corp.intel.com (abityuts-desk1.fi.intel.com [10.237.68.150])
	by linux.intel.com (Postfix) with ESMTP id B180E580D6A
	for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 04:01:09 -0800 (PST)
Message-ID: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
Subject: bmap-tools repository closes
From: Artem Bityutskiy <dedekind1@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Wed, 24 Jan 2024 14:01:08 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 12:01:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62256

Hello Yocto community,

some parts of Yocto software (MIC?) use the 'bmap-tools' project to speed u=
p
image flashing.

https://github.com/intel/bmap-tools

I am the original author of the software, and I created it many years ago t=
o
speed up Tizen image flashing, and it helped a lot back at the time. It was=
 also
my first python project, so it was a lot of fun learning python while also
creating something useful.

But after that, I stopped working on it and it was mostly Yocto folks who
contributed changes here and there. I never had time and enough motivation =
to
maintain the project further, but other folks helped.

Simon McVitte was active maintainer, but he said he does not have time for =
it
now as well.

The project is in "github.com/intel" space, and Intel is going to archive t=
he
git repository soon. This basically means the repository becomes read-only =
soon.

Would Yocto community have enthusiasts to fork it and maintain the fork?

Thanks,
Artem.


