Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 583CF4C80BD7
	for <yocto@yoctoproject.org>; Wed, 27 Oct 2010 04:27:23 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Oct 2010 02:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,245,1286175600"; d="scan'208";a="620753458"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by fmsmga002.fm.intel.com with ESMTP; 27 Oct 2010 02:27:22 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PB2Ds-0004xV-84; Wed, 27 Oct 2010 17:23:08 +0800
Date: Wed, 27 Oct 2010 17:23:08 +0800
From: Qing He <qing.he@intel.com>
To: rpurdie@linux.intel.com
Message-ID: <20101027092308.GA18748@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Some data collection and analysis on poky performance
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
X-List-Received-Date: Wed, 27 Oct 2010 09:27:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

As we know, many of us have experienced slow builds of recent poky,
and it also takes larger disk space. This affects user exprience thus
is one of our directions in 1.0.

To find the problems leading to performance issues, I tried some
profiling on poky builds, below is a very brief summary of the data.
I profiled poky-image-minimal of both the current master branch and
green release, with similar parameters (4 CPUs) on NHM. Note that
both rpm and ipk packages are built for current master branch, while
oonly ipk packages are built for green release


I. some stats
1. recipes (including -native)
  green release:
    recipes built:  76
    tasks run:  998
  master:
    recipes built: 133
    tasks run:  1600

2. time
  green release:
    real:  28m7s
    user:  57m45s
    sys:    9m41s
    user+sys: 67m26s
  master:
    real:  66m39s
    user: 152m17s
    sys:   27m37s
    user+sys: 179m54s

3. space (haven't analyze though)
  green release:   7.8G
  master:         26.6G


II. profiling
I tried a brief profile by collecting the time used for every task, so
we can scrutinize the result from a microscopic point of view. I'm still
looking into the full result, but there's something of immediate
attention.

In master, hardly any task consume less than 1.3s, this is quite
surprising, since many tasks like do_patch virtually do nothing, while
in the green release, these tasks may simply consume 0.1~0.2s. A deeper
investigation shows that this large overhead goes to bitbake-runtask,
the bitbake config and cache mechanism is executed for every task,
considerably increased the time. The overhead introduced solely by
this is around 1600*1.3=2080s, approximately 35 minutes (user+sys).

Also, we should count the additional rpm packaging system,
do_package_write_rpm costs around 1400s, (excluding 1.3s per task,
btw, this is about 50% slower than do_package_write_ipk, in average),
that's around 23 minutes.

Roughly considering that the build time is proportional to recipes
count, we can try to estimate master build time from green release:
    67 * (76 / 133) + 35 + 23 = 175
very close to the real time consuming (although somewhat too closed...),
so possibly the above two are the most significant time consumers
in the slowness of current poky

Thanks,
Qing





