Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6509FE009B8; Wed,  5 Sep 2018 05:05:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59096E009B2;
	Wed,  5 Sep 2018 05:05:01 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Sep 2018 05:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,333,1531810800"; d="scan'208";a="78156810"
Received: from nrisman-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.139.244])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Sep 2018 05:04:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Halstead <michael@yoctoproject.org>,
	Konrad Scherer <konrad.scherer@windriver.com>
Date: Thu, 06 Sep 2018 00:04:53 +1200
Message-ID: <3087295.eQxHIGtfj0@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <1924287.nmYE9jUvR3@localhost.localdomain>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<2479608.PqWI51YQi8@localhost.localdomain>
	<1924287.nmYE9jUvR3@localhost.localdomain>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] RFC: layer index docker fixes
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
X-List-Received-Date: Wed, 05 Sep 2018 12:05:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 30 August 2018 11:44:10 AM NZST Paul Eggleton wrote:
> On Wednesday, 29 August 2018 10:46:27 PM NZST Paul Eggleton wrote:
> > I know Konrad promised to update the docker-compose setup to be closer
> > to what we'd done recently with the docker setup, but I needed something
> > urgently and wanted to learn how to use docker-compose anyway, so I've
> > put this together:
> > 
> >   http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log/?h=paule/docker-compose
> > 
> > Let me know what you think - it works well enough for me here, although the
> > setup commands are now a bit ugly on their own.
> 
> I realised this morning that "docker-compose run" can simplify a lot of the
> docker run commands, so I've just converted most of the commands in 
> docker/README and pushed the branch again.

So, any comments?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



