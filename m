Return-Path: <enguerrand.de-ribaucourt@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 291F7C48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 10:00:38 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web11.94691.1709546432687323344
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 02:00:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=LvNFbVwk;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: enguerrand.de-ribaucourt@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D67AC9C0894;
	Mon,  4 Mar 2024 05:00:31 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id onBJlGzZNGXu; Mon,  4 Mar 2024 05:00:31 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 18B589C103A;
	Mon,  4 Mar 2024 05:00:31 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 18B589C103A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1709546431; bh=YVWRc39LwcAG4IPBMBjBJNr8EqzoNRYMcJOV/Ypqu7o=;
	h=Message-ID:Date:MIME-Version:From:To;
	b=LvNFbVwk4+n/RQFXUE6qbwRQHL0lqP2YdJe4Rl0JNAUlxxeB3eZ9UhUW8MMXZNmSn
	 Lq5jW/FU4Lh5HDcPfuF6DC7Th7NmuUcziNlUD9QrOTn1ueRZ6woFu6l0YJa739QPPq
	 j4295831OAuvH/8Ed3eV4M9yLqbdRIVKPyapTqMAlP52W58U3XyWbKjMffUEEvASTa
	 eGjW/A2H3uI+mEbq+OPKk0dHWv4JCbgK4m8KWn1Vy+NMpDFMb9Xrm/wMA6TvICWO6x
	 cLWyZ4vFcqd9DG2eOfW9PiymGkRH0U9IeTspMRSTEFdw/kvwwGNzm9Gy3Fjt4ETNZi
	 rYRJ/yJ+c76zw==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id qzwKNjpHs-Rx; Mon,  4 Mar 2024 05:00:31 -0500 (EST)
Received: from [192.168.216.123] (lmontsouris-657-1-69-118.w80-15.abo.wanadoo.fr [80.15.101.118])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 7C7F29C0894;
	Mon,  4 Mar 2024 05:00:30 -0500 (EST)
Message-ID: <1749a243-7e9e-4163-9240-da4e9c4fda82@savoirfairelinux.com>
Date: Mon, 4 Mar 2024 11:00:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Enguerrand de Ribaucourt <enguerrand.de-ribaucourt@savoirfairelinux.com>
Subject: [ANNOUNCEMENT] VSCode Yocto extension v2.2.0 is released
To: yocto-announce@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: Mohammed Raza <mohammed.raza@savoirfairelinux.com>,
 Ross Burton <Ross.Burton@arm.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 10:00:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62662

Hello,

We are proud to announce the release of v2.2.0 of the official VSCode 
Yocto extension.

Download is available through the VSCode marketplace at:

https://marketplace.visualstudio.com/items?itemName=yocto-project.yocto-bitbake

Enguerrand de Ribaucourt
Savoir-faire Linux

- --------------------------
Changelog for v2.2.0:
- --------------------------

  - Add a new buildConfigurations settings array and status bar to 
manage multiple build configurations
  - Add a new command to scan a recipe
     - Generate definitions and completions for the variables from the 
recipe scan
     - Generate hovers with final values for the variables from the 
recipe scan
     - Automatically start the recipe scan instead of a general parse on 
save
     - Resolve variable expansions after the recipe scan for symbols 
resolution
  - Restore packaging for Windows, with a limited, stable feature set
  - Add a new command to start an interactive bitbake shell
  - Add support for colors, links and progress bars in the bitbake terminal
  - Add a reference provider for bitbake variables
  - Add new problem matchers for bitbake output
  - Suppress some false positives from embedded languages diagnostics
  - Automatically detect eSDK mode and deprecate previous option
  - Add definitions to overrides files
  - Add recipes suggestions for all commands if the project has been scanned
  - Add a command to open the WORKDIR of a recipe, allowing to inspect 
sources, builds and logs
  - Forward Python extension's import quick fixes into bitbake files
  - Stop resolving relative settings paths into absolute when invoking 
bitbake
  - Fix a bug where the settings were not properly updated on the 
language server
  - Various bug fixes and improvements


