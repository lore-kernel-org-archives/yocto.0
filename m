Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C0F3E00BDA; Mon,  4 Jan 2016 13:31:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E40D0E0090E
	for <yocto@yoctoproject.org>; Mon,  4 Jan 2016 13:31:08 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 04 Jan 2016 13:31:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,522,1444719600"; d="scan'208";a="23526141"
Received: from hlee31-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.171.9])
	by fmsmga004.fm.intel.com with ESMTP; 04 Jan 2016 13:31:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 05 Jan 2016 10:31:03 +1300
Message-ID: <2112713.zVsBsq7gTX@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.8-300.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <568A7F36.2080404@linux.intel.com>
References: <20160104052508.9177.12623@packages.yoctoproject.org>
	<568A7F36.2080404@linux.intel.com>
MIME-Version: 1.0
Cc: Anibal Limon <anibal.ezau.limon.belmares@linux.intel.com>
Subject: Re: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Mon, 04 Jan 2016 21:31:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 04 Jan 2016 16:18:30 Alexander Kanavin wrote:
> On 01/04/2016 07:25 AM, recipe-report@yoctoproject.org wrote:
> > This mail was sent out by Recipe reporting system.
> > 
> > This message list those recipes which need to be upgraded. If maintainers
> > believe some of them needn't to upgrade this time, they can fill in
> > RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this
> > recipe remainder until newer upstream version was detected.
> > 
> > Example:
> > RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 is unstable"
> 
> This has now changed. Recipe maintainers should add the reason for not
> updating directly to recipes:
> 
> RECIPE_NO_UPDATE_REASON = "Not upgrade to 2.0 is unstable"

We should probably correct the reason to "Version 2.0 is unstable" at the same 
time as well.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

