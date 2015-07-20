Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 087BFE009C5; Mon, 20 Jul 2015 11:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E6BBE008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 11:16:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id DFA5A27E2DC;
	Mon, 20 Jul 2015 18:16:42 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id doIluyef7y0Z; Mon, 20 Jul 2015 18:16:41 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id BEE7A27E289;
	Mon, 20 Jul 2015 18:16:41 +0000 (UTC)
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1437151912.git.rich.tollerton@ni.com>
	<55A93AAF.7010601@dynamicdevices.co.uk>
	<87y4iewsku.fsf@weregild.amer.corp.natinst.com>
	<55A94D03.207@dynamicdevices.co.uk>
	<55AA1C97.10704@dynamicdevices.co.uk>
	<878uaar96l.fsf@weregild.amer.corp.natinst.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <55AD3AFD.2010100@dynamicdevices.co.uk>
Date: Mon, 20 Jul 2015 19:16:29 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <878uaar96l.fsf@weregild.amer.corp.natinst.com>
Subject: Re: [meta-mono] [RFC] [PATCH 0/1] Force MONO_CFG_DIR
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
X-List-Received-Date: Mon, 20 Jul 2015 18:16:49 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Richard,

On 20/07/2015 19:11, Richard Tollerton wrote:
> Alex J Lennon <ajlennon@dynamicdevices.co.uk> writes:
>
>> Out of image-full-mono these have problems without gmcs present,
>>
>> Looks like we need a solution for these three to use mcs instead of gmcs,
>>
>> mono-xsp_3.0.11.bb
> I guess I'm the least concerned about this because of the fixes applied
> in git. They still haven't cut a release yet so I'd guess we should just
> create a mono-xsp_git.bb.
>
>> dbus-sharp_0.8.0.bb
> We might be able to work around this by setting $GMCS, judging from
> configure.ac.
>
>> mono-addins_1.1.bb
> We might be able to work around this by setting $MCS, judging from
> configure.ac.
>
> Beyond that, I suppose the most OE-y way of solving this would be to
> promote your script to a full-blown package that PROVIDES gmcs, such
> that mono3 PROVIDES gmcs and mcs, but mono4 only PROVIDES mcs. Or
> something like that.
>
>> Cheers,
>>
>> Alex

I did a set of work today to bring the recipes up to use mcs instead of
gmcs.

Maybe you can take a look? Thanks,

Alex


