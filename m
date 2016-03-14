Return-Path: <steve.rae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA290E00D74; Mon, 14 Mar 2016 13:54:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21B47E00C6B
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 13:54:06 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id oe12so19634605lbc.0
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 13:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=dnGTEtayuCQGovbdzBjo8mp9icpZWuelTFnFoogpS+w=;
	b=UYj0lvvmXWJEqYe5DUrn2s5QkZyoiwLlBz5DEJTRkh2l6rF4DAPki18H8BV9cYBkf4
	MCnMP1rAXZB8vRTJbX60+2qP9OLz09LMwxODZSIpNgDegSbiWppywaQMuraQqU1sEmJD
	vpo1/8oG9RYjT/UJ2a2dIpuuU4R3/3izHilmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=dnGTEtayuCQGovbdzBjo8mp9icpZWuelTFnFoogpS+w=;
	b=bDNiw/IqmpF0deOcAsSTzT6yvyqSqEN8eHhPlMnR0XSBQ0HpJVpVtK5Ys4g/pbjjuT
	7rVFGrXfh9Yuz39vBQHN6fruZKN6U6BSo5SCz4Bsvj9qrjMq1tUo+hkTzXRByNCMVhpS
	blQ2qHvUxNdHk66mxRTOKWFd54Un7y+esxQsyb/z72sOjDBr51R9kCLa2ffxKtR+cZvY
	oQj0zejR7Gt0n3P+q1WVMaotfSNHd7aaeLxDq2ULDQv3JnxHwmWqC6K2gLcWNmZ1EVLM
	r/U+AycybCapR/cref0nzn/V+0bE1rQ4TGZqPEBh4x0XW6CcTTW88oPGTX3FXhCyx05d
	XAIg==
X-Gm-Message-State: AD7BkJIk69pX03Jj8Tl3hzjAalOIPzsFd5mLyRiQiJf2j5U/ZQ4lddlBioX9s0oJZjnCtw7ALLpkRTwtRrvUVEDo
MIME-Version: 1.0
X-Received: by 10.112.160.232 with SMTP id xn8mr7028076lbb.22.1457988845277;
	Mon, 14 Mar 2016 13:54:05 -0700 (PDT)
Received: by 10.25.214.81 with HTTP; Mon, 14 Mar 2016 13:54:05 -0700 (PDT)
In-Reply-To: <3721500.KpZtWbXOcs@peggleto-mobl.ger.corp.intel.com>
References: <CAM7GXo=mfAE5p4tiiYk6wrpSXU6XQTdY7edQJ+kgew-ch9OLZQ@mail.gmail.com>
	<1741984.kMZWBJvbtR@peggleto-mobl.ger.corp.intel.com>
	<CAM7GXokNuDyGS4r3avTBoPY=JmPsEjFHuMcTHtdM7uY4hjwAiA@mail.gmail.com>
	<3721500.KpZtWbXOcs@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 14 Mar 2016 13:54:05 -0700
Message-ID: <CAM7GXom3DaehS-4DeoyTLe8DtJqm4Tx9wEm=ejY4dSwb7m9sHw@mail.gmail.com>
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
X-List-Received-Date: Mon, 14 Mar 2016 20:54:19 -0000
Content-Type: text/plain; charset=UTF-8

awesome! Thanks

