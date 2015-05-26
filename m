Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 873ECE0095D; Tue, 26 May 2015 15:18:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68E3CE007B6
	for <yocto@yoctoproject.org>; Tue, 26 May 2015 15:18:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 May 2015 15:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,502,1427785200"; d="scan'208";a="700611389"
Received: from bitbang.jf.intel.com ([10.7.201.37])
	by orsmga001.jf.intel.com with ESMTP; 26 May 2015 15:18:49 -0700
Message-ID: <5564F148.3010007@linux.intel.com>
Date: Tue, 26 May 2015 15:18:48 -0700
From: Randy Witt <randy.e.witt@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Ash Charles <ashcharles@gmail.com>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
	<555407B9.7040105@windriver.com>
	<CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
	<55555FE4.7060902@windriver.com>
	<CAK8F28nesmgbMQhmcdPeiXbmiMmttnjmqP7_3_wQyDN7OsKGxQ@mail.gmail.com>
	<55436.10.254.91.149.1432012382.squirrel@linux.intel.com>
	<CAK8F28nzBnuc+kSA6HTBVO_y1qd4HUafPSuo0oeOsUidvH3t6w@mail.gmail.com>
In-Reply-To: <CAK8F28nzBnuc+kSA6HTBVO_y1qd4HUafPSuo0oeOsUidvH3t6w@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Tue, 26 May 2015 22:18:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/22/2015 03:24 PM, Ash Charles wrote:
> On Mon, May 18, 2015 at 10:13 PM,  <randy.e.witt@linux.intel.com> wrote:
>> The idea is that an sdk will comprise of a manifest(contains list of
>> sstate items in the sdk) and some location that contains the items in the
>> manifest. So to update the sdk you would run a command and give it the
>> location of the manifest and sstate, and it would make your sdk match what
>> is in the manifest.
>>
>> So the sstate could be hosted on a webserver, nfs, locally, etc.
> Thanks Randy.
>
> I stepped through the process of making an extensible SDK based on my
> image.  Is the conf/locked-sigs.inc file the manifest you mentioned?

Yes, that is the one.

> Unfortunately, devtool is failing for me ("ImportError: No module
> named site"...looks like the SDK is missing a python library?) but it
> is great to at least be able to build it and get a sense of the
> contents.

Did you source the environment-setup script? If so, what distro were you using?

>
> I'm uploading my sstate to a server so theoretically updating would be
> a process of grabbing items from this server cache into the
> 'sstate-cache' directory within the SDK?  If I needed a new package
> not originally included in the SDK, I would do something like devtool
> get opencv-dev?
>
We were thinking it wouldn't be so granular Basically it would end up matching 
everything in a manifest rather than asking for one particular package. So it 
would look more like "devtool publish-sdk location", followed by users being 
able to then update to whatever "sdk's" exist at that location.

> Thanks for any insights.  I realize this is work-in-progress so I'm
> just looking to get a sense of how things might work.
>
> --Ash
>


