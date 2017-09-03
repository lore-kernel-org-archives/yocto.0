Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 258AAE00CAF; Sun,  3 Sep 2017 14:35:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E63BE00B83
	for <yocto@yoctoproject.org>; Sun,  3 Sep 2017 14:35:25 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Sep 2017 14:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,471,1498546800"; d="scan'208";a="125229001"
Received: from nabmajid-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.129.136])
	by orsmga004.jf.intel.com with ESMTP; 03 Sep 2017 14:35:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrea Galbusera <gizero@gmail.com>
Date: Mon, 04 Sep 2017 09:35:17 +1200
Message-ID: <3510870.yMZdsysUMk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAC+thW3WCk90+eGs5wiT6bari4MGxxN_ParbySkM4rgTSW0a4Q@mail.gmail.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
	<CAD4b0_LdonvEYaAANBiUhmYN5iaderdSpOMEmqQTtam+Z2s=2g@mail.gmail.com>
	<CAC+thW3WCk90+eGs5wiT6bari4MGxxN_ParbySkM4rgTSW0a4Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Sun, 03 Sep 2017 21:35:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andrea,

On Saturday, 2 September 2017 3:04:00 AM NZST Andrea Galbusera wrote:
> To be honest, the current server was indeed setup with python's
> SimpleHTTPServer... As you suggest, I checked the verbose debug log and
> noticed what's happening behind the apparently happy "Checking sstate
> mirror object availability" step. After a first "SState: Successful fetch
> test for" that I see correctly served with 200 on the server side, tests
> for any other sstate object suddenly and systematically fail with logs like
> this:
> 
> DEBUG: SState: Attempting to fetch file://7d/sstate:libxml2:i586-
> poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz
> DEBUG: Searching for 7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:
> 7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz in paths:
>     /home/vagrant/koan/morty/build/sstate-cache
> DEBUG: Defaulting to /home/vagrant/koan/morty/build/sstate-cache/7d/sstate:
> libxml2:i586-poky-linux:
2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz
> for 7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23b
> db86ac7ab32_package_qa.tgz
> DEBUG: Testing URL file://7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:
> 7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz
> DEBUG: For url ['file', '', '7d/sstate:libxml2:i586-poky-
> linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz', '',
> '', OrderedDict()] comparing ['file', '', '.*', '', '', OrderedDict()] to
> ['http', '192.168.33.1:8000', '
> /sstate-cache/PATH', '', '', OrderedDict([('downloadfilename', 'PATH')])]
> DEBUG: For url file://7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:
> 7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz returning
> http://192.168.33.1:8000/sstate-cache/7d/sstate%3Alibxml2%3Ai586-poky-linux%
> 3A2.9.4%3Ar0%3Ai586%3A3%3A7da8fc
> 3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz;downloadfilename=7d/sstate:
> libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab
> 32_package_qa.tgz
> DEBUG: checkstatus: trying again
> DEBUG: checkstatus() urlopen failed: <urlopen error [Errno 9] Bad file
> descriptor>
> DEBUG: SState: Unsuccessful fetch test for file://7d/sstate:libxml2:i586-
> poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz
> 
> Nothing is reported server-side for any of these failures... As you
> recommend, I'll try to setup something more "decent" for the HTTP server
> and see if it helps.

Right, FYI we were using plain SimpleHTTPServer in oe-selftest, and we had to 
change it because it simply isn't reliable when you throw multiple concurrent 
requests at it as sstate does. There's a ThreadingMixIn you can inherit (see 
meta/lib/oeqa/utils/httpserver.py) but you might as well set up a proper 
server if you're doing more than just testing.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

