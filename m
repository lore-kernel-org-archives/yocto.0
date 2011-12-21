Return-Path: <kergoth@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A78E005A3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 09:33:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qabg40 with SMTP id g40so2624426qab.14
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 09:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Uy1bWDzzUjNHheCdpAPjZysnLxbaXN3ViGAvh+kooPw=;
	b=h01Xn/OtXYF9E3/w/TaAZg0mCrmAbyEftmhhuWtaitqAJI1SWDjPqRHlomGA+JtqJd
	+L0dFhQz84VCdU/Eb2zQjEYVi+Ux6pNnOxcWtR83x//usUMEjHdJsX0pyG1dPv6A5Vcm
	+Z8pgkcwp+kfC77A3FMIaBcu072CKKXKcP5Og=
Received: by 10.224.212.10 with SMTP id gq10mr9425766qab.75.1324488815247;
	Wed, 21 Dec 2011 09:33:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.187.141 with HTTP; Wed, 21 Dec 2011 09:33:13 -0800 (PST)
In-Reply-To: <4EF204E8.8020009@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<CABcZANmbKdn+dzftgQwNRN1ExYEUkhO906LJG8Pw0Cu+U0cRYg@mail.gmail.com>
	<4EF204E8.8020009@linux.intel.com>
From: Chris Larson <kergoth@gmail.com>
Date: Wed, 21 Dec 2011 10:33:13 -0700
Message-ID: <CABcZANmBvROnETAu6Zvvmxpbxc9NowwiRiiprY+pxwaAjf+mOQ@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [RFC PATCH 0/9] New distribution definition for poky-tiny
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
X-List-Received-Date: Wed, 21 Dec 2011 17:33:36 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 21, 2011 at 9:10 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 12/21/2011 07:52 AM, Chris Larson wrote:
>> On Wed, Dec 21, 2011 at 2:02 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>>> For example, I could not discover a way to use
>>> oe_filter_out inside poky-tiny.conf to remove "keyboard" for MACHINE_FEATURES.
>>
>> This might be best handled via inclusion of a .inc which defines an
>
> I assume you mean to include the .inc in task-core-boot?

If that works, sure, but that wasn't my intent. You can
include/require a .inc from a .conf.

>> event handler or anonymous python function that removes it. The
>
> I'm not familiar with adding event handlers, can you point me at an
> example? In general, my concern is that whatever this mechanism is, it
> shouldn't have to be poky-tiny aware: meaning it needs to glean the
> knowledge that keymaps should not be added from something else. I
> suppose this could be some DISTRO_FEATURE, but that is effectively what
> I've already done in 5/9 "task-core-boot: Allow DISTRO to disable keymaps".

That seems reasonable. Event handlers are used in a number of places
in the metadata, including base.bbclass :)

python do_some_stuff_to_the_config_metadata () {
    if not isinstance(e, bb.event.ConfigParsed):
        return

    # do stuff
}
addhandler do_some_stuff_to_the_config_metadata


>> problem with the := + oe_filter_out method is that it forces an
>> immediate variable expansion right there, which can cause problems in
>> some cases.
>
> Right. That and using it in a .conf file results in parsing errors. :-)

:= is *technically* perfectly valid in a .conf file, as is
oe_filter_out, but it's so sensitive to location as to be of limited
usefulness. All the variables used by the var you're expanding would
have to have been defined already as of that point in the config.
-- 
Christopher Larson

