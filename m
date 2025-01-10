Return-Path: <enguerrand.de-ribaucourt@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D004FE77188
	for <webhook@archiver.kernel.org>; Fri, 10 Jan 2025 16:29:30 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.23190.1736526566991714692
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jan 2025 08:29:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=gHRFxIb+;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: enguerrand.de-ribaucourt@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D970A9C62BD;
	Fri, 10 Jan 2025 11:29:25 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id drCE0bsyAR6S; Fri, 10 Jan 2025 11:29:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 618219C6885;
	Fri, 10 Jan 2025 11:29:25 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 618219C6885
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1736526565; bh=x9KhgF82SpLV9m8Fh+Uh/Nt9lnlRBi7sOPi4JQfZPQ8=;
	h=Message-ID:Date:MIME-Version:From:To;
	b=gHRFxIb+cX+u45hiupCZvL1Mr482H0uAgXhgE+vX1LOIfkk9i6M96E1KYNkj1C7/U
	 PvrPwCgOJqmBbUD7SsKpQtXKP4rrT6PH0ppcLAQZb4DeYrBmKAgWJF4+1sHerBF/qs
	 GmQwykRBZz+F/cwvQr9HmmPUuXUb4SIZUfvGHzvaGIkfxwj2fVLVN6XTkFyT81u55E
	 qobcR1cqNGvTPfubu173UaFGrz3YLkKjZ9743wrmBMvhWTnfs80lUg6hAKEOsbh2US
	 jbkvEQVvaor1N1jk/D3Wp+0VQywldD9oTBuJ4dHpsBvsc041TX+2oNpnwR+uxF+nIB
	 CNyWueEJBmr+g==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 8VnT19eBc8Bz; Fri, 10 Jan 2025 11:29:25 -0500 (EST)
Received: from [192.168.216.123] (80-15-101-118.ftth.fr.orangecustomers.net [80.15.101.118])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id AC6669C62BD;
	Fri, 10 Jan 2025 11:29:24 -0500 (EST)
Message-ID: <b3100b96-b96a-4e00-b1d9-c6ce692d7f9f@savoirfairelinux.com>
Date: Fri, 10 Jan 2025 17:29:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Enguerrand de Ribaucourt <enguerrand.de-ribaucourt@savoirfairelinux.com>
Subject: [ANNOUNCEMENT] VS Code Yocto Project extension v2.8.0 is released
To: yocto-announce@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: Mohammed Raza <mohammed.raza@savoirfairelinux.com>,
 Ross Burton <Ross.Burton@arm.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jan 2025 16:29:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64531

Hello,

We are thrilled to announce the release of v2.8.0 of the official VS 
Code Yocto Project's extension.

Download is available through the VSCode marketplace at:
  - 
https://marketplace.visualstudio.com/items?itemName=yocto-project.yocto-bitbake

Check out our blog post showcasing the latest features at:
  - 
https://blog.savoirfairelinux.com/en-ca/2025/introducing-the-v2-8-release-of-the-yocto-project-extension-for-vs-code

Happy coding,

Enguerrand de Ribaucourt
Savoir-faire Linux

-------------------------------
Changelog for v2.8.0:
-------------------------------

  - Renamed command "Pick configuration" to "Change active 
buildConfiguration"
  - Automatically re-scan when changing buildConfiguration
  - Cache per-buildConfiguration scan results
  - Make the recipes view appear as "loading" while a scan is ongoing
  - Add "Change active buildConfiguration" to the main contextual menus
  - Update dependencies and make according changes
  - Verify Open VSX publisher for "The Yocto Project"
  - Rate-limit loading bars in the debug logs
  - Add support for the new `devtool modify --debug-build` option
  - Add the "bitbake.disableDevtoolDebugBuild" setting to disable this 
new default behavior
  - Fix an issue with the highlighting of the word "python"
  - Improve compatibility and documentation around kas-container's 
ssh-agent option

