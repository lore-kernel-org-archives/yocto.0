Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07E20E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 09:24:07 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so5339309pbb.35
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 09:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GRYkP8x6fIg2VMt4BK1HHDL+abr/zwE6l1ShmEgs6N4=;
	b=oVIHdxqcWVJNvm2GOzPrrTjOVOoVEyfocMp0f/f9DW8qjDE/l8aedSIETEtpQTICb/
	QZgGe5H+RPXUx52piAJl8QSsBcnKZLnjzk076PWOKa21pKsmuNybeU2q5pV0uTgiFGRv
	Ab1/eIkAVWFLrUpEF0iQXZxmFs2PDo8ydjIkgsretPdZfK741usIyl40WVugPHyUtqx2
	jMG4hbBBFVdMcpeeKNoTH+wkDEA0WrXHIgEJSKX3/pemumwn/W2KMET2aTgv6MF/LDmN
	1HjQS6MFYOFMbKTu+cu4NF5ro1Fz3lbS/b/bXFfS02faHnLTHkZYbBBveAFvXa3cQPQn
	AIvA==
MIME-Version: 1.0
Received: by 10.68.204.227 with SMTP id lb3mr18394063pbc.92.1336148646642;
	Fri, 04 May 2012 09:24:06 -0700 (PDT)
Received: by 10.68.14.166 with HTTP; Fri, 4 May 2012 09:24:06 -0700 (PDT)
In-Reply-To: <BLU0-SMTP9800BBCD2EEA3D7A38253CB92C0@phx.gbl>
References: <BLU0-SMTP9800BBCD2EEA3D7A38253CB92C0@phx.gbl>
Date: Fri, 4 May 2012 12:24:06 -0400
Message-ID: <CADzUK1KLD-kR+_q+SaynkV25k8pk0frn+UwPARM9qN3rd4jd1w@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: jack <woailinux@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: When "bitbake core-image-sato-sdk", Error: Function failed: do_kernel_configme. Who can explain Bruce Ashfield's solution? thank you!
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
X-List-Received-Date: Fri, 04 May 2012 16:24:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, May 4, 2012 at 12:10 PM, jack <woailinux@hotmail.com> wrote:
> Hello, all! When "bitbake core-image-sato-sdk", I was puzzled by such
> errors:
>
>
> NOTE: package
> linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4:
> task do_kernel_configme: Started
> ERROR: Function failed: do_kernel_configme (see
> /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
> for further information)
> ERROR: Logfile of failure stored in:
> /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
> Log data follows:
> | ERROR: Function failed: do_kernel_configme (see
> /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
> for further information)
> | [INFO] doing kernel configme
> |
> /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/run.do_kernel_configme.18778:
> line 92:
> :/home/jackie/esdc/poky/scripts:/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/linux/scripts/util:
> No such file or directory
> NOTE: package
> linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4:
> task do_kernel_configme: Failed
> ERROR: Task 760
> (/home/jackie/esdc/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
> do_kernel_configme) failed with exit code '1'
> Waiting for 2 active tasks to finish:
> 0: gcc-cross-4.6.3+svnr184847-r23 do_compile (pid 14631)
> 1: eggdbus-native-0.6-r3 do_compile (pid 18130)
>
>
> I googled and found Bruce Ashfield's solution:
> In the meantime, if you remove the kern-tools-native_git.bbappend from the
> meta-kernel-dev
> layer, the AUTOREV setting will be removed, and you won't pull in tools that
> are too
> new for the matching kernel.
>
> But where is the kern-tools-native_git.bbappend and meta-kernel-dev? I am
> newer to yocto, who can help me?

There is no kern-tools-native_git.bbappend in what I could find.

Can you please include your conf/bblayers.conf

