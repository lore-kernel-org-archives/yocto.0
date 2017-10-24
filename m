Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA3E1E00CC1; Tue, 24 Oct 2017 05:23:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0EB7E00C45
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 05:23:57 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 24 Oct 2017 05:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,427,1503385200"; d="scan'208";a="164272565"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 24 Oct 2017 05:23:55 -0700
To: Remco Poelstra <remco+vogels@beryllium.net>, yocto@yoctoproject.org
References: <4b2b01b16549fc2c8a21edf445b53ee0@beryllium.net>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <28f74eb6-1a5f-85db-ef26-5c6e4192ac63@linux.intel.com>
Date: Tue, 24 Oct 2017 15:19:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <4b2b01b16549fc2c8a21edf445b53ee0@beryllium.net>
Subject: Re: libcap compile error
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
X-List-Received-Date: Tue, 24 Oct 2017 12:23:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/24/2017 12:23 PM, Remco Poelstra wrote:
> I’m new with the Yocto project and I’m still trying to find my way.
> I’m using a Hachiko board using Architech SDK and have managed to build 
> and run the standard image.
> As a next step I wanted to include the avahi mdns implementation. In 
> order to do so I included IMAGE_INSTALL_append = “ avahi”
> When I now run bitbake, I get the following error for libcap_2.22.bb:
> | cap_file.c:8:23: fatal error: sys/xattr.h: No such file or directory
> 
> The compiler has a switch 
> ‘--sysroot=/home/architech/architech_sdk/architech/hachiko-tiny/yocto/build/tmp/sysroots/hachiko’, 
> which indeed does not include this file.
> Is that the location where the file should be? How can I add it? Is this 
> a more general bug in Yocto or just my local setup?

libcap 2.22 is very old, so your SDK must be using a very old release of 
Yocto (2014 or earlier). It's difficult to provide help for that. 
Perhaps you could address your question to the makers of the SDK and 
find out if they have anything more recent?

Alex

