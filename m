Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E8FDE00BFD; Sun, 30 Sep 2018 21:16:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3A9EE00ACF
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2018 21:15:06 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Sep 2018 21:15:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,326,1534834800"; d="scan'208";a="90996326"
Received: from lgprasad-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.175.84])
	by fmsmga002.fm.intel.com with ESMTP; 30 Sep 2018 21:15:02 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Date: Mon, 01 Oct 2018 17:14:59 +1300
Message-ID: <3113534.rOdZyxEQgT@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <300c15ce-48f1-dde7-c231-b604b38d0922@windriver.com>
References: <1721109.tuLG3TFsTU@localhost.localdomain>
	<d8427b2a-b63f-e19c-1fc7-6cb365dc63ff@windriver.com>
	<300c15ce-48f1-dde7-c231-b604b38d0922@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] layers.openembedded.org upgraded
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
X-List-Received-Date: Mon, 01 Oct 2018 04:16:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 30 September 2018 6:40:30 AM NZDT Randy MacLeod wrote:
> It works for me now but it's not clear why. It seems that
> it was a problem with my firefox profile.
> 
> Work log below in case it might help someone else.
> 
> ../Randy
> 
> 
> I rebooted:
>    - still no menu.
> I logged out and then into another account on the same laptop:
>    - it worked.
> I created another firefox profile in my usual account:
>    - it worked.
> I deleted that profile and used my default profile:
>    - still no menu.
> While visiting layers.openembedded.org, I opened the firefox
> console using Shift+Control+K
>    - I re-loaded the site.
>    - it worked!
> I closed the console:
>    - it worked!
> I restarted firefox:
>    - it still works!

Thanks - I'm also still puzzled by this, but I guess it's good that it 
apparently fixed itself. If the issue returns or anyone else sees anything 
strange like this happening then please let me know.

Cheers
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre



