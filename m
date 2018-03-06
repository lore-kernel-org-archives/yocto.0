Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99405E00E27; Tue,  6 Mar 2018 03:57:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15865E00843
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 03:57:21 -0800 (PST)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2018 03:57:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,431,1515484800"; d="scan'208";a="209247591"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga006.fm.intel.com with ESMTP; 06 Mar 2018 03:57:19 -0800
Date: Tue, 6 Mar 2018 14:00:33 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Message-ID: <20180306120032.GA44706@mbabyjoh-desk.ger.corp.intel.com>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
In-Reply-To: <20180305093106.11858-1-git@andred.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 00/14] openjdk-8 updates
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
X-List-Received-Date: Tue, 06 Mar 2018 11:57:22 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi André,

On Mon, Mar 05, 2018 at 09:30:52AM +0000, André Draszik wrote:
> Hi,
> 
> OpenJDK8 in yocto is a bit outdated, so these patches
> - update openjdk-8 from the 1.5 year old version 102b14 to the
>   current 162b12
> - modernize the recipe using bitbake variable overrides
> - enable building with 'security' flags enabled
> - fix the aarch64 build (by using the aarch64 port, which is
>   still separate in the OpenJDK8 series)
> - fix the musl build (by adding appropriate patches)
> 
> This was runtime-tested on x86-64 with both glibc and musl
> against the 'poky' DISTRO, and compile-tested on aarch64
> against glibc and musl.

Thank you very much for this work! Pushed to master.

> Cheers,
> Andre'

Best Regards,
Maxin

