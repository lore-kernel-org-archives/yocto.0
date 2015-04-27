Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77E32E0091D; Mon, 27 Apr 2015 13:02:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26A9BE007CC
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 13:01:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3RK1sN3021819
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Apr 2015 13:01:56 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 27 Apr 2015 13:01:54 -0700
Message-ID: <553E95B2.4050004@windriver.com>
Date: Mon, 27 Apr 2015 16:01:54 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Wouter van Rooy <wouter.van.rooy@axon.tv>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <AEC347BAFCE456419C9E7C9F50321CEF10E03514F5@IAD2MBX10.mex02.mlsrvr.com>
	<552FC59F.2080603@windriver.com> <5534C248.5050107@axon.tv>
In-Reply-To: <5534C248.5050107@axon.tv>
Subject: Re: [poky] Initramfs not appended to kernel image
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
X-List-Received-Date: Mon, 27 Apr 2015 20:02:01 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-20 05:09 AM, Wouter van Rooy wrote:
> Hi Bruce,
>
> First of all, thanks for your answer. It would be a comforting idea to
> get this initramfs implemented cleanly in my project.
>
> On 16-04-15 16:22, Bruce Ashfield wrote:
>> I'm the proud owner of the bugzilla to document this process better,
>> so let's work through the issues and see if there's a bug, or
>> something that just isn't clearly described. We are talking about the
>> 1.6 release here .. so at least the recent changes in kernel.bbclass
>> processing won't be the cause of the breakage.
> Correct, to be even more precise I am using the daisy-11.0.0 tag for Poky.
>> Correct, and this definitely used to work. I can't see anything wrong
>> by inspection alone, but will launch some builds to see if I can
>> confirm the behaviour and that variable not making it down into the
>> function call. Bruce
> Thanks, I would love to hear the results of your test builds. Just drop
> me a line if you need anything else from my build environment for
> reproduction, like log files and such.

I was traveling last week and am just getting back to this now.
I wanted to check in to see if your issues are still persisting
to see if you worked it out in the meantime.

Bruce

>
> Kind regards,
> Wouter van Rooy


