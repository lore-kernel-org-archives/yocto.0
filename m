Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02C49E00CD3; Thu, 10 Mar 2016 19:07:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED458E00CCD
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 19:07:22 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 10 Mar 2016 19:07:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,318,1455004800"; d="scan'208";a="762096787"
Received: from scheong2-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.170.99])
	by orsmga003.jf.intel.com with ESMTP; 10 Mar 2016 19:07:19 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Steve Rae <steve.rae@broadcom.com>
Date: Fri, 11 Mar 2016 16:07:16 +1300
Message-ID: <22778070.Zm7ATvHsG7@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.3-300.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <2731700.yuibnYHsdA@peggleto-mobl.ger.corp.intel.com>
References: <CAM7GXo=mfAE5p4tiiYk6wrpSXU6XQTdY7edQJ+kgew-ch9OLZQ@mail.gmail.com>
	<2731700.yuibnYHsdA@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: kernel: "devtool modify -x" issue
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
X-List-Received-Date: Fri, 11 Mar 2016 03:07:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 11 Mar 2016 07:55:25 Paul Eggleton wrote:
> On Wed, 09 Mar 2016 10:12:30 Steve Rae wrote:
> > ( using jethro )
> > 
> > I have a 'linux-yocto-custom' layer which builds successfully; then I run:
> >     devtool modify -x linux-yocto-custom ../../poky-dev/kernel
> > >> 
> > >> I see a line:
> >   Cloning into '/tmp/devtoolfgiLXr/workdir/source'...
> > 
> > Then I run:
> >     devtool build linux-yocto-custom
> > >> 
> > >> it reports the following:
> > Log data follows:
> > | DEBUG: Executing shell function do_kernel_configme
> > | NOTE: kernel configme
> > | [INFO] Configuring target/machine combo: "standard/bcmjava"
> > | [ERROR] frag
> > 
> > /tmp/devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devtoolfgiLXr/
> > wo rkdir/defconfig does not exist
> > 
> > | [ERROR] No configuration fragments found, this typically is a
> > 
> > misconfigured BSP.
> > 
> > |         Check that fragments (or defconfigs) are referenced by the board
> > 
> > description.
> > 
> > | config of "standard/bcmjava" failed
> > | WARNING: exit code 1 from a shell command.
> > 
> > which is true, because "devtool modify -x" deletes the temp directory
> > ("/tmp/devtoolfgiLXr") that it used to create this specified workspace....
> 
> Hmm, it looks like the temporary path is leaking in somewhere. Is there an
> easy way I can reproduce this here so I can debug it?

Actually I just realised, this task ought not to be running at all - in master
we've disabled it under these circumsances. There's also one other fix on
master that you'd benefit from in jethro - I've put them both on this
contrib branch:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=paule/jethro-fixes4

If you could let me know how it works for you that would be great; I'll send
it out soon.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

