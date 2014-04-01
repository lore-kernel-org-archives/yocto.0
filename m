Return-Path: <jenslucius@freenet.de>
Received: from mout2.freenet.de (mout2.freenet.de [195.4.92.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BAC0E00AEC
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 12:02:36 -0700 (PDT)
Received: from [195.4.92.140] (helo=mjail0.freenet.de)
	by mout2.freenet.de with esmtpa (ID jenslucius@freenet.de) (port 25)
	(Exim 4.80.1 #4) id 1WV3xC-0006sh-KT
	for yocto@yoctoproject.org; Tue, 01 Apr 2014 21:02:34 +0200
Received: from localhost ([::1]:43462 helo=mjail0.freenet.de)
	by mjail0.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim
	4.80.1 #4) id 1WV3xC-0000EZ-GK
	for yocto@yoctoproject.org; Tue, 01 Apr 2014 21:02:34 +0200
Received: from mx13.freenet.de ([195.4.92.23]:51013)
	by mjail0.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim
	4.80.1 #4) id 1WV3u5-0005lu-VV
	for yocto@yoctoproject.org; Tue, 01 Apr 2014 20:59:22 +0200
Received: from p5b0e3861.dip0.t-ipconnect.de ([91.14.56.97]:64969
	helo=[192.168.2.12])
	by mx13.freenet.de with esmtpsa (ID jenslucius@freenet.de)
	(TLSv1:DHE-RSA-AES128-SHA:128) (port 587) (Exim 4.80.1 #4)
	id 1WV3u5-0004h6-PR
	for yocto@yoctoproject.org; Tue, 01 Apr 2014 20:59:21 +0200
Message-ID: <533B0C8F.9050004@freenet.de>
Date: Tue, 01 Apr 2014 20:59:27 +0200
From: Jens Lucius <jenslucius@freenet.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Originated-At: 91.14.56.97!64969
Subject: Is Python Tkinter available for Yocto
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
X-List-Received-Date: Tue, 01 Apr 2014 19:02:42 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am a little bit confused if Python Tkinter is included as a package 
for python in the Yocto system.

Pro:
- The output of "bitbake -e python | grep ^PACKAGES=" shows a package 
called "python-tkinter."
-  In 
"tmp/work/armv6-vfp-poky-linux-gnueabi/python/2.7.3-r0.3/packages-split" 
there is a folder called python-tkinter

Contra:
- There is a patch for python recipe called 
"avoid_warning_about_tkinter.patch" which states "_tkinter module needs 
tk module along with tcl. tk is not yet integrated in yocto so we skip 
the check for this module. Avoid a warning by not  adding this module to 
missing variable."
- I have included in my recipe: "python-core python-tkinter" which gave 
no error, but no tkinter installed and I have tried including 
"python-core python-modules" which gave me a lot of python modules, but 
still no tkinter. (tried "from Tkinter import *" which gave an error and 
no tkinter in /usr/lib/python2.7)

Do I manually need to install another package? Is it included or not? Do 
I need to do my own recipe?

Any help would be appreciated.

Thanks,

Jens

