Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6437E008CE; Wed,  5 Nov 2014 08:31:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90658E00830
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 08:30:46 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Nov 2014 08:30:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,320,1413270000"; d="scan'208";a="617644548"
Received: from sergeypo-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.106])
	by fmsmga001.fm.intel.com with ESMTP; 05 Nov 2014 08:29:36 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Wed, 05 Nov 2014 16:29:35 +0000
Message-ID: <9438180.jZ2sFshZEB@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984115B356@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<1843797.y7lrT8GqOk@peggleto-mobl5.ger.corp.intel.com>
	<30C2D590D16A5C46ADFE6521910377984115B356@AZ-US1EXMB03.global.avaya.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Added package to RDEPENDS in packagegroup, image that IMAGE_INSTALLs packagegroup not rebuilt
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
X-List-Received-Date: Wed, 05 Nov 2014 16:31:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 November 2014 16:16:21 Vuille, Martin wrote:
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: November 05, 2014 11:04 AM
> > 
> > > I don't recall you asking this before, and I certainly never checked.
> > 
> > Yeah, I should really have asked the above, instead I asked about what
> > script you started the build with so we got led down the wrong path -
> > sorry about that.
> > 
> > > ps ax | grep bitbake gives me ...
> > > 
> > > 4165 pts/1    S      0:00 python
> > 
> > /home/platform/Workspace/somename/poky/bitbake/bin/../lib/toaster/m
> > anage.py
> > 
> > > runserver 0.0.0.0:8000 4167 pts/1    Sl     5:05 /usr/bin/python
> > 
> > /home/platform/Workspace/somename/poky/bitbake/bin/../lib/toaster/m
> > anage.py
> > 
> > > runserver 0.0.0.0:8000 4175 ?        Sl     6:58 python
> > > /home/platform/Workspace/somename/poky/bitbake/bin/bitbake --
> > 
> > postread
> > 
> > > conf/toaster.conf --server-only -t xmlrpc -B localhost:8200 4176 pts/1
> > > Sl    24:56 python
> > > /home/platform/Workspace/somename/poky/bitbake/bin/bitbake
> > > --observe-only -u toasterui
> > > 
> > > perhaps because I am running Toaster locally?
> > 
> > OK, so this kind of explains it. To be perfectly honest the bitbake memory
> > resident functionality (which Toaster uses behind the scenes) does have
> > some holes in picking up changes, but I hadn't realised it would manifest
> > in this particular manner. It seems like at the moment you'd need to stop
> > and restart Toaster to be sure that the change gets picked up.
> > 
> > Would you be able to file a bug for this issue mentioning that you are
> > using Toaster? Hopefully we can get some focus on fixing the behaviour.
> 
> Happy to file a bug, still need to wrap my head around the problem.
> 
> So, the hypothesis is that the change was not detected because Toaster was
> running locally at the time. Correct?

Correct.

> If so, I can verify that and file a bug accordingly. I would file that
> against bitbake?

Yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

