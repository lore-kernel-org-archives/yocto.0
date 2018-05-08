Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D749E00C80; Mon,  7 May 2018 21:54:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4CE4E00C61
	for <yocto@yoctoproject.org>; Mon,  7 May 2018 21:53:59 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id f5-v6so26097174qth.2
	for <yocto@yoctoproject.org>; Mon, 07 May 2018 21:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=vCE07ybrWwf/NP8jb7SipN7R32dhO9Mjlp8O6EHfcyw=;
	b=fb0LgyhSHY5mApsG+8/MlcFTv05I70Ny+VcTSHMrjceK+rvoNxry9LJbLMc31nw8V/
	X7Hktj5Nbi3+vSFfHDRH4ksKGnQzah3xgosq9DMu9O6T2lpTeQRGz5WqoegDf5qPkCFw
	5c/whc0APDv3epg4geySEMfZe/W6eR3+hmM9VMc8jtsOrNuD8Wm3AjBu8u4gezoxs3hh
	u2/fEYWa0VpHTmh93oyWjuEpPSj2xlo5VcbDwlhWU8ZSgflI68/Ax/UoHvwhT+s+0NpT
	OTrmRl9i12e/coH6rVTKdb1lK2C1sCs2D9qgt6Ce1Hw3H0m27jw4k246apXMwr4Ub5G5
	QxGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=vCE07ybrWwf/NP8jb7SipN7R32dhO9Mjlp8O6EHfcyw=;
	b=KZqyzO/RaMMNj0JYqvxB1hI5PujtlomlPoS4tsnUXldMd/2BjhZriZKA1s79yBb+3+
	2LYBH7TO0r+HpMbr/VFgMR80PlxVy0zyfHDHUhBB27MvErAguspSLKNKFlkLddedlEeG
	ovP9hS43rRL81SOec+31QP0VMMMJaNUJTNI9igd2OLCf0tOmoztO/DtQWlx/HFes23WH
	8x5jmISLeHXIeuUFODaNRc1AGmX1Qjym7qQ9ywxgv4+RwihYFUQg8ccvA6Iq/6Y3MtOe
	ADoSapflyMODjz02J0eNFrQMNOnunHDQFQUjg9yh9bqj4Qkk5OhRjLqf8DsURUFDnVnJ
	hWRw==
X-Gm-Message-State: ALQs6tBtk/F+bDrHzeFPE34zx48vonQiXxA5igOtgnrgepNZESTHDpDn
	X7xBbof3M0lbhDY9arKs5tWtzzjz8+QgFj6PWmA=
X-Google-Smtp-Source: AB8JxZrc2RlDbvrhFdKStQmD4KoWUK+Eo7ZcOecfgLtjh97/vvAknHQHzeqzJE3tRMAZVYSsT+9DaxCbGKovJdYUPvw=
X-Received: by 2002:a0c:a106:: with SMTP id d6-v6mr20539195qva.5.1525755238450;
	Mon, 07 May 2018 21:53:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Mon, 7 May 2018 21:53:58 -0700 (PDT)
In-Reply-To: <CA+YB3rba5-xUdzRg2jE8oaY6+ZLhu3ROV0O6_=w7Dc+qPVSqpQ@mail.gmail.com>
References: <CA+YB3rba5-xUdzRg2jE8oaY6+ZLhu3ROV0O6_=w7Dc+qPVSqpQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 8 May 2018 06:53:58 +0200
Message-ID: <CAGAf8LwBWH7DQPRyTDgzuuJYCYZxHvjrzva3a03DzksYd66shQ@mail.gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-members@lists.openembedded.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: Yocto Project changes in progress
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
X-List-Received-Date: Tue, 08 May 2018 04:54:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Very interesting, indeed! Newer knew that Richard (Purdie) is/was
INTEL employee!?

This announcement gives several (conspiracy?) theories... Some
official, some unofficial. ;-)

As independent thinker... IMHO.

Time Will Tell!

Zoran Stojsavljevic
_______

On Mon, May 7, 2018 at 11:53 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
> Hello everyone. I'd like to briefly address rumors around Richard Purdie'=
s
> transition from Intel to a more neutral position, and Intel's reduction i=
n
> resources for the project.
>
> We set up the Yocto Project in 2010 through Linux Foundation, with over 2=
0
> member organizations, so it would function as a true open source project =
-
> neutral, unbiased, and well distributed. Those things are what make open
> source projects less vulnerable to any one person or company. This is
> actually a very exciting transitional time for the project, and all exist=
ing
> member organizations are fully behind the project. We will let people kno=
w
> details as they are available.
>
> Meanwhile, the 2.5 "Sumo" release is on the way and should be released so=
on,
> the 2.6 planning process has started in earnest (please participate!), an=
d
> we are excited to see what the future has in store for the project.
>
> --
> Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel Corporation
> Open Source Community Ecosystem Strategist
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

