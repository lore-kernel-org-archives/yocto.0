Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EF9BE002AC
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 13:51:24 -0700 (PDT)
Received: by qadc11 with SMTP id c11so345qad.14
	for <yocto@yoctoproject.org>; Mon, 01 Oct 2012 13:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=zlNupeuxOZ8iS32okyqaF+KjiMPnMkrXuXxZRpI4Jnw=;
	b=Tz9LPKQczOa2O+ldO6eak8Hisrn5ziEQ6i6m9Z6j9NmtjOfFzgxXptkb0LlCQ/iMLP
	UCyZW2O+0rdLsU1RcRc3qYJU20vICsihADPfhifusxhdXjvhOZFA79CszbHyhoCYXGeI
	8YTCKut5kpXM0CLcCLNE83IW/CL3PhxBgW6ya/sAi9TMaMxHVm6MnQs4DO+j5pq3B2CX
	9UA+y10INQQwBRDLSw4tQvwmoikmjmk0VMzY1tI1GJZ5M1T/5pZBnqjdMawcbbtvMYEu
	4AaXv3xzHPRXnsRUP8at3lxVau8p5NufVOrTte6hd4k2P3vDKXG25UzB2RZnGBFsC+dB
	kV0w==
Received: by 10.229.135.149 with SMTP id n21mr10825321qct.131.1349124681678;
	Mon, 01 Oct 2012 13:51:21 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id r16sm4843248qae.21.2012.10.01.13.51.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 01 Oct 2012 13:51:20 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 01 Oct 2012 16:51:24 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
References: <D9A15604-C508-4314-B4DC-B6F52691EC51@jusst.de>
Date: Mon, 01 Oct 2012 16:51:24 -0400
In-Reply-To: <D9A15604-C508-4314-B4DC-B6F52691EC51@jusst.de> (Julian Scheel's
	message of "Mon, 1 Oct 2012 22:18:12 +0200")
Message-ID: <87zk457w6r.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Re: Runtime update of yocto-images
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
X-List-Received-Date: Mon, 01 Oct 2012 20:51:24 -0000
Content-Type: text/plain

Julian Scheel <julian@jusst.de> writes:

> Hi,
>
> I wonder how everyone deals with runtime updates of yocto based
> systems? Are you using the package management for this? Actually I'd
> prefer a one-file update, which would replace the whole rootfs. I
> think having a squashfs image containing the rootfs and place it on
> some ext-partition would be nice. One would just need an initramfs,
> that could mount the squashfs file as root.
>
> Is anyone following an approach like this?

This is the approach that I've taken. Works fairly well.

You will need to:
- Create your own init script (look in:
meta/recipes-core/initrdscripts/files as a starting point)
- Patch your kernel with AUFS/unionfs/overlayfs if you want something
that is not 100% volatile.
- Create an "install/update" script that actually takes care of updating
your squashfs rootfs from the initramfs.

Marc

