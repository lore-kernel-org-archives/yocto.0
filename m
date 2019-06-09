Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDF4EE00942; Sun,  9 Jun 2019 15:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.80.101.70 listed in list.dnswl.org]
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
	[213.80.101.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BE95E0049C
	for <yocto@yoctoproject.org>; Sun,  9 Jun 2019 15:19:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 19C573F428
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 00:19:50 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
	by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id t0edQt3iJ7ok for <yocto@yoctoproject.org>;
	Mon, 10 Jun 2019 00:19:40 +0200 (CEST)
Received: from [10.175.196.210] (h-169-62.A454.priv.bahnhof.se [37.123.169.62])
	(Authenticated sender: mb782575)
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 479963F28E
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 00:19:40 +0200 (CEST)
To: yocto@yoctoproject.org
References: <6bf22911-f264-f7b2-13a3-a914f9b3d2dd@gmail.com>
	<CADz_WD7TRFmcu9YQ+mJ6_nHbKQ5eXp8Fii_AK7ZPDJwhTOVX2A@mail.gmail.com>
	<CAJTo0LbEnsy_Ha5EOHuw8cgzFxH_Kj1U8O7ZsXOje+=y_XsVNA@mail.gmail.com>
	<2b04a1ee-d0a5-8525-7707-c4ff57ca6afe@gmail.com>
	<CAJTo0LaJxsg56pY9Fn5DTjFP5byrd0yFpNcXQAE4x9CPhjDOmw@mail.gmail.com>
	<CADz_WD7w6WztQS1wCcnnkjdTDJ-LTHiqnfQWKqhQ13f_UsqbTg@mail.gmail.com>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <ac5039f5-33d4-4aa7-51a7-deefa60d6137@emagii.com>
Date: Mon, 10 Jun 2019 00:19:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CADz_WD7w6WztQS1wCcnnkjdTDJ-LTHiqnfQWKqhQ13f_UsqbTg@mail.gmail.com>
Subject: Re: Installation help
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
X-List-Received-Date: Sun, 09 Jun 2019 22:19:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: sv
Content-Transfer-Encoding: 8bit

Den 2019-04-08 kl. 20:58, skrev Nataliya Korovkina:
> "example.com <http://example.com>" is not working. If someone needs to 
> check their connection this way, please use 
> CONNECTIVITY_CHECK_URIS="https://www.yoctoproject.org"
> 
I am pretty sure that my Linksys router defines example.com
in its hosts files :-(

BR
Ulf

> N
> 
> On Mon, Apr 8, 2019 at 2:50 PM Burton, Ross <ross.burton@intel.com 
> <mailto:ross.burton@intel.com>> wrote:
> 
>     There must be if example.com <http://example.com> can't be
>     downloaded from...
> 
>     On Mon, 8 Apr 2019 at 19:49, Karshi Hasanov
>     <karshi.hasanov@gmail.com <mailto:karshi.hasanov@gmail.com>> wrote:
>      >
>      > There is nothing wrong with my network network!
>      >
>      > For now the issue is resolved.
>      >
>      > Thanks any way.
>      >
>      >
>      > On 2019-04-08 1:10 p.m., Burton, Ross wrote:
>      > > The better fix is to fix your network.  If you need a proxy,
>     set it in
>      > > local.conf.
>      > >
>      > > Ross
>      > >
>      > > On Mon, 8 Apr 2019 at 18:09, Nataliya Korovkina
>      > > <malus.brandywine@gmail.com
>     <mailto:malus.brandywine@gmail.com>> wrote:
>      > >> Hello Karshi,
>      > >>
>      > >> I had the same message. I added:
>      > >>
>      > >> CONNECTIVITY_CHECK_URIS=""
>      > >>
>      > >> in conf/local.conf as a QUICK FIX. I hope someone has better
>     solution, please?
>      > >>
>      > >> Thanks,
>      > >> Nataliya
>      > >>
>      > >>
>      > >> On Mon, Apr 8, 2019 at 12:43 PM Karshi Hasanov
>     <karshi.hasanov@gmail.com <mailto:karshi.hasanov@gmail.com>> wrote:
>      > >>> Hi all,
>      > >>>
>      > >>> I have followed the
>      > >>>
>      > >>>
>     https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
>      > >>>
>      > >>> when issue the "bitbake core-image-minimal"
>      > >>>
>      > >>> I am keep getting this error:
>      > >>>
>      > >>> ERROR:  OE-core's config sanity checker detected a potential
>      > >>> misconfiguration.
>      > >>>       Either fix the cause of this error or at your own risk
>     disable the
>      > >>> checker (see sanity.conf).
>      > >>>       Following is the list of potential problems / advisories:
>      > >>>
>      > >>>       Fetcher failure for URL: 'https://www.example.com/'. URL
>      > >>> https://www.example.com/ doesn't work.
>      > >>>       Please ensure your host's network is configured correctly,
>      > >>>       or set BB_NO_NETWORK = "1" to disable network access if
>      > >>>       all required sources are on local disk.
>      > >>>
>      > >>> --
>      > >>> _______________________________________________
>      > >>> yocto mailing list
>      > >>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>      > >>> https://lists.yoctoproject.org/listinfo/yocto
>      > >>
>      > >>
>      > >> --
>      > >>
>      > >>
>      > >> Nataliya Korovkina
>      > >>
>      > >> --
>      > >> _______________________________________________
>      > >> yocto mailing list
>      > >> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>      > >> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> -- 
> 
> 
> Nataliya Korovkina
> 
> 


-- 
Best Regards
Ulf Samuelsson

