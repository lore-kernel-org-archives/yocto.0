Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A08BE002AB
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2012 06:38:44 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8D4BCF8120D; Fri, 28 Dec 2012 07:38:43 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 739BAF8120C;
	Fri, 28 Dec 2012 07:38:42 -0700 (MST)
Message-ID: <50DDAEFD.90202@mlbassoc.com>
Date: Fri, 28 Dec 2012 07:38:53 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Lai Eddy <eddy.lai.tw@gmail.com>
References: <CACrgodehbngP-+zvoEyn=Gbr+mqK+w7ipsREOGT4kgbN+K7AvA@mail.gmail.com>
	<50DAE8D5.7090309@mlbassoc.com>
	<CACrgodeMSvt9yr_M_VE0GqTHVFeYXTbMhFzALF762QjXaJMbmg@mail.gmail.com>
In-Reply-To: <CACrgodeMSvt9yr_M_VE0GqTHVFeYXTbMhFzALF762QjXaJMbmg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: enable netbase network interfaces?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Dec 2012 14:38:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-12-27 23:40, Lai Eddy wrote:
> Thanks Gary,
>
> after download and extract the ti cortex A8 BSP . there's only binary image inside, what MACHINE to use to build a beagleboard yocto image?

MACHINE="beagleboard"

Why does this matter?  You asked about how to set up *your* BSP to have
a tailored network interface file.  All you need to do is pattern your
setup after the beagleboard one, as quoted.

n.b. please don't top-post :-(

>
> On 2012-12-25 16:31, Lai Eddy wrote:
>
>     in the "Reference Manual "How do I make sure connected network interfaces are brought up by default?" said 2 files need to be added to enable network interfaces, where can I find
>     template files?
>     ------------------------------__------------------------------__------------------------------__-----------------
>     The default interfaces file provided by the netbase recipe does not automatically bring up network interfaces. Therefore, you will need to add a BSP-specific netbase that includes
>     an interfaces file.
>     For example, add the following files to your layer:
>            meta-MACHINE/recipes-bsp/__netbase/netbase/MACHINE/__interfaces
>            meta-MACHINE/recipes-bsp/__netbase/netbase_5.0.bbappend
>     ------------------------------__------------------------------__------------------------------__------------------
>
>
> Look in meta-ti (git://git.yoctoproject.org/__meta-ti <http://git.yoctoproject.org/meta-ti>):
> $ find meta-ti/recipes-core/netbase/
> meta-ti/recipes-core/netbase/
> meta-ti/recipes-core/netbase/__netbase-5.0
> meta-ti/recipes-core/netbase/__netbase-5.0/beagleboard
> meta-ti/recipes-core/netbase/__netbase-5.0/beagleboard/__interfaces
> meta-ti/recipes-core/netbase/__netbase_5.0.bbappend
>
>
>
> --
> ------------------------------__------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------__------------------------------
> _________________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

