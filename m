Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 634BFE00CC9; Mon,  4 Sep 2017 01:56:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFD81E00C01
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 01:56:21 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Sep 2017 01:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,473,1498546800"; d="scan'208";a="125350436"
Received: from nabmajid-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.129.136])
	by orsmga004.jf.intel.com with ESMTP; 04 Sep 2017 01:56:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrea Galbusera <gizero@gmail.com>
Date: Mon, 04 Sep 2017 20:56:13 +1200
Message-ID: <2045341.dPOz5jq8Px@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAC+thW3S79M-w7EYd9bZ9X8p3qz7gF3V6XH=3rH-LEnNE8JBjA@mail.gmail.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
	<1504510407.12799.57.camel@intel.com>
	<CAC+thW3S79M-w7EYd9bZ9X8p3qz7gF3V6XH=3rH-LEnNE8JBjA@mail.gmail.com>
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
X-List-Received-Date: Mon, 04 Sep 2017 08:56:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 4 September 2017 7:59:55 PM NZST Andrea Galbusera wrote:
> On Mon, Sep 4, 2017 at 9:33 AM, Patrick Ohly <patrick.ohly@intel.com> wrote:
> > More recent bitbake should not fail like that anymore. It's still
> > better to use an HTTP server that performs better, though.
> >
> > commit 6fa07752bbd3ac345cd8617da49a70e0b2dd565f
> > Author: Patrick Ohly <patrick.ohly@intel.com>
> > Date:   Mon Jul 17 15:25:10 2017 +0200
> >
> >     fetch2/wget.py: improve error handling during sstate check
> >
> >     When the sstate is accessed via HTTP, the existence check can fail due
> >     to network issues, in which case bitbake silently continues without
> >     sstate.
> >
> >     One such network issue is an HTTP server like Python's own SimpleHTTP
> >     which closes the TCP connection despite an explicit "Keep-Alive" in
> >     the HTTP request header. The server does that without a "close" in the
> >     HTTP response header, so the socket remains in the connection cache,
> >     leading to "urlopen failed: <urlopen error [Errno 9] Bad file
> >     descriptor>" (only visible in "bitbake -D -D" output) when trying to
> >     use the cached connection again.
> >
> >     The connection might also get closed for other reasons (proxy,
> >     timeouts, etc.), so this is something that the client should be able
> >     to handle.
> >
> >     This is achieved by checking for the error, removing the bad
> >     connection, and letting the check_status() method try again with a new
> >     connection. It is necessary to let the second attempt fail
> >     permanently, because bad proxy setups have been observed to also lead
> >     to such broken connections. In that case, we need to abort for real
> >     after trying twice, otherwise a build would just hang forever.
> >
> >     [YOCTO #11782]
> >
> 
> Thank you Patrick for pointing that out. While debugging the issue on morty
> I had some reminiscence of seeing your patch on the list, but I wasn't able
> to find it back in morty's history hence inferring it landed later on.
> Anyway doing this test on morty was a requirement... Thanks again for your
> clarification. Would such a patch be suitable for eventually being
> back-ported to morty?

Doesn't look too invasive to me at least, so I'd support it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

