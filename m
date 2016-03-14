Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25B74E00D5F; Mon, 14 Mar 2016 13:53:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAAF8E00C6B
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 13:53:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 14 Mar 2016 13:53:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,337,1455004800"; d="scan'208";a="936975000"
Received: from mtandon-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.55])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2016 13:53:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Steve Rae <steve.rae@broadcom.com>
Date: Tue, 15 Mar 2016 09:53:08 +1300
Message-ID: <3721500.KpZtWbXOcs@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.4-301.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <CAM7GXokNuDyGS4r3avTBoPY=JmPsEjFHuMcTHtdM7uY4hjwAiA@mail.gmail.com>
References: <CAM7GXo=mfAE5p4tiiYk6wrpSXU6XQTdY7edQJ+kgew-ch9OLZQ@mail.gmail.com>
	<1741984.kMZWBJvbtR@peggleto-mobl.ger.corp.intel.com>
	<CAM7GXokNuDyGS4r3avTBoPY=JmPsEjFHuMcTHtdM7uY4hjwAiA@mail.gmail.com>
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
X-List-Received-Date: Mon, 14 Mar 2016 20:53:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

I hope we are talking a week or less, but I'm not able to give you a definitive 
answer - it depends on patch review and how busy we are dealing with issues on 
the master branch among other things.

Cheers,
Paul

On Mon, 14 Mar 2016 13:49:40 Steve Rae wrote:
> thanks much...
> I am very new to this: does "not long though" mean 2-3 days or 2-3 weeks or
> ???
> 
> 
> On Mon, Mar 14, 2016 at 1:47 PM, Paul Eggleton
> 
> <paul.eggleton@linux.intel.com> wrote:
> > Hi Steve,
> > 
> > I've just sent out the patches; beyond that it's a matter of the stable
> > branch testing and integration process. I hope not long though.
> > 
> > Cheers,
> > Paul
> > 
> > On Mon, 14 Mar 2016 11:51:08 Steve Rae wrote:
> >> Paul -- please ETA for getting this into the "jethro" branch.
> >> Thanks, Steve
> >> 
> >> On Fri, Mar 11, 2016 at 10:11 AM, Steve Rae <steve.rae@broadcom.com> 
wrote:
> >> > OK - this seems to build successfully - Thanks!
> >> > 
> >> >>> although I still do see the line:
> >> >      Cloning into '/tmp/devtool6ZA4IK/workdir/source'...
> >> > 
> >> > On Thu, Mar 10, 2016 at 7:07 PM, Paul Eggleton
> >> > 
> >> > <paul.eggleton@linux.intel.com> wrote:
> >> >> On Fri, 11 Mar 2016 07:55:25 Paul Eggleton wrote:
> >> >>> On Wed, 09 Mar 2016 10:12:30 Steve Rae wrote:
> >> >>> > ( using jethro )
> >> >>> > 
> >> >>> > I have a 'linux-yocto-custom' layer which builds successfully; then
> >> >>> > I
> > 
> > run:
> >> >>> >     devtool modify -x linux-yocto-custom ../../poky-dev/kernel
> >> >>> > >> 
> >> >>> > >> I see a line:
> >> >>> >   Cloning into '/tmp/devtoolfgiLXr/workdir/source'...
> >> >>> > 
> >> >>> > Then I run:
> >> >>> >     devtool build linux-yocto-custom
> >> >>> > >> 
> >> >>> > >> it reports the following:
> >> >>> > Log data follows:
> >> >>> > | DEBUG: Executing shell function do_kernel_configme
> >> >>> > | NOTE: kernel configme
> >> >>> > | [INFO] Configuring target/machine combo: "standard/bcmjava"
> >> >>> > | [ERROR] frag
> >> >>> > 
> >> >>> > /tmp/devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devtool
> >> >>> > fgi
> >> >>> > LXr/
> >> >>> > wo rkdir/defconfig does not exist
> >> >>> > 
> >> >>> > | [ERROR] No configuration fragments found, this typically is a
> >> >>> > 
> >> >>> > misconfigured BSP.
> >> >>> > 
> >> >>> > |         Check that fragments (or defconfigs) are referenced by
> >> >>> > |         the
> >> >>> > |         board
> >> >>> > 
> >> >>> > description.
> >> >>> > 
> >> >>> > | config of "standard/bcmjava" failed
> >> >>> > | WARNING: exit code 1 from a shell command.
> >> >>> > 
> >> >>> > which is true, because "devtool modify -x" deletes the temp
> >> >>> > directory
> >> >>> > ("/tmp/devtoolfgiLXr") that it used to create this specified
> >> >>> > workspace....
> >> >>> 
> >> >>> Hmm, it looks like the temporary path is leaking in somewhere. Is
> >> >>> there
> >> >>> an
> >> >>> easy way I can reproduce this here so I can debug it?
> >> >> 
> >> >> Actually I just realised, this task ought not to be running at all -
> >> >> in
> >> >> master we've disabled it under these circumsances. There's also one
> >> >> other fix on master that you'd benefit from in jethro - I've put them
> >> >> both on this>>
> >> >> 
> >> >> contrib branch:
> >> >>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=paule/
> >> >>   jet
> >> >>   hro-fixes4>>
> >> >> 
> >> >> If you could let me know how it works for you that would be great;
> >> >> I'll
> >> >> send it out soon.
> >> >> 
> >> >> Cheers,
> >> >> Paul
> >> >> 
> >> >> --
> >> >> 
> >> >> Paul Eggleton
> >> >> Intel Open Source Technology Centre
> > 
> > --
> > 
> > Paul Eggleton
> > Intel Open Source Technology Centre

-- 

Paul Eggleton
Intel Open Source Technology Centre

