Return-Path: <flix.yocto@benfm.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10A3BCD3436
	for <webhook@archiver.kernel.org>; Wed,  6 May 2026 09:45:03 +0000 (UTC)
Received: from mail.benfm.de (mail.benfm.de [85.215.152.190])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14798.1778060699875792835
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 May 2026 02:45:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@benfm.de header.s=2024 header.b=YN+2RcRQ;
 spf=pass (domain: benfm.de, ip: 85.215.152.190, mailfrom: flix.yocto@benfm.de)
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=benfm.de; s=2024;
	t=1778060698; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jGcjHOpw5eqWAaSwinEoBuBg6BbRD03Tv/bL2dEDlLU=;
	b=YN+2RcRQAxfG0qppHJCdBwWUoYmmoYN3RdNPktCja9IVWdlq8cDAIAdU6GH7+dN9a9w+UN
	mrAFvRvKL6dLqWkH3EgsqvQmBRifL01scZPsOxvuU3STZREQ0EmAxYt0yE5bd7qtPuaOIk
	0HPWpLpbY9pij2mFI+d8t5FCmx0bVCLZaqZ8+uAT1o8C0pYcX3OIbTNBWGfqgoKJA2yoMQ
	5iEE46KPGIkHxEWNRFUMlY90Iw9SGb4CgmLbl3jkP3THaR78Dx8GohDmCisZVuc0vTptMe
	37+Rc7CJ9TUlsRkRbq6P+9TCXDO4o9g3g0gx6yFzCLedrUF7FD1nCIhMKv5HGQ==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=flix@benfm.de smtp.mailfrom=flix.yocto@benfm.de
Date: Wed, 06 May 2026 11:44:57 +0200
From: Felix Mellmann <flix.yocto@benfm.de>
To: yocto@lists.yoctoproject.org, michael.opdenacker@rootcommit.com
Subject: Re: [yocto] Simple solution to create a non-root partition image?
Reply-To: flix.yocto@benfm.de
Mail-Reply-To: flix.yocto@benfm.de
In-Reply-To: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
Message-ID: <03eb1b794350bcffa53447b5eb45ff17@benfm.de>
X-Sender: flix.yocto@benfm.de
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 09:45:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66486

Am 2026-05-03 22:40, schrieb Michael Opdenacker:
> Greetings,
> 
> For an ongoing project with a read-only root filesystem, I'd like to 
> create an image for a non-root partition.
> 

Within my projects I split up the TAR balls by their mounting point and 
then use these archives for further processing.
The main reason for me was to use RAUC with multiple images per slot (a 
customer urged me to split up /var from / ).

Create classes-recipe/foo-image-types.bbclass:

# tar file which only covers /storage
IMAGE_CMD:storage.tar = "${IMAGE_CMD_TAR} --sort=name --format=posix 
--numeric-owner -cf ${IMGDEPLOYDIR}/${IMAGE_NAME}.storage.tar -C 
${IMAGE_ROOTFS}/storage . || [ $? -eq 1 ]"
# tar file which only covers /var
IMAGE_CMD:var.tar = "${IMAGE_CMD_TAR} --sort=name --format=posix 
--numeric-owner -cf ${IMGDEPLOYDIR}/${IMAGE_NAME}.var.tar -C 
${IMAGE_ROOTFS}/var . || [ $? -eq 1 ]"

# tar file which covers the whole root filesystem except of the 
separated archives above
IMAGE_CMD:remaining.tar = "${IMAGE_CMD_TAR} --sort=name --format=posix 
--numeric-owner -cf ${IMGDEPLOYDIR}/${IMAGE_NAME}.remaining.tar -C 
${IMAGE_ROOTFS} --exclude='./storage/*' --exclude='./var/*' . || [ $? 
-eq 1 ]"

Use a custom image recipe, i.e. "foo-image.bb":

SUMMARY = "Foo image"

inherit core-image

IMAGE_CLASSES += "foo-image-types"
IMAGE_FSTYPES = "storage.tar.xz var.tar.xz remaining.tar.xz"

IMAGE_INSTALL:append = " \
     packagegroup-foo \
"

When you build "foo-image" instead of 
"foo-image-foo-machine.rootfs.tar.xz" you'll get 
"foo-image-foo-machine.rootfs.storage.tar.xz", 
"foo-image-foo-machine.rootfs.var.tar.xz" and 
"foo-image-foo-machine.rootfs.remaining.tar.xz" which you can use in 
further stages (i.e. build RAUC bundle). I don't know if those images 
can be integrated within WIC, as I don't use it, but maybe something 
like this work within a custom WKS file:

part / --source rootfs.remaining [...]
part /storage --source rootfs.storage [...]
part /var --source rootfs.var [...]


With such a setup you can do whatever you like with your partitions 
(mount some of them read-only, apply overlay, share them between A/B 
setups, ...) and build your application recipes independent from 
architectural decision and still allow updating system and application 
packages which span multiple partitions within the field by either using 
a package manager or RAUC.

Good luck,
Felix

> To give you some context, this partition would contain data and scripts 
> to be used at first boot to do per device provisioning work. Some of 
> these would be removed after provisioning, as they could tip attackers 
> about how secrets are stored if they get their hands on devices that 
> haven't been provisioned yet. Hence, these cannot be in the read-only 
> root filesystem.
> 
> To create such an image, I tried to create a new image recipe 
> inheriting the "image" class, and then install some packages into the 
> image with a "local" IMAGE_INSTALL list.
> 
> This seems it could work, but I'm struggling with removing dependencies 
> (bootloader, kernel, etc) that are only relevant for a root filesystem 
> image.
> 
> Would there be a simpler way to create a non root partition image?
> 
> Thanks in advance
> Cheers
> Michael.
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66467): 
> https://lists.yoctoproject.org/g/yocto/message/66467
> Mute This Topic: https://lists.yoctoproject.org/mt/119133286/8090339
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub 
> [flix.yocto@benfm.de]
> -=-=-=-=-=-=-=-=-=-=-=-

