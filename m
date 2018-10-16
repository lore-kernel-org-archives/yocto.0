Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 607E5E00B45; Tue, 16 Oct 2018 06:01:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D34FEE00A10
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:00:59 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id w81-v6so17937422oiw.9
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2gyYvhX1yYNtlNNScc1vjR3dYwGOJElHrhCb2G5EdgU=;
	b=0qgsIG/DPrxTakk3SBlhBLjdl1m10qRKoFVzgGv7fPYjeyUaqHPCcAq9h1KSQ+0ByJ
	pYPXT8U83RX4OvKdINU4ym/kALQCi4b4loCcAflU2mnV+y2kGacB7boiEWtgdQlCPhvd
	FrfsmeeuB7yWtOPtuwDUv4Br23rqG2cLUKYiSG/zhbht6BJTVTAgjutSRkp7DAf+1R5V
	b4EwMKEuUoZP93d9TMlOm1fl106UQHuRNfrLtZgbm9Rurz4MdWzPqqD+N1/wITh5DE7w
	80Z1AOQUglFPNkLCSFA2gExGUo77lxcNeCTkE33ezeeR247J+7rBnP4rvJUlv/QdsCJz
	i9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2gyYvhX1yYNtlNNScc1vjR3dYwGOJElHrhCb2G5EdgU=;
	b=siE2cTUeOpgs/xIINGKmODP+lY8GZhLY59En0DCUe2MZzWGx78JM52QGfEZjQmjoq6
	OlJgG34tvXfrq4/jBsRSxMnZGiizpmm6vmr2NCyOyi0WwHXQl5gSrkc2Srn8MmxKSb2K
	LN/dQhs06ssZP+cKMobY1VH2w5Nn39rh9rxjqhoiJJ7fjQyLxDzbnRloSt8C2XSnOV+G
	tyAMPnTEXqLQx3gXKzTymxME/oOnxICWUpYd/y8yDDJN5F15yzNgpjSYx7FQjA+gF3f5
	hgXPLT9bR7U7c046cZAy5Fb1KwjhwaoOC/rzys8nwDchwMB0NLHveaX9SAoVQhC048KM
	Tzaw==
X-Gm-Message-State: ABuFfoiJ1u6XmEz6qWv4AycoeBrErmyo22EMXakjPpQrkNJupOMfHgzi
	Ao641fOUd88rHRm6Sm6m3HnDMf9iuTqkTkdb6+fjuQ==
X-Google-Smtp-Source: ACcGV60+Yo8oq6znnQSyF1p0PIHNTJVHchkxd0+SQYFkU930Sfu7zhjXq6xwCOXcfLtKedCfy243qREonkwfaiopbsQ=
X-Received: by 2002:aca:ce4c:: with SMTP id
	e73-v6mr12019794oig.225.1539694859158; 
	Tue, 16 Oct 2018 06:00:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkqNs1qEJHk-knxqZ-+P1VSOjgeZt9x=RjMWSV1QUt5J3i-aw@mail.gmail.com>
In-Reply-To: <CAJkqNs1qEJHk-knxqZ-+P1VSOjgeZt9x=RjMWSV1QUt5J3i-aw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Oct 2018 14:00:47 +0100
Message-ID: <CAJTo0LYGf_waBvUe22FY+vA7s4eNMPfZqH8JUoMGUQqyAiWWcA@mail.gmail.com>
To: tomasz.dziendzielski@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: archiver.bbclass: do_dumpdata - shell format
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
X-List-Received-Date: Tue, 16 Oct 2018 13:01:00 -0000
Content-Type: text/plain; charset="UTF-8"

Do you actually want to source the data files, and if so why?  As with
the bitbake -e output, it's shell-like but not actually shell.

Ross
On Tue, 16 Oct 2018 at 13:44, Tomasz Dziendzielski
<tomasz.dziendzielski@gmail.com> wrote:
>
> Hi,
> when using archiver.bbclass the do_dumpdata task is using bb.data.emit_env function, which should emit variables "in a format such that it can be sourced by a shell.".
> The problem is that the *-showdata.dump file can't be properly sourced, because variables are not in a correct format.
>
> There are many lines like:
> PREFERRED_PROVIDER_virtual/fakeroot-native="pseudo-native"
> The variables with slash are considered to be a directory and the ones with dash are considered to be a command.
> Also shell cannot properly set the variables like FOO_machine.
>
> Should it be sourced with some specific shell or is that function wrong and should be fixed?
>
> Best regards,
> Tomasz Dziendzielski
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

