Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8578E0145B
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 16:22:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Jun 2012 16:22:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="158255406"
Received: from unknown (HELO envy.home) ([10.255.12.88])
	by orsmga002.jf.intel.com with ESMTP; 15 Jun 2012 16:22:49 -0700
Message-ID: <4FDBC37A.6060902@linux.intel.com>
Date: Fri, 15 Jun 2012 16:21:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <4FD93175.7070202@linux.intel.com> <4FD98EA6.1050403@r-finger.com>
	<4FDBA4B8.8000703@am.sony.com>
In-Reply-To: <4FDBA4B8.8000703@am.sony.com>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Fri, 15 Jun 2012 23:22:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/15/2012 02:10 PM, Tim Bird wrote:
> On 06/14/2012 12:11 AM, Tomas Frydrych wrote:
>> A system that runs nothing but a shell is really not useful for anything
>> all, everyone using it will be adding some sort of services, so the
>> question of how the extending works (or does not work), needs to be in
>> the forefront of the design. My main reservation is that you are
>> suggesting to break one of the basic premisses behind the whole
>> ecosystem, namely that if I add a package that provides a service to an
>> image, I get that service running; 'fix by documentation' is never a fix.
> 
> I didn't address this in my other response, and I
> think it's a valid observation.  I agree that
> everyone will want to add something to the init,
> and that 'fix by documentation' is, in general, a
> poor solution.
> 
> I don't have any good solution here (one that scales,
> or is likely to be adopted widely.)  You don't really
> need documentation, if you have the few lines of shell
> script that are necessary to start a service in minimal
> mode.  The standard init scripts handle lots of interactions
> with other services and runtime conditions.  This is why
> they are bloated (and the abstractions in them are
> almost incomprehensible to read.)
> 
> At Sony we've tried various things - like automatically
> stripping init scripts of uncalled branches, removing
> conditionals that don't apply, etc.  We've also looked
> at automatically converting init scripts to C code, to
> speed up execution.  You still end up with gobs of code
> that doesn't apply to your situation getting executed
> at boot time, an overly-complicated test scenario, and a
> certain fragility in the overall init system.
> 
> One of our early efforts, getting busybox
> to not fork commands in init scripts that it had as
> builtins, proved to be a significant feature that is still
> valuable today to improve boot time.
> 
> What we have settled on as a generic solution is basically
> what I described in response to Darren's initial post.
> You have a list of the short shell snippets required to start
> commonly-used services in /etc/rc.local.  These
> are commented out by default, but a developer or product
> team can uncomment them to enable the associated services.
> This keeps everything in one place and provides developers
> the commands needed to start things.  Customization to
> handle interactions or special cases can proceed from
> there.  It's not ideal, in that a developer may have to
> re-create or rediscover some configuration, setting, or
> start sequence to handle a more complicated usage scenario.
> But in order to hit our targets for size or boot time, it
> has been helpful to do things this way.  The developer is
> forced to manually enable each service, and the start
> sequence, commands and command parameters are obvious
> from the script.  (This is rarely true of init scripts).
> 

Does this mean you just don't worry about respawning services? If
the.... I dunno... ambient-light-sensor-daemon crashes, is the user
expected to just reboot the device?

> If anyone has good ideas or other experience for
> the init sequence for highly customized,
> resource-constrained products, I'd like to hear about
> them.

So Systemd does great things for deterministic boot with clearly defined
dependencies between services which also allows for as much parallelism
as possible (maybe that doesn't matter for your devices). I haven't
looked at how big systemd is what how much it would bloat my kernel to
support it. Have you?

As I understand it, it brings in things like udev and basically starts
to make my system look like a desktop/server. systemd-tiny ftw!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



