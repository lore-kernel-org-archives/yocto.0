Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1607AE008EA; Sat, 27 Dec 2014 10:48:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.47.26.152 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69E2BE005B4
	for <yocto@yoctoproject.org>; Sat, 27 Dec 2014 10:48:18 -0800 (PST)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id sBRImHe1006262
	for <yocto@yoctoproject.org>; Sat, 27 Dec 2014 12:48:17 -0600
Received: from DFLE73.ent.ti.com (dfle73.ent.ti.com [128.247.5.110])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id sBRImH5a021113
	for <yocto@yoctoproject.org>; Sat, 27 Dec 2014 12:48:17 -0600
Received: from dflp33.itg.ti.com (10.64.6.16) by DFLE73.ent.ti.com
	(128.247.5.110) with Microsoft SMTP Server id 14.3.174.1;
	Sat, 27 Dec 2014 12:48:17 -0600
Received: from [172.22.137.122] (ileax41-snat.itg.ti.com [10.172.224.153])	by
	dflp33.itg.ti.com (8.14.3/8.13.8) with ESMTP id sBRImHRn024913	for
	<yocto@yoctoproject.org>; Sat, 27 Dec 2014 12:48:17 -0600
Message-ID: <549EFEF1.1040604@ti.com>
Date: Sat, 27 Dec 2014 13:48:17 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <EC0CC42105A97F4A81EA36CDF61DDAD45CA40387@DLEE11.ent.ti.com>
In-Reply-To: <EC0CC42105A97F4A81EA36CDF61DDAD45CA40387@DLEE11.ent.ti.com>
Subject: Re: My config got stuck in the toaster
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
X-List-Received-Date: Sat, 27 Dec 2014 18:48:21 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit


On 12/27/2014 10:40 AM, Mills, William wrote:
> OK, you are not going to believe me but I swear this really happened ...
>
> I have been playing with YP 1.7 over the break.
> I thought I would give toaster a try so I had it running in the background as I tried various builds.
> Somehow I got into a state where changes to my conf/local.conf file were being ignored.
> I fixed it by stopping toaster.
>
> Here is the sequence as I remember:
>
> I was doing builds for qemuarm.
> At some point I started toaster "source toaster start"
> It could have been from a clean build dir but probably I had done a couple of test builds first.
> For qemuarm I built:
>      core-image-minimal, meta-toolchain, core-image-sato, core-image-sato-sdk, world
> I definitely poked around the toaster UI at some of those builds.
> Next in the same build dir (and the same screen session) I edited conf/local.conf to
> MACHINE = qemux86
> I then did core-image-sato again
> It built for qemuarm
> I double check conf/* and ENV settings.
> I rm -rf cache
> still builds for qemuarm
> I stopped toaster with "source toaster stop"
> I rm -rf cache again for safe keeping
> I tried core-image-sato again and it started building for qemux86.
>
> I tried to reproduce this with a clean build dir and a trivial target "bitbake -c clean ed"
> With or without toaster running it always detects the config change and rebuilds the cache.
> In the process I have now learned that removing the cache dir does not cause a reparse as I expected.
> However a config change does.
>
> I thought I had a theory w/ persistent bitbake process and files being kept open
> but I can't connect the dots and I can't reproduce it.
>

Actually it is easy to reproduce.

The first time I tried I don't think toaster was starting as port 8000
was busy. I thought I had stopped the other instance but I guess not.

To reproduce this I did this:

yocto$ $ . poky/oe-init-build-env toasted-build
yocto/toasted-build$ source toaster start
yocto/toasted-build$ bitbake -c clean ed
	runs with MACHINE = "qemux86"
yocto/toasted-build$ mcedit conf/local.conf
	change to MACHINE ??= "qemuarm"
yocto/toasted-build$ bitbake -c clean ed
	still runs for qemux86
yocto/toasted-build$ source toaster stop
yocto/toasted-build$ bitbake -c clean ed
	runs for qemuarm

Am I starting toaster in the wrong way to be just an observer?
I learned how to start toaster this way from:
https://www.yoctoproject.org/documentation/toaster-manual-17  ->
	First link is "How to install and run Toaster locally" ->
https://wiki.yoctoproject.org/wiki/Setting_up_a_local_instance_of_Toaster

The Yocto Project Dev guide say the same thing:
https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#examining-builds-using-toaster

> Any Ideas?
>
> BTW: Building "world" does not look nice in toaster.  It list 100s of build targets instead of just "world".
>
> Thanks,
> Bill
>

