Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E439EE00DD9; Fri, 26 Jan 2018 04:12:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1230 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Jan 2018 04:12:51 PST
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
	[217.26.49.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ADDBE00DA3
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 04:12:51 -0800 (PST)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout014.mail.hostpoint.ch with esmtp (Exim 4.90 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1ef2YO-00096R-Gu
	for yocto@yoctoproject.org; Fri, 26 Jan 2018 12:52:20 +0100
Received: from [2a02:168:68c8:1:a46c:fdeb:84c6:6f6d]
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.90 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1ef2YO-000IOj-Db
	for yocto@yoctoproject.org; Fri, 26 Jan 2018 12:52:20 +0100
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: yocto@yoctoproject.org
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <aa633a5b-a067-b6e8-4097-740c1b6dbab6@smart-home-technology.ch>
Date: Fri, 26 Jan 2018 12:52:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: adding meta-virtualization gives bitbake error
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
X-List-Received-Date: Fri, 26 Jan 2018 12:12:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: de-DE

Hello,

we're trying to include meta-virtualization in to our project, in 
particular, we want to use docker. However, as soon as I include the 
layer in to our project, bitbake complains:

bitbake -C compile core-image-base
NOTE: Started PRServer with DBfile: 
/home/jakob/workspace/beerstation/cache/prserv.sqlite3, IP: 127.0.0.1, 
PORT: 46136, PID: 5713
ERROR: Execution of event handler 'virt_bbappend_distrocheck' failed
Traceback (most recent call last):
   File 
"/usr/local/dey-2.2/sources/meta-virtualization/classes/sanity-meta-virt.bbclass", 
line 4, in virt_bbappend_distrocheck(e=<bb.event.SanityCheck object at 
0x7f945e05d3c8>):
      python virt_bbappend_distrocheck() {
     >    skip_check = e.data.getVar('SKIP_META_VIRT_SANITY_CHECK') == "1"
          if 'virtualization' not in 
e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
TypeError: getVar() missing 1 required positional argument: 'expand'

ERROR: Command execution failed: Traceback (most recent call last):
   File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/command.py", 
line 101, in runAsyncCommand
     self.cooker.updateCache()
   File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/cooker.py", line 
1627, in updateCache
     bb.event.fire(bb.event.SanityCheck(False), 
self.databuilder.mcdata[mc])
   File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line 
201, in fire
     fire_class_handlers(event, d)
   File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line 
124, in fire_class_handlers
     execute_handler(name, handler, event, d)
   File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line 
96, in execute_handler
     ret = handler(event)
   File 
"/usr/local/dey-2.2/sources/meta-virtualization/classes/sanity-meta-virt.bbclass", 
line 4, in virt_bbappend_distrocheck
     skip_check = e.data.getVar('SKIP_META_VIRT_SANITY_CHECK') == "1"
TypeError: getVar() missing 1 required positional argument: 'expand'


Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Do we need to checkout a specific branch or so (though I can't find one 
right now)?
Do we need to change some kernel configuration? I added all 
virtualization drivers in the "drivers" section of the kernel config 
already.

We're using DIGI embedded Yocto 2.2 (poky).

Thanks and all the best,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


