Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43B50E00E51; Mon,  5 Mar 2018 07:52:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6946CE0083E
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 07:52:51 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9320835CE67;
	Mon,  5 Mar 2018 15:52:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 4u84w2gEpaca; Mon,  5 Mar 2018 15:52:42 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B9AE235C145;
	Mon,  5 Mar 2018 15:52:42 +0000 (UTC)
To: Paul Barker <pbarker@toganlabs.com>
References: <2a8d4def-e47b-09f6-327e-d97232b23034@dynamicdevices.co.uk>
	<CAPyrkgw32oNUvVPsFJpvnXSsU5qOA+oZMHd91Zj0NXOqW5tOHQ@mail.gmail.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <bb9e0319-fc61-33d1-096c-596c33c30a60@dynamicdevices.co.uk>
Date: Mon, 5 Mar 2018 15:52:42 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAPyrkgw32oNUvVPsFJpvnXSsU5qOA+oZMHd91Zj0NXOqW5tOHQ@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Connecting AutoBuilder output to GitLab for meta-mono CI
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
X-List-Received-Date: Mon, 05 Mar 2018 15:52:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB



On 05/03/2018 10:35, Paul Barker wrote:
> On Mon, Mar 5, 2018 at 9:52 AM, Alex Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>> Hi all,
>>
>> I've been running an autobuilder locally for a while now to automate testing
>> of meta-mono commits.
>>
>> I see recently saw GitLab seems to support CI workers publishing logs and
>> artifacts to the site and this seems a useful thing to me.
>>
>> Does anybody have any pointers on where to go look for details on how to set
>> this up, or can offer advice to me as I set it up?
>>
>> Thanks,
>>
>> Alex
>>
> The logs are just the stdio/stderr output of the job so to have those
> display properly you'd either need to do everything in GitLab CI or
> have some sort of hack where the GitLab CI job reads the build log
> from your autobuilder and writes it to stdout.
>
> Build artifacts are a bit easier, you could define a GitLab CI job
> that copies the artifacts from your current autobuilder.
>
> You could instead move over to GitLab CI fully but I do find it a bit
> limited at times - there's no high level summary across multiple
> projects so you can't see how often your workers are busy, how many
> builds are queued, etc. I find that ok for a small team but once
> you've got more than 4 or 5 people working together you'll probably
> need those stats to know how to scale your infrastructure.
>
> Thanks,
>

Thanks for that Paul - really useful feedback.

Cheers!

Alex


