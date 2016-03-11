Return-Path: <steve.rae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C63BBE00B70; Fri, 11 Mar 2016 10:11:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39EBDE00B37
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 10:11:04 -0800 (PST)
Received: by mail-lb0-f169.google.com with SMTP id xr8so161052518lbb.1
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 10:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Q4wG5X9tzQuef3kiQejHslo82DXH53APMmmeDMXkOYM=;
	b=cPK9AxCdMImKiT2UQhyXJVOV8KUtIX5wKUofWD5lNpPSpndC4OwZ0qxftn7YEtvr1I
	3GQubPJOP4z40iMbtQt1JsNaUpTQrjmydLOm8yraOYbSbHdhFVzTeb0ptBvZ1MxK7gXz
	zzNZeHWujcgCAbWJIwL4gV8K3esAL6xgxG9Po=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Q4wG5X9tzQuef3kiQejHslo82DXH53APMmmeDMXkOYM=;
	b=ieH5Elsk+U52Mn04U58VE3qjPucGLQ7Abk0+iXQp3/4c4w99Sb26GrVIIsRXNdIvZz
	k7G3asr+ZXqIZXcx6bO/oMI91WoxNWEHNpmZwqUXeZ78xC9IC4gw07UVI4ZFPUbqjsGM
	B/fk3Nh15X/ToSyoBsr43gjeFhGVkWj802YHXJPrtzzH9uYu8uSyNCnN1NSykFpX9Lxm
	oIABPX5oSx1teGypfyojeVMXqtyf3GNnQ5ZDL4po6XAMxq/2mjymBI1Z3ZMoJVll5tXT
	Wjyi3bxCtLsNYuhjxXsSC8b3aIvKBvRhmAvvbbWEFL84d2HIN/CmTZR934QiWK+bwCXP
	Vf3g==
X-Gm-Message-State: AD7BkJICrFqG1l3W1M6FQ+8B7GS8hez3Xah5en6Nr7TKA4e78/nVHAhsXHnjraz24WWw69C/roOS/7ARSRmMcmWl
MIME-Version: 1.0
X-Received: by 10.112.210.130 with SMTP id mu2mr2986486lbc.144.1457719862260; 
	Fri, 11 Mar 2016 10:11:02 -0800 (PST)
Received: by 10.25.207.196 with HTTP; Fri, 11 Mar 2016 10:11:02 -0800 (PST)
In-Reply-To: <22778070.Zm7ATvHsG7@peggleto-mobl.ger.corp.intel.com>
References: <CAM7GXo=mfAE5p4tiiYk6wrpSXU6XQTdY7edQJ+kgew-ch9OLZQ@mail.gmail.com>
	<2731700.yuibnYHsdA@peggleto-mobl.ger.corp.intel.com>
	<22778070.Zm7ATvHsG7@peggleto-mobl.ger.corp.intel.com>
Date: Fri, 11 Mar 2016 10:11:02 -0800
Message-ID: <CAM7GXo=CpocNA8BJfP8_-qf+GPUf=V4KxWiNE_WTvBikHiko1A@mail.gmail.com>
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
X-List-Received-Date: Fri, 11 Mar 2016 18:11:10 -0000
Content-Type: text/plain; charset=UTF-8

OK - this seems to build successfully - Thanks!

>> although I still do see the line:
     Cloning into '/tmp/devtool6ZA4IK/workdir/source'...

On Thu, Mar 10, 2016 at 7:07 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Fri, 11 Mar 2016 07:55:25 Paul Eggleton wrote:
>> On Wed, 09 Mar 2016 10:12:30 Steve Rae wrote:
>> > ( using jethro )
>> >
>> > I have a 'linux-yocto-custom' layer which builds successfully; then I run:
>> >     devtool modify -x linux-yocto-custom ../../poky-dev/kernel
>> > >>
>> > >> I see a line:
>> >   Cloning into '/tmp/devtoolfgiLXr/workdir/source'...
>> >
>> > Then I run:
>> >     devtool build linux-yocto-custom
>> > >>
>> > >> it reports the following:
>> > Log data follows:
>> > | DEBUG: Executing shell function do_kernel_configme
>> > | NOTE: kernel configme
>> > | [INFO] Configuring target/machine combo: "standard/bcmjava"
>> > | [ERROR] frag
>> >
>> > /tmp/devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devtoolfgiLXr/
>> > wo rkdir/defconfig does not exist
>> >
>> > | [ERROR] No configuration fragments found, this typically is a
>> >
>> > misconfigured BSP.
>> >
>> > |         Check that fragments (or defconfigs) are referenced by the board
>> >
>> > description.
>> >
>> > | config of "standard/bcmjava" failed
>> > | WARNING: exit code 1 from a shell command.
>> >
>> > which is true, because "devtool modify -x" deletes the temp directory
>> > ("/tmp/devtoolfgiLXr") that it used to create this specified workspace....
>>
>> Hmm, it looks like the temporary path is leaking in somewhere. Is there an
>> easy way I can reproduce this here so I can debug it?
>
> Actually I just realised, this task ought not to be running at all - in master
> we've disabled it under these circumsances. There's also one other fix on
> master that you'd benefit from in jethro - I've put them both on this
> contrib branch:
>
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=paule/jethro-fixes4
>
> If you could let me know how it works for you that would be great; I'll send
> it out soon.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

