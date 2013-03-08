Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 12D9AE0070E
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 02:21:58 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id l13so4135438wie.4
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 02:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=4xA2vhLNLFYaWZGtfwz9j6dapXtKWicy/mbKfp0n+FE=;
	b=iai0yatisSQXBbcLgThYd9ow53mRiKGkOp+2drn+pGr+wYl8MRqPreY/8De7MoMSay
	mqS5EV6ZVHuXA9H0bs00DM4sB/x8AEqgNL//ZdhYmfqpnclxYiOwMu2MZ8OAeWhYwUp+
	3s+PpX6a2d76Ij8kYCDZQZx5QXCK2PRNoYIEndNUjj8sRRJOb1VC+TVmNQq2JgFlNTmX
	HYJCcfp7bWaR+9pQVIQcRtlqGBwQ9CYKilplaomV4lRU9Oi2BKEWrGgOZ166Rqw7Ti8e
	RBOF9c5EOAnPIQO/W8GkUUQAJWtEPcke9ErllDPZpP6v7ViXZaIo/TTqD66IB5f2d1ho
	HCow==
X-Received: by 10.194.76.37 with SMTP id h5mr2763623wjw.21.1362738116875; Fri,
	08 Mar 2013 02:21:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 8 Mar 2013 02:21:36 -0800 (PST)
In-Reply-To: <A7CC4928-BE8C-43ED-98F4-EA6FD5BB8322@gmail.com>
References: <CACzyEJ-DRarP=jMBngPLAMQJFLWsJFWrhqS0rxoWuog2vMjFOg@mail.gmail.com>
	<A7CC4928-BE8C-43ED-98F4-EA6FD5BB8322@gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 8 Mar 2013 02:21:36 -0800
Message-ID: <CACzyEJ9HGYquu8dM85y9iLwFHiJz13VZ+diZ1Koew=XSqKK6gA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: qemu not getting dhcp question.
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
X-List-Received-Date: Fri, 08 Mar 2013 10:21:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem,

>
> runqemu already assigns a static IP to instance and it does not use bridging
> so dhcp from a server which is not the machine on which qemu is running will not work
>
>

Right, this testing was from my own meta-dl-qemux86 (custom kernel and recipes).
https://github.com/insop/meta-dl

The image that I've created did not use static IP but attempted to get
dhcp, so that' was the issue.
I still have to look at what was the issue within my image (meta
layer), but now I've moved to latest yocto-kernel-3.8 and the image
uses the static IP.

Thank you.

Insop

