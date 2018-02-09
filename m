Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FEC4E00DF7; Thu,  8 Feb 2018 23:41:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AFE9E00D5F
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 23:41:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Feb 2018 23:41:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,482,1511856000"; d="scan'208";a="16492000"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 08 Feb 2018 23:41:46 -0800
To: yocto@yoctoproject.org
References: <1518155036-55688-1-git-send-email-rebecca.swee.fun.chang@intel.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9dfc5d79-472e-5469-bfdd-518d72831012@linux.intel.com>
Date: Fri, 9 Feb 2018 09:35:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <1518155036-55688-1-git-send-email-rebecca.swee.fun.chang@intel.com>
Subject: Re: [RFC] [auh] [PATCH] upgrade-helper.conf: add a template for easy deployment
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
X-List-Received-Date: Fri, 09 Feb 2018 07:41:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/09/2018 07:43 AM, Chang Rebecca Swee Fun wrote:
> Settings mentioned in the README have been ported over and now users
> are able to copy and start modifying for personal use cases.
> This file will served as a reference to minimize errors when users
> trying to create a new conf file by following the README.

Thanks, something like this is definitely useful and we should have it. 
It could use a bit of further tweaking though, particularly better 
commentary. Also, the corresponding part in README can be removed at the 
same time.

> +[maintainer_override]
> +# mails for recipe upgrades will go to john.doe instead of jane.doe, etc
> +# see also the global_maintainer_override option
> +jane.doe@doe.com=john.doe@doe.com
> +johhny.bravo@bravo.com=john.doe@doe.com
> +
> +[settings]
> +# recipes in blacklist will be skipped
> +blacklist=python glibc gcc
> +
> +# only recipes belonging to maintainers in whitelist will be attempted
> +maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
> +
> +# email for all recipe upgrades will go to john.doe, except those listed
> +# in specific maintainer_override entries above
> +global_maintainer_override=john.doe@doe.com
> +
> +# SMTP server
> +# Optional if your are running AUH locally
> +smtp=smtp.my-server.com:25
> +
> +# from whom should the mails arrive
> +from=upgrade.helper@my-server.com
> +
> +# who should get the status mail with statistics, at the end
> +status_recipients=john.doe@doe.com

The default use case is someone who runs AUH on his local machine. So 
all of the above should be commented out, except maintainers_whitelist 
perhaps (we should explain that maintainers should put themselves into 
that setting). And an explanation that the results of AUH work are
1) saved as commits
2) saved on disk in the auh workdir (and will not be overwritten, as 
they're time-stamped).


> +# specify the directory where work (patches) will be saved (optional)
> +#workdir=

This needs an explanation for where the default is. The patches are 
saved regardless of whether or not this is set.

> +# publish url to use in statistics summary (optional)
> +#publish_work_url=http://auh.somehost.com/work
> +
> +# clean sstate directory before upgrading
> +clean_sstate=yes
> +
> +# clean tmp directory before upgrading
> +clean_tmp=yes

This should have better explanations. Also, clean_ things are optional 
and I'm not sure right now what they're for.

> +# Machines to test build with.
> +# Append _libc-name to test with alternative C library implementations
> +# e.g. qemux86_musl.
> +#
> +# Buildhistory and testimages will be created only for the first
> +# machine in the list, as otherwise it adds enormously to AUH run time.
> +machines=qemux86 qemux86_musl qemux86-64 qemuarm qemumips qemuppc

Can be commented out, with an explanation of what the auh internal 
default list is.

> +# optional features
> +buildhistory=no
> +testimage=no
> +testimage_name=image-custom # defaults to core-image-sato

This does need to be explained in detail.

> +# to enable upgrade recipes in a layer example for meta-intel
> +layer_mode=False
> +layer_name=meta-intel
> +layer_dir=DIR/meta-intel
> +layer_machines=intel-core2-32 intel-corei7-64 intel-quark

Again, lacking explanations.

Alex

