Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43B6EE00C69; Wed, 26 Jul 2017 18:11:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF52BE00C60
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:11:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v6R1B1WA026404
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jul 2017 18:11:01 -0700 (PDT)
Received: from [172.25.44.7] (172.25.44.7) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 26 Jul 2017 18:11:01 -0700
To: Riko Ho <antonius.riko@gmail.com>
References: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
	<3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de>
	<118eb01a-00c6-7aff-3e4b-ce3ee56a9841@gmail.com>
	<515b47cb-90af-21e0-7e40-2af2be9326ce@windriver.com>
	<CAByQQ_pBh0RLbsk8f+-nHD_OZ2BnKF59R9z_EdntX9HfOXDUVg@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <8a379ee0-7123-947e-3a1c-f9413bb3d604@windriver.com>
Date: Wed, 26 Jul 2017 21:10:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAByQQ_pBh0RLbsk8f+-nHD_OZ2BnKF59R9z_EdntX9HfOXDUVg@mail.gmail.com>
X-Originating-IP: [172.25.44.7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mpich and yocto ?
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
X-List-Received-Date: Thu, 27 Jul 2017 01:11:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2017-07-26 08:08 PM, Riko Ho wrote:
> Dear Yocto Team Member,
> 
> The cluster is using Ubuntu.
> I haven't checked all the packages on the other computer. I will.
> 
> My goal is getting more hardrive space and compiling speed.
> 
> How can I relate bitbake with mpicc or other compilers needed by yocto 
> (arm-linux-gcc, gcc, etc)?

Do you mean that you want to do part of the build using each node in the 
cluster? That's possible now using distcc/icecream
(https://github.com/icecc/icecream ) but I haven't done it in years
as explained below.

Oh, there's a Stack Overflow entry for YP+distcc/icecream:
 
https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake

and distcc is mentioned in the docs:
    http://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html


Anyway, this just distributes the compilation so:
  - build management,
  - recipe download, unpack, patch, configuring and packaging,
  - linking, etc
are still done centrally.

There are plans to improve the bitbake task manager so that, with
the recipe specific sysroot work that has been done in 2.2, we'd be
able to farm out all of the stages of a package's build to individual
nodes in a cluster:
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=10684
I don't know if that work is a priority for the fall 2.4 release.

Note that depending on your workload, inter-recipe dependencies and
the long time taken to run configure for autotools-based packages is
the bottleneck. Therefore, buying a high-end ( >= 16+16 core )
system with lots (64GB+) RAM and a good IO sub-system results
in core-image-minimal building quickly, certainly under 40 minutes.
    https://wiki.yoctoproject.org/wiki/Build_Performance

Also for repeated builds by one or more developers, sstate-cache is
a huge speed-up with some cost in scripts and people to manage it.


I've wondered if anyone has played with bitbake on an OS that is
known as a single-system image:
    https://en.wikipedia.org/wiki/Single_system_image
On these systems, jobs are transparently moved from the master-node
to idle nodes in the cluster by the operating system. That would be
an interesting academic exercise but it wouldn't be useful in
practice since such OSs are not generally used as far as I know at
least.

I look forward to hearing what your goals and plans are.

../Randy


> 
> I have tested a small code with mpicc and the cluster do the job.
> 
> Thanks for the attention.
> 
> On Jul 27, 2017 3:23 AM, "Randy MacLeod" <randy.macleod@windriver.com 
> <mailto:randy.macleod@windriver.com>> wrote:
>  >
>  > On 2017-07-26 02:09 AM, Riko Ho wrote:
>  >>
>  >> How can we do that ?
>  >>
>  >> bitbake in which node ? I don't understand ?
>  >>
>  >>
>  >> On 26/07/17 13:57, Josef Holzmayr wrote:
>  >>>
>  >>> Hi
>  >>>
>  >>> On 26.07.2017 05:12, Riko Ho wrote:
>  >>>>
>  >>>> Does anyone know on how to run poky on mpich cluster ?
>  >
>  >
>  > That's a rather ambiguous question.
>  >
>  > What OS/Distro is the mpich cluster running?
>  > Have you installed the packages that are required on the host:
>  >    see: "The Build Host Packages" here:
>  >
>  > 
> http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yocto-project-qs.html
>  >
>  > What do you hope to achieve using bitbake?
>  >
>  >
>  >>>
>  >>> As far as I can see, MPICH is a userland library, basically. So it 
> would be the other way round, you could probably run a mpich application 
> on a number of nodes that run some OE/Poky thing.
>  >>>
>  >>> Greetz
>  >
>  >
>  > There is an mpich recipe here:
>  > http://layers.openembedded.org/layerindex/recipe/33348/
>  >
>  > but again, it's not clear what your ultimate goal is.
>  >
>  > ../Randy
>  >
>  >>
>  >> --
>  >> *
>  >>
>  >>
>  >> /*******/
>  >> Sent by Ubuntu LTS 16.04,
>  >> Kind regards,
>  >> Riko Ho
>  >> /*******/
>  >>
>  >> *
>  >>
>  >>
>  >
>  >
>  > --
>  > # Randy MacLeod. SMTS, Linux, Wind River
>  > Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
> Canada, K2K 2W5
> 


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
Canada, K2K 2W5

