Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B85DE013F9;
	Wed, 19 Sep 2012 14:55:23 -0700 (PDT)
Received: from [98.142.68.244] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1TESEn-000Ogt-Tx; Wed, 19 Sep 2012 21:55:18 +0000
Received: from [10.1.7.39] (ICNET-66-210-165-231.icnet.net [66.210.165.231])
	(authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q8JLtDuP028733
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO);
	Wed, 19 Sep 2012 16:55:14 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.244
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX1/PxKQUCkZfn+eCvO9ws+nPC8s35kSZfQA=
Message-ID: <1348091712.1829.44.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Date: Wed, 19 Sep 2012 16:55:12 -0500
In-Reply-To: <505A311E.8060805@linux.intel.com>
References: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
	<5058675D.9020707@windriver.com> <1347976148.6185.49.camel@empanada>
	<50587DEA.6030508@linux.intel.com> <1347978192.6185.51.camel@empanada>
	<5058892F.3020704@linux.intel.com> <5059E83A.9040306@windriver.com>
	<5059EB19.9070600@linux.intel.com> <505A1690.60007@windriver.com>
	<505A1F76.4070706@linux.intel.com> <505A2982.9010908@windriver.com>
	<505A2BF0.4070906@windriver.com> <505A311E.8060805@linux.intel.com>
