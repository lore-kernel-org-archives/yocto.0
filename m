Return-Path: <jenslucius@freenet.de>
Received: from mout1.freenet.de (mout1.freenet.de [195.4.92.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11E9DE00A13
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 08:38:48 -0700 (PDT)
Received: from [195.4.92.141] (helo=mjail1.freenet.de)
	by mout1.freenet.de with esmtpa (ID jenslucius@freenet.de) (port 25)
	(Exim 4.80.1 #4) id 1WW6Cc-00006k-KG; Fri, 04 Apr 2014 17:38:46 +0200
Received: from localhost ([::1]:53767 helo=mjail1.freenet.de)
	by mjail1.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim
	4.80.1 #4) id 1WW6Cc-0005Ki-EF; Fri, 04 Apr 2014 17:38:46 +0200
Received: from mx5.freenet.de ([195.4.92.15]:49226)
	by mjail1.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim
	4.80.1 #4) id 1WW6Aa-0002rq-JE; Fri, 04 Apr 2014 17:36:40 +0200
Received: from p5b0e3861.dip0.t-ipconnect.de ([91.14.56.97]:61654
	helo=[192.168.2.12])
	by mx5.freenet.de with esmtpsa (ID jenslucius@freenet.de)
	(TLSv1:DHE-RSA-AES128-SHA:128) (port 587) (Exim 4.80.1 #4)
	id 1WW6Aa-0006aN-DA; Fri, 04 Apr 2014 17:36:40 +0200
Message-ID: <533ED18F.9050604@freenet.de>
Date: Fri, 04 Apr 2014 17:36:47 +0200
From: Jens Lucius <jenslucius@freenet.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <533B0C8F.9050004@freenet.de> <533EC2F7.9070803@freenet.de>
	<533EC4F1.1020305@mlbassoc.com>
In-Reply-To: <533EC4F1.1020305@mlbassoc.com>
X-Originated-At: 91.14.56.97!61654
Subject: Re: Is Python Tkinter available for Yocto
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
X-List-Received-Date: Fri, 04 Apr 2014 15:38:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Am 04.04.2014 16:42, schrieb Gary Thomas:
> On 2014-04-04 08:34, Jens Lucius wrote:
>>> I am a little bit confused if Python Tkinter is included as a package for python in the Yocto system.
>>>
>>> - There is a patch for python recipe called "avoid_warning_about_tkinter.patch" which states "_tkinter module needs tk module along with tcl. tk is not yet integrated in yocto so
>>> we skip the check for this module. Avoid a warning by not adding this module to missing variable."
>>> - I have included in my recipe: "python-core python-tkinter" which gave no error, but no tkinter installed and I have tried including "python-core python-modules" which gave me a
>>> lot of python modules, but still no tkinter. (tried "from Tkinter import *" which gave an error and no tkinter in /usr/lib/python2.7)
>>>
>>> Do I manually need to install another package? Is it included or not? Do I need to do my own recipe?
>> To answer my own question:
>>
>> Yes Tkinter is included in Python build but as the patch states it needs tcl as well as tk with tcl already included in Yocto and tk not.
>>
>> Andrei Gherzan wrote a .bb for OE-Core for tk version 8.5.11 which did work for me after bumping it to the latest version 8.6.1.
>>
>> If anybody needs it or wants to integrate it in Yocto here is the bb: (just remember to include tk and tcl in your build or add dependencies for them in python).
>>
>> http://pastebin.com/tRGk0U0c
> Note: there was already a recipe for tk 8.6.0 in meta-oe (always a
> good place to check for missing pieces before crafting your own)
>
Actually there is. Don´t know why I missed that. I just started with 
yocto this week and still get confused where to best look for recipes. 
There is the old openembedded, meta-oe, oe-core/meta, yocto and some are 
floating around in other gits. Would be really nice to have one place to go.

But thanks again for pointing to the meta-oe where I will also look for 
recipes in the future.

