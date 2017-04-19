Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED590E00AB6; Wed, 19 Apr 2017 04:26:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD275E00A4C
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:26:23 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id f10so12705595uaa.2
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uamlNG+gu4Bl9HAAHLv8oaelVMxFXtuV+r6RGLSlnoM=;
	b=vduGtbEQlLFksTx+nAYJUX7l73Kwh2VWbT7Wgt4+CG4Ow06u67M4f0Yk4szoj+J7ob
	DXtKABnuwlTyKUoQVHvK67kexML/iatcUp+JndIiDgl7PoSFbKPnKhNFHbRHKkpmSjaC
	goLcuYAaPi6Fc+1I0Nnz+yV2OxeHP8XIl/lznOkrWgMRH9foS9yRUb/murRBa5fJawjf
	yu+YN16YeHiPMUg1PIHZkvp23EJzPaTeGz9m2vV2KuZmxdM3R1wUeHcccxOpOiq9J9dM
	WARMKWodpTBhvVigwEp+guw5/3hd0MKJfFaVDh4HGPF/RdRJS98hLv9lpKzgdAEjwJgJ
	li8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uamlNG+gu4Bl9HAAHLv8oaelVMxFXtuV+r6RGLSlnoM=;
	b=MDn57uFxbZoPKKRzQwwjp8burxZSxr+LlDADiWVJxQOauh86ZDETeWymUTAgagXqW+
	lV4vbFzzgahSmVfI+AYVJUpES9/LWL7B7Vf7Bx1/OIcsaZVCxofNP81x7nHjGRx+x3bg
	wFMaLjJHv/yL7AMwjO4xYQAoT19MZYpHUBZRnQs5DIYtylernn+FD2FauQ3Ef10/YU5x
	7CIThUNbKp+VNh+dDb2Ad9lg9g9oY9nWoq5cMbMFU3WZ0Oe05BoNV8KzVYKwsxgbLBZl
	mgcMWYeBC7VWVDMnl0SDX3V215UX8bvjJaPsujKaWSaoWrhv8AGXyT3bMRM4sL4q8xkj
	mneA==
X-Gm-Message-State: AN3rC/6G6ALfKaaWJfQfwVZ9Mhyy4Q1+IZg2xdbadLAf9VZlcgQIYoB2
	pXcRx54KjRvzb7HrJPJNPYEUP6KR5HHb
X-Received: by 10.176.90.200 with SMTP id x8mr1040124uae.44.1492601182233;
	Wed, 19 Apr 2017 04:26:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Wed, 19 Apr 2017 04:26:21 -0700 (PDT)
In-Reply-To: <CAK18fxEy4Gnns4q+MrXJj==hr0CRSJK3xB=sh-yCFRUsaG7PeQ@mail.gmail.com>
References: <CAK18fxEy4Gnns4q+MrXJj==hr0CRSJK3xB=sh-yCFRUsaG7PeQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 19 Apr 2017 13:26:21 +0200
Message-ID: <CALbNGRR-AGWLmGiZGbYi4RqqMTUnDz=YJgoeak6qVX8FTzR6wA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Unified serial console device option
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
X-List-Received-Date: Wed, 19 Apr 2017 11:26:33 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 19, 2017 at 1:00 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hello all,
>
> I'm trying to have the ability for user to use serial0 as serial port
> on the header and serial1 (when available) for Bluetooth. In this way
> rpi2 and rpi3 (32b) will have the same configuration. The story goes
> identical for rpi0 and rpi0-wifi.
>
> Now, what I was planning to do is:
> 1. create udev rules to generate the the symlinks accordingly to dt aliases.
> 2. add the above package (with the rules) as a machine recommends
> (MACHINE_ESSENTIAL_*).
> 3. and then change all the SERIAL_CONSOLE = 'serial0 115200'
>
> This works great with one exception: system parses the console
> argument in cmdline and spawns through a generator a new getty
> instance on that device. Adding systemd-serialgetty package will make
> system have two getty services on the same device (serial0 and for
> example AMA0) which is obviously unusable and wrong. Sysvinit works
> ok.
>
> Then I thought to make this completely optional:
> 1. create udev rules to generate the the symlinks accordingly to dt aliases.
> 2. make SERIAL_CONSOLE configurable (default assignments)
> 3. a user wanting to take advantage of the udev rules will have to add
> the rpi udev rules to the image and modify in his/her local.conf
> SERIAL_CONSOLE
>
> Currently we have a cascade setup for our machine configuration: ex
> rpi3 includes rpi2 and tweaks some things. We do this to avoid some
> duplication (even though the gain is really minimal - 2-3 lines).
> Anyway it is something after all.
>
> This again looks fine but because we have machine which include other
> machine conf, I endded up having a problem when I want to overwrite
> both definitions: see rpi3 which includes rpi2 (defines a
> SERIAL_CONSOLE) than overwrites SERIAL_CONSOLE.
>
> What do you guys think as a way forward? One way would be to make the
> boards definitions be stand alone and use default assignments which I
> think it would fix everything and make the mechanism completely
> optional.
>
> BTW: This would unlock the ability to create a raspberrypi-all machine
> that would work on any raspberry board (armv6 + wifi firmware + etc).
>
I would prefer standalone configurations as I found the including
approach confusing several times and I am not interested in
raspberrypi-all personally (quite the oposite: different Pi machines
is a yocto test case for me)

Andreas

