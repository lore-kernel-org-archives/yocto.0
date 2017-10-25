Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59882E00D01; Wed, 25 Oct 2017 15:51:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F16AE00CF2
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 15:51:14 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Oct 2017 15:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,433,1503385200"; d="scan'208";a="1029436396"
Received: from hussinmo-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.68.21])
	by orsmga003.jf.intel.com with ESMTP; 25 Oct 2017 15:51:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Date: Thu, 26 Oct 2017 11:51:07 +1300
Message-ID: <2375388.SRaGyDveQq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1508934039-32450-1-git-send-email-holzmayr@rsi-elektrotechnik.de>
References: <1508934039-32450-1-git-send-email-holzmayr@rsi-elektrotechnik.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] devtool: add clean command
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
X-List-Received-Date: Wed, 25 Oct 2017 22:51:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Josef,

Looks good, just a couple of minor tweaks to be made:

On Thursday, 26 October 2017 1:20:39 AM NZDT Josef Holzmayr wrote:
> Add an idiomatic way to devtool to clean a recipe.

It would be worth noting that this is particularly important within the eSDK 
because you can't run bitbake -c clean directly there.

> Signed-off-by: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
> ---
>  scripts/lib/devtool/clean.py | 48 +++++++++++++++++++++++++++++++++++++++++
+++
>  1 file changed, 48 insertions(+)
>  create mode 100644 scripts/lib/devtool/clean.py
> 
> diff --git a/scripts/lib/devtool/clean.py b/scripts/lib/devtool/clean.py
> new file mode 100644
> index 0000000..30f4044
> --- /dev/null
> +++ b/scripts/lib/devtool/clean.py
> @@ -0,0 +1,48 @@
> +# Development tool - clean command plugin
> +#
> +# Copyright (C) 2014-2015 Intel Corporation
> +#               2017 R-S-I Elektrotechnik GmbH & Co. KG
> +#
> +# This program is free software; you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License along
> +# with this program; if not, write to the Free Software Foundation, Inc.,
> +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> +"""Devtool clean plugin"""
> +
> +import bb
> +from devtool import exec_build_env_command, check_workspace_recipe
> +
> +def _get_build_tasks(config):

This function should really be called "_get_clean_tasks".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

