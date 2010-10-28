Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF83E4C80FA4
	for <yocto@yoctoproject.org>; Wed, 27 Oct 2010 19:57:42 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Oct 2010 17:57:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,248,1286175600"; d="scan'208";a="341388319"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 27 Oct 2010 17:57:41 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 28 Oct 2010 08:57:29 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 28 Oct 2010 08:57:29 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 28 Oct 2010 08:57:28 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "He, Qing" <qing.he@intel.com>, "rpurdie@linux.intel.com"
	<rpurdie@linux.intel.com>
Date: Thu, 28 Oct 2010 08:57:25 +0800
Thread-Topic: [yocto] Some data collection and analysis on poky performance
Thread-Index: Act1uS4Ov8VnSOJxSGe5NMfXuQbpYQAgGc0g
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D12778EE3@shsmsx502.ccr.corp.intel.com>
References: <20101027092308.GA18748@qhe2-db>
In-Reply-To: <20101027092308.GA18748@qhe2-db>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some data collection and analysis on poky performance
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
X-List-Received-Date: Thu, 28 Oct 2010 00:57:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Qing He
>Sent: Wednesday, October 27, 2010 5:23 PM
>
>As we know, many of us have experienced slow builds of recent poky,
>and it also takes larger disk space. This affects user exprience thus
>is one of our directions in 1.0.

thanks Qing, that's a great start.

>
>To find the problems leading to performance issues, I tried some
>profiling on poky builds, below is a very brief summary of the data.
>I profiled poky-image-minimal of both the current master branch and
>green release, with similar parameters (4 CPUs) on NHM. Note that
>both rpm and ipk packages are built for current master branch, while
>oonly ipk packages are built for green release
>
>
>I. some stats
>1. recipes (including -native)
>  green release:
>    recipes built:  76
>    tasks run:  998
>  master:
>    recipes built: 133
>    tasks run:  1600

could you get a compare list which recipes have been newly added? I thought=
 that
minimal image was seldom changed...

>
>2. time
>  green release:
>    real:  28m7s
>    user:  57m45s
>    sys:    9m41s
>    user+sys: 67m26s
>  master:
>    real:  66m39s
>    user: 152m17s
>    sys:   27m37s
>    user+sys: 179m54s
>
>3. space (haven't analyze though)
>  green release:   7.8G
>  master:         26.6G

I recall that RP mentioned debug symbol is enabled in current master, but I=
'm not sure
whether green has done the same. You may double-confirm that part first.

>
>
>II. profiling
>I tried a brief profile by collecting the time used for every task, so
>we can scrutinize the result from a microscopic point of view. I'm still
>looking into the full result, but there's something of immediate
>attention.
>
>In master, hardly any task consume less than 1.3s, this is quite
>surprising, since many tasks like do_patch virtually do nothing, while
>in the green release, these tasks may simply consume 0.1~0.2s. A deeper
>investigation shows that this large overhead goes to bitbake-runtask,
>the bitbake config and cache mechanism is executed for every task,
>considerably increased the time. The overhead introduced solely by
>this is around 1600*1.3=3D2080s, approximately 35 minutes (user+sys).

It's said this change comes from pseudo integration. Now it's time for us t=
o
revisit this implementation then. RP can have more insights here.

>
>Also, we should count the additional rpm packaging system,
>do_package_write_rpm costs around 1400s, (excluding 1.3s per task,
>btw, this is about 50% slower than do_package_write_ipk, in average),
>that's around 23 minutes.
>
>Roughly considering that the build time is proportional to recipes
>count, we can try to estimate master build time from green release:
>    67 * (76 / 133) + 35 + 23 =3D 175
>very close to the real time consuming (although somewhat too closed...),
>so possibly the above two are the most significant time consumers
>in the slowness of current poky
>

above are all good findings!

Thanks
Kevin

