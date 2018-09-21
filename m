Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 569A3E00754; Fri, 21 Sep 2018 05:50:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEAF7E00519
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 05:50:57 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id i12-v6so12913100otl.1
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 05:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RPSDGegEIfbN9H6QKgCjOrqcuJyUmOtiKO/6Xhl/Ib4=;
	b=a6zH5GpE1As2Hn5YpVGZ7VPX/c478ihG0SbIWsjQdX4BcDdoLX5+ivf6gGBKJKWsps
	MJ0aKE3sEqoOfJgFxENDbjW91SRvSFY7zSwJzfF3B7TI+H+FXI3gtklyZx4/ipMaGzgi
	DYPK8nC4OGH4zKrHrQPrSMc/oaJO0S3BkfPGa9b+WfPll+QSAmMlEn2YXkP8TeK/0RH2
	fy18DTTlyQWfRNtzHA4M0KejjECJMd2uVmMi0k4egcqFZOig8FotTvCcPbPsrZcnjEtC
	gYUwZFe9/kMAfq10K/D40x3c/JB2ftKXk8NOKNO0WSKfTVds/jS3EWYEV3S6w/nuKvHQ
	HeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RPSDGegEIfbN9H6QKgCjOrqcuJyUmOtiKO/6Xhl/Ib4=;
	b=Ixaun2kI8e9WnSZAva7ePoSYxRO+5PPOJ1aipYJBbC0qjUoCXSk2p9M1xCxwGrg+Vg
	nFIAX+RZ5s+ctxEWNGMh6o50kyo/0Chs2Ag2j9yFEuizaZIOO9QFXesUJGomZ2C2LoTt
	fRkfr0IONS8Kj1e1OpWiyG3m8ruFjXkMTR65O8w6ZyuJBXCE6n0O6B+rMmzAEQfrF/Xw
	/ME93/JPSTXB5brGH3oXjZpS7wtQMNO3F7b6I4atJbT7ZqPV00iElja4eoZ4lZdX8QU2
	RNMNFSeWIYSf2lHqJj+WDlaPDBjqKFZxKouG1x66sqmu4zVBda0NGfV9RPEozK+Z0MM0
	3xkw==
X-Gm-Message-State: ABuFfogxANH4GeJFICplLNwTZWxIg5RmIdX2FQZf+q2uyft8BQPZZEBN
	tiwhL9/M0ptugBRUn/NhMXvp0YYYsT/2TIpJJ9T4OzzmzRs=
X-Google-Smtp-Source: ACcGV61fxWgJJla64a1Ngk0TiFDTCSdJlPnrNERDNptQiIzx9IYdrr1kOtHsXMMaRTnzz/NL3lDbDB+CjGZfHLaqD/U=
X-Received: by 2002:a9d:48dc:: with SMTP id
	a28-v6mr183171otj.343.1537534257154; 
	Fri, 21 Sep 2018 05:50:57 -0700 (PDT)
MIME-Version: 1.0
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
	<767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
	<20180918160944.43679aec@seebsdell>
	<CAJdd5Gb64JqHY3gv=r+_ZnKpDzO63CLpOF0fP8MQy_Dd_bshQQ@mail.gmail.com>
	<20180918162048.35454f8d@seebsdell>
	<CAJTo0LZ1qDr2DAFWJcHBrzWWwERYh-6eSiXNO5gcJwT=HXMb-w@mail.gmail.com>
	<20180920141600.1e7fae12@seebsdell>
	<7fa6c890755b4712828365593fcfe088@AUSX13MPC104.AMER.DELL.COM>
	<20180920155026.43686693@seebsdell>
In-Reply-To: <20180920155026.43686693@seebsdell>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Sep 2018 13:50:45 +0100
Message-ID: <CAJTo0LbHfuQxE_iGbpo1--Bn77N0mHW555R-Oew4r+ha5WO-qw@mail.gmail.com>
To: Seebs <seebs@seebs.net>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Fri, 21 Sep 2018 12:50:58 -0000
Content-Type: text/plain; charset="UTF-8"

Wired: I've just sent a patch to update oe-core to use the current
HEAD of pseudo.
Tired: WARNING: glibc-locale-2.28-r0 do_package_qa: QA Issue:
glibc-locale: /glibc-binary-localedata-en-za.iso-8859-1/usr/lib/locale/en_ZA.ISO-8859-1/LC_PAPER
is owned by uid 1000, which is the same as the user running bitbake.
This may be due to host contamination [host-user-contaminated]

I was *really* hoping this would solve the problem.

Ross

On Thu, 20 Sep 2018 at 21:51, Seebs <seebs@seebs.net> wrote:
>
> Nice catch. Merged a patch that applies this also.
>
> -s

