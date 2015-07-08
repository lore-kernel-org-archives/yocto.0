Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77885E00978; Wed,  8 Jul 2015 10:19:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAAB7E0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 10:19:47 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t68HJi1t015551
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 8 Jul 2015 10:19:44 -0700 (PDT)
Received: from server.local (128.224.21.97) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 8 Jul 2015 10:19:43 -0700
Message-ID: <559D5BAF.4020008@windriver.com>
Date: Wed, 8 Jul 2015 13:19:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Benjamin Fleming <bfleming@meteorcomm.com>, Andre McCurdy
	<armccurdy@gmail.com>
References: <0a834e96761d47fe91dc52870a8906f8@MCCRENEX02.meteorcomm.lan>	<CAJ86T=UQ1wmWiSJmhSzS97Z5y5bDFqhX0Bv5e38Q2jRf2bLSww@mail.gmail.com>
	<12506c4bd3d74f129ccf68753b0b280c@MCCRENEX01.meteorcomm.lan>
In-Reply-To: <12506c4bd3d74f129ccf68753b0b280c@MCCRENEX01.meteorcomm.lan>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sdk and kernel headers
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
X-List-Received-Date: Wed, 08 Jul 2015 17:19:49 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-08 1:05 PM, Benjamin Fleming wrote:
> Ok,
> adding kernel-devsrc to my IMAGE_INSTALL caused the kernel source to be included in the SDK. Unfortunately, it is now also included in the target image.
> I found adding kernel-devsrc instead to TOOLCHAIN_TARGET_TASK gave me what I wanted (/usr/src/kernel in the SDK but NOT in the target image)
>
> Also, I really only need the kernel headers (similar to the linux-headers packages in Ubuntu) for developing out-of-source kernel modules. Is there is a different package I should be using?
>

The linux-libc-headers are the uapi exported headers, but as for the
source for module builds, it is currently unified in the
kernel-devsrc package.

We have a long history with the packaging of the sources, and what
to export where .. and even the ordering of that packaging. So while
splitting out the headers may seem simple, it requires a bit more
finesse of getting the headers, the right amount of script and Kbuild
support to get it exactly right.

By keeping the two together, we ensure that we have enough to meet
all development tasks.

There are some enhancements for this in flight for the 1.9 release, so
it is something that we are considering .. just keeping those existing
use cases and workflows from breaking is the sticky part.

Cheers,

Bruce

> Thanks,
> Ben
>
>> -----Original Message-----
>> From: Andre McCurdy [mailto:armccurdy@gmail.com]
>> Sent: Tuesday, July 07, 2015 5:54 PM
>> To: Benjamin Fleming
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] populate_sdk and kernel headers
>>
>> On Tue, Jul 7, 2015 at 4:16 PM, Benjamin Fleming
>> <bfleming@meteorcomm.com> wrote:
>>> Hello,
>>> I want my kernel headers to be included in the SDK output when I run
>> bitbake myimage -c populate_sdk. I expect to see the headers in my installed
>> SDK folder such as <sdk>/sysroot/<target_mach>/usr/src/kernel; however, I
>> don't see anything there. Also, I don't want the headers appearing on the
>> target.
>>>
>>> In my recipe I have added IMAGE_INSTALL += kernel-modules, and
>>> SDKIMAGE_FEATURES += kernel-devsrc.  The kernel I'm using is
>>> linux-altera-ltsi-rt from
>>> https://github.com/kraj/meta-altera/blob/master/recipes-kernel/linux/l
>>> inux-altera-ltsi-rt_3.10.bb
>>> What am I missing?
>>
>> Try adding kernel-devsrc to IMAGE_INSTALL rather than
>> SDKIMAGE_FEATURES.
>>
>>> Thanks,
>>>
>>> Ben
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto


