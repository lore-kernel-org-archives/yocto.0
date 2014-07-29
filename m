Return-Path: <dvhart@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 195E5E00563; Tue, 29 Jul 2014 08:41:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B62BBE003FA;
	Tue, 29 Jul 2014 08:41:43 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Jul 2014 08:41:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,757,1400050800"; d="scan'208";a="462728866"
Received: from dvhart-mac01.jf.intel.com (HELO localhost) ([10.24.0.186])
	by azsmga001.ch.intel.com with ESMTP; 29 Jul 2014 08:41:07 -0700
Date: Tue, 29 Jul 2014 08:41:09 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <20140729154109.GB31587@dvhart-mac01.local>
References: <46282394-4892-46D1-B523-197B44CAEF9B@keylevel.com>
MIME-Version: 1.0
In-Reply-To: <46282394-4892-46D1-B523-197B44CAEF9B@keylevel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: meta-intel@yoctoproject.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel] Why won't my app use multiple threads under 'valleyisland'?
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
X-List-Received-Date: Tue, 29 Jul 2014 15:41:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 24, 2014 at 09:45:41PM +0100, Chris Tapp wrote:
> I've got a recipe for an application. This has:
> 
> 1) A main thread;
> 2) An OpenGL ('X' / EGL) graphics rendering thread created using posix threads;
> 3) As many threads as required from the graphics thread for GStreamer to service various pipelines.
> 
> On a Cedartrail platform this happily uses multiple cores.

Major difference here is graphics chip, cedartrail uses EMGD binary drivers,
baytrail (valleyisland) uses the open source Intel i965 drivers.

I recently (yesterday) updated meta-intel master and daisy to properly support
video acceleration in gstreamer 1.0 - I don't know if this impacts you or not.

> 
> However, if I use the same recipe under a 64-bit valleyisland build (daisy) it
> only ever uses a single core (and virtually grinds to a halt).
> 
> 'top' shows CPU usage for the application never goes above 25% (J1900, so four
> cores available). Running four instances of 'yes' gets the total CPU usage to
> 100%, so all the cores are available.

Does /proc/cpu list four cores?

> 
> 'taskset' shows that the affinity mask for the application is not restricting
> the set of available cores.
> 
> Umm... Any ideas what's going on here?
> 
> It looks as if GStreamer and OpenGL are fighting for access to something, but
> the pipelines only render to 'fakesink' and 'appsink'.
> 

I don't have any GL/GST development experience, so this is likely best taken to
those respective lists.

--
Darren

