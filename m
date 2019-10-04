Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2352FE00D9F; Thu,  3 Oct 2019 20:39:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B330E00A04
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 20:39:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id x943dTIe007020
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Oct 2019 20:39:29 -0700 (PDT)
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 3 Oct 2019 20:39:28 -0700
To: <sscott@san.rr.com>
References: <00ce01d57a08$590d5270$0b27f750$@san.rr.com>
	<b2f7b1c6-793f-1975-3f7c-30facf8306ba@3mdeb.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <ea80fa58-5f5d-0b75-d6da-e7d62511cbf0@windriver.com>
Date: Thu, 3 Oct 2019 23:39:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b2f7b1c6-793f-1975-3f7c-30facf8306ba@3mdeb.com>
X-Originating-IP: [172.25.44.5]
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: newcomers
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
X-List-Received-Date: Fri, 04 Oct 2019 03:39:48 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 10/3/19 12:38 PM, Maciej Pijanowski wrote:
> 
> On 03.10.2019 18:33, Steve Scott wrote:
>>
>> How would a newcomer get started?

Welcome to the Yocto Project Steve!

Ideally, everything should be linked from:
    https://www.yoctoproject.org/
and there is, in fact a 'Get started here' link there:
    https://www.yoctoproject.org/software-overview/
which ends with a numbered list of documents for new devs/users
in the "New to the Yocto Project" section.


>>
>> Is there an FAQ or Wiki that gives a developer overview of the 
>> project, 

The first link used to be called 'Getting Started' but now it's
called quick build:

https://www.yoctoproject.org/docs/2.7.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html


Oh and the Wikipedia page links to Yoctoproject.org too so that's good.

Do you think we need to simplify the landing page?

>> patch submission process, etc.?
>>
> This one is pretty accurate when it comes to patch submission process:
> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
>>
>> It’s hard to jump on to the moving train…

Yes, there's lots to learn.

When I start new developers, I get them to clone poky and build
core-image-minimal which is prety much what:
 
https://www.yoctoproject.org/docs/current/brief-yoctoprojectqs/brief-yoctoprojectqs.html
does except it uses core-image-sato.

The docs are quite verbose and some people prefer to learn by doing.
Do you think the, "Yocto Project Quick Build" is suitable for that
path?

../Randy

>>
>> *From:*yocto-bounces@yoctoproject.org 
>> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Stephen K Jolley
>> *Sent:* Monday, September 30, 2019 8:50 AM
>> *To:* openembedded-core@lists.openembedded.org; yocto@yoctoproject.org
>> *Subject:* [yocto] (no subject)
>>
>> All,
>>
>> The triage team is starting to try and collect up and classify bugs 
>> which a newcomer to the project would be able to work on in a way 
>> which means people can find them. They're being listed on the triage 
>> page under the appropriate heading:
>>
>> https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs
>>
>> The idea is these bugs should be straight forward for a person to help 
>> work on who doesn't have deep experience with the project.  If anyone 
>> can help, please take ownership of the bug and send patches!  If 
>> anyone needs help/advice there are people on irc who can likely do so, 
>> or some of the more experienced contributors will likely be happy to 
>> help too.
>>
>> Also, the triage team meets weekly and does its best to handle the 
>> bugs reported into the Bugzilla. The number of people attending that 
>> meeting has fallen, as have the number of people available to help fix 
>> bugs. One of the things we hear users report is they don't know how to 
>> help. We (the triage team) are therefore going to start reporting out 
>> the currently 309 unassigned or newcomer bugs.
>>
>> We're hoping people may be able to spare some time now and again to 
>> help out with these.  Bugs are split into two types, "true bugs" where 
>> things don't work as they should and "enhancements" which are features 
>> we'd want to add to the system.  There are also roughly four different 
>> "priority" classes right now, “2.8”, “2.9’, "2.99" and "Future", the 
>> more pressing/urgent issues being in "2.8" and then “2.9”.
>>
>> Please review this link and if a bug is something you would be able to 
>> help with either take ownership of the bug, or send me 
>> (sjolley.yp.pm@gmail.com <mailto:sjolley.yp.pm@gmail.com>) an e-mail 
>> with the bug number you would like and I will assign it to you (please 
>> make sure you have a Bugzilla account).  The list is at: 
>> https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bugs
>>
>> -- 
>>
>> Thanks,
>>
>> */Stephen K. Jolley/*
>>
>> *Yocto Project Program Manager*
>>
>> *7867 SW Bayberry Dr., Beaverton, OR 97007*
>>
>> (*Cell*: (208) 244-4460
>>
>> * *Email*:_s <mailto:stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com 
>> <mailto:jolley.yp.pm@gmail.com>_
>>
>>
> -- 
> Maciej Pijanowski
> Embedded Systems Engineer
> https://3mdeb.com  | @3mdeb_com
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

