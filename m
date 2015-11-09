Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DBD1E006F6; Mon,  9 Nov 2015 08:25:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78E0AE005BB
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 08:25:39 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3F421F811DD; Mon,  9 Nov 2015 09:25:39 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A64DBF811DB;
	Mon,  9 Nov 2015 09:25:38 -0700 (MST)
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <563B4DF9.5030206@mlbassoc.com>
	<3016549.FSiAq4gXjU@peggleto-mobl.ger.corp.intel.com>
	<563B66D9.1050808@mlbassoc.com> <5640C5B2.7010809@linux.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5640C95B.2060205@mlbassoc.com>
Date: Mon, 9 Nov 2015 09:27:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <5640C5B2.7010809@linux.intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 09 Nov 2015 16:25:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-11-09 09:11, Alejandro Hernandez wrote:
>
>
> On 05/11/15 08:25, Gary Thomas wrote:
>> On 2015-11-05 07:14, Paul Eggleton wrote:
>>> Hi Gary,
>>>
>>> On Thursday 05 November 2015 05:39:21 Gary Thomas wrote:
>>>> Just curious, does anyone know why OE-core has python3-pip
>>>> but python-pip is relegated to meta-oe?
>>>
>>> I think it has to do with pip being supplied as part of the standard python 3
>>> distribution from 3.4 onwards. I think for simplicity's sake it might be
>>> argued that python-pip could be in the same place though.
> Yes, in fact, python3-pip was included on oe-core after the upgrade to python3.4 since it's now a requirement, I agree, we probably should include python-pip on oe-core too
>>
>> Thanks, I'll consider sending a patch set for that.
>>
>> Sadly, at this point, both packages can't be installed at the
>> same time as they both call the result "/usr/bin/pip".  Maybe
>> in keeping with the python/python3 naming, the python3 version
>> should be installed as pip3?
>
> python3-pip recipe had to be created to avoid an issue with the default pip installation by python3.4, its now handled by distutils3, if its only a matter of changing the binary
> name afterwards from pip to pip3 I see no problem doing this, I am hoping this solves it, but just mentioning that we already had some issues with this, because of the "defaults"
> python3 expects

In that case, we could rename the Python2 pip as pip2.  I think
they really need different names as they will be installing
packages into very different locations Python2 vs Python3.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

