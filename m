Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37145E00975; Wed, 14 May 2014 07:35:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 499A6E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:35:27 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WkaHF-0005f6-5E
	for yocto@yoctoproject.org; Wed, 14 May 2014 16:35:25 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 16:35:25 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 16:35:25 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Wed, 14 May 2014 16:35:10 +0200
Message-ID: <lkvuuu$eil$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>	<lkvsj2$vof$1@ger.gmane.org>	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>	<lkvt3i$bhu$1@ger.gmane.org>	<CAJTo0La4jbY+7Tcgf+vf6z1gaHo1tru_Dx8QGx9KLOfdMk2C9Q@mail.gmail.com>	<lkvu7b$qf$1@ger.gmane.org>
	<CAJTo0LZM1BAkH4BHS8=nn86MfVPah5U-HxCGbHyCLjR5XjZXwg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <CAJTo0LZM1BAkH4BHS8=nn86MfVPah5U-HxCGbHyCLjR5XjZXwg@mail.gmail.com>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 14:35:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 14.05.2014 16:27, schrieb Burton, Ross:
> On 14 May 2014 15:22, Neuer User <auslands-kv@gmx.de> wrote:
>> Then started a bitbake. Got a strange error "LCONF_VERSION is 6, should
>> be 5 in bblayers.conf". So I changed it to 5.
> 
> So that's because the Poky layers are a version higher than the
> oe-core layers.  Once you stop using Poky the version drops.  Annoying
> but you won't have to do it again.
> 
Hmm, even if I include poky.conf? Or should I rather use "inherit"?
Would it make a difference? I will make a fast test.

>> Then bitbake works, but it seems to recompile ALL packages?! Is this
>> correct. (I stopped it as it will take half a day to finish).
> 
> Yes.  bitbake doesn't know that "nfc" only actually impacts a few
> recipes, so a changed DISTRO_FEATURES means a new toolchain which
> means everything else rebuilds.
> 
Strangely, when adding the "DISTRO_FEATURES_remove" to local.conf
instead of making a new distro, bitbake does not recompile everything?!

> Half a day for a build suggests you're building in a VM or a slow
> laptop: I recommend using a desktop machine with plenty of RAM.
> 
It's a VM, but just for management purposes. The host is a core-i7
desktop machine. However, I do have Qt5 and this alone takes app 1-2
hours to build. (Actually, only Qt5webkit alone takes more than half an
hour). :-/

> Ross
> 



