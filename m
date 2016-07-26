Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6724CE00D25; Mon, 25 Jul 2016 22:00:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0FC8E00D13
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 22:00:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2016 22:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,423,1464678000"; d="scan'208";a="1002498188"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.139.129])
	by orsmga001.jf.intel.com with ESMTP; 25 Jul 2016 22:00:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Tue, 26 Jul 2016 17:00:12 +1200
Message-ID: <1814307.50VheZsyPG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.4-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <9A639589-3943-4E8B-B172-523AF03E038A@gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAGMdoFmxkfLMO0nDqFQOkor2xmzhegGnYJvj4VnYXiwUy_3jbg@mail.gmail.com>
	<9A639589-3943-4E8B-B172-523AF03E038A@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Tue, 26 Jul 2016 05:00:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 25 Jul 2016 20:34:32 Khem Raj wrote:
> > On Jul 25, 2016, at 8:31 PM, Edward Wingate <edwingate8@gmail.com> wrote:
> > 
> > On Mon, Jul 25, 2016 at 1:27 AM, Nicolas Dechesne
> > 
> > <nicolas.dechesne@linaro.org> wrote:
> >> hmm. you shouldn't set DISTRO in conf/layer.conf, that doesn't sound
> >> right. DISTRO needs to be set in local.conf (or any of the other build
> >> specific conf files).
> > 
> > I agree, I don't know why I had it in conf/layer.conf.  Just
> > beginner's mistake.
> > 
> > I moved DISTRO to local.conf (changed the existing DISTRO ?= "poky" to
> > DISTRO ?= "mydistro") and it still works.  But if I remove DISTRO from
> > conf/distro/mydistro.conf, DISTRO will revert to "poky", even though
> > it is set to my "mydistro" in local.conf.  So it seems I have to have
> > it in both places.
> 
> in your mydistro.conf you should first set the settings that you want to
> customize then include conf/distro/poky.conf not other way around. May be
> we should change poky.conf to use ??= so the substitution happens at the
> end of parsing. but thats for another time.

I'm clearly missing something - why must it be done that way around? If you 
were to set the values you want *after* the include/require then that should 
work just fine, and would be the way I would recommend doing it - it's also 
the way poky-lsb distro does it.

One thing to note is that poky.conf itself sets DISTRO, mostly for historical 
reasons I believe. Thus if you do include/require poky.conf then you may wish 
to set DISTRO back to whatever it should be and you'd have to do that after 
the include/require, not before it.

Another thing to consider is that any _poky overrides will only be applied if 
DISTRO = "poky", thus include/require of poky.conf won't incorporate those 
into your custom distro. You can set DISTROOVERRIDES to include "poky" to 
counter this. In practice though there aren't too many of these - in fact I 
can only see one in the psplash recipe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

