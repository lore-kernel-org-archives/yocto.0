Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7978DE00C1B; Wed, 27 Feb 2019 13:31:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B93E00A54
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 13:31:21 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Feb 2019 13:31:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,420,1544515200"; d="scan'208";a="136815121"
Received: from xchan-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.145.135])
	by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2019 13:31:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tom Rini <trini@konsulko.com>
Date: Thu, 28 Feb 2019 10:31:15 +1300
Message-ID: <2093415.XmvlAEeYP8@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <20190227200902.GG12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 21:31:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 28 February 2019 9:09:02 AM NZDT Tom Rini wrote:
> Somewhere on my (and other
> folks too) TODO list is a packagegroup that includes procps and psmisc
> and grep and tar and various network packages and less and more and...

That is what packagegroup-core-full-cmdline (well, the packagegroup packages 
that it produces) was intended to be, although I guess there might be some 
argument about what should and should not be in there.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



