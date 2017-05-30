Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB4B7E00B1B; Tue, 30 May 2017 02:53:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.26.49.173 listed in list.dnswl.org]
Received: from mxout013.mail.hostpoint.ch (mxout013.mail.hostpoint.ch
	[217.26.49.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82D7AE0080F
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 02:53:26 -0700 (PDT)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout013.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dFdq9-000BNa-1B; Tue, 30 May 2017 11:53:25 +0200
Received: from [2a02:168:68c7:0:6086:587:3a18:e196]
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dFdq8-000CCW-VQ; Tue, 30 May 2017 11:53:24 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Belisko Marek <marek.belisko@gmail.com>
References: <275dac4b-2244-aea2-e539-a177855d5169@smart-home-technology.ch>
	<CAAfyv34p4-0DQRzxHY6_Y_zYVRXHthWjUi-yHLnC0+tj=SMr-A@mail.gmail.com>
	<cafef6f7-905a-0c03-8d8e-ecaf1d47ef28@smart-home-technology.ch>
	<CAAfyv36WmwS7=x71p50SGEQ6umxjuB9x5f5nPkbZdDW5q_a4Xw@mail.gmail.com>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <0afef265-6e2d-30b5-11b3-324e1b4effca@smart-home-technology.ch>
Date: Tue, 30 May 2017 11:53:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAAfyv36WmwS7=x71p50SGEQ6umxjuB9x5f5nPkbZdDW5q_a4Xw@mail.gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: CMake project not building; building from local git repo possible
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
X-List-Received-Date: Tue, 30 May 2017 09:53:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hi Marek,

On 30.05.2017 11:37, Belisko Marek wrote:
> Hi Jakob,
>
> On Tue, May 30, 2017 at 11:28 AM, Jakob Hasse
> <jakob.hasse@smart-home-technology.ch> wrote:
>> Hi Marek,
> please don't top post http://www.idallen.com/topposting.html :)
>> Thanks for your answer!
>> I did use a local repo folder since I find it more convenient to make quick
>> changes that way, as it is the case right now.
> Source is fetched only once then it's keep in downloads directory so
> better use then local repo.
>> I applied your changes but I still get the same bitbake errors as before, as
>> shown below. The CMake Error log says:
>> ...
>> error: unrecognized command line option '-Wmissing-variable-declarations'
>> ...
>> error: unrecognized command line option '-Wshorten-64-to-32'
> Can you give me some more info about poky version, target you're building ...

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-dey-linux-gnueabi"
MACHINE           = "ccimx6ulstarter"
DISTRO            = "dey"
DISTRO_VERSION    = "2.2-r1"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon 
callconvention-hard       cortexa7"
TARGET_FPU        = "hard"

We're using the digi embedded yocto here. I think I'll contact their 
support, too.
The arm-dey-linux-gnueabi looks like a normal arm-linux-gnueabi-gcc.
Please tell me if you think you need more info.

Cheers,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


