Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9F0CE00B44; Thu,  5 Nov 2015 06:24:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D44E9E0089D
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 06:24:10 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B8D41F811DD; Thu,  5 Nov 2015 07:24:09 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 46331F811D7;
	Thu,  5 Nov 2015 07:24:09 -0700 (MST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <563B4DF9.5030206@mlbassoc.com>
	<3016549.FSiAq4gXjU@peggleto-mobl.ger.corp.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <563B66D9.1050808@mlbassoc.com>
Date: Thu, 5 Nov 2015 07:25:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <3016549.FSiAq4gXjU@peggleto-mobl.ger.corp.intel.com>
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
X-List-Received-Date: Thu, 05 Nov 2015 14:24:11 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-11-05 07:14, Paul Eggleton wrote:
> Hi Gary,
>
> On Thursday 05 November 2015 05:39:21 Gary Thomas wrote:
>> Just curious, does anyone know why OE-core has python3-pip
>> but python-pip is relegated to meta-oe?
>
> I think it has to do with pip being supplied as part of the standard python 3
> distribution from 3.4 onwards. I think for simplicity's sake it might be
> argued that python-pip could be in the same place though.

Thanks, I'll consider sending a patch set for that.

Sadly, at this point, both packages can't be installed at the
same time as they both call the result "/usr/bin/pip".  Maybe
in keeping with the python/python3 naming, the python3 version
should be installed as pip3?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

