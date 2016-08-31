Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23F1CE00C2E; Wed, 31 Aug 2016 15:44:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,PLING_QUERY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FF65E00C2A
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 15:44:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u7VMhlg3017188
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 31 Aug 2016 15:43:47 -0700
Received: from server.local (147.11.116.125) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 31 Aug 2016 15:43:46 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Daniel."
	<danielhilst@gmail.com>
References: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
	<1888254.UId6usnihk@peggleto-mobl.ger.corp.intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <0ded4d99-a310-e7a0-fbe7-206a481a568c@windriver.com>
Date: Wed, 31 Aug 2016 18:43:45 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1888254.UId6usnihk@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Subject: Re: Automating imaging building and testing, what aproach to use!?
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
X-List-Received-Date: Wed, 31 Aug 2016 22:44:12 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-31 6:23 PM, Paul Eggleton wrote:
> Hi Daniel,
>
> On Tue, 30 Aug 2016 17:18:44 Daniel. wrote:
>> While writing software we're used to delivery packages, libraries and
>> stacks. There are out there a lot of continuos integration solutions
>> to automaticaly build and test these kinds of software. But when
>> dealing to images the thing is more tricky.
>>
>> I can't run the tests at the same machine that build the image because
>> crosscompilation take place on 99% of the cases. What is aproach that
>> you guys are using to automate and increase the quality of your
>> images?
>>
>> Automating the build is the easy part my concert is about automating
>> the runtime tests that need the target board to run. In my case I
>> depend on hardware to fully test the image features. Is there any
>> reliable way to automate image installation and boot!?
>
> There are some folks here working on automated hardware tests (on CC), perhaps
> they can expand on what we're currently doing in that area. At least in the
> existing code we do have basic support for running tests on real hardware that
> may be worth looking into - at the moment though it's pretty rudimentary when
> it comes to interacting directly with the hardware though. You can see what
> we've currently got here:
>
>   http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#hardware-image-enabling-tests
>
> We've looked at LAVA several times, and I'm sorry to say the conclusion each
> time is that its a mess - both from a usage perspective and looking at the
> code. It was disappointing to us because initially it looked like it was going
> to solve a lot of our problems. Maybe others have had different experiences -
> I'd love to hear details if anyone is prepared to share.

We've been using LAVA extensively within WRind River, and haven't run
into any major issues with the code and usage. Perhaps it depends on
the type of test cases that are being run ?

LAVA was active, extensible and able to integrate with our wide range
of targets.

That's not to say that we didn't add a lot of our own tests,
infrastructure, etc, but that was expected work with whatever we
chose.

Cheers,

Bruce

>
> Cheers,
> Paul
>


