Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B45D0E00D9D; Mon, 13 May 2019 17:42:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8266AE00D9D
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 17:42:49 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id g3so8108673pfi.4
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 17:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=omvo53PhA6Ch1f0JXruArxyHdxoAfqACQA5UXc7Q2D4=;
	b=T6f/BJZ8dsa2xg1m7DI15xW6Cg4gS+I8Bv00lhcHsj7OPKqaes1w00GkmtMpr+IRiK
	9l21Gw32//wNHoPFb4/RBHtg6XlYCOobkyT4JGB4J2qGtB8epw4z1NEsA6K/eolyO4os
	cPIaI79xMePCCk6jlVLvYlsTIe7f+zGzbX2jiozs4OWvRRz1a5cqVjCKXDOQpAyEfSb+
	92zTGYuGfeTGFl+jgf/ixvDj/sx4gp/DJT91Lmweny/9jD5Zn0/vBlYGkN0MutDIC+S1
	1KweqK4qcXjjCWjj3drqg8qYfdX98mKeyOnMbr/MYxflH2MJvSfzx4LueDR1BLK3bgzr
	BQRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=omvo53PhA6Ch1f0JXruArxyHdxoAfqACQA5UXc7Q2D4=;
	b=Oyh0xdQdkTxkL+vhJIipDETOBWZ4hBkqqMgTZm2YglVouvISvsPB59Pcy+cv2n8dL3
	5NNYKHNJv4Q0maaJSZAP+R2vZSRaxMBvH7uO24pTQD9NaTgsOpdmSBy7X0jzbRGLd1Kl
	JFPLgJmh9kzXbPDx3LKbO4SAARf+pC1Xhz+RYzD5fCi/GF+FGS+JOhnEBdRdF1th8vvt
	GUzxL/dMjB5wpEgpcbIlrLWAMmcx8zfmUxyGAyzb94YorNZVL0xnXOYq84R0aFBzt/Eu
	g/KqHzuz66lJ8UQBj07Gw/7Fp+DFUhv5xOBWGO1UAkuSW59RNKJl6awzDWeljs6IV0F9
	C+Ig==
X-Gm-Message-State: APjAAAUSKHC/FU5z6HPf2VDaQerKxGOzoy0ataeczti7AHmF9ieXnczO
	lE2jIpMOt03Ep9slUCaYfTNrWg==
X-Google-Smtp-Source: APXvYqz2BrXtlk+suHVLv8fFKkpMDwuGmo+pi+Er1KjWau7XaN3kbsQYJZXM/ApeWFdfO7NqX47ekg==
X-Received: by 2002:a63:c106:: with SMTP id w6mr31377839pgf.422.1557794568628; 
	Mon, 13 May 2019 17:42:48 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:8cb1:b0d9:9f31:ba50?
	([2601:202:4180:c33:8cb1:b0d9:9f31:ba50])
	by smtp.gmail.com with ESMTPSA id
	h30sm15655105pgi.38.2019.05.13.17.42.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 May 2019 17:42:47 -0700 (PDT)
To: Joshua Watt <jpewhacker@gmail.com>,
	"Volosincu, Andreea S" <andreea.volosincu@windriver.com>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
	<d3d8ec8b59dcad7640cdee673405ae5c0979f11b.camel@gmail.com>
	<A084970538D2234B96D99D06FA9D974FC378F01F@ALA-MBD.corp.ad.wrs.com>
	<CAJdd5Ganw=jc=mhZLumjdcnEi1v+qCk-jkuPmMvpREbs-y3pRA@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <72598655-3717-764f-adb1-7432a55a43f7@mvista.com>
