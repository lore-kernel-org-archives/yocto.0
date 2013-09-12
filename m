Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 404B7E013E8
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 04:43:50 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-81-79.range86-137.btcentralplus.com
	[86.137.81.79]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id B19CD9527
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 12:43:48 +0100 (BST)
Message-ID: <5231A8F3.4050509@r-finger.com>
Date: Thu, 12 Sep 2013 12:43:47 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130630 Icedove/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <E51394554A503C4E852F9BEE46B03E8DEFCD05@TI-ODIN.tasernet.com>
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DEFCD05@TI-ODIN.tasernet.com>
Subject: Re: How to customize a file coming from another recipe?
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
X-List-Received-Date: Thu, 12 Sep 2013 11:43:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 11/09/13 20:24, Brad Litterell wrote:
> This installs a default configuration file for the service which I now
> want to customize.  What is the recommended way to overwrite or
> customize files in another package?
> 
> Is the best course to create a recipe bbappend for the
> lighttpd_1.4.31.bb file that is being used?

Yes.

> And can I just include a
> new file with the same name in my append and will it overwrite the old
> one, or do I need to create an actual patch file?

Assuming you set up the FILESEXTRAPATHS in the bbappend correctly (as
per documentation), you can just provide the whole file, it just takes
the first instance of the file it locates in the files path.


> Or is it better to create a new separate  recipe that just ships my
> version of the configuration file? How are conflicts handled when two
> recipes attempt to install the same file?

No, do not do this, two packages can't install the same file (if the
file is being staged to the sysroot, bitbake will catch that, but I am
not sure if currently that throws and error or just a warning; in your
case with a file that is not staged in a sysroot the problem would only
become apparent at rootfs time, but I am not sure how the different
package managers handle this).

Tomas

> 
> Thanks,
> Brad
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 


-- 
http://sleepfive.com

