Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29DA7E009C3; Wed,  5 Aug 2015 08:00:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D97C1E009A7
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 07:59:56 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so8510702wic.1
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 07:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=bz/Iel1xGKWrPkAY2fNB+0YH//sOTbKrihbI9PygRWk=;
	b=cycDl9sT5kmUC+L60fn1AnlyqsNhhqzlhnPcukm/TgoJJmRaegBohHv8LV1ZUqKqWp
	1yijpP1bxbv2oKfzY2j7Ordka6bM0+SG3lsrsMQXsdGHXDygC9bbv8DbX0oKak4/3mQX
	rZZ0trT0y8YE9+dJGr0mJGolzP4yOKFpu16WkM0A16LgpS7qA4qNBa2DybOp8a/I0XgS
	kzXxUbBaMnleM2HwpCLwIeIiYTCHXEzZ2H1bzXHaoODlfTTvD35Tdna+4MBNUUFPCSB2
	qBYVqTsGmS9H5sddZ0UM1havL7XkYQPSu4SnJTOedTk0ilXg9KHVG7eoAJF+SFjYCFsc
	fxYA==
X-Gm-Message-State: ALoCoQmVHkDw7/YExVkR0yVz1yNh+i+2JIGyZqt+yj6pdoNiVq2/X8/dNhTCcc3iLBhusS0MxKIP
MIME-Version: 1.0
X-Received: by 10.194.205.170 with SMTP id lh10mr22069929wjc.1.1438786795744; 
	Wed, 05 Aug 2015 07:59:55 -0700 (PDT)
Received: by 10.28.94.10 with HTTP; Wed, 5 Aug 2015 07:59:55 -0700 (PDT)
In-Reply-To: <55C22385.7060506@gmail.com>
References: <CAPhnLPB5-A5A3=RXjKL1WJqKp7DCZ2ku6U1eAsgFRPty8sjkWg@mail.gmail.com>
	<55C22385.7060506@gmail.com>
Date: Wed, 5 Aug 2015 15:59:55 +0100
Message-ID: <CAPhnLPDWQGZck7w-0gmtVQHj-MZzVae=fRmvuUfXjogp=KcPJQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: nick <xerofoify@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [ANNOUNCEMENT] Milestone 1 for Yocto Project 1.9 now available.
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
X-List-Received-Date: Wed, 05 Aug 2015 15:00:00 -0000
Content-Type: text/plain; charset=UTF-8

On 5 August 2015 at 15:53, nick <xerofoify@gmail.com> wrote:
>
>
> On 2015-08-05 10:45 AM, Flanagan, Elizabeth wrote:
>> The first milestone release for Yocto Project 1.9 is available for download now.
>>
>> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.9_M1/
>>
>> Thank you everyone for your contributions.
>>
>> eclipse-poky/juno-master bbd410e2c5db9532ea373ec993c5e8d9
>> eclipse-poky/kepler-master 989ee9bda9c0d5c05e790a289d4ca032
>> eclipse-poky/luna-master fe928773cf7b952c368769fdc4be3688
>> meta-qt3 139394eca6575b9ab31d2f79f7830f2a
>> poky 59713c69884b4d459b0712133ba56034
>>
>> Test report at
>> https://wiki.yoctoproject.org/wiki/WW28_-_2015-07-10_-_Full_Pass_1.9_M1.rc2
>>
> Just a question about your testing Elizabeth.
> BB_NUMBER_THREADS = "8"
> PARALLEL_MAKE = "-j 8"
> MACHINE = "qemux86"
> It should be 2 times the number of cores for parallel build systems like make
> or bitbake. Why only eight as I do eight on my i5 from the same generation.
> This seems like a error in my opinion.

These builds run concurrently with a number of other builds on our
servers. I don't remember exactly how many cores are on each, but this
limits the builds a bit to ensure that all concurrent builds have
adequate resources.

-b

> Cheers,
> Nick



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

