Return-Path: <raj.khem@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEAA9E01199
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 23:21:00 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hn14so1610035wib.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 23:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sPxIecHm+KaVu7x6zZG8IQdFK6itR2HIhS5xvvM66kE=;
	b=tNHRRx+BdLjpf5mkvqFba1/i/LmwZm25tvPrsZ1FC8gPNj+x46ZKDVveOdWiNAgGim
	0pjCwwqFt4rT8sCBmKjSffPREBxfleW54gdYqSKK3p35fEAdpkmkksH9vwP7/g83zV7a
	z81yhXZbq/LpryZEl1NVmaeQ3uMdrUP/Ntf3JHb4DEkRePHcWoe4TjK3KlIasBxyY7BC
	VOdtrKKnc5Z0XG3JlL9SZl9/aT6A8Es8yv2VmUN0maTKzHF9s7WqyCDN7zZPrhq4Mgc+
	sEkXyw30lIikkNd2zjIi7JfgL2fE3dk0LX+i1rZOTr0pU2bcEaEiXPXrvSDMaue7nfxl
	aGJQ==
Received: by 10.180.73.76 with SMTP id j12mr2530081wiv.11.1349245260029; Tue,
	02 Oct 2012 23:21:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.28.38 with HTTP; Tue, 2 Oct 2012 23:20:29 -0700 (PDT)
In-Reply-To: <87zk457w6r.fsf@sonatest.com>
References: <D9A15604-C508-4314-B4DC-B6F52691EC51@jusst.de>
	<87zk457w6r.fsf@sonatest.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 Oct 2012 23:20:29 -0700
Message-ID: <CAMKF1sruF-zTgM293vhKB=y+LG_qDiye_C+fdwvSn7bpNJvpzA@mail.gmail.com>
To: Marc Ferland <ferlandm@sonatest.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 03 Oct 2012 06:21:01 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 1, 2012 at 1:51 PM, Marc Ferland <ferlandm@sonatest.com> wrote:
> Julian Scheel <julian@jusst.de> writes:
>
>> Hi,
>>
>> I wonder how everyone deals with runtime updates of yocto based
>> systems? Are you using the package management for this? Actually I'd
>> prefer a one-file update, which would replace the whole rootfs. I
>> think having a squashfs image containing the rootfs and place it on
>> some ext-partition would be nice. One would just need an initramfs,
>> that could mount the squashfs file as root.
>>
>> Is anyone following an approach like this?
>
> This is the approach that I've taken. Works fairly well.
>
> You will need to:
> - Create your own init script (look in:
> meta/recipes-core/initrdscripts/files as a starting point)
> - Patch your kernel with AUFS/unionfs/overlayfs if you want something
> that is not 100% volatile.
> - Create an "install/update" script that actually takes care of updating
> your squashfs rootfs from the initramfs.
>

Marc

interesting. Do you have some patches to share ?

> Marc
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

