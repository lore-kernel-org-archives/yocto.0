Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80986E0076F; Mon, 26 Jan 2015 03:05:08 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A1B3E003AB
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 03:05:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 26 Jan 2015 02:59:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,468,1418112000"; d="scan'208";a="675935856"
Received: from jcarrol-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.24.23])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2015 03:05:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: kalle@zapdevelopment.com
Date: Mon, 26 Jan 2015 11:04:58 +0000
Message-ID: <4306797.WdQFOdy7Io@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <1422088496154.91079.4854@webmail7>
References: <1422088496154.91079.4854@webmail7>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: One recipe, two gits with destsuffix, how to patch?
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
X-List-Received-Date: Mon, 26 Jan 2015 11:05:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kalle,

On Saturday 24 January 2015 08:34:56 Kalle Komierowski wrote:
> I'm working with the ti-compat-wireless recipe.
> It contains two gits like this:
> 
> SRC_URI =
> "git://git.ti.com/wilink8-wlan/wl18xx.git;branch=${BRANCH_wl18xx};destsuffi
> x=wl18xx;name=wl18xx \
> git://git.ti.com/wilink8-wlan/backports.git;branch=${BRANCH_backports};dest
> suffix=backports;name=backports \ file://wl18xx.patch \
> 
> Now I want to add the wl18xx.patch file, and this file ends up in the S and
> applying it fails since the git it should be applied to is under
> S/backports due to the destsuffix.
> 
> I tried to use the quilt and create new patches from the S but they fail to.
> 
> What would be the correct way of adding a patch so it applies to backports?

You may find the patchdir option for the patch SRC_URI entry to be useful. I 
should imagine you'll want something like:
...
  file://wl18xx.patch;patchdir=../backports
...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

