Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 011E2E00B77; Mon, 30 Nov 2015 04:08:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74391E00B3D
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 04:08:19 -0800 (PST)
Received: from [10.203.15.114] (unknown [200.3.249.195])
	by lists.s-osg.org (Postfix) with ESMTPSA id 89E0C462F0;
	Mon, 30 Nov 2015 04:08:17 -0800 (PST)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>,
	Khem Raj <raj.khem@gmail.com>
References: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
	<564F3D6F.7020601@osg.samsung.com>
	<CAMKF1sq=yxLKqTUj2BcQ8Sz-_bC1w=ntAAWKO7_YVRCGpFOQFg@mail.gmail.com>
	<CALbNGRSnDmHvkiHNM_Z+ERMwtvYzjj5N=bR2fA27vkgdF+f-CQ@mail.gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <565C3C31.8070804@osg.samsung.com>
Date: Mon, 30 Nov 2015 09:08:17 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRSnDmHvkiHNM_Z+ERMwtvYzjj5N=bR2fA27vkgdF+f-CQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH v3 0/2] Add support for 4.2 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Mon, 30 Nov 2015 12:08:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 11/20/2015 02:30 PM, Andreas Müller wrote:
> On Fri, Nov 20, 2015 at 5:09 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Fri, Nov 20, 2015 at 7:34 AM, Javier Martinez Canillas
>> <javier@osg.samsung.com> wrote:
>>> On 11/10/2015 11:45 AM, Javier Martinez Canillas wrote:
>>>> Hello Andrei,
>>>>
>>>> This series adds support for Eric Anholt's v4.2 kernel, that has support
>>>> for the vc4 DRM/KMS driver, which is the new open source graphics driver
>>>> stack for the Raspberry Pi to be used instead of the userland driver.
>>>>
>>>> This is a third version of the series which addresses feedback provided
>>>> by Andreas Müller, Khem Raj and you. The first version and second version
>>>> of the series can be found at [0] and [1]. Some of the v2 patches have
>>>> been dropped since are no longer necessary so the delta is smaller in v3.
>>>>
>>>
>>> Any comments about this series?
>>
>> Whole series looks good to me.
>>

Thanks Khem.

> Hop to find some time to test this weekend.
>

Andreas, did you find time to test?
 
> Andreas
> 

Andrei, gentle ping about this series again.

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

