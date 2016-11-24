Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20EECE00D07; Wed, 23 Nov 2016 19:09:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76618E00C31
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 19:09:38 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 23 Nov 2016 19:09:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,689,1473145200"; 
   d="scan'208";a="8716114"
Received: from paolienk-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.213])
	by orsmga002.jf.intel.com with ESMTP; 23 Nov 2016 19:09:35 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michel D'HOOGE <michel.dhooge@free.fr>
Date: Thu, 24 Nov 2016 16:09:33 +1300
Message-ID: <2424887.evz7bmUPsC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1236712221.350820531.1479807888625.JavaMail.root@spooler3-g27.priv.proxad.net>
References: <1236712221.350820531.1479807888625.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: populate_sdk_ext: Unable to locate package nativesdk-buildtools-perl-dummy
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
X-List-Received-Date: Thu, 24 Nov 2016 03:09:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 22 Nov 2016 10:44:48 Michel D'HOOGE wrote:
> > From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
> > Sent: Monday, 21 November, 2016 10:15:16 PM
> > 
> > I suspect it has to do with the arch mapping that goes on in
> > meta/classes/package_deb.bbclass; it probably doesn't understand the
> > dummy architecture we're giving it. The thing is even if it were to be
> > "corrected" to fall back to "all" instead of "allarch" that probably still
> > wouldn't work properly because the architecture of the perl packages would
> > be a higher priority than "all" and thus the dummy package wouldn't take
> > precedence.
> 
> It seems to be OK.
> The only other package with 'perl' in its name is 'nativesdk-git-perltools'.

OK, so it may only be working by chance then - if you did have the nativesdk-
perl package built then I suspect you'd find it would get installed. I'm 
puzzled as to why it hasn't been built though, since it is a dependency of 
some of the other items we do include in buildtools (notably git) and does get 
built when you use rpm as the backend, last I checked anyway.
 
> But I have (another) problem with the manifest files:
> - all "target" manifest files are empty
> - the 'poky-systemd-blah-blah-toolchain-ext-2.2.host.manifest' has a single
> entry: meta-environment-extsdk-vtc7200
> So maybe I don't see everything...

That's expected for the extensible SDK - it isn't built with the same kinds of 
packages that the standard SDK is built with.

> > In any case feel free to file a bug under "OE-Core -> Core" in
> > bugzilla, that> would be a reasonable category for this issue.
> 
> Done: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10700

Thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

