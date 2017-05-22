Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40EB7E00B49; Mon, 22 May 2017 06:02:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C45FE00A16
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 06:01:56 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 May 2017 06:01:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,377,1491289200"; d="scan'208";a="103919947"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 22 May 2017 06:01:54 -0700
To: Russell Peterson <bluehills7@comcast.net>, yocto@yoctoproject.org
References: <3222F3C5-34FC-4373-B40F-5AA8EF9C904E@comcast.net>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <151909c6-8fb5-e6b7-6695-6a1bfed1b0af@linux.intel.com>
Date: Mon, 22 May 2017 15:59:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <3222F3C5-34FC-4373-B40F-5AA8EF9C904E@comcast.net>
Subject: Re: unmodified binary RPM installed on rootfs?
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
X-List-Received-Date: Mon, 22 May 2017 13:02:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/22/2017 02:43 AM, Russell Peterson wrote:
> I am fairly new to yocto and I think I’m having trouble installing an
> RPM on the rootfs. What I am trying to do is install an arm64 binary RPM
> file straight onto the root file system without a recipe… just use the
> native rpm tool to put it there.  There are several reasons why I’m
> experimenting with this.  Seems fairly simple but I have now been
> messing around for days with little to show for it.  Here is what I’m doing…

Yocto does not currently support installing 3rd party RPMs. Even if it 
would install, whatever contents it has would very likely not work due 
to mismatches between the environment where the rpm was built and the 
environment where you are installing it. And --nodeps would only make 
the problem worse.

You have to write a recipe.


Alex


