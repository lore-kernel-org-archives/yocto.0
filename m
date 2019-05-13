Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA40CE00B8F; Mon, 13 May 2019 03:17:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=unavailable
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D90FE00D4E
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 03:17:28 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id c5so14538341wrs.11
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 03:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=SQJpL9OwDyHxlJx70Ib9IrnNnD+uIvlZVwso0yUiLZQ=;
	b=IYNvuiKEBv7Qad+viveX0xxc69UlnBN8FxS5s7exd+thgCbV7HMc1DbECcNI/1DaAn
	JUshy5Kp/Tv05flgkgOoWEVY+Ri3R//NLeSIdyMOkGhortK9BXT6m9Vvircy0p6opEgo
	GGxJkbj6UPposXstslm5Vyj4+8ik3MJY+Pmt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=SQJpL9OwDyHxlJx70Ib9IrnNnD+uIvlZVwso0yUiLZQ=;
	b=ByWk39o7o74BQc3CbufOOvjuhsVGwtmrnBdgbJRJb5dd0BBZEmSPtSV9XkR17erEX4
	BEFJayQZ5+wzq1wTeySbhE6lXdX77q9cDb+RTQc7yFwnugToMst3RRVGW26WrG/73omA
	O99rIgLQtCANfh89o97V0/2MXjdUh0qI+v1/VrSK2EGIw3q8cCp2+ma9GhxvsnCJN9+r
	2gLnMhkKnTkupTkA/8/vRYnEvU9KIt6O/aIAb6aqM/KIaFgbhrdG5FXrxDlEPQzFkWkX
	TuERr9dllwsC1MUDCUayFm4IfTrerXl360E59A6bZo/h7JiGzflqAsxdSG0axFW082oj
	sxkw==
X-Gm-Message-State: APjAAAVHv6iofYAR+l4er2PZQGIWNCM0rD6GeRjuo84FJr3kpPaXNp5J
	D1iRYBpEnZh6qTPZ8szsD+vmmg==
X-Google-Smtp-Source: APXvYqyRfqCFGZi6VQaP1HwoNNDbqaiCEOyTfreOMVC/h+DjpF913GWZ9WtYYntUwyOfo80AzU0sJw==
X-Received: by 2002:adf:e311:: with SMTP id b17mr7997704wrj.11.1557742647768; 
	Mon, 13 May 2019 03:17:27 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id c18sm1636074wrm.7.2019.05.13.03.17.26
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 13 May 2019 03:17:27 -0700 (PDT)
Message-ID: <9e31624b7f354039d01318436a4f8de968cea40c.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: AshishKumar Mishra <ashish.emailaddress@gmail.com>, 
	yocto-bsp@yoctoproject.org, yocto@yoctoproject.org
Date: Mon, 13 May 2019 11:17:26 +0100
In-Reply-To: <CAOe0dAXjp=+hqaKk6aGY-pDPBYFUi_zNTAcUFA1Ss170=Q9=Jw@mail.gmail.com>
References: <CAOe0dAXjp=+hqaKk6aGY-pDPBYFUi_zNTAcUFA1Ss170=Q9=Jw@mail.gmail.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: [Yocto-bsp] Error of " fs.inotify.max_user_watches " while using bitbake [ Yocto-2.6.1 + Qemux86]
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
X-List-Received-Date: Mon, 13 May 2019 10:17:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-05-13 at 15:38 +0530, AshishKumar Mishra wrote:
> Can team members please let me know the solution & what is causing
> the below mentioned error ?
> ( I am having around 128GB of disk space still left , hence don't
> think that space is the issue here )
> 
> ~/Documents/linux-foundation-projects/yocto/poky/build (slef-bsp) : bitbake -vn virtual/kernel
> ERROR: No space left on device or exceeds fs.inotify.max_user_watches?
> ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watches.
> ERROR: To modify max_user_watches: sysctl -n -w fs.inotify.max_user_watches=<value>.
> ERROR: Root privilege is required to modify max_user_watches.
> ERROR: Command execution failed: Traceback (most recent call last):

Did you try what it says above and check the max_user_watches value?

Also, did you check you had enough free inodes on the filesystem?

Cheers,

Richard


