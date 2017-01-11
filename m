Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61195E00524; Wed, 11 Jan 2017 06:57:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE404E0033D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 06:57:02 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga105.jf.intel.com with ESMTP; 11 Jan 2017 06:57:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="52047889"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga005.fm.intel.com with ESMTP; 11 Jan 2017 06:57:00 -0800
To: yocto@yoctoproject.org
References: <alpine.LFD.2.20.1701071028270.18312@localhost.localdomain>
	<bbffbd48-0944-ccde-e7dd-5a912aea4dd8@linux.intel.com>
	<e9802d68dc1240a2ae137c424a154d8a@drift35.mia.local>
	<CAJTo0LbbmO2S2XaWve2=uESbtd9UAn533XAcKBvfZ7XHzyngNA@mail.gmail.com>
	<1c32c82c773d4d0b81f428bc62435118@drift35.mia.local>
	<300aed1d-93fe-7d21-2436-172e7d35e728@balister.org>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <52c20089-390f-8f18-8774-595ef5e3f17a@linux.intel.com>
Date: Wed, 11 Jan 2017 16:56:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <300aed1d-93fe-7d21-2436-172e7d35e728@balister.org>
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
X-List-Received-Date: Wed, 11 Jan 2017 14:57:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/2017 04:49 PM, Philip Balister wrote:
> The problem following the CVE's direct is you need to do analysis to
> determine if a specific release has the vulnerability.
>
> We do have guidelines for marking CVE's addressed by commits, to help
> people interested in developing tools to show what CVE's are addressed
> in the meta data.
 >
> One suggestion made is to setup some form of git hook to email commits
> with CVE tags to the security list.

This is not going to work if a security issue is fixed by a version 
update without an intermediate backported patch (which often happens). 
And cve-check-tool is notorious for inaccuracies both ways.

There's simply no easy, working solution to this, the way I see it. In 
the master branch the best we can do is to stay close to upstream, for 
release branches the only thing that will really work is having real 
recipe maintainers who follow upstream development closely.

Alex

