Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0D45E00CD3; Thu, 12 Oct 2017 06:14:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF25E00CC6
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 06:14:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 12 Oct 2017 06:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,366,1503385200"; d="scan'208";a="1181262644"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2017 06:14:39 -0700
To: Bernd <prof7bit@gmail.com>, yocto@yoctoproject.org
References: <CAAkg2-mXCpkQuy1kc5wFD3+PbuA96C1f_XLzJHUtqDep=_gfUw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <78017ceb-817f-7c14-9b18-3c54ca497159@linux.intel.com>
Date: Thu, 12 Oct 2017 16:11:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAAkg2-mXCpkQuy1kc5wFD3+PbuA96C1f_XLzJHUtqDep=_gfUw@mail.gmail.com>
Subject: Re: Navigating the layer labyrinth
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
X-List-Received-Date: Thu, 12 Oct 2017 13:14:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/12/2017 12:34 PM, Bernd wrote:
> * Finding the *file path* of an existing recipe (or append file or
> class) *by its name* and also all existing .bbappends for it, i
> imagine something simple like bitbake --show-paths foo-bar would
> output me the small list of absolute paths of recipe files by the name
> foo-bar and all matching .bbappend files in the order in which they
> would be applied, it would show me only this small list of paths and
> not dump 100kb of unrelated information along with it. This would be
> incredibly helpful when I need to inspect an existing recipe in order
> to understand how I can bbappend it or even just to see and understand
> what it actually does.
> 
> * A simple way to track the assignment of a certain variable, to
> inspect its contents and if it refers to other variables then
> recursively show their contents too (and also the path of the bb file
> where this happens), and also show which other recipes will directly
> and indirectrly depend on this variable further down the line, I
> imagine this should output two tree-like structures where one can see
> at one glance how and where all the contents of that variable come
> from and where they are going to be used. Again this should be a
> simple command that formats and outputs that (and only that)
> information in a well formatted and compact tree-like representation.

I think bitbake -e could be of some help with these two things. It's not 
particularly compact, but it tells you the full story.

Alex

