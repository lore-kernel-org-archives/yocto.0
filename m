Return-Path: <daniel.kenji.morgan@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BC9E0140A
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 08:16:00 -0800 (PST)
Received: by mail-pb0-f47.google.com with SMTP id rp8so789901pbb.6
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 08:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:reply-to:organization:user-agent
	:mime-version:to:subject:content-type:content-transfer-encoding;
	bh=EWR/zQJFKzFZ8db88MXJOrNgAWiC9qqeinGk0zGvIG8=;
	b=d/ulYO+TT59BEn/8wAtGQq0iCdgT4CDNBFqIZ5FJSZqAnM3//iSpqQNREcq4kXYk8J
	7LylYyjbapmVAmZj/S8n6JsunSVvkoj3oUFqsZocs3rFWDx2LK6RAI+TCSGYpuKw+PBd
	oJUoe521gUTOY1ucp4SBUo4uK171VMMdb8pDfVrqHyHvkVCkhjn2zyOno9yuuWUng7C2
	p7nrZ6rFquXFQZ1zQ+nOll+bnQaHpy4gN5ST7xeXpIDq+UUzbE1bdNt/zGemsE1OOyV1
	X9EvrWg7WrYDw38erBMvCL0/YnLO0k3rDigOcpI/FQfEjkuA3cAB6TVVB4oh7V9CTRaG
	bz1A==
X-Received: by 10.68.242.225 with SMTP id wt1mr38359130pbc.65.1359389760491;
	Mon, 28 Jan 2013 08:16:00 -0800 (PST)
Received: from [210.170.220.194] (PPPbm2.fukushima-ip.dti.ne.jp.
	[210.170.220.194])
	by mx.google.com with ESMTPS id kl3sm6568033pbc.15.2013.01.28.08.15.59
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 28 Jan 2013 08:15:59 -0800 (PST)
Message-ID: <5106A449.7020902@gmail.com>
Date: Tue, 29 Jan 2013 01:16:09 +0900
From: Daniel Kenji Morgan <daniel.kenji.morgan@gmail.com>
Organization: Daniel Kenji Morgan
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: PREFERRED_PROVIDER in image recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: daniel.kenji.morgan@gmail.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Jan 2013 16:16:00 -0000
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

Sorry to bring up an old post, but I haven't managed to find information in the mail archives and bugzilla on how the issue stands as of today.

The post I am referring to is as follows:
https://lists.yoctoproject.org/pipermail/yocto/2011-December/005951.html

I have two separate recipes for the same kernel version.
One with a kernel configuration with various options enabled to assist debugging.
The other with said options disabled.

Ideally, I would like to be able to set PREFERRED_PROVIDER to the kernel recipes in custom image recipes for the same machine.
This is something that is being discussed in the referred post above.
Does anyone know if such functionality is being pursued in a future release of Poky?


