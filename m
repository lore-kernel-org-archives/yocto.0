Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6043AE00B21; Fri, 16 Oct 2015 15:23:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FD24E006D5
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 15:23:54 -0700 (PDT)
Received: by pabrc13 with SMTP id rc13so131784117pab.0
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 15:23:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=lmwezoemfjyiUxBUvJLWYAWIIZSEkqVPD9TtPgafZrQ=;
	b=d9GAB4JvdZeEXW/RyL4eAXpzROWuMphWwf6v3k/k4mNX3ZsEGPIhDjpb0bsCqk5pTM
	jewuX7RbmXcAYAWUwFo7eS72Uc0SrHVtVfNITNXqsvzRN3HVykOtMRpvWgAcp/YWI1Ws
	42Rd/+GCQaRJvzniULVfXzUfegjeXqkAYwOHIayyEkBUHHd9IvJZSYm3Cbe/Ai9hmIol
	pWEKkEaApsuZXn3lJcyrXt1fGeimfLomlBYsvU81+F1D8g4esG2IEpWDbhnjgpSKUcrp
	j7WKsoKn2UCDxMARTArudJoy5LDdehGx4NwqwQojt248l+1C+AS0OJfanBz2IjO1L/nX
	wSug==
X-Gm-Message-State: ALoCoQkbXhflt5Ld2pdly0Spd3dFG5DUGoGZAC1g82P8PYTou/5xFpqCQK3LmT+RQ46J8EoTQ8nD
X-Received: by 10.68.248.129 with SMTP id ym1mr719083pbc.32.1445034234096;
	Fri, 16 Oct 2015 15:23:54 -0700 (PDT)
Received: from Akusters-laptop.local (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	tj2sm23172154pab.4.2015.10.16.15.23.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 16 Oct 2015 15:23:53 -0700 (PDT)
To: Philip Balister <philip@balister.org>, chris@2net.co.uk,
	Mark Hatle <mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <561E588D.5060609@2net.co.uk> <561E8278.7080702@windriver.com>
	<561E9E71.3020105@2net.co.uk> <561FCAFC.5060209@balister.org>
From: akuster@mvista <akuster@mvista.com>
Message-ID: <562178F7.1040206@mvista.com>
Date: Fri, 16 Oct 2015 15:23:51 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <561FCAFC.5060209@balister.org>
Subject: Re: RFC: Yocto LTS?
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
X-List-Received-Date: Fri, 16 Oct 2015 22:23:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 10/15/15 8:49 AM, Philip Balister wrote:
> On 10/14/2015 12:26 PM, Chris Simmonds wrote:
>>
>> On 14/10/15 17:27, Mark Hatle wrote:
>>> On 10/14/15 8:28 AM, Chris Simmonds wrote:
>>>> Hi,
>>>>
>>>> Is there a statement about the period of support for a Yocto release?
>>>> Looking through the updates, it seems that 12 months is typical, a was
>>>> the case for 1.4, 1.5 and 1.6 for example, but I cannot see a
>>>> declaration anywhere that this is the expected norm.
>>>>
>>>> Leading on from that, is 12 months enough? Most projects have a
>>>> lifecycle that is much longer. Is there an argument for an LTS Yocto
>>>> release, maybe once a year? If not, what is the recommended way for a
>>>> project developer to keep a distribution up to date in the light of the
>>>> several well-publicised security flaws that have been discovered over
>>>> the last year or so and the new ones that will no doubt be discovered in
>>>> the future?
>>>
>>> https://wiki.yoctoproject.org/wiki/FAQ#What_is_the_overall_support_plan_for_the_Yocto_Project.3F
>>>
>>> =What is the release cycle of the Yocto Project?=
>>> Each release of the Yocto Project is subject to its own release schedule
>>> according to the community-maintained Project Planning Guide. It is generally
>>> expected that a new version of the Yocto Project will be released every six months.
>>>
>>> =What is the overall support plan for the Yocto Project?=
>>> Security patches and critical bug fixes are supplied one release back. No
>>> toolchain or kernel changes are allowed for these updates. Support for longer
>>> periods of time can be supplied by commercial OSVs.
>>>
>>>
>>>
>>> Effectively this means that support is on the last two releases.  Releases are
>>> typically released every 6 months.  After that point it is usually supported by
>>> OSVs, or others that offer commercial services.  In the past we have done a few
>>> very late security fixes past the 'last two releases' point, however that has
>>> been for unique situations.
>>>
>>> You should consider keeping current with the Yocto Project releases or consider
>>> commercial support if you need more then an approx 12 - 18 month support cycle.
>>>
>>> --Mark
>>>
>>
>> Thanks, that is all clear now.
> 
> We wouldn't be opposed to a group of people supporting a release for
> longer. But they would need to provide the people to do the work. LTS
> work is hard.

Not to mention keeping build infrastructure setup, copies of supported
OS working, QA and Target machines working. As an OSV, its not uncommon
to support a distro for 10 or more years.

- Armin
> 
> Philip
> 
>>
>> Chris
>>

