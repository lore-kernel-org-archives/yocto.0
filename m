Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 071534C803A5
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 09:48:17 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Nov 2010 07:48:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,282,1286175600"; d="scan'208";a="343600341"
Received: from unknown (HELO [10.255.12.120]) ([10.255.12.120])
	by azsmga001.ch.intel.com with ESMTP; 02 Nov 2010 07:48:16 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: tiagoprn <tiagoprn@gmail.com>
In-Reply-To: <AANLkTinTjCFQXQ9OJM=r+s6MWduMe0jG25d9=jHiWqbS@mail.gmail.com>
References: <AANLkTi=zOCosKwknHK4nN3dps6hmv4EhnY3zYU6w5Hqp@mail.gmail.com>
	<1288455628.13568.13.camel@elmorro>	<4CCE2FD8.7010006@windriver.com>
	<AANLkTinTjCFQXQ9OJM=r+s6MWduMe0jG25d9=jHiWqbS@mail.gmail.com>
Date: Tue, 02 Nov 2010 09:48:12 -0500
Message-ID: <1288709292.2384.8.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto tools on a nokia n800
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 14:48:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2010-11-02 at 06:20 -0700, tiagoprn wrote:
> Hello again!
> 
> I think nokia n8xx could be a nice example of what yocto/poky are
> capable of.
> 
> Especially now that Nokia has abandoned this devices, it would be cool
> to have a new OS being supported on it. 
> 

Yes, I agree.

> I'm new to poky, so, if you could make it easier to build the toochain
> to build it to a n800, me and many other n8xx owners would be quite
> happy. 

Right, it doesn't seem to be working out of the box - I'll take a look
and see if we can't rescue it from meta-extras...

BTW, I'd actually like to have one of these for myself - can you suggest
a source for them other than eBay?

Thanks,

Tom

> 
> Regards,
> 
> 
> 2010/11/1 Bruce Ashfield <bruce.ashfield@windriver.com>
>         
>         On 10-10-30 12:20 PM, Tom Zanussi wrote:
>                 On Fri, 2010-10-29 at 04:50 -0700, tiagoprn wrote:
>                          Hello everyone!
>                         
>                          I have a question. I have just read about the
>                         yocto/poky projects and
>                         here I am with a hope. :)
>                         
>                          I have a nokia n800 (an internet tablet
>                         abandoned by Nokia just about
>                         2 years ago).
>                         
>                          With poky/yocto project tools, is it possible
>                         to install a linux
>                         toolchain with X and the touchscreen/wireless
>                         components working, for
>                         an example, in a SD Card and boot my device
>                         into it?
>                         
>                          I'm anxious for that.
>                         
>                 
>                 Hi,
>                 
>                 It looks like yocto already has support for the n800 -
>                 there's this
>                 entry in local.conf:
>                 
>                 # Other supported machines
>                 .
>                 .
>                 
>                 
>                 
>                 
>                 
>                 
>                 #MACHINE ?= "nokia800"
>                 
>                 
>                 and see this section in README.hardware:
>                 
>                 'Nokia 770/N800/N810 Internet Tablets (nokia770 and
>                 nokia800)'
>                 
>                 which says:
>                 
>                 "The nokia800 images and kernel will run on both the
>                 N800 and N810"
>                 
>                 Sounds like what you're looking for...
>         
>         
>         The rest of the config has been moved to meta-extras, and
>         we'd need to do a bit of kernel work, but it has worked in the
>         past, and could work again in the future.
>         
>         In other words 'I agree'.
>         
>         Cheers,
>         
>         Bruce
>         
>                 
>                 Tom
>                 
>                 
>                 
>                 
>                 _______________________________________________
>                 yocto mailing list
>                 yocto@yoctoproject.org
>                 https://lists.pokylinux.org/listinfo/yocto
>         
> 
> 
> 
> -- 
> ***
> TIAGOPRN
> Desenvolvedor Web, Linux e Windows
> (Django, Python, Delphi, Lazarus, MySQL, SQLite)
> E-mail: tiagoprn@gmail.com
> Blog: http://tgplima.net84.net
> LinkedIn (profile público):
> http://br.linkedin.com/in/tiagoparanhoslima
> twitter: https://twitter.com/tiagoprn
> identi.ca: http://identi.ca/tiagoprn
> 
> 
> 
> 
> 



