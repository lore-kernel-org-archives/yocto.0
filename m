Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F7EDE00A0A; Thu,  6 Apr 2017 21:42:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60D40E00972
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 21:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491540136; x=1523076136;
	h=from:to:cc:subject:date:message-id:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=dM8J0ZALyD1XU3U9JVqDaSXIzK7JOHpgRCvOhjsqHC8=;
	b=Ya23yajGSQ2dt5yXENMA6qbI3JjTQY+K5elSqJTVi7vEKYcTRu5jDIfj
	Qa7OMkixySxCt7jTgVyBhEOFIII81Q==;
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Apr 2017 21:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,162,1488873600"; d="scan'208";a="70871816"
Received: from anatara2-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.179])
	by orsmga002.jf.intel.com with ESMTP; 06 Apr 2017 21:42:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Grueninger, Tobias" <tobias.grueninger.ext@siemens.com>
Date: Fri, 07 Apr 2017 16:42:10 +1200
Message-ID: <2855029.bVpUPp66A2@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <3E4CC6F34B562B4B97331BC65A14FD20C09BCD@DENBGAT9EM3MSX.ww902.siemens.net>
References: <3E4CC6F34B562B4B97331BC65A14FD20C09BCD@DENBGAT9EM3MSX.ww902.siemens.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Ad git revision to image name
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
X-List-Received-Date: Fri, 07 Apr 2017 04:42:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Tobias,

On Friday, 7 April 2017 4:09:45 AM NZST Grueninger, Tobias wrote:
> I would like to automatically add the git Revison checksum to the generated
> Yocto image name, e.g. 'core-image-git_bc123456.img'

Well, the immediate question would be which git revision is this? Your custom 
layer? Poky / OE-core? The kernel?

As for the mechanism, assuming you can get the revision at parse time, it's a 
bit crude but you could do something like this:

python() {
    repopath = '/path/to/git/repository'
    gitver = subprocess.check_output('git rev-parse HEAD', cwd=repopath)
    d.appendVar('IMAGE_BASENAME', '-git_%s' % gitver)
}

If parse time is too early you might try doing something at the start of 
do_rootfs, either a do_rootfs_prepend or a prefunc that does something similar 
to the above. In that case I'd be worried that we have other image tasks that 
look at IMAGE_BASENAME (via IMAGE_NAME) though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