On Mon, Mar 14, 2016 at 1:53 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> I hope we are talking a week or less, but I'm not able to give you a definitive
> answer - it depends on patch review and how busy we are dealing with issues on
> the master branch among other things.
>
> Cheers,
> Paul
>
> On Mon, 14 Mar 2016 13:49:40 Steve Rae wrote:
>> thanks much...
>> I am very new to this: does "not long though" mean 2-3 days or 2-3 weeks or
>> ???
>>
>>
>> On Mon, Mar 14, 2016 at 1:47 PM, Paul Eggleton
>>
>> <paul.eggleton@linux.intel.com> wrote:
>> > Hi Steve,
>> >
>> > I've just sent out the patches; beyond that it's a matter of the stable
>> > branch testing and integration process. I hope not long though.
>> >
>> > Cheers,
>> > Paul
>> >
>> > On Mon, 14 Mar 2016 11:51:08 Steve Rae wrote:
>> >> Paul -- please ETA for getting this into the "jethro" branch.
>> >> Thanks, Steve
>> >>
>> >> On Fri, Mar 11, 2016 at 10:11 AM, Steve Rae <steve.rae@broadcom.com>
> wrote:
>> >> > OK - this seems to build successfully - Thanks!
>> >> >
>> >> >>> although I still do see the line:
>> >> >      Cloning into '/tmp/devtool6ZA4IK/workdir/source'...
>> >> >
>> >> > On Thu, Mar 10, 2016 at 7:07 PM, Paul Eggleton
>> >> >
>> >> > <paul.eggleton@linux.intel.com> wrote:
>> >> >> On Fri, 11 Mar 2016 07:55:25 Paul Eggleton wrote:
>> >> >>> On Wed, 09 Mar 2016 10:12:30 Steve Rae wrote:
>> >> >>> > ( using jethro )
>> >> >>> >
>> >> >>> > I have a 'linux-yocto-custom' layer which builds successfully; then
>> >> >>> > I
>> >
>> > run:
>> >> >>> >     devtool modify -x linux-yocto-custom ../../poky-dev/kernel
>> >> >>> > >>
>> >> >>> > >> I see a line:
>> >> >>> >   Cloning into '/tmp/devtoolfgiLXr/workdir/source'...
>> >> >>> >
>> >> >>> > Then I run:
>> >> >>> >     devtool build linux-yocto-custom
>> >> >>> > >>
>> >> >>> > >> it reports the following:
>> >> >>> > Log data follows:
>> >> >>> > | DEBUG: Executing shell function do_kernel_configme
>> >> >>> > | NOTE: kernel configme
>> >> >>> > | [INFO] Configuring target/machine combo: "standard/bcmjava"
>> >> >>> > | [ERROR] frag
>> >> >>> >
>> >> >>> > /tmp/devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devtool
>> >> >>> > fgi
>> >> >>> > LXr/
>> >> >>> > wo rkdir/defconfig does not exist
>> >> >>> >
>> >> >>> > | [ERROR] No configuration fragments found, this typically is a
>> >> >>> >
>> >> >>> > misconfigured BSP.
>> >> >>> >
>> >> >>> > |         Check that fragments (or defconfigs) are referenced by
>> >> >>> > |         the
>> >> >>> > |         board
>> >> >>> >
>> >> >>> > description.
>> >> >>> >
>> >> >>> > | config of "standard/bcmjava" failed
>> >> >>> > | WARNING: exit code 1 from a shell command.
>> >> >>> >
>> >> >>> > which is true, because "devtool modify -x" deletes the temp
>> >> >>> > directory
>> >> >>> > ("/tmp/devtoolfgiLXr") that it used to create this specified
>> >> >>> > workspace....
>> >> >>>
>> >> >>> Hmm, it looks like the temporary path is leaking in somewhere. Is
>> >> >>> there
>> >> >>> an
>> >> >>> easy way I can reproduce this here so I can debug it?
>> >> >>
>> >> >> Actually I just realised, this task ought not to be running at all -
>> >> >> in
>> >> >> master we've disabled it under these circumsances. There's also one
>> >> >> other fix on master that you'd benefit from in jethro - I've put them
>> >> >> both on this>>
>> >> >>
>> >> >> contrib branch:
>> >> >>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=paule/
>> >> >>   jet
>> >> >>   hro-fixes4>>
>> >> >>
>> >> >> If you could let me know how it works for you that would be great;
>> >> >> I'll
>> >> >> send it out soon.
>> >> >>
>> >> >> Cheers,
>> >> >> Paul
>> >> >>
>> >> >> --
>> >> >>
>> >> >> Paul Eggleton
>> >> >> Intel Open Source Technology Centre
>> >
>> > --
>> >
>> > Paul Eggleton
>> > Intel Open Source Technology Centre
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

