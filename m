Return-Path: <xiaoxianghua@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 202CDE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 07:20:36 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk29 with SMTP id 29so2449490qyk.14
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 07:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=WxHPaRr+SRVpNfyIvlbRR3Pf19awQMMURpnS4v2WxM0=;
	b=DltKr/wv63Re4IMyOK8T1sSKCh5gi70Vbo9Fs+oul+xgMLnmXxi/M3L0tgAQhfLn3r
	VLS9h/v+8s5ZJ7XmY5ZQdwlQ2w1A/Lkx1ABHuCpURosgG2xhDMJI+54uc8C0SnaEt216
	0kJbgy4F8q4aQO0EsPM2nl40349xELexE/v28=
MIME-Version: 1.0
Received: by 10.229.63.156 with SMTP id b28mr751035qci.2.1319811634673; Fri,
	28 Oct 2011 07:20:34 -0700 (PDT)
Received: by 10.229.188.3 with HTTP; Fri, 28 Oct 2011 07:20:34 -0700 (PDT)
Date: Fri, 28 Oct 2011 09:20:34 -0500
Message-ID: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
From: Xianghua Xiao <xiaoxianghua@gmail.com>
To: yocto@yoctoproject.org
Subject: building and using yocto 1.1
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
X-List-Received-Date: Fri, 28 Oct 2011 14:20:36 -0000
Content-Type: text/plain; charset=UTF-8

when I built 1.0 out of the box, it took 7 hours.
on the same machine/network, yocto 1.1 took a full 12 hours, not sure
what happened to cause this nearly doubled build time.

after the default build(bitbake core-image-sato), I run 'runqemu
qemux86', click on 'tasks', try to add a new task, however my input is
shown non-english, or garbage on screen, which I have seen the same
issue on yocto1.0 release as well. this is a 10.04 ubuntu 64bit
machine.

don't know what to say about it, just my OOB(out-of-box) experience

xianghua

