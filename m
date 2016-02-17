Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CA2FE00BE8; Wed, 17 Feb 2016 11:40:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF6DE00BC2
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 11:40:50 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 17 Feb 2016 11:40:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,462,1449561600"; d="scan'208";a="887978934"
Received: from wangzhiy-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.75])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2016 11:40:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: gmane@reliableembeddedsystems.com
Date: Thu, 18 Feb 2016 08:40:03 +1300
Message-ID: <2805853.bqzcuJZ3jT@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.5-300.fc23.x86_64; KDE/4.14.16; x86_64; ;
	)
In-Reply-To: <445e5a3625b0edb293ac3cb07da6728e@reliableembeddedsystems.com>
References: <b30acf5cbe7f661029158ab7e80a2ba4@reliableembeddedsystems.com>
	<3066941.Zu6KT7nLmM@peggleto-mobl.ger.corp.intel.com>
	<445e5a3625b0edb293ac3cb07da6728e@reliableembeddedsystems.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, chris_larson@mentor.com
Subject: Re: jethro 2.0.1/ubi-utils not installed on target
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
X-List-Received-Date: Wed, 17 Feb 2016 19:40:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wed, 17 Feb 2016 10:10:16 gmane@reliableembeddedsystems.com wrote:
> On 2016-02-17 04:07, Paul Eggleton wrote:
> > If you want the complete list of packages you can only get it after a
> > recipe has been built, at which time oe-pkgdata-util can be used:
> > 
> > $ oe-pkgdata-util list-pkgs -p mtd-utils
> > mtd-utils-jffs2
> > mtd-utils-ubifs
> > mtd-utils-misc
> > mtd-utils-dbg
> > mtd-utils-dev
> > mtd-utils-doc
> > mtd-utils
>
> So would something I hacked up quickly like this work?
> 
> test.sh:
> -->
> bitbake -s |  awk '{ print $1}' > test.txt
> tail -n +6 test.txt > test1.txt
> while IFS='' read -r line || [[ -n "$line" ]]; do
>      echo "-->"
>      echo "oe-pkgdata-util list-pkgs -p $line"
>      oe-pkgdata-util list-pkgs -p $line 2> /dev/null
>      echo "<--"
> done < test1.txt
> <--

Well, oe-pkgdata-util list-pkgs with no arguments should list all (previously 
built) packages, if that's what you're after. You can also specify a 
wildcarded search term e.g.

  oe-pkgdata-util list-pkgs '*utils*'

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

