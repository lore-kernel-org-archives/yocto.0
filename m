Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E90CE00B70; Mon, 12 May 2014 04:04:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5C60E00AEE
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 04:03:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4CB3ung000483
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 12 May 2014 04:03:56 -0700 (PDT)
Received: from [128.224.92.167] (128.224.92.167) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Mon, 12 May 2014 04:03:56 -0700
Message-ID: <5370AA9B.3040308@windriver.com>
Date: Mon, 12 May 2014 07:03:55 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Paul McGougan <PMcGougan@topcon.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>	<536CE9B4.6050303@windriver.com>
	<C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
In-Reply-To: <C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
Subject: Re: Question / issue
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
X-List-Received-Date: Mon, 12 May 2014 11:04:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-05-12 01:56 AM, Paul McGougan wrote:
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>
>>> Secondly, (and this is our main issue) I have found that by adding the
>>> do_install_append function, even if it is completely empty, whenever I
>>> try to bitbake anything that depends on the kernel, that bitbake always
>>> re-runs the kernel install stage, even when there have been no changes.
>>> Literally I can run a bitbake, then run the same bitbake command again,
>>> and both times the kernel install stage gets run (this is a problem
>>> because it takes a long time to run). It appears to be happening because
>>> the stampfile is not found every time (the hash appears to be wrong).
>>> Is this a bug? Is there a fix or work-around for this problem?
>
>> In this front, I'm not the best reference. Checking the sstate signature
>> might help, it should show which variables are being used .. and possibly
>> invalidating the signature, triggering the steps to run again.
>
> Thanks Bruce.
>
> Just for reference of anyone else who runs into a similar issue our issue was:
> 1. The do_install_append function was not *really* empty, the content of it
> was commented out.
> 2. The dependency parser when parsing recipes not only looks for content
> changes, but for also for changes to the values of referenced variables, and
> unfortunately it still performs variable-value substitution in commented-out
> code. In our case, we had the variable $DATETIME in there (but commented
> out), this caused the dependency checker to substitute in the current value for
> DATETIME which of course changed on each run.

Aha. That's what I thought it might be (and what I've been hit by
before in the past), sstate signature checking showed the variable
in these other cases .. so I thought I'd suggest it.

Glad to hear you have a working solution.

Cheers,

Bruce

>
> The fix was to add:
> do_install[vardepsexclude] += "DATETIME"
>
> Regards,
> Paul McGougan
>
> Confidentiality Notice:  This message (including attachments) is a private communication solely for use of the intended recipient(s).
> If you are not the intended recipient(s) or believe you received this message in error, notify the sender immediately and then delete this
> message.  Any other use, retention, dissemination or copying is prohibited and may be a violation of law, including the Electronic
> Communication Privacy Act of 1986."
>


