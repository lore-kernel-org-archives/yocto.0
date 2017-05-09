Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CD79E00B0B; Tue,  9 May 2017 05:16:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9CDEE00B02
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 05:16:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v49CFxxq027282
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 May 2017 05:16:00 -0700 (PDT)
Received: from server.local (128.224.21.135) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 9 May 2017 05:15:59 -0700
To: Andrei Gherzan <andrei@gherzan.ro>, Khem Raj <raj.khem@gmail.com>
References: <CAC+thW1Ehz4_s6pFYmNPPtfbtwoxVQXer-FR5YKEYgFP07KUPA@mail.gmail.com>
	<CAMKF1srwj+dQ-Mwf3L1g7C_osaKUazBezP-fmzknOWJVbOTh+A@mail.gmail.com>
	<CAK18fxGUoXYMkwAzAcXPWbEt1Rq7wPNrXAOwDiURe5KNbnSQ+g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <f80d89ea-0409-ea27-f98c-9eb242b1d09b@windriver.com>
Date: Tue, 9 May 2017 08:15:58 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAK18fxGUoXYMkwAzAcXPWbEt1Rq7wPNrXAOwDiURe5KNbnSQ+g@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] how to apply custom kernel configuration?
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
X-List-Received-Date: Tue, 09 May 2017 12:16:04 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-05-08 6:08 PM, Andrei Gherzan wrote:
> On Sat, May 6, 2017 at 6:14 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Sat, May 6, 2017 at 9:45 AM, Andrea Galbusera <gizero@gmail.com> wrote:
>>> Hi!
>>>
>>> I was wondering how to apply some extra kernel configuration from a custom
>>> layer via a bbappend. I know that with meta-raspberrypi there exist some
>>> variables you can define in local.conf that will drive how the kernel is
>>> configured: but what about some very specific device driver nobody than me
>>> is interest in? To me it seems it doesn't deserve a dedicated global oe
>>> variable.
>>>
>>> Some investigation showed this topic already came up on the list from time
>>> to time in the past (most recently in [1]). To me it looks like there is
>>> some common desire to get rid of the current "magic" carried out by
>>> linux-rpi.inc by moving the linux-raspberrypi recipes into the configuration
>>> fragments style.
>>>
>>> In the short term, my question are: how do you guys manage to add your
>>> custom kernel configurations? Do you rely on full blown static defconfigs?
>>> Have you found any reliable way to do "differential" configurations with the
>>> current state of metadata?
>>>
>>> In a longer term, I'd really like to help moving towards supporting
>>> configuration fragments for linux-raspberrypi, but I suspect it'd be a too
>>> much hard task for my current understanding of the whole kernel
>>> configuration workflow. Do you know of anyone already working on this or
>>> does anyone have a clear idea of what is needed to get the work done? Some
>>> times ago I tried to resurrect [2], but with no luck, probably due to some
>>> changes that happened in the linux-yocto files in the meanwhile.
>>>
>>> Comments from gurus are welcome! ;-)
>>
>> I have been hinting at using yocto kernel tooling. Idea is worth a pull request
>> care sending one ?
>
> I'm not using config fragments myself but I was under the impression
> that we do support it.

Also FWIW, I've had a feature around for quite a while that I'll
complete in the 2.4 release cycle. That feature pulls the core fragment
processing into the main kernel classes (with auditing, etc, still in
kernel-yocto).

So doing an inherit of kernel-yocto won't be necessary at that point
.. which may ease the introduction of some config fragments.

Bruce

>
> --
> Andrei Gherzan
>


