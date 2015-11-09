Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB777E006F3; Mon,  9 Nov 2015 08:21:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A4FFE005B7
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 08:20:59 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Nov 2015 08:20:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,266,1444719600"; d="scan'208";a="815490559"
Received: from armandoa-mobl.amr.corp.intel.com (HELO [10.252.249.223])
	([10.252.249.223])
	by orsmga001.jf.intel.com with ESMTP; 09 Nov 2015 08:20:43 -0800
Message-ID: <5640C7EA.1060409@linux.intel.com>
Date: Mon, 09 Nov 2015 10:20:58 -0600
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <563B4DF9.5030206@mlbassoc.com> <563B66D9.1050808@mlbassoc.com>
	<5640C5B2.7010809@linux.intel.com>
	<4496448.WdMJ1LFoxN@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <4496448.WdMJ1LFoxN@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Python pip
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
X-List-Received-Date: Mon, 09 Nov 2015 16:21:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 09/11/15 10:17, Paul Eggleton wrote:
> On Monday 09 November 2015 10:11:30 Alejandro Hernandez wrote:
>> On 05/11/15 08:25, Gary Thomas wrote:
>>> On 2015-11-05 07:14, Paul Eggleton wrote:
>>>> Hi Gary,
>>>>
>>>> On Thursday 05 November 2015 05:39:21 Gary Thomas wrote:
>>>>> Just curious, does anyone know why OE-core has python3-pip
>>>>> but python-pip is relegated to meta-oe?
>>>> I think it has to do with pip being supplied as part of the standard
>>>> python 3
>>>> distribution from 3.4 onwards. I think for simplicity's sake it might be
>>>> argued that python-pip could be in the same place though.
>> Yes, in fact, python3-pip was included on oe-core after the upgrade to
>> python3.4 since it's now a requirement, I agree, we probably should
>> include python-pip on oe-core too
>>
>>> Thanks, I'll consider sending a patch set for that.
>>>
>>> Sadly, at this point, both packages can't be installed at the
>>> same time as they both call the result "/usr/bin/pip".  Maybe
>>> in keeping with the python/python3 naming, the python3 version
>>> should be installed as pip3?
>> python3-pip recipe had to be created to avoid an issue with the default
>> pip installation by python3.4, its now handled by distutils3, if its
>> only a matter of changing the binary name afterwards from pip to pip3 I
>> see no problem doing this, I am hoping this solves it, but just
>> mentioning that we already had some issues with this, because of the
>> "defaults" python3 expects
> My question would be would renaming it to "pip3" be consistent with how this
> situation is handled on mainstream distributions?
>
> Cheers,
> Paul
Apparently... yes, at least it looks like it on Ubuntu-based distros, 
they use pip -> pip2 and also another binary for pip3.

