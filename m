Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.6259.1576501904758588951
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 05:11:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=swfv4MxB;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: bruce.ashfield@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61B90E010D7; Mon, 16 Dec 2019 05:11:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.54 listed in list.dnswl.org]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C81DEE00E37
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 05:11:43 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id j17so4992648edp.3
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 05:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lPWrqqdD0p5G8R7DC92+sTAC8BZ/RYBvD3En08Yh9FY=;
        b=swfv4MxBqr+GYSaj9MFODDDuSxFwxO7qyf+p3DkvNs/9JIp0VGLCp3iA7k6oMhUepO
         ZxSgqY9gGdbi8eTePbTR36O7em4UqmX4jA0sJFB3bGuAgKSf68icoWgbdzfts6IFw7kz
         34/JjA9joiXYkNJp1xFPfh+CSRsvYIRmqihEOYvK2gGv8Zti5IfTWu4GbXQgz6Xk++TH
         3JIUblBvIrsNxWYWEgh5k2v5PI/HGkn5v3uxAPMvIeWABbb1UMpNEu199xK2cFekX9Jl
         gYRMOmK23c88+GGTbGy9aO8CCa7wrbw6FIHZXWZL2lX+Tj5bLBpFIlYtkEI/AMzCuS12
         w4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lPWrqqdD0p5G8R7DC92+sTAC8BZ/RYBvD3En08Yh9FY=;
        b=enrA4uXfllxDQaXJAOC393Z3oAIMA9Ky5lSMaOWd+yD7X7zrkrkeeoNoqdzAEnxYDI
         1dyjriTUgKUDGhDgoiCIvoy2hd9HhXCUa+zgw2WxG2+27WRkL9SPtEN0HpO53BfBBYXY
         /gEkePArw/8oSPWQQx/zfkv40ry7mBRVTclHzNcOD7voeSq3uG5e3bbqycnsv5E4tpO3
         Dt4h/GMxzaxwrZ5QtkE4PSjzzY5vBefUpmjSFXunTJI08hhE+TMBMU9ButFNLg9WipiY
         b/skkUBBZM68CEbUt/OBdAeoh+mcneSVaiJF1n4VRnQ/PXPS8kGhx8YKoYonC3eD6BuX
         0d2w==
X-Gm-Message-State: APjAAAUYqcI74LuGufVHmPW2icuXskqcUpyW0H9n/DSnmRyIyKFQgpbW
	T9pZpTtaphZrKNpjL5BQUULqFApUAM8IqNxzaO0=
X-Google-Smtp-Source: APXvYqzvx2OAm1QhNZadjfkO3zRA7R73FJDSF3PSaE4WxLA9IUEpI12uTMIfALJuJB5YNB4V1Ve6M8g8eIGaKocuGsc=
X-Received: by 2002:aa7:db04:: with SMTP id t4mr10672704eds.122.1576501902614;
 Mon, 16 Dec 2019 05:11:42 -0800 (PST)
MIME-Version: 1.0
References: <CALSaBR-MfrzMpF53_-JM0pnJ5ZBAnVj22UqK8Kzsqnc3sYY9FA@mail.gmail.com>
In-Reply-To: <CALSaBR-MfrzMpF53_-JM0pnJ5ZBAnVj22UqK8Kzsqnc3sYY9FA@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 16 Dec 2019 08:11:31 -0500
Message-ID: <CADkTA4OcNcXqdhwTxBkW2y0gPyGvs52y0XO8Hg0eXV9cbEKYHA@mail.gmail.com>
Subject: Re: [yocto] Docker Error on Yocto Build on ARM
To: Aj Cit <aj.ci.01.239@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>, kurup.avinash@gmail.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 16, 2019 at 7:23 AM Aj Cit <aj.ci.01.239@gmail.com> wrote:
>
> Hi,
>
> We are getting the following error while building yocto -warrior QEMUarm64; however we are getting the following error while running the docker service.:
>

The meta-virtualization list is the right place to ask questions about docker.

> systemctl status docker, returned error.
> Dec 16 09:00:19 qemuarm64 dockerd[340]: Error starting daemon: Error initializing network controller: Error creating default "bridge" network: Failed to program NAT chain: Failed to inject DOCKER in PRERO
> UTING chain: iptables failed: iptables --wait -t nat -A PREROUTING -m addrtype --dst-type LOCAL -j DOCKER: iptables: No chain/target/match by that name.
>

This is almost always a side effect the kernel not being configured
correctly, and even more often, the kernel modules are not installed
in your image.

If you are using linux-yocto, and you have virtualization in your
DISTRO_FEATURES, the kernel config is taken care of. But you do need
to have "kernel-modules" in your image install variables to get the
right modules onto the target.

Bruce

>
> also. Dec 16 05:58:53 qemuarm64 dockerd[628]: time="2019-12-16T05:58:53.499510946Z" level=warning msg="Running modprobe bridge br_netfilter failed with message: modprobe: WARNING: Module br_netfilter not found
> in directory /lib/modules/5.0.19-yocto-standard\n, error: exit status 1"
>
> Any help will be much appreciated.
>
> Thanks
> Aj
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47693): https://lists.yoctoproject.org/g/yocto/message/47693
> Mute This Topic: https://lists.yoctoproject.org/mt/68726097/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
