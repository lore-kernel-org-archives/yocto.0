Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5C80E0095D; Tue, 26 May 2015 16:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BAE1E007B6
	for <yocto@yoctoproject.org>; Tue, 26 May 2015 16:04:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 26 May 2015 16:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,502,1427785200"; d="scan'208";a="735707804"
Received: from bitbang.jf.intel.com ([10.7.201.37])
	by orsmga002.jf.intel.com with ESMTP; 26 May 2015 16:04:33 -0700
Message-ID: <5564FC01.9050803@linux.intel.com>
Date: Tue, 26 May 2015 16:04:33 -0700
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
	<5564F148.3010007@linux.intel.com>
	<CAK8F28=sm13e2urstMKOAY0pwb6tsGg4eQTGVUM3N-sriyFkRQ@mail.gmail.com>
In-Reply-To: <CAK8F28=sm13e2urstMKOAY0pwb6tsGg4eQTGVUM3N-sriyFkRQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 26 May 2015 23:04:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/26/2015 03:38 PM, Ash Charles wrote:
> On Tue, May 26, 2015 at 3:18 PM, Randy Witt
> <randy.e.witt@linux.intel.com> wrote:
>> Did you source the environment-setup script? If so, what distro were you
>> using?
> Ubuntu 15.04 (Vivid-Vervet).  I used an SDK created based on the
> gumstix-console-image rather than a mainstream image from meta-yocto
> so perhaps there is a particular configuration etc. that messes up the
> creation of the SDK?
> <snip>
>> We were thinking it wouldn't be so granular Basically it would end up
>> matching everything in a manifest rather than asking for one particular
>> package. So it would look more like "devtool publish-sdk location", followed
>> by users being able to then update to whatever "sdk's" exist at that
>> location.
> Okay---If I understand correctly, that's a little more limiting than I
> would like.  No matter how many different SDKs I provide, each
> customer will need a different set of a software packages in their
> sysroot.  Yocto makes it easy to build up a big sstate or package
> repository and post this online---users can just grab a baseline SDK
> and then pull in the pieces they need (which probably is pretty
> comfortable for folks who are used to a 'sudo apt-get install
> libboost-dev' etc.).
>
> Based on this, should I be turning my attention back to using smart
> install with a regular SDK environment or is this imagined workflow
> just not a reasonable objective?

It is a bit of a different workflow than we were initially looking at, but I 
don't see a reason we couldn't do it. The locked signatures file should be able 
to be a superset of items you would want, so theoretically if you only wanted 
items from your sstate mirror to be used, the manifest would contain all items 
on the mirror. This would prevent the user from building something locally 
rather than pulling from the mirror and potentially not matching.

The nativesdk items are not in the extensible sdk, and the native items are just 
part of the bitbake workspace. This is why it should be fairly easy to add what 
you want. Because in the end it would just be adding an sstate mirror and doing 
a bitbake "native-foo". And we could wrap that with devtool or some other command.

I do see the convenience and why you want it, so I'll talk it over with Paul 
tomorrow.

> Thanks,
> --Ash
>