X-Mailer: Evolution 3.4.4 (3.4.4-1.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [PATCH 0/1] [linux-yocto-3.0] boot-live.cfg: enable BLK_DEV_INITRD in kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Sep 2012 21:55:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

FYI: I've been using linux-yocto 3.2.  After doing a git pull recently,
I found both my own BSP and crownbay-noemgd to be miss configured, both
for linux-yocto and for xorg.conf, like it couldn't find the
configuration files.  I think the root problem with files not being
found may be a little larger than just the linux-yocto-3.0 bake file.
It was a lot of commits grabbed all at once, and I haven't had time to
isolate which commit changed the behavior.  Restoring a backup of the
files from before the pull restored the prior configuration behavior.



On Wed, 2012-09-19 at 23:54 +0300, Mihai Lindner wrote:
> On 2012-09-19 23:32, Bruce Ashfield wrote:
> > On 12-09-19 04:22 PM, Bruce Ashfield wrote:
> >> On 12-09-19 03:39 PM, Mihai Lindner wrote:
> >>> On 2012-09-19 22:01, Bruce Ashfield wrote:
> >>>> On 12-09-19 11:56 AM, Mihai Lindner wrote:
> >>>>> On 2012-09-19 18:43, Bruce Ashfield wrote:
> >>>>>> On 12-09-18 10:46 AM, Mihai Lindner wrote:
> >>>>>>> On 2012-09-18 17:23, Tom Zanussi wrote:
> >>>>>>>> On Tue, 2012-09-18 at 16:58 +0300, Mihai Lindner wrote:
> >>>>>>>>> On 2012-09-18 16:49, Tom Zanussi wrote:
> >>>>>>>>>> On Tue, 2012-09-18 at 08:21 -0400, Bruce Ashfield wrote:
> >>>>>>>>>>> On 12-09-18 01:59 AM, Mihai Lindner wrote:
> >>>>>>>>>>>> Please pull into linux-yocto-3.0, meta.
> >>>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>> Adding linux-yocto, Darren and Tom.
> >>>>>>>>>>>
> >>>>>>>>>>> This looks fine to me, and we should consider it for all the
> >>>>>>>>>>> repositories,
> >>>>>>>>>>> not just 3.0.
> >>>>>>>>>>>
> >>>>>>>>>>> Tom/Darren. Any side effects you can think of for this change ?
> >>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> No, but shouldn't it already be there, inherited from base.cfg?
> >>>>>>>>>
> >>>>>>>>> For cedartrail, at least, standard.cfg is used.
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> And standard inherits from base, so it should be turned on. Somehow
> >>>>>>>> it's getting turned off in cedartrail...
> >>>>>>>
> >>>>>>> Yes, it the final .config file is turned off. Solved it by setting
> >>>>>>> it in boot-live.
> >>>>>>> --Mihai
> >>>>>>
> >>>>>> To follow up on this, is someone taking a closer look at this config
> >>>>>> to see if we can get a root cause for that option being disabled for
> >>>>>> this board ?
> >>>>>>
> >>>>>> I won't be able to poke at it myself for another day or so.
> >>>>>>
> >>>>>> Bruce
> >>>>>>
> >>>>> I'm still digging on this, trying to figure out what cfg files are
> >>>>> included / omitted by `configme` and why.
> >>>>> base.cfg is not included, nor stanadrd.cfg it seems.
> >>>>> The list of included cfg files is way to short.
> >>>>
> >>>> That likely means the BSP .scc file is missing and update (i.e. does
> >>>> it still have scc_leaf?) and the tools aren't finding it and
> >>>> auto-generating something to get you up and running.
> >>>>
> >>>> I just checked the meta branch here, and it looks to be updated, but
> >>>> if you look at your build's linux source dir, what's in meta/top_tgt ?
> >>>>
> >>>> Bruce
> >>>>
> >>> In meta/top_tgt i have:
> >>>
> >>> /home/mihai/cedartrail/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.32+git5+46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1+1e79e03d115ed177882ab53909a4f3555e434833-r4.1/linux/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
> >>>
> >>>
> >>>
> >>> I've also hit an error, after more verbose runs of
> >>> ./cedartrail-standard in meta/cfg/scratch/obj/:
> >>>
> >>> ./0-cedartrail-standard-897c5c055888aca397b3ab0d7be9e6fa.sco: line 17:
> >>> standard_5b57715386592f694588063dd3ec6ebb: command not found
> >>>
> >>> After this the scripts stops.
> >>>
> >>
> >> Aha. This definitely breaks the configuration chain (and would throw
> >> a hard error in the 3.4 kernel) and is where the options drop. But this
> >> should no way be specific to this board. I'll get something configured
> >> here, since I need to see this happen in front of me.
> > 
> > I've finally reproduced this. Leave the issue with me and I'll get
> > back to you with a fix.
> > 
> > Bruce
> 
> Yay! Thanks.
> It's not specific, it's just easier to hit; for cedartrail only 3.0 is available, and also set as preferred.
> 
> --Mihai
> 
> > 
> >>
> >> Cheers,
> >>
> >> Bruce
> >>
> >>
> >>> Mihai
> >>>
> >>>>
> >>>>>
> >>>>> --Mihai
> >>>>>>>
> >>>>>>>>
> >>>>>>>> Tom
> >>>>>>>>
> >>>>>>>>> --Mihai
> >>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> Tom
> >>>>>>>>>>
> >>>>>>>>>>> Bruce
> >>>>>>>>>>>
> >>>>>>>>>>>> Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0,
> >>>>>>>>>>>> meta branch.
> >>>>>>>>>>>> Cedartrail (at least) cannot boot live from ISO image due to
> >>>>>>>>>>>> BLK_DEV_INITRD missing:
> >>>>>>>>>>>> "VFS: Cannot open root device "ram0" or unkown-block(0,0)"
> >>>>>>>>>>>> Should fix #3050
> >>>>>>>>>>>>
> >>>>>>>>>>>> [YOCTO #3050]
> >>>>>>>>>>>>
> >>>>>>>>>>>> Signed-off-by: Mihai Lindner<mihaix.lindner@linux.intel.com>
> >>>>>>>>>>>> ---
> >>>>>>>>>>>>
> >>>>>>>>>>>> The following changes since commit
> >>>>>>>>>>>> bf5ee4945ee6d748e6abe16356f2357f76b5e2f0:
> >>>>>>>>>>>>
> >>>>>>>>>>>> meta: rename virto.scc to virtio.scc (2012-08-18 22:09:35 -0400)
> >>>>>>>>>>>>
> >>>>>>>>>>>> are available in the git repository at:
> >>>>>>>>>>>> git://git.yoctoproject.org/poky-contrib
> >>>>>>>>>>>> mihai/linux-yocto-3.0/meta
> >>>>>>>>>>>>
> >>>>>>>>>>>> Mihai Lindner (1):
> >>>>>>>>>>>> boot-live.cfg: enable BLK_DEV_INITRD in kernel
> >>>>>>>>>>>>
> >>>>>>>>>>>> meta/cfg/kernel-cache/cfg/boot-live.cfg | 2 ++
> >>>>>>>>>>>> 1 files changed, 2 insertions(+), 0 deletions(-)
> >>>>>>>>>>>>
> >>>>>>>>>>>> Mihai Lindner (1):
> >>>>>>>>>>>> boot-live.cfg: enable BLK_DEV_INITRD in kernel
> >>>>>>>>>>>>
> >>>>>>>>>>>> meta/cfg/kernel-cache/cfg/boot-live.cfg | 2 ++
> >>>>>>>>>>>> 1 files changed, 2 insertions(+), 0 deletions(-)
> >>>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>
> >>>>>
> >>>>
> >>>>
> >>>>
> >>>
> >>>
> >>
> >> _______________________________________________
> >> linux-yocto mailing list
> >> linux-yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/linux-yocto
> > 
> > 
> > 
> 
> 



