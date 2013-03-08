Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D0658E006CB;
	Thu,  7 Mar 2013 17:47:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r281kuUD012799
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Mar 2013 17:46:56 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.11) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Thu, 7 Mar 2013 17:46:56 -0800
Message-ID: <5139430F.40403@windriver.com>
Date: Thu, 7 Mar 2013 20:46:55 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com> <51381691.2020605@sssup.it>
	<51389BCB.4000100@windriver.com>
	<CACzyEJ_gBWMYyjcy2PaYuswviK4SoQn=W06vQet+LmOdjZBm1w@mail.gmail.com>
In-Reply-To: <CACzyEJ_gBWMYyjcy2PaYuswviK4SoQn=W06vQet+LmOdjZBm1w@mail.gmail.com>
Cc: Juri Lelli <j.lelli@sssup.it>, "Development list
	for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, yocto@yoctoproject.org
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Fri, 08 Mar 2013 01:47:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-07 4:49 PM, Insop Song wrote:
>>
>> Thanks Juri, I was going to add you to my linux-yocto-3.8 announcement
>> email and due to some last minute debug activities .. it slipped my
>> mind. So I'm using this thread to let you, and anyone else that is
>> interested know that sched_deadline support is available to try out
>> in linux-yocto-3.8.
>>
>
> Could you also add me in the announcement list?

I can definitely do that.

Also if you sign up for the linux-yocto@yoctoproject.org
mailing list, that's where announcements and kernel feature discussions
happen around linux-yocto. It would be a great place (versus this
main yocto mailing list) to talk about sched_deadline in particular.

>
>>
>>>
>>> As I already told to Insop, I don't have any automated test for the
>>> patchset, but I usually run different scenarios using basically this
>>> two tools (and giving a look at simple cases through kernelshark):
>>>
>>> 1- schedtool-dl: https://github.com/jlelli/schedtool-dl
>>>      the idea here is to let a 'yes' run through SCHED_DEADLINE and
>>>      check through kernelshark that the bandwidth enforcement
>>>      mechanism works.
>>>
>>> 2- rt-app: https://github.com/gbagnoli/rt-app
>>>      with this I usually let some tasksets run for several hours on
>>>      a 48-cores machine we have in our lab, I can provide the tasksets
>>>      (json files) and the script to run them.
>>>
>>> Please let me know how I can help further.
>>
>>
>> This is a good start. I have some old references to tests that I'll
>> dig up as well.
>>
>
> You can check this recipes-tool to find out the above programs
> (configuration and installation) in here,
> https://github.com/insop/meta-dl/tree/sched-dl-V7/recipes-tools
>
>
>> I'm looking to develop some "real world" examples of the scheduler
>> class in action, since as we've been saying .. getting those examples
>> will both help the approach and perhaps help get it merged into the
>> mainline kernel.
>>
>
> I've been looking application descriptions when I was in Ericsson, and
> provided cases to Thomas and Juri.
> I am interested in this as well, and include them in easy-to test/validate form.

Great!

Bruce

>
> I will also reply to your other mail shortly.
>
> Regards,
>
> Insop


