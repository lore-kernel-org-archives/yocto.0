Return-Path: <paul.sherwood@codethink.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C462E009C5; Thu, 13 Aug 2015 06:24:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ducie-dc1.codethink.co.uk (ducie-dc1.codethink.co.uk
	[185.25.241.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B18FE00947
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 06:24:28 -0700 (PDT)
Received: by ducie-dc1.codethink.co.uk (Postfix, from userid 33)
	id CEB624616BB; Thu, 13 Aug 2015 14:24:26 +0100 (BST)
To: Nikolay Dimitrov <picmaster@mail.bg>
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 13 Aug 2015 14:24:26 +0100
From: Paul Sherwood <paul.sherwood@codethink.co.uk>
In-Reply-To: <55CC8E62.7070102@mail.bg>
References: <90967689f471f5ac0cf4edca77457a8c@codethink.co.uk>
	<55CC8E62.7070102@mail.bg>
Message-ID: <0071ba1f11fafdd0812214d3da8ce4b4@codethink.co.uk>
X-Sender: paul.sherwood@codethink.co.uk
User-Agent: Codethink Webmail/0.7.1
Cc: takeshi.saito.xv@renesas.com,
	automotive-discussions@lists.linuxfoundation.org, yocto@yoctoproject.org
Subject: Re: How to submit patches upstream for repos at git.yoctoproject.org (eg meta-renesas)
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
X-List-Received-Date: Thu, 13 Aug 2015 13:24:30 -0000
Content-Type: text/plain;
 charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Nikolay!
On 2015-08-13 13:32, Nikolay Dimitrov wrote:
> On 08/13/2015 02:21 PM, Paul Sherwood wrote:
>> Hi all,
>> I am not affiliated to any Yocto Project member organisation, but am
>> assisting with integration at the Automotive Grade Linux project, 
>> which
>> is re-using some work from upstreams at git.yoctoproject.org
>>
>> Recently members of the AGL community have started contributing 
>> patches
>> for meta-renesas at our mirror [1]. We would like to offer this and
>> future work to upstream, and I am hoping to understand so that I can
>> help guide AGL's activities so that we are properly aligned. Please 
>> can
>> someone guide us on the accepted way to offer these and subsequent 
>> patches?
>>
>> br
>> Paul
>>
>> [1] https://gerrit.automotivelinux.org/gerrit/#/c/4047/
>
> Haven't seen you for a quite a while after Karlsruhe, hope you're 
> doing
> fine.

Small world! I am  very well thank you - it's great to re-connect with 
old friends here :-)

> Regarding the upstreaming guidelines, the usual steps apply - ask
> contributors to push patches as close to the upstream project as
> possible, and just then go downstream, like this (in order of
> preference):
>
> 1. Upstream components
> 2. Yocto meta layer (which you are reusing)
> 3. AGL repos

Understood, thank you. So in this case, for patches to meta-renesas, 
should we email them to this list, or another list, or send directly to 
the maintainer, or is there another mechanism established?

> Also, it would be great if your AGL maintainers can enforce 
> appropriate
> patch tracking by Upstream-status tag + description, as it will help
> everyone.

Yes, I completely agree.

br
Paul

> Kind regards,
> Nikolay

