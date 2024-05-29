Return-Path: <enguerrand.de-ribaucourt@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60086C25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 14:40:30 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web11.16096.1716993625219318367
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 07:40:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=kag4FJu4;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: enguerrand.de-ribaucourt@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id BEA0B9C15E0;
	Wed, 29 May 2024 10:40:23 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id dezcNLe8zGOZ; Wed, 29 May 2024 10:40:23 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 2F3CB9C57A8;
	Wed, 29 May 2024 10:40:23 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 2F3CB9C57A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1716993623; bh=FKQth7IQtdb02jDOeGrtYCGeQnUeUcb/n3fCKR4m2lc=;
	h=Message-ID:Date:MIME-Version:From:To;
	b=kag4FJu4UFOlbXLiKdtKgFsts86pGNE4TSaKygr8KlWkh98foap5GeFGRFTk9scvC
	 7BvFDZTW0FLLkueIWCMc7mdjOJ6BZ1rO08whIZYh/UiH7Bi7p+gROixspsF6cuZypm
	 xLDFTXTUSgny/VcqkaIfRjQ52YBpb9o22L01bZvUDI8OnQf3esMhdoH3PyNE3hUJPx
	 dYD18fzDq23Ya6WucsamgWoHWPFm4Bq1fRJbTLdJKtXJWGeRkSJ++WsDV0Nttl08s6
	 9UXbq9PKBv/iqJ0TdOM6KNr4W4nkPM6BTxinS4UWQJ+EgM7zD37752EjAySe1ULDHo
	 rp7hhZhb2KWHw==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id QbAtpUeVIbSS; Wed, 29 May 2024 10:40:23 -0400 (EDT)
Received: from [192.168.216.123] (lmontsouris-657-1-69-118.w80-15.abo.wanadoo.fr [80.15.101.118])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 8E5629C15E0;
	Wed, 29 May 2024 10:40:22 -0400 (EDT)
Message-ID: <59211b95-d1b2-45d5-9cfb-dd88f74f7b9d@savoirfairelinux.com>
Date: Wed, 29 May 2024 16:40:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Enguerrand de Ribaucourt <enguerrand.de-ribaucourt@savoirfairelinux.com>
Subject: [ANNOUNCEMENT] VS Code Yocto Project extension v2.5.0 is released
To: yocto-announce@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: Mohammed Raza <mohammed.raza@savoirfairelinux.com>,
 Ross Burton <Ross.Burton@arm.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 14:40:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63230

Hello,

We are thrilled to announce the release of v2.5.0 of the official VS=20
Code Yocto Project's extension.

Download is available through the VSCode marketplace at:
  =C2=A0-=20
https://marketplace.visualstudio.com/items?itemName=3Dyocto-project.yocto=
-bitbake

Some features are now also available to other IDEs like vim by following=20
this configuration guide:
  -=20
https://github.com/yoctoproject/vscode-bitbake/blob/staging/server/README=
.md

Happy coding,

Enguerrand de Ribaucourt
Savoir-faire Linux

---------------------------
Changelog for v2.5.0:
---------------------------

  - Add Yocto variables renaming across a recipe file
  - Add code suggestions for SRC_URI local files
  - Add code suggestions for recipe names in variables (DEPENDS,=20
RDEPENDS, etc)
  - Add an option to prevent modification of .vscode/settings.json
  - Add a command to start the taskexp GUI for a recipe
  - Minor bug fixes
  - Validate support for the latest Yocto Scarthgap LTS
  - Remove deprecated shouldDeepExamine setting
  - Refactor client/server packaging to remove deprecated dependencies


