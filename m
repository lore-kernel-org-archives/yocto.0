Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60310E00DB6; Tue, 14 Nov 2017 04:47:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A5DE00D26
	for <yocto@yoctoproject.org>; Tue, 14 Nov 2017 04:47:33 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Nov 2017 04:47:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,393,1505804400"; 
   d="scan'208";a="7468255"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga002.jf.intel.com with ESMTP; 14 Nov 2017 04:47:32 -0800
To: Martyn Welch <martyn.welch@collabora.co.uk>, yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
References: <1510600788-27455-1-git-send-email-martyn.welch@collabora.co.uk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <ac750826-9931-85d1-35b4-106d774ee829@linux.intel.com>
Date: Tue, 14 Nov 2017 14:47:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1510600788-27455-1-git-send-email-martyn.welch@collabora.co.uk>
Subject: Re: [OE-core] [PATCH v2 1/2] package.bbclass: add prohibited-path qa test
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
X-List-Received-Date: Tue, 14 Nov 2017 12:47:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/13/2017 09:19 PM, Martyn Welch wrote:
> Sometimes we wish to ensure that packages don't install files or
> directories somewhere that may prove detrimental to the operation of the
> system. For example, this may be the case if files are placed in a
> directory that is utilised as a mount point at run time, thus making them
> inaccessible once when the mount point is being utilised.
> 
> Implement the prohibited-path QA test, which enables such locations to be
> specified in a "PROHIBITED_PATH" variable. This implementation allows for
> exact matches and simple wildcards (paths ending with an asterisk. An
> error will be raised should a match be found, or in the case of a
> wildcard, for any files added below the specificed location(s).

I think this situation is an image configuration problem, not a package 
qa problem. If a package wants to install something in a location that 
is deemed inappropriate by the local config, there's a reason behind it, 
the fix may not be easy to develop, and will likely be useless or even 
unacceptable to other users of the recipe. It's better to reconfigure 
the mount points.

Can you perform this check using IMAGE_QA_COMMANDS please?

On a broader note, we've had an open issue to improve image qa testing 
for a long time, so maybe this could be a first step :)
https://bugzilla.yoctoproject.org/show_bug.cgi?id=10636

Alex

