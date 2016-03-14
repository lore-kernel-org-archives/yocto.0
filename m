Return-Path: <steve.rae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AB6AE00D64; Mon, 14 Mar 2016 13:49:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57899E00C6B
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 13:49:42 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id oe12so19498191lbc.0
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 13:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=fShXAUvyYRxPjaTBkPT6U2tS35pZ/qRYLQuUzTgvlxc=;
	b=Vo4kggs1pAJEuqSGNokdPHZFFutitBTSXLec7YywB2QSp7bu2NGf9Z1L+tje502uMW
	hTTh+bSa2Va5BqGlnkCsCSldHqlc7GeNWPFQUbCGFExM2wbn0IkODIUIVA+iAg1nHFkw
	KY69nPt4BBfl5JpBbTYYJgbMKF/Q9IUEiXQow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=fShXAUvyYRxPjaTBkPT6U2tS35pZ/qRYLQuUzTgvlxc=;
	b=UF+H+K0fKTha2mr9JKQsNIDdZbfOyVmrxZ/yQuoc4NhpfyRhVom2rzofinZ7blUS9/
	ZHCJjxcIOLRxNFYPLyhZvRmyPxqgijQFEAv3rzLxLD2Qla4uzftZYV8vczUCct6hvqi6
	aMuI41+yOYy0A4ZuciZ+dVEcpGbJ7R/MhUlzNLvjr5Tta1z4zfZUsOe3M/86I6QT3tC0
	eCMM2iRWlJCvuDKxFQY0luCLx9VrYPQORY16ROdPOvmR4WVYwhPJ4/1D55sYQG0xVr6t
	TmptsHI8RVeiwisIGzr89wfNQ8B2Uy1RufkSl8z0uIv0rPfMfoscl8xRDOQvOCMDaVNj
	W6pA==
X-Gm-Message-State: AD7BkJIjoNxXqEV/PwCJgwKdmce1EH1CujbBJS5OpXWoibbtYL8VCB8FqmjsVE4nCG5BleFN4BDXInkgdpL4nJXQ
MIME-Version: 1.0
X-Received: by 10.25.40.81 with SMTP id o78mr6882997lfo.22.1457988580856; Mon,
	14 Mar 2016 13:49:40 -0700 (PDT)
Received: by 10.25.214.81 with HTTP; Mon, 14 Mar 2016 13:49:40 -0700 (PDT)
In-Reply-To: <1741984.kMZWBJvbtR@peggleto-mobl.ger.corp.intel.com>
References: <CAM7GXo=mfAE5p4tiiYk6wrpSXU6XQTdY7edQJ+kgew-ch9OLZQ@mail.gmail.com>
	<CAM7GXo=CpocNA8BJfP8_-qf+GPUf=V4KxWiNE_WTvBikHiko1A@mail.gmail.com>
	<CAM7GXo=vW1b8Kr2g1kOR_exWDi29dZMRD7RZCsKom7wNOVkHfQ@mail.gmail.com>
	<1741984.kMZWBJvbtR@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 14 Mar 2016 13:49:40 -0700
Message-ID: <CAM7GXokNuDyGS4r3avTBoPY=JmPsEjFHuMcTHtdM7uY4hjwAiA@mail.gmail.com>
From: Steve Rae <steve.rae@broadcom.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Mon, 14 Mar 2016 20:49:45 -0000
Content-Type: text/plain; charset=UTF-8

thanks much...
I am very new to this: does "not long though" mean 2-3 days or 2-3 weeks or ???


On Mon, Mar 14, 2016 at 1:47 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Steve,
>
> I've just sent out the patches; beyond that it's a matter of the stable branch
> testing and integration process. I hope not long though.
>
> Cheers,
> Paul
>
> On Mon, 14 Mar 2016 11:51:08 Steve Rae wrote:
>> Paul -- please ETA for getting this into the "jethro" branch.
>> Thanks, Steve
>>
>> On Fri, Mar 11, 2016 at 10:11 AM, Steve Rae <steve.rae@broadcom.com> wrote:
>> > OK - this seems to build successfully - Thanks!
>> >
>> >>> although I still do see the line:
>> >      Cloning into '/tmp/devtool6ZA4IK/workdir/source'...
>> >
>> > On Thu, Mar 10, 2016 at 7:07 PM, Paul Eggleton
>> >
>> > <paul.eggleton@linux.intel.com> wrote:
>> >> On Fri, 11 Mar 2016 07:55:25 Paul Eggleton wrote:
>> >>> On Wed, 09 Mar 2016 10:12:30 Steve Rae wrote:
>> >>> > ( using jethro )
>> >>> >
>> >>> > I have a 'linux-yocto-custom' layer which builds successfully; then I
> run:
>> >>> >     devtool modify -x linux-yocto-custom ../../poky-dev/kernel
>> >>> > >>
>> >>> > >> I see a line:
>> >>> >   Cloning into '/tmp/devtoolfgiLXr/workdir/source'...
>> >>> >
>> >>> > Then I run:
>> >>> >     devtool build linux-yocto-custom
>> >>> > >>
>> >>> > >> it reports the following:
>> >>> > Log data follows:
>> >>> > | DEBUG: Executing shell function do_kernel_configme
>> >>> > | NOTE: kernel configme
>> >>> > | [INFO] Configuring target/machine combo: "standard/bcmjava"
>> >>> > | [ERROR] frag
>> >>> >
>> >>> > /tmp/devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devtoolfgi
>> >>> > LXr/
>> >>> > wo rkdir/defconfig does not exist
>> >>> >
>> >>> > | [ERROR] No configuration fragments found, this typically is a
>> >>> >
>> >>> > misconfigured BSP.
>> >>> >
>> >>> > |         Check that fragments (or defconfigs) are referenced by the
>> >>> > |         board
>> >>> >
>> >>> > description.
>> >>> >
>> >>> > | config of "standard/bcmjava" failed
>> >>> > | WARNING: exit code 1 from a shell command.
>> >>> >
>> >>> > which is true, because "devtool modify -x" deletes the temp directory
>> >>> > ("/tmp/devtoolfgiLXr") that it used to create this specified
>> >>> > workspace....
>> >>>
>> >>> Hmm, it looks like the temporary path is leaking in somewhere. Is there
>> >>> an
>> >>> easy way I can reproduce this here so I can debug it?
>> >>
>> >> Actually I just realised, this task ought not to be running at all - in
>> >> master we've disabled it under these circumsances. There's also one
>> >> other fix on master that you'd benefit from in jethro - I've put them
>> >> both on this>>
>> >> contrib branch:
>> >>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=paule/jet
>> >>   hro-fixes4>>
>> >> If you could let me know how it works for you that would be great; I'll
>> >> send it out soon.
>> >>
>> >> Cheers,
>> >> Paul
>> >>
>> >> --
>> >>
>> >> Paul Eggleton
>> >> Intel Open Source Technology Centre
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

