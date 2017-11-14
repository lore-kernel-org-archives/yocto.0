Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48812E00D19; Tue, 14 Nov 2017 04:53:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2578BE00CC4
	for <yocto@yoctoproject.org>; Tue, 14 Nov 2017 04:53:57 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Nov 2017 04:53:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,393,1505804400"; 
   d="scan'208";a="7470491"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga002.jf.intel.com with ESMTP; 14 Nov 2017 04:53:56 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: Martyn Welch <martyn.welch@collabora.co.uk>, yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
References: <1510600788-27455-1-git-send-email-martyn.welch@collabora.co.uk>
	<ac750826-9931-85d1-35b4-106d774ee829@linux.intel.com>
Message-ID: <8291e8fe-44b3-6ec3-b0c7-f0075dde9317@linux.intel.com>
Date: Tue, 14 Nov 2017 14:54:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <ac750826-9931-85d1-35b4-106d774ee829@linux.intel.com>
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
X-List-Received-Date: Tue, 14 Nov 2017 12:53:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/14/2017 02:47 PM, Alexander Kanavin wrote:

> I think this situation is an image configuration problem, not a package 
> qa problem. If a package wants to install something in a location that 
> is deemed inappropriate by the local config, there's a reason behind it, 
> the fix may not be easy to develop, and will likely be useless or even 
> unacceptable to other users of the recipe. It's better to reconfigure 
> the mount points.

Oh and another point I forgot: some files are created at do_rootfs time 
when packages are installed onto the image, so they won't be caught by 
this check at all. Better to do it at the last moment.

Alex

