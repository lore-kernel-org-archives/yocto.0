Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A411E009E1
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:29:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 8B946862DB;
	Mon,  3 Mar 2014 16:29:34 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id uROc46ObV4Tp; Mon,  3 Mar 2014 16:29:34 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 07FEB8610D;
	Mon,  3 Mar 2014 16:29:34 +0000 (UTC)
Message-ID: <5314ADEA.6040206@dynamicdevices.co.uk>
Date: Mon, 03 Mar 2014 16:29:30 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	Rick Bianchi <bianchirickkutta@gmail.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<53149766.2050608@dynamicdevices.co.uk>
	<2231928.eQF8dO1LsD@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <2231928.eQF8dO1LsD@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 16:29:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 03/03/2014 16:27, Paul Eggleton wrote:
> On Monday 03 March 2014 14:53:26 Alex J Lennon wrote:
>> On 03/03/2014 14:36, Rick Bianchi wrote:
>>> Does anyone know how I can get around this error? There is no such
>>> package on sourceforge "Fetcher failure for URL:
>>> 'http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'.
>>> Unable to fetch URL from any source."
>> Rick, as Paul mentioned there seems to be something really strange going on.
>>
>> If you look in the docbook-utils-native recipe (which is at r3 for me in
>> master:d6596f5e0446b6aa3ae845389965bb2852f17b65) it is 0.6.14
>>
>> That recipe doesn't use the openjade tarball although it has a
>> dependency on openjade-native
>>
>> If you look at the openjade-native recipe it is at version 1.3.2
>>
>> So, you'd expect docbook-utils-native to be pulling down a 0.6.14
>> docbook tarball, or if you were building openjade-native you'd expect
>> the openjade 1.3.2 tarball to be pulled down (I believe)
>>
>> So it looks as though somehow there's some kind of corruption that is
>> mixing up openjade with the 0.6.14 of docbook for some reason.
>>
>> i.e. I don't believe you're going to find a tarball of an
>> openjade-0.6.14 release.
> This is my assessment of what's happening also. I can't understand how this 
> could ever happen, but it looks like SRC_URI is being mixed up between the two 
> recipes, and this is on the dylan (old stable) branch as well.
>
>> It might be better to try checkout out your layers again and doing a
>> rebuild from scratch ?
> Before doing this, Rick could you run the following and post the output:
>
> bitbake -e docbook-utils-native | grep ^SRC_URI=

The other thought that came to mind is that you might disable all the
other layers in your bblayers configuration file, and try building
docbook-utils-native

That at least would isolate whether there's some odd layer interaction
going on.

Cheers, Alex

> Thanks,
> Paul
>



