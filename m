Return-Path: <eas@sw-optimization.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D00DE00C84; Wed,  8 Nov 2017 04:08:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.19.149.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx16lb.world4you.com (mx16lb.world4you.com [81.19.149.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AD3CE009CB
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 04:08:14 -0800 (PST)
Received: from [81.19.149.44] (helo=webmail.world4you.com)
	by mx16lb.world4you.com with esmtpa (Exim 4.84_2)
	(envelope-from <eas@sw-optimization.com>)
	id 1eCP9P-0008Co-N1; Wed, 08 Nov 2017 13:08:11 +0100
MIME-Version: 1.0
Date: Wed, 08 Nov 2017 13:08:11 +0100
From: Eric Schwarz <eas@sw-optimization.com>
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LZT_hfFH4e+9gQi6e4+FLPQh2Q-U8jdx=8aKHj-k4WK2g@mail.gmail.com>
References: <1e416606941630df1aab3c738aab7c66@sw-optimization.com>
	<CAJTo0LY6iJ=OYvxbMb-Bt_z3ahfsy0eGiCpvxvjSnEGNGiKGrw@mail.gmail.com>
	<68a10b257f64bd9c808c96de999e19f0@sw-optimization.com>
	<CAJTo0LZT_hfFH4e+9gQi6e4+FLPQh2Q-U8jdx=8aKHj-k4WK2g@mail.gmail.com>
Message-ID: <1f2acd76f4ddea1a631eb3df28153d82@sw-optimization.com>
X-Sender: eas@sw-optimization.com
User-Agent: World4You Webmail
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
X-SA-Exim-Connect-IP: 81.19.149.44
X-SA-Exim-Mail-From: eas@sw-optimization.com
X-SA-Exim-Scanned: No (on mx16lb.world4you.com);
	SAEximRunCond expanded to false
Cc: yocto@yoctoproject.org
Subject: Re: u-boot recipe: Missing dependencies
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
X-List-Received-Date: Wed, 08 Nov 2017 12:08:16 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

> Am 09.10.2017 12:30, schrieb Burton, Ross:

>> On 8 October 2017 at 18:04, Eric Schwarz <eas@sw-optimization.com> 
>> wrote:
>> 
>> Don't _append when you can just extend the assignment above. I just 
>> did it that way for the moment since I wanted to circumvent merge
>> conflicts when I upgrade the underlying recipes from openembedded.

> Well it's ugly, so if you want a patch in oe-core then don't introduce 
> ugly for your convenience.

Well, I have only done this, so the patch does apply the next time. 
Since in case someone changes something in the mainline it is always a 
hassle otherwise. For the final version it will be fixed.

>>> Depending on python-native does nothing as the binary isn't in $PATH 
>>> still.
>> I thought any Yocto native binaries built are in the PATH 
>> automatically. - How
>> to fix this/do it correctly?

> You need to inherit python3native, as python (and some others) are 
> opt-in.

Well, okay, but WTH I do not need to inherit from something for 
"bc-native" and "dtc-native"?

Eric

