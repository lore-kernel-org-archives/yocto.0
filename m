Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 748A7E00D03; Sun,  1 Oct 2017 20:28:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E12CCE00CFC
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 20:28:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v923SnEr011832
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 1 Oct 2017 20:28:50 -0700 (PDT)
Received: from server.local (128.224.21.215) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Sun, 1 Oct 2017 20:28:49 -0700
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1506828179.7624.9.camel@sdl.usu.edu>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <b3ce9b39-bcbc-647e-dad4-8c225d98fec7@windriver.com>
Date: Sun, 1 Oct 2017 23:28:48 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506828179.7624.9.camel@sdl.usu.edu>
Cc: Jack Kiefer <Jack.Kiefer@sdl.usu.edu>
Subject: Re: Configuration fragments not making it into kernel configuration
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
X-List-Received-Date: Mon, 02 Oct 2017 03:28:53 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2017-09-30 11:22 PM, Jonathan Haws wrote:
> All,
> 
> I've created a bbappend that appends to the linux-yocto-rt recipe to
> simply apply configuration fragments.  I've been using this recipe for
> some time (through many releases) but since I moved to the morty branch
> my fragments aren't getting applied to the actual kernel configuration.
>   The kernel_configcheck task doesn't catch the error either.
> 
> What I'm trying to do in a nutshell is disable the in-kernel IGB driver
> and use my own, patched version.  The configuration fragments are
> installed by my recipe in:
> 
> <build>/tmp/work/corei7-64-intel-common-sigma-linux/linux-yocto-
> rt/4.8.3+gitAUTOINC+6d028d2818_4057556c04-r0/
> 
> However the .config file at:
> 
>   <build>/tmp/work/corei7-64-intel-common-sigma-linux/linux-yocto-
> rt/4.8.3+gitAUTOINC+6d028d2818_4057556c04-r0/linux-corei7-64-intel-
> common-preempt-rt-build/.config
> 
> doesn't have the necessary configuration - it still has the default.
> 
> I know I can fix this by simply doing a menuconfig, but that isn't the
> proper way to do it - I have multiple BSP layers that do the same thing
> and they all behave in the same way.
> 
> What am I doing wrong?  I've attached my layer that contains the
> recipe.  If the fragments are getting installed I think the recipe is
> working right - but is there something in the lower-level class that
> isn't working or do I have a configuration that is breaking it?
> 

It could be either.

Let me do a build with your configuration on Monday and see if I
get a similar result.

Bruce

> Any help or direction is appreciated.  This has been really frustrating
> since I know I've done this before and all the threads I've found on
> the lists from before haven't really given an answer - maybe I just
> missed the golden thread?
> 
> Thanks!
> Jon
> 
> 
> 


