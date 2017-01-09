Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6E2AE00805; Mon,  9 Jan 2017 05:08:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63FD2E00726
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 05:08:45 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 09 Jan 2017 05:08:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,339,1477983600"; d="scan'208";a="211234378"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 09 Jan 2017 05:08:42 -0800
To: yocto@yoctoproject.org
References: <alpine.LFD.2.20.1701071028270.18312@localhost.localdomain>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <bbffbd48-0944-ccde-e7dd-5a912aea4dd8@linux.intel.com>
Date: Mon, 9 Jan 2017 15:08:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1701071028270.18312@localhost.localdomain>
Subject: Re: how does one stay on top of YP security alerts?
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
X-List-Received-Date: Mon, 09 Jan 2017 13:08:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2017 05:29 PM, Robert P. J. Day wrote:
>
>   colleague wants to know how one stays up to date with security
> alerts related to YP releases, i checked out the yocto-security
> mailing list:
>
> https://lists.yoctoproject.org/pipermail/yocto-security/
>
> but that looks like a very dead mailing list. are there other options?

You can subscribe to yocto-announce list and follow the announcements 
for stable point releases, or simply pull from release branches as often 
as possible, and make some form of 'git log' your personal security alert.

Alex


