Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12A01E00CA2; Wed, 27 Sep 2017 12:52:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC86CE00BE8
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 12:52:40 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP; 27 Sep 2017 12:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,446,1500966000"; d="scan'208";a="316960097"
Received: from shaoboo-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.229])
	by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2017 12:52:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 28 Sep 2017 08:52:33 +1300
Message-ID: <3797533.hTcS1boT4l@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAC+thW29EEDcrdz+bvD82fnDSV8Q0siUmXqq0GVcWKAe7W0vYA@mail.gmail.com>
References: <CAC+thW29EEDcrdz+bvD82fnDSV8Q0siUmXqq0GVcWKAe7W0vYA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do_populate_sdk_ext always being triggered
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
X-List-Received-Date: Wed, 27 Sep 2017 19:52:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andrea,

On Wednesday, 27 September 2017 10:17:42 PM NZDT Andrea Galbusera wrote:
> I noticed that periodically running 'bitbake -c do_populate_sdk_ext' for an
> image in my CI loop does always trigger the task to be executed even if no
> changes where applied either to metadata or to the configuration between
> two iterations. Is this expected? If so, why? Shouldn't SDK artifacts
> exploit the sstate as i.e. images do?

Ideally yes, but it's hard for us to tell if the metadata has changed or not, 
given that we care not just about the actual metadata but also any other files 
(scripts etc.) that come with it. Thus we've erred on the side of making it 
build every time.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

