Return-Path: <jenslucius@freenet.de>
Received: from mout1.freenet.de (mout1.freenet.de [195.4.92.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE441E00A13
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 07:36:47 -0700 (PDT)
Received: from [195.4.92.140] (helo=mjail0.freenet.de)
	by mout1.freenet.de with esmtpa (ID jenslucius@freenet.de) (port 25)
	(Exim 4.80.1 #4) id 1WW5Eb-0001en-ML
	for yocto@yoctoproject.org; Fri, 04 Apr 2014 16:36:45 +0200
Received: from localhost ([::1]:55945 helo=mjail0.freenet.de)
	by mjail0.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim
	4.80.1 #4) id 1WW5Eb-0004IJ-I9
	for yocto@yoctoproject.org; Fri, 04 Apr 2014 16:36:45 +0200
Received: from mx11.freenet.de ([195.4.92.21]:46748)
	by mjail0.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim
	4.80.1 #4) id 1WW5CI-0001pf-SS
	for yocto@yoctoproject.org; Fri, 04 Apr 2014 16:34:22 +0200
Received: from p5b0e3861.dip0.t-ipconnect.de ([91.14.56.97]:61100
	helo=[192.168.2.12])
	by mx11.freenet.de with esmtpsa (ID jenslucius@freenet.de)
	(TLSv1:DHE-RSA-AES128-SHA:128) (port 587) (Exim 4.80.1 #4)
	id 1WW5CI-0004RD-Ox
	for yocto@yoctoproject.org; Fri, 04 Apr 2014 16:34:22 +0200
Message-ID: <533EC2F7.9070803@freenet.de>
Date: Fri, 04 Apr 2014 16:34:31 +0200
From: Jens Lucius <jenslucius@freenet.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <533B0C8F.9050004@freenet.de>
In-Reply-To: <533B0C8F.9050004@freenet.de>
X-Originated-At: 91.14.56.97!61100
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
X-List-Received-Date: Fri, 04 Apr 2014 14:36:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


> I am a little bit confused if Python Tkinter is included as a package 
> for python in the Yocto system.
>
> - There is a patch for python recipe called 
> "avoid_warning_about_tkinter.patch" which states "_tkinter module 
> needs tk module along with tcl. tk is not yet integrated in yocto so 
> we skip the check for this module. Avoid a warning by not adding this 
> module to missing variable."
> - I have included in my recipe: "python-core python-tkinter" which 
> gave no error, but no tkinter installed and I have tried including 
> "python-core python-modules" which gave me a lot of python modules, 
> but still no tkinter. (tried "from Tkinter import *" which gave an 
> error and no tkinter in /usr/lib/python2.7)
>
> Do I manually need to install another package? Is it included or not? 
> Do I need to do my own recipe?

To answer my own question:

Yes Tkinter is included in Python build but as the patch states it needs 
tcl as well as tk with tcl already included in Yocto and tk not.

Andrei Gherzan wrote a .bb for OE-Core for tk version 8.5.11 which did 
work for me after bumping it to the latest version 8.6.1.

If anybody needs it or wants to integrate it in Yocto here is the bb: 
(just remember to include tk and tcl in your build or add dependencies 
for them in python).

http://pastebin.com/tRGk0U0c

Jens

