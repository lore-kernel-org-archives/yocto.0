Return-Path: <autif.mlist@gmail.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 6A7EAE0070E
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 08:11:06 -0800 (PST)
Received: by mail-la0-f44.google.com with SMTP id eb20so7638708lab.17
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 08:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=kWkRq/4bqqEf0ZnfQmH2nrs8rPxgPv6Tr7kb2+l63pg=;
	b=zatY/M1FytaEthk9vRiwVh0KYVI7QAigGNP3wPOyumTyJRPZhnhDDQQKW3YF67qRV2
	B57Euz+DP5wxfuAkysrV7dEQTC6XFcWjA07jGHDX9g6s9Mv3JqzsGORa9EWwEoOnmAIz
	l7Or/yAOcOY9M+cdaLADKZDxMwA4vM8/WtElDM3+nVX4hFqtr6yiTAFg0Xh+BG1yIKkA
	dXcXgiTcNxRvSNBnHyP0o7beqHgvOH203ypXd4xFQVPA3f3XKaICcMq6YKyNk633mK0e
	dkcUaH+E0GJIpC3+osU8kzW3flAr3lMFGekTQ6Hds29zL9T2yhf53aedS2xQaQ0j1ixJ
	c3IQ==
MIME-Version: 1.0
X-Received: by 10.112.17.166 with SMTP id p6mr7725939lbd.41.1362586263714;
	Wed, 06 Mar 2013 08:11:03 -0800 (PST)
Received: by 10.112.8.37 with HTTP; Wed, 6 Mar 2013 08:11:03 -0800 (PST)
In-Reply-To: <80BEC9F1B32C495FA608D0DAF85DF5FB@PAULD>
References: <80BEC9F1B32C495FA608D0DAF85DF5FB@PAULD>
Date: Wed, 6 Mar 2013 11:11:03 -0500
Message-ID: <CADzUK1JEe3J15_m7CUTRu2Mh+PvKEXL46f4wfqh440SaVuPG1w@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto@yoctoproject.org
Subject: Re: Question about file systems
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
X-List-Received-Date: Wed, 06 Mar 2013 16:11:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Mar 5, 2013 at 9:20 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> This is really a Linux question, but since it is specifically about embedded
> systems, I'm hoping this group is a good place to ask.
>
> My application is based on an Atom, with a small USB flash drive (SLC) for
> its storage. I'm trying to decide what file system to use. The application
> doesn't do a lot of file accesses, and of course I'll mount the partition(s)
> with "noatime" since I don't care about recording access times. But I'm
> concerned that if someone yanks the plug, rather than pushing the button for
> an orderly shutdown, the next boot will do a long "fsck", and the user will
> think the system is broken.
>
> So I guess the questions are these: Are ext2, ext3 and ext4 all equally
> likely to need to do an "fsck" after a disorderly shutdown? Do they
> typically take different amounts of time to do an "fsck"? Or is the
> journaling of ext3 and ext4 something that should be avoided on a flash
> drive at all costs, even though my app won't be doing much file access?
>
> Also, my app stores its own data in a directory tree of typically a few
> hundred small files. Would it be a win or a lose to break this off into a
> separate small partition? I was actually thinking of making this a FAT32
> partition, so that I could yank the drive and access those files in any
> other machine.
>
> Any insights would be appreciated.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>

We have a somewhat similar situation here. We have a device which is
not battery backed. And to top it off, the SOP to power off the
machine is to yank its power cable.

Here is what I have come up with and it seems to be working for us for
our requirements. All partitions are ext4.

We have one root partition that is always mounted read-only (except
when we are upgrading).  /var and /tmp (amongst a few others) are
tmpfs

We have a separate apps partition that is mounted read-only (again
except when we are upgrading). In addition to apps, we also store
configuration like calibration etc in this partition.

We have another scratch partition which is mounted with
"rw,sync,barrier=1" options where we store temporary files that need
to survive a reboot - log files for example. However, if/when we
detect filesystem corruption, we just format the partition during
normal boot. In this case the files will of course not survive and
that is acceptable.

The acceptable risk is that while we are upgrading apps or the OS
image, the device should not be powered down. If it is - then we have
a way to re-image the device in the field. But that is a separate
discussion.

When we want to upgrade, we show a message that upgrade is underway on
the UI. Remount the partition with "rw,barrier=1" (no need for sync),
perform the upgrade, then remount with "ro" options.

The difference between root and apps partition is that while upgrades
to apps will be frequent - multiple times a week - the upgrades to
root will be rare - once in 2 years or even less - it is a very high
bar to call for an OS upgrade. And we have built in stuff in our meta
layers to recover from bad app partitions and bad scratch partitions.
We did not want to club apps and root together and risk bricking the
device during normal app upgrades.

We do not (using automation) try to recover data from partition, we
(as a rule) format the partition and repopulate it. That works for us
:-)

By no means am I an expert - this is based on help from a lot of folks
over at the ext4 mailing list and of course here on the
Yocto-Project's mailing list and IRC channel. We have invested some
time in testing and making sure that we have a solution that works for
us and does not surprise us.

I hope this helps. Please let me know if you want me to elaborate on
something specific.

Autif

