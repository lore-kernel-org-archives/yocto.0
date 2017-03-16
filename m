Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AC0DE009C2; Thu, 16 Mar 2017 03:25:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED50E00953
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 03:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1489659959; x=1521195959;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=T7Hsj2CuSrWxhY6UozjWulxKJ7npnmNxLBOQONlEHD4=;
	b=KfbFFEMdkgyCDBpEOizssU0i+eXPSjdGOZ3VG5+hc9ZSnydzSPDhu7Z+
	bstfPNgdtT6t9bbFfFdf8erJC1VGQw==;
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Mar 2017 03:25:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,172,1486454400"; d="scan'208";a="236929328"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 16 Mar 2017 03:25:57 -0700
To: yocto@yoctoproject.org, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	"Bruce, Henry" <henry.bruce@intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
	<CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
	<2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
	<1489427487.16742.49.camel@intel.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <d4dbac11-a76d-d12c-7f7e-22fe9080a27a@linux.intel.com>
Date: Thu, 16 Mar 2017 12:25:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <1489427487.16742.49.camel@intel.com>
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Thu, 16 Mar 2017 10:25:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/13/2017 07:51 PM, Bruce, Henry wrote:

> I agree that leveraging the likes of 'npm install' will make life
> simpler but the problem with these operations is that they span a range
> of bitbake tasks. The reason we wrote an npm fetcher was to limit
> network access to the fetch task. This works in conjunction with an npm
> patch that enables the install command to run in the compile task
> without accessing the registry. Are you are proposing that we allow
> network access outside of the fetch task?

Yes, in a limited way. In addition to fetch, there would be a fetch_deps 
task, which is also allowed to access the network.

Alex


