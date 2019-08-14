Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A7B9E00DA4; Tue, 13 Aug 2019 19:26:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50A0AE00D8F
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 19:26:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7E2QUWA021306
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Aug 2019 19:26:30 -0700 (PDT)
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Tue, 13 Aug 2019 19:26:29 -0700
To: <yocto@yoctoproject.org>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <20190613082931.GA15674@localhost>
	<1560417380-358445-1-git-send-email-changqing.li@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <477d2f0b-cdca-7d33-cd42-6d839610b6f3@windriver.com>
Date: Wed, 14 Aug 2019 10:26:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560417380-358445-1-git-send-email-changqing.li@windriver.com>
X-Originating-IP: [128.224.162.186]
Subject: Re: [patchtest][PATCH V2] patchtest: fix linux-yocto version
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
X-List-Received-Date: Wed, 14 Aug 2019 02:26:33 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi, Richard

This patchset need to be merged.

patchtest: fix linux-yocto version

and patchtest: fix virtio-9p-pci is not a valid device


Thanks

On 6/13/19 5:16 PM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> 4.9 is not avaiable currently, so remove version from bbappend
> and remove PREFERRED_VERSION.
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   .../linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend}       | 0
>   scripts/create-guest-machine                                         | 5 -----
>   2 files changed, 5 deletions(-)
>   rename meta-patchtest/recipes-kernel/linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend} (100%)
>
> diff --git a/meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend b/meta-patchtest/recipes-kernel/linux/linux-yocto_%.bbappend
> similarity index 100%
> rename from meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend
> rename to meta-patchtest/recipes-kernel/linux/linux-yocto_%.bbappend
> diff --git a/scripts/create-guest-machine b/scripts/create-guest-machine
> index 8dd6a2e..8381ef8 100755
> --- a/scripts/create-guest-machine
> +++ b/scripts/create-guest-machine
> @@ -145,11 +145,6 @@ cat >> $POKY/build/conf/auto.conf << EOF
>   $PTSMARK
>   MACHINE = "$MACHINE"
>   
> -# The preferred kernel version in poky (4.10%, master) returns an error whilst
> -# executing patchtest on guest. Changing the preferred version to 4.9% as it
> -# is more suitable and does not present any errors.
> -PREFERRED_VERSION_linux-yocto_qemux86-64 = "4.9%"
> -
>   PACKAGE_CLASSES = "package_ipk"
>   IMAGE_FSTYPES = "ext4"
>   SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/dev/PATH"

-- 
BRs

Sandy(Li Changqing)


