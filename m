Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D584AE00E45; Fri,  2 Feb 2018 05:43:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72595E00DD0
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 05:43:21 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Feb 2018 05:43:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,448,1511856000"; d="scan'208";a="14526841"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 02 Feb 2018 05:43:19 -0800
To: =?UTF-8?Q?Marek_S=c5=82omiany?= <marekslomiany@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAJCDnYZcUuLvG-70Tg_m_Rr968hH0A2OizkCcYOO014jkvK=1A@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <5f8210bc-278f-078b-0fee-2424dc21c4d9@linux.intel.com>
Date: Fri, 2 Feb 2018 15:43:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJCDnYZcUuLvG-70Tg_m_Rr968hH0A2OizkCcYOO014jkvK=1A@mail.gmail.com>
Subject: Re: Remove nfs packages from image
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
X-List-Received-Date: Fri, 02 Feb 2018 13:43:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/02/2018 03:23 PM, Marek Słomiany wrote:

> It's still on target:
> root@target# opkg list |grep nfs
> libnfsidmap0 - 0.25-r0
> nfs-utils - 2.1.1-r0
> nfs-utils-client - 2.1.1-r0
> nfs-utils-mount - 2.1.1-r0
> 
> While checking for any nfs-things using "bitbake <image> -e |grep -v ^# 
> |grep -i nfs" the only interesting thing I got is this:
> EXCLUDE_FROM_WORLD_pn-unfs3_libc-musl="1"
> FEATURE_PACKAGES_nfs-client="packagegroup-core-nfs-client"
> FEATURE_PACKAGES_nfs-server="packagegroup-core-nfs-server"
> 
> from which first one is not the thing, and two following are 
> from /meta/classes/core-image.bbclass and if I'm correct it's just 
> defining what will happen when I add nfs-client or nfs-server to 
> IMAGE_FEATURES.
> Maybe I should delete manually some sstate or something?

I'd say first inspect log.do_rootfs for your image, and maybe there are 
clues in it as to why these packages get pulled in. You might have a 
depdendency on them somewhere else.

Alex