Date: Mon, 13 May 2019 17:42:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJdd5Ganw=jc=mhZLumjdcnEi1v+qCk-jkuPmMvpREbs-y3pRA@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	"yocto-advocacy@yoctoproject.org" <yocto-advocacy@yoctoproject.org>
Subject: Re: Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Tue, 14 May 2019 00:42:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 5/13/19 1:09 PM, Joshua Watt wrote:
> On Mon, May 6, 2019 at 12:43 PM Volosincu, Andreea S
> <andreea.volosincu@windriver.com> wrote:
>> Hi Joshua,
>>
>>
>>
>> The event will be listed on the co-located events page and there will be a cost associated with it. Please check this page in a couple of days - https://events.linuxfoundation.org/events/elc-north-america-2019/program/co-located-events/
>>
>>
>>
>> You will be able to add this to your ELC registration.
> Thanks. I'm hopefully not being too annoying, but us there an ETA on
> when the registration will be open? The early registration deadline
> for the ELC is May 20th, which is basically 5 working days, and I will
> need a few days to push the paperwork though, so it's getting a little
> close for my comfort :)
Add on events can be added later or purchased on-site.  I have done in
the past so I would reg for early bird now.
>
> If it isn't going to be available soon, I do have a few questions:
> 1. Is it possible to register for the Dev Day after you have
> registered for the ELC?
> 2. Is there a rough (preferably upper limit) estimate for the cost?
Good question. This is weird year for things so I can't comment on the
new norm.

- Armin
>
>
>>
>> Thanks!
>>
>> Andreea
>>
>>
>>
>> From: Joshua Watt [mailto:jpewhacker@gmail.com]
>> Sent: Monday, May 6, 2019 8:07 AM
>> To: Volosincu, Andreea S <andreea.volosincu@windriver.com>; yocto-advocacy@yoctoproject.org; Yocto list discussion <yocto@yoctoproject.org>
>> Subject: Re: [yocto] Yocto Project Upcoming Conferences and Developer Days
>>
>>
>>
>> On Fri, 2019-05-03 at 18:01 +0000, Volosincu, Andreea S wrote:
>>
>> Greetings,
>>
>>
>>
>> Yocto Project is pleased to announce the plans for the upcoming Embedded Linux Conferences in NA and Europe.
>>
>>
>>
>> Here is a snapshot of our schedule:
>>
>>
>>
>> ELC NA – Wednesday, August 21 - 23, 2019, Hilton San Diego Bayfront, San Diego, CA
>>
>>                    Yocto Project is a sponsor. We’ll see you on the show floor
>>
>>
>>
>> ELC NA Dev Day – Tuesday, August 20, 2019 - 8:00AM - 6:00PM
>>
>> Set-up: 1 Meeting Room - Classroom Seating ( 60 people)
>>
>> Level: Intermediate – Advanced. Participants will receive beginner material (videos and presentations) as pre-requisites
>>
>> Includes: Morning Break, Buffet Lunch, Beer & Wine Reception with light appetizers
>>
>>
>>
>> Is there any registration cost for this event, and how does one register?
>>
>>
>>
>>
>>
>>
>>
>> ELCE – Monday, October 28 -30, 2019, Lyon Convention Centre, Lyon, France
>>
>>               Yocto Project is a sponsor. We’ll see you on the show floor
>>
>>
>>
>> ELCE Yocto Project Summit – Dates & Times:
>>
>> Thursday, October 31, 2019 - 8:00AM - 6:00PM
>>
>>                November 1, 2019 - 8:00 am - 6:00PM
>>
>> Set-up:
>>
>> Day 1: 1 Meeting Room - Theater Seating for 100 for Yocto Project talks
>>
>> Day 2: 2 Meeting Rooms - Mixed Classroom/Theater seating for 60 & Classroom seating for 40 (for maintainers and users)
>>
>> Includes:
>>
>> Morning Break for 2 days
>>
>> Buffet Lunch for 2 days
>>
>> Beer & Wine Reception with light appetizers for 1 day
>>
>>
>>
>> The goal for the second day of the summit is to build and bring the community together. We are interested to hear your opinions and ideas on how that day and those rooms should be used for. Please send your ideas to Andreea Volosincu and Philip Balister.
>>
>>
>>
>> We will call out an Advocacy meeting in a couple of weeks to go over plans and vote on the ideas for the second day of the summit.
>>
>>
>>
>> Thanks!
>>
>> Andreea
>>
>> Yocto Project Advocacy Lead
>>
>> --
>>
>> Joshua Watt <JPEWhacker@gmail.com>


