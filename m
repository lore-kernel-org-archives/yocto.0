Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05C7AE00C59; Mon, 30 Oct 2017 16:29:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 859AAE009B4
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 16:29:36 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id x7so12264509pfa.1
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 16:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FFYttTYVqXeap0qlYgDpVb7JEgRnoX6uRoAa43tpA5s=;
	b=XulvysBd2GlOoRDNFty1b+2DjiScSCbyv+hNF9uMkugSAX6ADsS8wl4u9D+BYh8wdr
	CwaH9GkGvKdikztUGShg0LTq4oh205TMtInKiATsXjlc+KuUcvVg4fwFXiLVcmbr5hEw
	Tah1msM0YCu6PMDspiq3QsiJkl3MtWCJ0mzbVu9NZiPpn7bN0jJE7j1sFh29W+EjGCqa
	m0RQzQywikPKfj0uT1flIZLlHP3vnoGWpdumBI9F7bM00eVPBMkRFBYoQ8l6ynYLjL6S
	OBSmOnUVkJ2yl82GN8NIwKB38GhCLAZpp3XUtV9m/00SWaBHv4ULn/AQrL83ExHcBrkQ
	isUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FFYttTYVqXeap0qlYgDpVb7JEgRnoX6uRoAa43tpA5s=;
	b=roYS0OaNHj4OlHuf3H9mdipBKrWb5+/HZcnHCToqwvuwI9NJDBsU/pGlRLSs0JoW70
	sSFMOxLgUdSvAJxWw9ZpZy277vja5EoWZ5polSD33A7KDaktSCYNHwkipSfJK+SA8fL6
	dXwKvxke8bojFSeQGi1cMLGEYWMX7LOTHImUhwWabqu9Ld/bSyKColZVUkXdeZ1XeDTw
	hXfVbag6FIhloJmd2f309FxKVSkFK+EbhO2m6uKZ2kx1tA2kyemEJyWcMoOVxDkd1QE0
	P5yQ/K0UyznUOAPoqGcg/2T9W6UdhF5cp9tzle02AiBBksJV4+F999850N1qFLSrbqCr
	Swvg==
X-Gm-Message-State: AMCzsaWHVW+bFo9Dz9jzx0vZz8u/Ngm23Ea4PkLH4kY+q+dEb2FavpNx
	dz2hnxk3kEnuLT0MwLwS8uLRfjiCu7eezEzhrz4=
X-Google-Smtp-Source: ABhQp+Q8qNfJ1uhyMUfIeed0NJxw+vxUxvmBweKRrJQgrknj8ZKULdt0Y5U2cVj8/GYng9d4tLcC/zuUJO0Oln8uoNY=
X-Received: by 10.98.194.215 with SMTP id w84mr10046208pfk.255.1509406175784; 
	Mon, 30 Oct 2017 16:29:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Mon, 30 Oct 2017 16:29:05 -0700 (PDT)
In-Reply-To: <CAFeBWL5JfhLLU8V8eQP+O_bNQBbZpO=N6CpW7w8EdXHUy9FyEQ@mail.gmail.com>
References: <CAFeBWL5JfhLLU8V8eQP+O_bNQBbZpO=N6CpW7w8EdXHUy9FyEQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 30 Oct 2017 16:29:05 -0700
Message-ID: <CAMKF1sqc1x9pVfDMMOYww3AqQufRSMX71fQ+9YXPEuUCEgoOCw@mail.gmail.com>
To: Adam Lee <adam.yh.lee@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't run "-c devshell" - "Must be connected to a terminal"
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
X-List-Received-Date: Mon, 30 Oct 2017 23:29:37 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 30, 2017 at 1:49 PM, Adam Lee <adam.yh.lee@gmail.com> wrote:
> Hello everyone, I have this strange issue where I can't run "-c devshell"
> any longer.
>
> This worked until a day ago.
> I am on Morty, and running in a Docker container.
>

what changed ?

> Has anyone seen this:
>
> Currently  1 running tasks (100 of 100)  99%
> |#############################################################################################################################################################################################################################################
> |
> 0: cmem-4.14.00.00+gitAUTOINC+b514a99ac4-r1 do_devshell - 0s (pid 20279)
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> Trying to run: screen -r devshell_20279
> Must be connected to a terminal.
> WARNING: Screen started. Please connect in another terminal with "screen -r
> devshell_20279"
>
> Thank you,
>
> Adam
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

