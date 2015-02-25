Return-Path: <dvhart@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D41EAE003FA; Wed, 25 Feb 2015 09:09:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F10AE003A8
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 09:09:29 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 25 Feb 2015 09:08:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,646,1418112000"; d="scan'208";a="671527316"
Received: from dvhart-mac02.jf.intel.com (HELO [10.24.0.133]) ([10.24.0.133])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2015 09:08:50 -0800
User-Agent: Microsoft-MacOutlook/14.4.7.141117
Date: Wed, 25 Feb 2015 09:08:47 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <D1134136.BEE7D%dvhart@linux.intel.com>
Thread-Topic: [yocto] kernel manual: confusing coverage of
	FILESEXTRAPATHS_prepend
References: <alpine.LFD.2.11.1502250351310.26693@localhost>
In-Reply-To: <alpine.LFD.2.11.1502250351310.26693@localhost>
Mime-version: 1.0
Subject: Re: kernel manual: confusing coverage of FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Wed, 25 Feb 2015 17:09:31 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

On 2/25/15, 12:54 AM, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:

>
>  minor quibble about kernel dev manual -- section 2.2.1, "creating
>the append file", uses the example of:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
>while section 2.2.3 uses:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
>both sections kind of implying that that's the way to do it, without
>making it clear that *either* way works as long as the variable
>prepend matches up with the directory name.
>
>  both ways are correct, of course, but the wording is a bit
>confusing.

Thanks, I agree, the same syntax should be used throughout the document.
The FILESEXTRAPATHS variable does correctly link to the ref manual where
people can get details on usage.

For simplicity, I should using "files" instead of ${PN}, it avoids the
"make sure your directory name matches ${PN}" issue.


-- 
Darren Hart
Intel Open Source Technology Center




