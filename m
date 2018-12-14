Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49F9CE00BB5; Fri, 14 Dec 2018 08:32:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F17DE00AD8
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2018 08:32:26 -0800 (PST)
Received: by mail-it1-f182.google.com with SMTP id m8so19357932itk.0
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2018 08:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xqQdWzbwqmAvDzYROyTvvhMlhVOn/GD2z1wYrrCSlYE=;
	b=E3YuP4Kgn+hr9vYJ0Uba+CpL7aKt9lAC6B8qWL2lHsjxxUHrZsuJcjE5jeZnEnKMbA
	gVsm/Zy5M7yGUeM4JTB9ARrvl944Cd2XrCOu1eD9nf2LpCFHrTK0x+a4udKBV5qZ90QY
	vA28x2N11ycWhoQvEDAC82sEgJzYPGa9rfst/ozE4NP0SXi1YeVu6bipgCiHlUWs7WoX
	iNPpnD7lXqNGsyEl89mQ2reDjUP+sZLC/gIe8jeyhkkseq4j3RnR0BaPogMioQAMB44z
	TUar94W4uviMK1T2NJe2qQQuOyQc+xdVLoLiu1gvVjVKe33UGUja47M7nYLFoge5WGUn
	gRyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xqQdWzbwqmAvDzYROyTvvhMlhVOn/GD2z1wYrrCSlYE=;
	b=OSpkLfONKF40rJO00yy5G5IB9p/gCD3sfUlllffHtS28A/NckZf58YzNKGq7tj1K7m
	J488ZpuZTICckKYAN1DC2SfEBL7YAaDELdEOSZHl8wmmVCtTKB8T2fksQesnoZAt5cNy
	Ak1s+iCUUjFOcaLUSjjkW6GtUadmFg9fMXPV3koCxQlhOn2XJsvU65HAHTxJnju0uf6Z
	cFdtM1shS8Edg1hoKnSfmfSwt5O4/M2dZj7FJ+hBldDs5nNNVc91YamQgKfQEjcyGhkB
	EvnNX+kIx6ZGVppkGeoTBdF54jnzN4mzch7nghmfVyNZzj2NdKBvWY4hoSJ2/GyvU1Wz
	OKgA==
X-Gm-Message-State: AA+aEWbpawhgxY3NlZB49yaWvX491VIeAdAUO/TGHUwoWzMP/nphRKoc
	laPpk1Na2b198vOen0NoLgkCyBI1KBdS9wNO5Lcfzw==
X-Google-Smtp-Source: AFSGD/W/IchNzq3EXHpmrsYpvBWs8+ALO+2uspGn+40GljA7x6Yo2KeROWr2mrgRyCeg+n65fXRcZKMQSgCo4a4Mc/I=
X-Received: by 2002:a24:c601:: with SMTP id j1mr4050305itg.130.1544805145865; 
	Fri, 14 Dec 2018 08:32:25 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4injAXT0+YgeXAYmfU50=_LL9BaVBm9e5-E1qyouAMENA@mail.gmail.com>
In-Reply-To: <CAFq4t4injAXT0+YgeXAYmfU50=_LL9BaVBm9e5-E1qyouAMENA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Dec 2018 16:32:14 +0000
Message-ID: <CAJTo0LZ6wXV+B7N54aSSE1mSey6yMZEKUJEjyAvqpKUhRWr=0g@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: core-image-* (minimal) networking
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
X-List-Received-Date: Fri, 14 Dec 2018 16:32:27 -0000
Content-Type: text/plain; charset="UTF-8"

Install something to do networking. Minimal means minimal.  I tend to
prefer connman as that means you get ethernet hotplug working without
any further work, and you can easily setup wifi too.

Ross
On Fri, 14 Dec 2018 at 16:22, Peter Balazovic <balazovic.peter@gmail.com> wrote:
>
> I've built bitbake core-image-minimal and it runs but unfortunately I have no connectivity (networking) available.
>
> > ifconfig
> lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           inet6 addr: ::1/128 Scope:Host
>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>           RX packets:2720 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:2720 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1
>           RX bytes:206720 (201.8 KiB)  TX bytes:206720 (201.8 KiB)
>
> What's need to be included within local.conf to enable networking?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

