Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1670CE01489
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 03:25:10 -0800 (PST)
Received: by mail-wg0-f52.google.com with SMTP id 12so584050wgh.7
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 03:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=7zreSX1yRkf+0Re8ocNSyhrXL0XX77I3d49aclKXct8=;
	b=ZHj1l2qRvCbi9R6XrXFKQy0jTqwHOWKYhpV+DSNS5+SixPDFrdNUtZM4U47Pl7mVKR
	TDxZj/AywbxbXS7uBz04z99Qz1liNUMYZeOK3SAxYglDeaiunfiL5wrmIJopBCExQloI
	C96sOLHNJ+EYNUfTfZbNTk1g990nhKPsALeogSyDJ16Zc4M+eJ7HUoHa0tlaVYK/EYbK
	/MkLS8+sgRVEzkbE8xd9XXsVowmBYSXt0tZT3Bi4pfrMKmtr8gKVS3vElXMfVVKUJmOd
	xMYwqi6BqdiCRgGSxl0fKTSl+Ydpu80XMcizYdjZD9Uj7tsxL/OPbQ5fXfnzyKeUIK5y
	lwRg==
X-Received: by 10.180.77.9 with SMTP id o9mr32636430wiw.16.1362655509282; Thu,
	07 Mar 2013 03:25:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Thu, 7 Mar 2013 03:24:49 -0800 (PST)
From: Insop Song <insop.song@gmail.com>
Date: Thu, 7 Mar 2013 03:24:49 -0800
Message-ID: <CACzyEJ_rBY29cmbK7OS_r4Z+zheZxGUTTWGRuLQ0x_4tk2sCKA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: nested meta layers, how can/should it be done?
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
X-List-Received-Date: Thu, 07 Mar 2013 11:25:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am not an expert yet, but here is what I've recently done and I
think this will give you some hints to what you want to achieve.

I've made a new meta layer so that I can use custom kernel and add new
programs on top of existing core-image-* targets. I used qemu targets
for now, but I also plan to extend this to other bsp so that I can use
on different targets.

Here is my meta-dl layer
- https://github.com/insop/meta-dl

Here is the lab that I've referred, see recipes-kernel and recipes-tools dirs
- https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pdf

Regards,

Insop

=========
Hi. I wish to write a custom meta layer that should add on-top of an
existing bsp for eg. kernel and u-boot builds.
But I want the custom layer to use .bbappend for some standard
packages and also add some custom packages.
My guess is that it might cause problems for the standard packages
(since they are not unique) due to the MACHINE will be pointed out as
the base bsp machine config, and the custom bsp will not define a
machine on its own. Does this mean that I will have to define this new
custom layer as a distro? I am worried that .bbappend stuff will never
be executed since nothing will actually point to my custom layer for
package recipes unless they are unique. What is the correct way to
handle this use-case?

Hans

