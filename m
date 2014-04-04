Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E37F5E00A13
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 07:42:53 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A7449F811FF; Fri,  4 Apr 2014 08:42:52 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id BA7F7F811DD;
	Fri,  4 Apr 2014 08:42:50 -0600 (MDT)
Message-ID: <533EC4F1.1020305@mlbassoc.com>
Date: Fri, 04 Apr 2014 08:42:57 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <533B0C8F.9050004@freenet.de> <533EC2F7.9070803@freenet.de>
In-Reply-To: <533EC2F7.9070803@freenet.de>
X-Enigmail-Version: 1.5.2
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
X-List-Received-Date: Fri, 04 Apr 2014 14:42:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-04-04 08:34, Jens Lucius wrote:
> 
>> I am a little bit confused if Python Tkinter is included as a package for python in the Yocto system.
>>
>> - There is a patch for python recipe called "avoid_warning_about_tkinter.patch" which states "_tkinter module needs tk module along with tcl. tk is not yet integrated in yocto so
>> we skip the check for this module. Avoid a warning by not adding this module to missing variable."
>> - I have included in my recipe: "python-core python-tkinter" which gave no error, but no tkinter installed and I have tried including "python-core python-modules" which gave me a
>> lot of python modules, but still no tkinter. (tried "from Tkinter import *" which gave an error and no tkinter in /usr/lib/python2.7)
>>
>> Do I manually need to install another package? Is it included or not? Do I need to do my own recipe?
> 
> To answer my own question:
> 
> Yes Tkinter is included in Python build but as the patch states it needs tcl as well as tk with tcl already included in Yocto and tk not.
> 
> Andrei Gherzan wrote a .bb for OE-Core for tk version 8.5.11 which did work for me after bumping it to the latest version 8.6.1.
> 
> If anybody needs it or wants to integrate it in Yocto here is the bb: (just remember to include tk and tcl in your build or add dependencies for them in python).
> 
> http://pastebin.com/tRGk0U0c

Note: there was already a recipe for tk 8.6.0 in meta-oe (always a
good place to check for missing pieces before crafting your own)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

