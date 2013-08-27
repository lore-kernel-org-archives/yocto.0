Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0157BE01358
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 00:32:36 -0700 (PDT)
Received: from [172.16.141.168] (172.16.141.168) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.318.1;
	Tue, 27 Aug 2013 09:32:35 +0200
Message-ID: <521C5608.3020202@enea.com>
Date: Tue, 27 Aug 2013 09:32:24 +0200
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Yang Shi <yang.shi@windriver.com>
References: <1377552450-29358-1-git-send-email-yang.shi@windriver.com>
In-Reply-To: <1377552450-29358-1-git-send-email-yang.shi@windriver.com>
X-Originating-IP: [172.16.141.168]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-virtulization] [PATCH] irqbalance: Uprev to 1.0.6
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Aug 2013 07:32:39 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On Mon 26 Aug 2013 11:27:30 PM CEST, Yang Shi wrote:
> Add recipe for 1.0.6 version. And, add status and reload commands into
> init script.
>
> Signed-off-by: Yang Shi <yang.shi@windriver.com>
> ---
>   ...irqbalance-Add-status-and-reload-commands.patch |   55 ++++++++++++++++++++
>   recipes-extended/irqbalance/irqbalance_1.0.6.bb    |   15 +++++
>   2 files changed, 70 insertions(+), 0 deletions(-)
>   create mode 100644 recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload-commands.patch
>   create mode 100644 recipes-extended/irqbalance/irqbalance_1.0.6.bb
>
> diff --git a/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload-commands.patch b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload-commands.patch
> new file mode 100644
> index 0000000..d853d0b
> --- /dev/null
> +++ b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-reload-commands.patch
> @@ -0,0 +1,55 @@
> +From dc7366896dd5a5bae82be4b11530bc9fdb7cbcdd Mon Sep 17 00:00:00 2001
> +From: Yang Shi <yang.shi@windriver.com>
> +Date: Mon, 26 Aug 2013 10:58:02 -0700
> +Subject: [PATCH] irqbalance: Add status and reload commands
> +
> +Add status and reload commands for irqbalanced init script
> +
> +Signed-off-by: Yang Shi <yang.shi@windriver.com>
> +---
> + irqbalance.init |   12 +++++++++---
> + 1 files changed, 9 insertions(+), 3 deletions(-)
> +
> +diff --git a/irqbalance.init b/irqbalance.init
> +index d12d62c..f58bf55 100644
> +--- a/irqbalance.init
> ++++ b/irqbalance.init
> +@@ -1,6 +1,6 @@
> + #!/bin/sh
> + #
> +-# Copyright (c) 2012 Wind River Systems, Inc.
> ++# Copyright (c) 2013 Wind River Systems, Inc

What is this ?, as far as I understand it, the script + recipe is 
proprietary licensed to windriver.

I see the windriver copyright notice was introduced with commit: 
43b438f06897a390e16709b3f9e11355f325e2e9
I seem to remember that we agreed that all contents of 
meta-virtualization should be MIT.

Also, patches for meta-virtualization should be sent to the 
meta-virtualization mailinglist.

Br,
David

