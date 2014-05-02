Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08EDAE009C1; Thu,  1 May 2014 21:46:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5203E0096C
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 21:46:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s424kO5A003608
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 May 2014 21:46:24 -0700 (PDT)
Received: from server.local (128.224.21.52) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 1 May 2014 21:46:24 -0700
Message-ID: <53632357.1070904@windriver.com>
Date: Fri, 2 May 2014 00:47:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Sudhangathan B S <sudhangathan@gmail.com>, "General mailing list for
	gumstix users." <gumstix-users@lists.sourceforge.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAGX3a9_GzmU_f2RZPHdWM2SQVOdNkBMwxf8t84ri0xuzsmNmfg@mail.gmail.com>	<5360FA25.40006@windriver.com>	<CAGX3a98E2GzTEOcBLfV_FmxqoqTuHr75t0TmNn+RJAVOnvPXKw@mail.gmail.com>
	<CAGX3a99ixL0CvRQLmxLCaK0Zrdd22ET25S=OCKpk+AJnQxRmOQ@mail.gmail.com>
In-Reply-To: <CAGX3a99ixL0CvRQLmxLCaK0Zrdd22ET25S=OCKpk+AJnQxRmOQ@mail.gmail.com>
Subject: Re: Blacklisting drivers in poky or in yocto project
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
X-List-Received-Date: Fri, 02 May 2014 04:46:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-01, 2:24 PM, Sudhangathan B S wrote:
> The Update:
> I blacklisted all related drivers, i.e., libertas, libertas_sdio,
> cfg80211 and ipv6, but still all these driver modules got autoloaded..!!
>
> The method I used: in the file /etc/modprobe.d/blacklist.conf, i added
> these following lines:
> blacklist ipv6
> blacklist cfg80211
> blacklist libertas
> blacklist libertas_sdio

I can't recall if yocto 1.4 had switched to kmod, or if it was still
the legacy mod-utils ? Can you confirm with one is in play here ?

>
> I also tried the same in /lib/modprobe.d/blacklist.conf, but to no
> avail. Every time the modules were getting autoloaded..!!!

Have you looked for /etc/modules ? Or any other references to them
on the filesystem ?

>
> And also where can I look for this autoload feature..?

I'm not familiar with the kernel you are using, but have you confirmed
that either hotplug events or uevents and a helper are not being
triggered and loading the modules ?

Bruce

>
> Best,
>
>
>
> ---------------------------------
> Sudhangathan BS
> Ph:(+91) 9731-905-205
> ---------------------------------
>
>
> On Thu, May 1, 2014 at 1:46 AM, Sudhangathan B S <sudhangathan@gmail.com
> <mailto:sudhangathan@gmail.com>> wrote:
>
>     Yes i confirm the loading of modules everytime using lsmod.
>
>     I'm using the standard installation of yocto project from Gumstix
>     Repo, and also the PM branch kernel from Kevin Hilman's repo. Kernel
>     version is 3.4. So i did not specify autoloading of modules anywhere.
>
>     A grep of module_autoload showed kernel-module-split.bbclass as a
>     reference. Is this the file you are talking about..? It will be good
>     to know if it is because this module_autoload..!!
>
>     And moreover I now have a doubt if the blaclisting is not working
>     because of the dependencies. I will reply again after blacklisting
>     all related drivers. Esp. the cfg802 driver.
>
>     Thanks Bruce,
>
>     Sudhangathan BS.
>
>     Working on a MMX Android 110.
>     --If you have not travelled, you have not lived.
>
>     On 30-Apr-2014 6:57 PM, "Bruce Ashfield"
>     <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>>
>     wrote:
>      >
>      > On 14-04-30 03:40 AM, Sudhangathan B S wrote:
>      >>
>      >> Hi all,
>      >>
>      >> I need to prevent my wifi drivers auto loading during boot time.
>     How do
>      >> we do it in the Poky OS or in the Yocto project..?
>      >
>      >
>      > Are you actually seeing a confirmed auto load of modules ?
>      >
>      > In a standard image kernel modules will not be autoloaded unless
>      > specifically requested via a recipe with :
>     module_autoload_<module name>.
>      >
>      > I'm not talking about a usermode helper / on demand load, but
>      > an explicit autoload + dependencies.
>      >
>      > Bruce
>      >
>      >
>      >
>      >
>      >>
>      >> I tried both the fedora way and debian way, neither worked.!
>     this is as
>      >> given in this website..:
>      >>
>     http://www.cyberciti.biz/tips/avoid-linux-kernel-module-driver-autoloading.html
>      >>
>      >>
>      >> I'm using gumstix overo hardware..! Poky version 9.0.2, Yocto
>     Project
>      >> 1.4 Reference Distro, 1.4.2 overo.
>      >>
>      >>
>      >> ---------------------------------
>      >> Sudhangathan BS
>      >> Ph:(+91) 9731-905-205 <tel:%28%2B91%29%209731-905-205>
>      >> ---------------------------------
>      >>
>      >>
>      >
>
>
>
>


