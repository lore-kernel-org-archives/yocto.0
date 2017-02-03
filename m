Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0F6CE009DA; Fri,  3 Feb 2017 06:18:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 450E5E009CF
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 06:18:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v13EIP5M004065
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 3 Feb 2017 06:18:25 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 3 Feb 2017 06:18:25 -0800
To: David Vincent <freesilicon@gmail.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
References: <20170125103759.15880-1-freesilicon@gmail.com>
	<CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
	<CADkTA4MvR-tpPbyHgDsVV7xcRk5Ef6zKJF335m4vcphYCvhGWg@mail.gmail.com>
	<1710687.9RfHKcS4U3@crde-port-20.cahors.local>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <8fbc2071-b978-977d-8181-9b4cf30bbe17@windriver.com>
Date: Fri, 3 Feb 2017 09:18:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1710687.9RfHKcS4U3@crde-port-20.cahors.local>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-tools][PATCH 0/1] Rework merge of feature branches
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
X-List-Received-Date: Fri, 03 Feb 2017 14:18:30 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-03 03:42 AM, David Vincent wrote:
> On dimanche 29 janvier 2017 23:31:49 CET Bruce Ashfield wrote:
>> On Wed, Jan 25, 2017 at 1:05 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
>> wrote:
>>
>> I spent Friday looking into this in more detail, and to keep things
>> consistent
>> with how the path and config queues are handled, with all the tree
>> manipulations
>> pull out of the various scripts and exposed in the bbclass itself, I ended
>> up with
>> a different implementation of the support.
>>
>> The kern-tools change is the same as you did (and is your change), the
>> difference
>> is in the bbclass processing, where do_patch() modifies the tree, and it
>> consumes
>> the output of the meta-data routine .. versus the kgit-meta script itself.
> Thanks for looking into this and come up with a better implementation. I agree
> that mine was a little harsh.
>> The work can be seen in my poky-contrib tree:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=zedd/kernel,
>> in the
>> commit "kern-tools: re-enable scc merge command".
>>
>> These changes are on master, and passed my testing to merge feature branches
>> into the branch being built.
> Saw it, read it and saw that it was now in master-next, ready to be pulled.
>>
>> If you are able to try it out (on master), that would be great. I'm going
>> to let it
>> soak for a few days, and once it merges to master, it can be ported to
>> morty.
> Sorry, I don't have a master build ready but as soon as I can test it whether
> on morty or master, I will report back.

Perfect. Since I just sent my kernel series to master, I can flip my
builder to morty and have a look as well. I'd still like to confirm that
it does work in your scenario, but I can do the lifting to get it ready
for morty with a run of my own.

Cheers,

Bruce

>
> David
>


