Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8118E00E25; Fri, 26 Jan 2018 05:05:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71801E00CF1
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 05:05:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w0QD5d7e003623
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 26 Jan 2018 05:05:40 -0800 (PST)
Received: from server.local (128.224.22.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 26 Jan 2018 05:05:39 -0800
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>,
	<yocto@yoctoproject.org>
References: <aa633a5b-a067-b6e8-4097-740c1b6dbab6@smart-home-technology.ch>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <384be7fc-2992-0654-0bcb-54080d95c608@windriver.com>
Date: Fri, 26 Jan 2018 08:05:38 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <aa633a5b-a067-b6e8-4097-740c1b6dbab6@smart-home-technology.ch>
Subject: Re: adding meta-virtualization gives bitbake error
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
X-List-Received-Date: Fri, 26 Jan 2018 13:05:51 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2018-01-26 6:52 AM, Jakob Hasse wrote:
> Hello,
> 
> we're trying to include meta-virtualization in to our project, in 
> particular, we want to use docker. However, as soon as I include the 
> layer in to our project, bitbake complains:
> 
> bitbake -C compile core-image-base
> NOTE: Started PRServer with DBfile: 
> /home/jakob/workspace/beerstation/cache/prserv.sqlite3, IP: 127.0.0.1, 
> PORT: 46136, PID: 5713
> ERROR: Execution of event handler 'virt_bbappend_distrocheck' failed
> Traceback (most recent call last):
>    File 
> "/usr/local/dey-2.2/sources/meta-virtualization/classes/sanity-meta-virt.bbclass", 
> line 4, in virt_bbappend_distrocheck(e=<bb.event.SanityCheck object at 
> 0x7f945e05d3c8>):
>       python virt_bbappend_distrocheck() {
>      >    skip_check = e.data.getVar('SKIP_META_VIRT_SANITY_CHECK') == "1"
>           if 'virtualization' not in 
> e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
> TypeError: getVar() missing 1 required positional argument: 'expand'
> 
> ERROR: Command execution failed: Traceback (most recent call last):
>    File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/command.py", 
> line 101, in runAsyncCommand
>      self.cooker.updateCache()
>    File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/cooker.py", line 
> 1627, in updateCache
>      bb.event.fire(bb.event.SanityCheck(False), 
> self.databuilder.mcdata[mc])
>    File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line 
> 201, in fire
>      fire_class_handlers(event, d)
>    File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line 
> 124, in fire_class_handlers
>      execute_handler(name, handler, event, d)
>    File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line 
> 96, in execute_handler
>      ret = handler(event)
>    File 
> "/usr/local/dey-2.2/sources/meta-virtualization/classes/sanity-meta-virt.bbclass", 
> line 4, in virt_bbappend_distrocheck
>      skip_check = e.data.getVar('SKIP_META_VIRT_SANITY_CHECK') == "1"
> TypeError: getVar() missing 1 required positional argument: 'expand'
> 
> 
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> 
> 
> Do we need to checkout a specific branch or so (though I can't find one 
> right now)?
> Do we need to change some kernel configuration? I added all 
> virtualization drivers in the "drivers" section of the kernel config 
> already.
> 
> We're using DIGI embedded Yocto 2.2 (poky).
> 

You need to check out the matching branch to the release you've
been given as an enablement, since some of the APIs, etc, have
changed and the meta-virt sanity check that was added later than
the 2.2 release isn't working.

2.2 was the 'morty' release, and meta-virt does have a branch for
that:

----------
% git whatchanged origin/morty

commit eb6b5129561eda9ea1f47e85ab9ed9e5a6b8f64c
Author: Fabio Berton <fabio.berton@ossystems.com.br>
Date:   Tue Nov 28 09:15:59 2017 -0200

     python-*: use https for pypi URLs

     Several of the recipes here were using http URLs for source hosted on
     pypi - pypi apparently no longer supports http so switch to https
     instead.

     Apply this commit [1] to morty branch.
     [1] 
https://www.mail-archive.com/meta-virtualization@yoctoproject.org/msg02821.html

     Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
     Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---------

So check out the morty branch and you'll have better luck.

Bruce


> Thanks and all the best,
> Jakob
> 


