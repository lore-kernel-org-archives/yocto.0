Return-Path: <scott.a.garman@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18D59E0144A
	for <yocto@yoctoproject.org>; Tue,  1 Jan 2013 10:50:02 -0800 (PST)
Received: from mail-ie0-f199.google.com ([209.85.223.199])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 01 Jan 2013 10:50:01 -0800
Received: by mail-ie0-f199.google.com with SMTP id k10so58550751iea.6
	for <yocto@yoctoproject.org>; Tue, 01 Jan 2013 10:50:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:message-id:date:from:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=eerT8+rQ93C6fbefBtuaMX8jMAiyA4kfZYW2bg1q2+E=;
	b=GWWN0yczoCQbmjbDS45g2TFaO9yZkYz4EgjcTxNNaBzWlDT6S7ieXxGNbeQQNItUmW
	T5XyRMzH7i01mySMuGoIdQXY25XTdg+toSU4+6IiXvU5xV0kdQssFKR5oLr7uqiya01F
	BpL/2ARWP1RtEbl/VEgZNhQAUH4MZXCzE2NGWl+XSuxma0eMnSO7pdGI74ra7GoYDg0g
	r22XLHQ9LXEWJdA2RN6eFo863OFgsmMIZPM0WQN2henpQQ8yIrV3MT+S67iIFvxofOim
	siYHv8YYQkf8v0OVosOCoPwbh28/8lMt5OyFNfePSKPYeoDfvysmTF1V7zvGwm0X2Ule
	dA2A==
X-Received: by 10.50.91.168 with SMTP id cf8mr39057878igb.20.1357066199974;
	Tue, 01 Jan 2013 10:49:59 -0800 (PST)
X-Received: by 10.50.91.168 with SMTP id cf8mr39057871igb.20.1357066199784;
	Tue, 01 Jan 2013 10:49:59 -0800 (PST)
Received: from [10.0.0.188] ([12.70.159.234])
	by mx.google.com with ESMTPS id l8sm36440606igo.13.2013.01.01.10.49.58
	(version=SSLv3 cipher=OTHER); Tue, 01 Jan 2013 10:49:59 -0800 (PST)
Message-ID: <50E32FD8.3070905@intel.com>
Date: Tue, 01 Jan 2013 10:50:00 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1212291218520.4787@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212291218520.4787@oneiric>
X-Gm-Message-State: ALoCoQnTerelQ3QhiImSTr7dJrdtyt1Nr9o0hhJr8GqFN5CsZBQbts0aK+0p4hT/qEOA1uS3ueTnuGgDCsPfZ32uj8/udcW5q7IAfZnxWSrKHhOg5h+7OyppSaP770kvewMuBVrtT61EN50JwWYbbYgAngNUiwvL2A==
Subject: Re: odd(?) behaviour with qemu arm image and "runqemu-extract-sdk"
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
X-List-Received-Date: Tue, 01 Jan 2013 18:50:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/29/2012 09:33 AM, Robert P. J. Day wrote:
>
>    first time perusing these sections in the yocto docs, kind of
> puzzling result so i'm prepared to believe i did something silly.
> reading:
>
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#workflow-using-stand-alone-cross-development-toolchains
>
> "Workflow Using Stand-alone Cross-development Toolchains", and i
> already had an OE qemuarm core-image-minimal built that i can run
> just fine with:
>
> $ runqemu qemuarm
>
> so i was reading that section and followed the link over to the ADT
> manual:
>
> http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#extracting-the-root-filesystem
>
> where it talked about "Extracting the Root Filesystem", so i figured,
> what the heck, i'll give that a shot, so i ran "runqemu-extract-sdk"
> on the very rootfs tarball that had been created by my build and
> extracted it under ~/rootfs, then without reading any further, tried
> this variation of runqemu for the first time:
>
> $ runqemu qemuarm ~/rootfs
> Assuming /home/rpjday/rootfs is an nfs rootfs
> Continuing with the following parameters:
> KERNEL:
> [/home/rpjday/oe/builds/oe/qemuarm/tmp-eglibc/deploy/images/zImage-qemuarm.bin]
> ROOTFS: [/home/rpjday/rootfs]
> FSTYPE: [nfs]
> Setting up tap interface under sudo
> [sudo] password for rpjday:
> Acquiring lockfile for tap0...
> runqemu-export-rootfs restart /home/rpjday/rootfs
> Error: Unable to find rpc.mountd binary in
> /home/rpjday/oe/builds/oe/qemuarm/tmp-eglibc/sysroots/x86_64-linux/usr/sbin/
> Have you run 'bitbake meta-ide-support'?
> Set 'tap0' nonpersistent
> Releasing lockfile of preconfigured tap device 'tap0'
> $
>
>    so ... how many things did i do wrong?

Hi Robert,

When you built your original image, it generated a filesystem in a file 
(in this case, an ext3 one) which the runqemu script used to boot with.

But booting an nfs-based image with runqemu requires our userspace NFS 
server. This is a new requirement that requires you to build the 
meta-ide-support target.

So in this case, what you're seeing is exactly what is intended - the 
runqemu script tells you what you need to do to proceed. You did nothing 
wrong.

There was a time (a long time ago) when meta-ide-support was built 
anytime qemu was built, but we ended up splitting it out since it added 
an unnecessary build dependency on meta-ide-support when most users 
never needed to boot an NFS image.

   some random thoughts on this
> before i dig back into the docs and code:
>
> 1) why the name "runqemu-extract-sdk"?  it seems that the point of
> that script is to just untar a root filesystem.  i don't see anything
> being "extracted" per se.

I suppose runqemu-extract-rootfs might be a better name for it. When the 
script was first developed, the main use case for it was extracting the 
-sdk images so they could be used with our application developer tools.

The key thing this script does is extract the rootfs tarball under 
pseudo, which creates a virtual mapping of file ownership that is 
necessary for the rootfs to be usable but not require root access from 
the end user's perspective.

> 2) i notice that the "dev" directory created by that script contains
> only regular files instead of actual special device files.  but if i
> use "sudo" to just untar exactly the same tarball, i get real device
> files.  is that the expected behaviour of that script?

Yes - since the invokation of pseudo from the runqemu-extract-rootfs 
script creates a pseudo database that will later be used when runqemu 
boots the rootfs to read the files.

> 3) what should i have done earlier to have the apparently necessary
> usr/sbin/rpc.mountd in my sysroot?

Just what the script said: bitbake meta-ide-support


   it seems odd that i can run my
> built qemu image just fine if i run it normally, but if i
> runqemu-extract-sdk to unload a rootfs, suddenly my sysroot is missing
> that utility.

By now I hope it should be clear that the rpc.mountd was not needed to 
boot a .ext3 image. It's only needed for NFS-based booting. So the file 
didn't suddenly disappear when you went to boot the NFS-based rootfs. It 
was just needed for the first time then.

>    and one more thing.  from that first link in the dev manual, there's
> that note that takes you over to the ADT manual.  and it's entirely
> possible that there some critical info *before* the section
> "Extracting the Root Filesystem" but given how one got there (by
> following the link), the reader might miss it.

I'll have to leave this one to our app dev folks and ScottR if they 
agree something should be changed.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

