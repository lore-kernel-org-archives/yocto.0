Return-Path: <enguerrand.de-ribaucourt@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95764CE8D60
	for <webhook@archiver.kernel.org>; Thu, 19 Sep 2024 08:52:41 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.14995.1726735951719498038
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Sep 2024 01:52:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=MxcVmkVL;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: enguerrand.de-ribaucourt@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 2D5D99C5898;
	Thu, 19 Sep 2024 04:52:30 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id en0mnoOygr41; Thu, 19 Sep 2024 04:52:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id A34D49C5DB4;
	Thu, 19 Sep 2024 04:52:29 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com A34D49C5DB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1726735949; bh=i8N/E5l72FVo6iFHk41CwPzgsDIwTT7KhcAkXwfVcAA=;
	h=Message-ID:Date:MIME-Version:From:To;
	b=MxcVmkVLW0zWF402Dg4Z+uc1jnESfsUeGDEKCC1s5KoG5jFX7V6u65fLKWTq5sn8+
	 3kShvpIFzRaZf37ZsDR+BHHZnb02ins20sgogioHGE7SeVdGggIg8cVnYBkQn/PS3S
	 LDf2dR+Pn/5zEnKnzUPFjtDCz2Hyc55/wd8mHqqctkahQJi2KAGvGqKbJqOYnx4Wu6
	 0L9I87PjwHIpBSjOmVDlIsME9NZFCS/CGycJjnYaAwPWEQsuaHPf6F/hb/RinPm8Uc
	 p1/U8MH70W48+jfvUkcEc1S69ZyYxlnOuZ9qaOLqPSEO+zA6Vwv1PRv0wieBANVySt
	 hqTJyU/4JJXqg==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id HBK06aPva8gB; Thu, 19 Sep 2024 04:52:29 -0400 (EDT)
Received: from [192.168.216.123] (80-15-101-118.ftth.fr.orangecustomers.net [80.15.101.118])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 0824B9C5898;
	Thu, 19 Sep 2024 04:52:28 -0400 (EDT)
Message-ID: <8e611dfc-1f20-40d4-a6bc-04762123e519@savoirfairelinux.com>
Date: Thu, 19 Sep 2024 10:52:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Enguerrand de Ribaucourt <enguerrand.de-ribaucourt@savoirfairelinux.com>
Subject: [ANNOUNCEMENT] VS Code Yocto Project extension v2.7.0 is released
To: yocto-announce@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: Mohammed Raza <mohammed.raza@savoirfairelinux.com>,
 Ross Burton <Ross.Burton@arm.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Sep 2024 08:52:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63864

Hello,

We are thrilled to announce the release of v2.7.0 of the official VS 
Code Yocto Project's extension.

Download is available through the VSCode marketplace at:
  - 
https://marketplace.visualstudio.com/items?itemName=yocto-project.yocto-bitbake

Happy coding,

Enguerrand de Ribaucourt
Savoir-faire Linux

-------------------------------
Changelog for v2.7.0:
-------------------------------

  - Add bitbake environment scan for global variables
  - Add skipped recipes to the tree view with skip reason
  - Add support for latest Yocto devtool status output
  - Add sanity check for the working directory
  - Fix a bug where buildConfigurations specific settings were not applied
  - Update task_deps parser for latest Yocto output
  - Bump dependencies
  - Fix NPM publishing
  - Auto-update SPDX references

