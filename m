Return-Path: <dedekind1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48B6EC48297
	for <webhook@archiver.kernel.org>; Mon, 12 Feb 2024 06:46:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by mx.groups.io with SMTP id smtpd.web11.1469.1707720367841156979
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Feb 2024 22:46:07 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=softfail (domain: gmail.com, ip: 192.198.163.15, mailfrom: dedekind1@gmail.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="1810766"
X-IronPort-AV: E=Sophos;i="6.05,262,1701158400"; 
   d="scan'208";a="1810766"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2024 22:46:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,262,1701158400"; 
   d="scan'208";a="2469566"
Received: from linux.intel.com ([10.54.29.200])
  by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2024 22:45:59 -0800
Received: from abityuts-desk1.ger.corp.intel.com (abityuts-desk1.fi.intel.com [10.237.68.150])
	by linux.intel.com (Postfix) with ESMTP id 3A82E5805B5;
	Sun, 11 Feb 2024 22:45:58 -0800 (PST)
Message-ID: <ebd3d2dfe7da20db63df6ae404c7198baf484953.camel@gmail.com>
Subject: Re: [yocto] bmap-tools repository closes
From: Artem Bityutskiy <dedekind1@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	yocto@lists.yoctoproject.org
Date: Mon, 12 Feb 2024 08:45:57 +0200
In-Reply-To: <e6cefe4b20af2ef03793fd096f01482f9f69cf67.camel@linuxfoundation.org>
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
	 <e6cefe4b20af2ef03793fd096f01482f9f69cf67.camel@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 06:46:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62462

On Fri, 2024-02-09 at 18:08 +0000, Richard Purdie wrote:
> Thanks for reaching out to us, it is good to do this proactively rather
> than seeing it sit unmaintained. There is interest within the Yocto
> Project community to take this on so we'd like to take up that offer
> thanks!
>=20
> There are a few details we're working through but I did want to say
> this publicly and also to say thanks for reaching out.

Thank! Let me know when if you do this, I'll point to the new place from cu=
rrent
bmap-tools github repo.

Artem.

